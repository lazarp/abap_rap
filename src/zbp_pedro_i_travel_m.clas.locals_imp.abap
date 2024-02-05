CLASS lhc_Travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    TYPES tt_travel_update TYPE TABLE FOR UPDATE zpedro_i_travel_m.

    METHODS:
      get_instance_authorizations FOR INSTANCE AUTHORIZATION
        IMPORTING keys REQUEST requested_authorizations FOR Travel RESULT result,

      validate_customer FOR VALIDATE ON SAVE
        IMPORTING keys FOR travel~validateCustomer,

      validate_dates FOR VALIDATE ON SAVE
        IMPORTING keys FOR travel~validateDates,

      validate_agency FOR VALIDATE ON SAVE
        IMPORTING keys FOR travel~validateAgency,

      set_status_completed FOR MODIFY
        IMPORTING keys   FOR ACTION travel~acceptTravel
        RESULT    result,

      get_features FOR FEATURES
        IMPORTING keys   REQUEST requested_features FOR travel
        RESULT    result,

      CalculateTravelKey FOR DETERMINE ON MODIFY
        IMPORTING keys FOR travel~CalculateTravelKey.

ENDCLASS.

CLASS lhc_Travel IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_features.

    READ ENTITY IN LOCAL MODE zpedro_i_travel_m
        FROM VALUE #( FOR keyval IN keys (
                      %key                    = keyval-%key
                      %control-overall_status = if_abap_behv=>mk-on ) )
        RESULT DATA(lt_travel_result).

    result = VALUE #( FOR ls_travel IN lt_travel_result (
                         %key                           = ls_travel-%key
                         %features-%action-acceptTravel = COND #( WHEN ls_travel-overall_status = 'A'
                                                                     THEN if_abap_behv=>fc-o-disabled
                                                                  ELSE if_abap_behv=>fc-o-enabled ) ) ).

  ENDMETHOD.

  METHOD validate_agency.

    READ ENTITY IN LOCAL MODE zpedro_i_travel_m
    FROM VALUE #(
      FOR <root_key> IN keys (
          %key-mykey  = <root_key>-mykey
          %control    = VALUE #( agency_id = if_abap_behv=>mk-on ) )
    )
    RESULT DATA(lt_travel).

    DATA lt_agency TYPE SORTED TABLE OF /dmo/agency WITH UNIQUE KEY agency_id.

    "Optimization of DB select: extract distinct non-initial customer IDs
    lt_agency = CORRESPONDING #( lt_travel DISCARDING DUPLICATES MAPPING agency_id = agency_id EXCEPT * ).
    DELETE lt_agency WHERE agency_id IS INITIAL.
    CHECK lt_agency IS NOT INITIAL.

    "Check if agency ID exist
    SELECT agency_id
    FROM /dmo/agency
    FOR ALL ENTRIES IN @lt_agency
    WHERE agency_id = @lt_agency-agency_id
    INTO TABLE @DATA(lt_agency_db).

    "Raise msg for non existing customer id
    LOOP AT lt_travel INTO DATA(ls_travel).

      IF ls_travel-agency_id IS NOT INITIAL
          AND NOT line_exists(  lt_agency_db[ agency_id = ls_travel-agency_id ] ).

        APPEND VALUE #( mykey = ls_travel-mykey ) TO failed-travel.

        APPEND VALUE #( mykey = ls_travel-mykey
                        %msg  = new_message( id       = /dmo/cx_flight_legacy=>agency_unkown-msgid
                                             number   = /dmo/cx_flight_legacy=>agency_unkown-msgno
                                             v1       = ls_travel-agency_id
                                             severity = if_abap_behv_message=>severity-error )
                        %element-agency_id = if_abap_behv=>mk-on ) TO reported-travel.

      ENDIF.

    ENDLOOP.


  ENDMETHOD.


  METHOD calculatetravelkey.

  ENDMETHOD.

  METHOD set_status_completed.

  ENDMETHOD.

  METHOD validate_customer.

    READ ENTITY IN LOCAL MODE zpedro_i_travel_m FROM VALUE #(
      FOR <root_key> IN keys (
          %key-mykey = <root_key>-mykey
          %control   = VALUE #( customer_id = if_abap_behv=>mk-on )
       )
     )
     RESULT DATA(lt_travel).

    DATA lt_customer TYPE SORTED TABLE OF /dmo/customer WITH UNIQUE KEY customer_id.

    lt_customer = CORRESPONDING #( lt_travel DISCARDING DUPLICATES MAPPING customer_id = customer_id EXCEPT * ).
    DELETE lt_customer WHERE customer_id IS INITIAL.
    CHECK lt_customer IS NOT INITIAL.

    SELECT customer_id
    FROM /dmo/customer
    FOR ALL ENTRIES IN @lt_customer
    WHERE customer_id = @lt_customer-customer_id
    INTO TABLE @DATA(lt_customer_db).

    LOOP AT lt_travel INTO DATA(ls_travel).

      IF ls_travel-customer_id IS NOT INITIAL
         AND NOT line_exists( lt_customer_db[ customer_id = ls_travel-customer_id ] ).

        APPEND VALUE #( mykey = ls_travel-mykey ) TO failed-travel.
        APPEND VALUE #( mykey                = ls_travel-mykey
                        %msg                 = new_message( id       = /dmo/cx_flight_legacy=>customer_unkown-msgid
                                                            number   = /dmo/cx_flight_legacy=>customer_unkown-msgno
                                                            v1       = ls_travel-customer_id
                                                            severity = if_abap_behv_message=>severity-error )
                        %element-customer_id = if_abap_behv=>mk-on ) TO reported-travel.

      ENDIF.

    ENDLOOP.

  ENDMETHOD.

  METHOD validate_dates.

  read entity IN LOCAL MODE zpedro_i_travel_m
  from value #(
    FOR <root_key> in keys (
        %key-mykey = <root_key>-mykey
        %control   = VALUE #( begin_date = if_abap_behv=>mk-on
                              end_date   = if_abap_behv=>mk-on ) )
  )
  RESULT data(lt_travel).

  loop at lt_travel into data(ls_travel).

    if ls_travel-end_date < ls_travel-begin_date.

    APPEND VALUE #( %key  = ls_travel-%key
                    mykey = ls_travel-mykey ) to failed-travel.

    APPEND VALUE #( %key  = ls_travel-%key
                    %msg  = new_message( id       = /dmo/cx_flight_legacy=>end_date_before_begin_date-msgid
                                         number   = /dmo/cx_flight_legacy=>end_date_before_begin_date-msgno
                                         v1       = ls_travel-begin_date
                                         v2       = ls_travel-end_date
                                         v3       = ls_travel-travel_id
                                         severity = if_abap_behv_message=>severity-error )
                   %element-begin_date = if_abap_behv=>mk-on
                   %element-end_date   = if_abap_behv=>mk-on ) to reported-travel.

    ELSEIF ls_travel-begin_date < cl_abap_context_info=>get_system_date( ).  "begin_date must be in the future

        APPEND VALUE #( %key    = ls_travel-%key
                        mykey   = ls_travel-mykey ) TO failed-travel.

        APPEND VALUE #( %key = ls_travel-%key
                        %msg = new_message( id       = /dmo/cx_flight_legacy=>begin_date_before_system_date-msgid
                                            number   = /dmo/cx_flight_legacy=>begin_date_before_system_date-msgno
                                            severity = if_abap_behv_message=>severity-error )
                        %element-begin_date = if_abap_behv=>mk-on ) TO reported-travel.

    endif.

  endloop.

  ENDMETHOD.

ENDCLASS.
