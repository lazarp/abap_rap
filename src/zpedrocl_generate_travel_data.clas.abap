CLASS zpedrocl_generate_travel_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpedrocl_generate_travel_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA itab TYPE TABLE OF zpedro_travel.

*   fill internal travel table (itab)
*    itab = VALUE #(
*        ( mykey = '02D5290E594C1EDA93815057FD946624' travel_id = '00000022' agency_id = '070001' customer_id = '000077' begin_date = '20190624' end_date = '20190628' booking_fee = '60.00' total_price =  '750.00' currency_code = 'USD'
*        description = 'mv' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680' )
*        ( mykey = '02D5290E594C1EDA93815C50CD7AE62A' travel_id = '00000106' agency_id = '070005' customer_id = '000005' begin_date = '20190613' end_date = '20190716' booking_fee = '17.00' total_price = '650.00' currency_code = 'AFN'
*        description = 'Enter your comments here' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20190613111129.2391370' last_changed_by = 'MUSTERMANN' last_changed_at = '20190711140753.1472620' )
*        ( mykey = '02D5290E594C1EDA93858EED2DA2EB0B' travel_id = '00000103' agency_id = '070010' customer_id = '000011' begin_date = '20190610' end_date = '20190714' booking_fee = '17.00' total_price = '800.00' currency_code = 'AFN'
*        description = 'Enter your comments here' overall_status = 'X' created_by = 'MUSTERFRAU' created_at = '20190613105654.4296640' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190613111041.2251330' )
*    ).

    itab = VALUE #(
    ( mykey = '02D5290E594C1EDA93815057FD946624' travel_id = '000001' agency_id = '070001' customer_id = '000001' begin_date = '20240101' end_date = '20240105' booking_fee = '50.00' total_price = '700.00' currency_code = 'USD'
    description = 'Description_1' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20240101120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240101120000.0000000' )
    ( mykey = '02D5290E594C1EDB93815057FD946625' travel_id = '000002' agency_id = '070002' customer_id = '000002' begin_date = '20240102' end_date = '20240106' booking_fee = '55.00' total_price = '720.00' currency_code = 'EUR'
    description = 'Description_2' overall_status = 'B' created_by = 'MUSTERMANN' created_at = '20240102120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240102120000.0000000' )
    ( mykey = '02D5290E594C1EDC93815057FD946626' travel_id = '000003' agency_id = '070003' customer_id = '000003' begin_date = '20240103' end_date = '20240107' booking_fee = '60.00' total_price = '750.00' currency_code = 'GBP'
    description = 'Description_3' overall_status = 'C' created_by = 'MUSTERMANN' created_at = '20240103120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240103120000.0000000' )
    ( mykey = '02D5290E594C1EDD93815057FD946627' travel_id = '000004' agency_id = '070004' customer_id = '000004' begin_date = '20240104' end_date = '20240108' booking_fee = '70.00' total_price = '780.00' currency_code = 'USD'
    description = 'Description_4' overall_status = 'D' created_by = 'MUSTERMANN' created_at = '20240104120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240104120000.0000000' )
    ( mykey = '02D5290E594C1EDE93815057FD946628' travel_id = '000005' agency_id = '070005' customer_id = '000005' begin_date = '20240105' end_date = '20240109' booking_fee = '80.00' total_price = '800.00' currency_code = 'EUR'
    description = 'Description_5' overall_status = 'E' created_by = 'MUSTERMANN' created_at = '20240105120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240105120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946629' travel_id = '000006' agency_id = '070006' customer_id = '000006' begin_date = '20240106' end_date = '20240110' booking_fee = '90.00' total_price = '900.00' currency_code = 'GBP'
    description = 'Description_6' overall_status = 'F' created_by = 'MUSTERMANN' created_at = '20240106120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240106120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946630' travel_id = '000007' agency_id = '070007' customer_id = '000007' begin_date = '20240107' end_date = '20240111' booking_fee = '100.00' total_price = '1000.00' currency_code = 'USD'
    description = 'Description_7' overall_status = 'G' created_by = 'MUSTERMANN' created_at = '20240107120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240107120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946631' travel_id = '000008' agency_id = '070008' customer_id = '000008' begin_date = '20240108' end_date = '20240112' booking_fee = '110.00' total_price = '1100.00' currency_code = 'EUR'
    description = 'Description_8' overall_status = 'H' created_by = 'MUSTERMANN' created_at = '20240108120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240108120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946632' travel_id = '000009' agency_id = '070009' customer_id = '000009' begin_date = '20240109' end_date = '20240113' booking_fee = '120.00' total_price = '1200.00' currency_code = 'GBP'
    description = 'Description_9' overall_status = 'I' created_by = 'MUSTERMANN' created_at = '20240109120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240109120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946633' travel_id = '000010' agency_id = '070010' customer_id = '000010' begin_date = '20240110' end_date = '20240114' booking_fee = '130.00' total_price = '1300.00' currency_code = 'USD'
    description = 'Description_10' overall_status = 'J' created_by = 'MUSTERMANN' created_at = '20240110120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240110120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946634' travel_id = '000011' agency_id = '070011' customer_id = '000011' begin_date = '20240111' end_date = '20240115' booking_fee = '140.00' total_price = '1400.00' currency_code = 'EUR'
    description = 'Description_11' overall_status = 'K' created_by = 'MUSTERMANN' created_at = '20240111120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240111120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946635' travel_id = '000012' agency_id = '070012' customer_id = '000012' begin_date = '20240112' end_date = '20240116' booking_fee = '150.00' total_price = '1500.00' currency_code = 'GBP'
    description = 'Description_12' overall_status = 'L' created_by = 'MUSTERMANN' created_at = '20240112120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240112120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946636' travel_id = '000013' agency_id = '070013' customer_id = '000013' begin_date = '20240113' end_date = '20240117' booking_fee = '160.00' total_price = '1600.00' currency_code = 'USD'
    description = 'Description_13' overall_status = 'M' created_by = 'MUSTERMANN' created_at = '20240113120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240113120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946637' travel_id = '000014' agency_id = '070014' customer_id = '000014' begin_date = '20240114' end_date = '20240118' booking_fee = '170.00' total_price = '1700.00' currency_code = 'EUR'
    description = 'Description_14' overall_status = 'N' created_by = 'MUSTERMANN' created_at = '20240114120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240114120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946638' travel_id = '000015' agency_id = '070015' customer_id = '000015' begin_date = '20240115' end_date = '20240119' booking_fee = '180.00' total_price = '1800.00' currency_code = 'GBP'
    description = 'Description_15' overall_status = 'O' created_by = 'MUSTERMANN' created_at = '20240115120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240115120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946639' travel_id = '000016' agency_id = '070016' customer_id = '000016' begin_date = '20240116' end_date = '20240120' booking_fee = '190.00' total_price = '1900.00' currency_code = 'USD'
    description = 'Description_16' overall_status = 'P' created_by = 'MUSTERMANN' created_at = '20240116120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240116120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946640' travel_id = '000017' agency_id = '070017' customer_id = '000017' begin_date = '20240117' end_date = '20240121' booking_fee = '200.00' total_price = '2000.00' currency_code = 'EUR'
    description = 'Description_17' overall_status = 'Q' created_by = 'MUSTERMANN' created_at = '20240117120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240117120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946641' travel_id = '000018' agency_id = '070018' customer_id = '000018' begin_date = '20240118' end_date = '20240122' booking_fee = '210.00' total_price = '2100.00' currency_code = 'GBP'
    description = 'Description_18' overall_status = 'R' created_by = 'MUSTERMANN' created_at = '20240118120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240118120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946642' travel_id = '000019' agency_id = '070019' customer_id = '000019' begin_date = '20240119' end_date = '20240123' booking_fee = '220.00' total_price = '2200.00' currency_code = 'USD'
    description = 'Description_19' overall_status = 'S' created_by = 'MUSTERMANN' created_at = '20240119120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240119120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946643' travel_id = '000020' agency_id = '070020' customer_id = '000020' begin_date = '20240120' end_date = '20240124' booking_fee = '230.00' total_price = '2300.00' currency_code = 'EUR'
    description = 'Description_20' overall_status = 'T' created_by = 'MUSTERMANN' created_at = '20240120120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240120120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946644' travel_id = '000021' agency_id = '070021' customer_id = '000021' begin_date = '20240121' end_date = '20240125' booking_fee = '240.00' total_price = '2400.00' currency_code = 'GBP'
    description = 'Description_21' overall_status = 'U' created_by = 'MUSTERMANN' created_at = '20240121120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240121120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946645' travel_id = '000022' agency_id = '070022' customer_id = '000022' begin_date = '20240122' end_date = '20240126' booking_fee = '250.00' total_price = '2500.00' currency_code = 'USD'
    description = 'Description_22' overall_status = 'V' created_by = 'MUSTERMANN' created_at = '20240122120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240122120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946646' travel_id = '000023' agency_id = '070023' customer_id = '000023' begin_date = '20240123' end_date = '20240127' booking_fee = '260.00' total_price = '2600.00' currency_code = 'EUR'
    description = 'Description_23' overall_status = 'W' created_by = 'MUSTERMANN' created_at = '20240123120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240123120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946647' travel_id = '000024' agency_id = '070024' customer_id = '000024' begin_date = '20240124' end_date = '20240128' booking_fee = '270.00' total_price = '2700.00' currency_code = 'GBP'
    description = 'Description_24' overall_status = 'X' created_by = 'MUSTERMANN' created_at = '20240124120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240124120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946648' travel_id = '000025' agency_id = '070025' customer_id = '000025' begin_date = '20240125' end_date = '20240129' booking_fee = '280.00' total_price = '2800.00' currency_code = 'USD'
    description = 'Description_25' overall_status = 'Y' created_by = 'MUSTERMANN' created_at = '20240125120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240125120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815057FD946649' travel_id = '000026' agency_id = '070026' customer_id = '000026' begin_date = '20240126' end_date = '20240130' booking_fee = '290.00' total_price = '2900.00' currency_code = 'EUR'
    description = 'Description_26' overall_status = 'Z' created_by = 'MUSTERMANN' created_at = '20240126120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240126120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815AB2FD9E377F' travel_id = '000027' agency_id = '070027' customer_id = '000027' begin_date = '20240127' end_date = '20240131' booking_fee = '300.00' total_price = '3000.00' currency_code = 'GBP'
    description = 'Description_27' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20240127120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240127120000.0000000' )
    ( mykey = '02D5290E594C1EDF93815B6DF65E4926' travel_id = '000028' agency_id = '070028' customer_id = '000028' begin_date = '20240128' end_date = '20240201' booking_fee = '310.00' total_price = '3100.00' currency_code = 'USD'
    description = 'Description_28' overall_status = 'B' created_by = 'MUSTERMANN' created_at = '20240128120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240128120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815C200A44D4B6' travel_id = '000029' agency_id = '070029' customer_id = '000029' begin_date = '20240129' end_date = '20240202' booking_fee = '320.00' total_price = '3200.00' currency_code = 'EUR'
    description = 'Description_29' overall_status = 'C' created_by = 'MUSTERMANN' created_at = '20240129120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240129120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815CC570781E74' travel_id = '000030' agency_id = '070030' customer_id = '000030' begin_date = '20240130' end_date = '20240203' booking_fee = '330.00' total_price = '3300.00' currency_code = 'GBP'
    description = 'Description_30' overall_status = 'D' created_by = 'MUSTERMANN' created_at = '20240130120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240130120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815D73B56A7C2D' travel_id = '000031' agency_id = '070031' customer_id = '000031' begin_date = '20240131' end_date = '20240204' booking_fee = '340.00' total_price = '3400.00' currency_code = 'USD'
    description = 'Description_31' overall_status = 'E' created_by = 'MUSTERMANN' created_at = '20240131120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240131120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815E27F2DFC0B3' travel_id = '000032' agency_id = '070032' customer_id = '000032' begin_date = '20240201' end_date = '20240205' booking_fee = '350.00' total_price = '3500.00' currency_code = 'EUR'
    description = 'Description_32' overall_status = 'F' created_by = 'MUSTERMANN' created_at = '20240201120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240201120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815EC297E30A8E' travel_id = '000033' agency_id = '070033' customer_id = '000033' begin_date = '20240202' end_date = '20240206' booking_fee = '360.00' total_price = '3600.00' currency_code = 'GBP'
    description = 'Description_33' overall_status = 'G' created_by = 'MUSTERMANN' created_at = '20240202120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240202120000.0000000' )
    ( mykey = '02D5290E594C1EDA93815FDBA3A61615' travel_id = '000034' agency_id = '070034' customer_id = '000034' begin_date = '20240203' end_date = '20240207' booking_fee = '370.00' total_price = '3700.00' currency_code = 'USD'
    description = 'Description_34' overall_status = 'H' created_by = 'MUSTERMANN' created_at = '20240203120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240203120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381608C336781C9' travel_id = '000035' agency_id = '070035' customer_id = '000035' begin_date = '20240204' end_date = '20240208' booking_fee = '380.00' total_price = '3800.00' currency_code = 'EUR'
    description = 'Description_35' overall_status = 'I' created_by = 'MUSTERMANN' created_at = '20240204120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240204120000.0000000' )
    ( mykey = '02D5290E594C1EDA938161400AD85D38' travel_id = '000036' agency_id = '070036' customer_id = '000036' begin_date = '20240205' end_date = '20240209' booking_fee = '390.00' total_price = '3900.00' currency_code = 'GBP'
    description = 'Description_36' overall_status = 'J' created_by = 'MUSTERMANN' created_at = '20240205120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240205120000.0000000' )
    ( mykey = '02D5290E594C1EDA938161FCA35D3EAC' travel_id = '000037' agency_id = '070037' customer_id = '000037' begin_date = '20240206' end_date = '20240210' booking_fee = '400.00' total_price = '4000.00' currency_code = 'USD'
    description = 'Description_37' overall_status = 'K' created_by = 'MUSTERMANN' created_at = '20240206120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240206120000.0000000' )
    ( mykey = '02D5290E594C1EDA938162B663B37EBC' travel_id = '000038' agency_id = '070038' customer_id = '000038' begin_date = '20240207' end_date = '20240211' booking_fee = '410.00' total_price = '4100.00' currency_code = 'EUR'
    description = 'Description_38' overall_status = 'L' created_by = 'MUSTERMANN' created_at = '20240207120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240207120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381637AEC97E7CA' travel_id = '000039' agency_id = '070039' customer_id = '000039' begin_date = '20240208' end_date = '20240212' booking_fee = '420.00' total_price = '4200.00' currency_code = 'GBP'
    description = 'Description_39' overall_status = 'M' created_by = 'MUSTERMANN' created_at = '20240208120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240208120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816447B8AED964' travel_id = '000040' agency_id = '070040' customer_id = '000040' begin_date = '20240209' end_date = '20240213' booking_fee = '430.00' total_price = '4300.00' currency_code = 'USD'
    description = 'Description_40' overall_status = 'N' created_by = 'MUSTERMANN' created_at = '20240209120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240209120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381650313C8A1FC' travel_id = '000041' agency_id = '070041' customer_id = '000041' begin_date = '20240210' end_date = '20240214' booking_fee = '440.00' total_price = '4400.00' currency_code = 'EUR'
    description = 'Description_41' overall_status = 'O' created_by = 'MUSTERMANN' created_at = '20240210120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240210120000.0000000' )
    ( mykey = '02D5290E594C1EDA938165BEA33E4F32' travel_id = '000042' agency_id = '070042' customer_id = '000042' begin_date = '20240211' end_date = '20240215' booking_fee = '450.00' total_price = '4500.00' currency_code = 'GBP'
    description = 'Description_42' overall_status = 'P' created_by = 'MUSTERMANN' created_at = '20240211120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240211120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381667C21A5574F' travel_id = '000043' agency_id = '070043' customer_id = '000043' begin_date = '20240212' end_date = '20240216' booking_fee = '460.00' total_price = '4600.00' currency_code = 'USD'
    description = 'Description_43' overall_status = 'Q' created_by = 'MUSTERMANN' created_at = '20240212120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240212120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816738DFD6144A' travel_id = '000044' agency_id = '070044' customer_id = '000044' begin_date = '20240213' end_date = '20240217' booking_fee = '470.00' total_price = '4700.00' currency_code = 'EUR'
    description = 'Description_44' overall_status = 'R' created_by = 'MUSTERMANN' created_at = '20240213120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240213120000.0000000' )
    ( mykey = '02D5290E594C1EDA938167F5CB3EA8AF' travel_id = '000045' agency_id = '070045' customer_id = '000045' begin_date = '20240214' end_date = '20240218' booking_fee = '480.00' total_price = '4800.00' currency_code = 'GBP'
    description = 'Description_45' overall_status = 'S' created_by = 'MUSTERMANN' created_at = '20240214120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240214120000.0000000' )
    ( mykey = '02D5290E594C1EDA938168B2C947FE5E' travel_id = '000046' agency_id = '070046' customer_id = '000046' begin_date = '20240215' end_date = '20240219' booking_fee = '490.00' total_price = '4900.00' currency_code = 'USD'
    description = 'Description_46' overall_status = 'T' created_by = 'MUSTERMANN' created_at = '20240215120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240215120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381696FBB56E7B4' travel_id = '000047' agency_id = '070047' customer_id = '000047' begin_date = '20240216' end_date = '20240220' booking_fee = '500.00' total_price = '5000.00' currency_code = 'EUR'
    description = 'Description_47' overall_status = 'U' created_by = 'MUSTERMANN' created_at = '20240216120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240216120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816A2C216B1CC8' travel_id = '000048' agency_id = '070048' customer_id = '000048' begin_date = '20240217' end_date = '20240221' booking_fee = '510.00' total_price = '5100.00' currency_code = 'GBP'
    description = 'Description_48' overall_status = 'V' created_by = 'MUSTERMANN' created_at = '20240217120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240217120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816ADFDC8BC10F' travel_id = '000049' agency_id = '070049' customer_id = '000049' begin_date = '20240218' end_date = '20240222' booking_fee = '520.00' total_price = '5200.00' currency_code = 'USD'
    description = 'Description_49' overall_status = 'W' created_by = 'MUSTERMANN' created_at = '20240218120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240218120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816BA950183C6C' travel_id = '000050' agency_id = '070050' customer_id = '000050' begin_date = '20240219' end_date = '20240223' booking_fee = '530.00' total_price = '5300.00' currency_code = 'EUR'
    description = 'Description_50' overall_status = 'X' created_by = 'MUSTERMANN' created_at = '20240219120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240219120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816C7203C52403' travel_id = '000051' agency_id = '070051' customer_id = '000051' begin_date = '20240220' end_date = '20240224' booking_fee = '540.00' total_price = '5400.00' currency_code = 'GBP'
    description = 'Description_51' overall_status = 'Y' created_by = 'MUSTERMANN' created_at = '20240220120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240220120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816D2DD53B9337' travel_id = '000052' agency_id = '070052' customer_id = '000052' begin_date = '20240221' end_date = '20240225' booking_fee = '550.00' total_price = '5500.00' currency_code = 'USD'
    description = 'Description_52' overall_status = 'Z' created_by = 'MUSTERMANN' created_at = '20240221120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240221120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816DE8CB472A47' travel_id = '000053' agency_id = '070053' customer_id = '000053' begin_date = '20240222' end_date = '20240226' booking_fee = '560.00' total_price = '5600.00' currency_code = 'EUR'
    description = 'Description_53' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20240222120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240222120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816EA4599FB5B1' travel_id = '000054' agency_id = '070054' customer_id = '000054' begin_date = '20240223' end_date = '20240227' booking_fee = '570.00' total_price = '5700.00' currency_code = 'GBP'
    description = 'Description_54' overall_status = 'B' created_by = 'MUSTERMANN' created_at = '20240223120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240223120000.0000000' )
    ( mykey = '02D5290E594C1EDA93816F5FE44C60C8' travel_id = '000055' agency_id = '070055' customer_id = '000055' begin_date = '20240224' end_date = '20240228' booking_fee = '580.00' total_price = '5800.00' currency_code = 'USD'
    description = 'Description_55' overall_status = 'C' created_by = 'MUSTERMANN' created_at = '20240224120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240224120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381701B9B272292' travel_id = '000056' agency_id = '070056' customer_id = '000056' begin_date = '20240225' end_date = '20240229' booking_fee = '590.00' total_price = '5900.00' currency_code = 'EUR'
    description = 'Description_56' overall_status = 'D' created_by = 'MUSTERMANN' created_at = '20240225120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240225120000.0000000' )
    ( mykey = '02D5290E594C1EDA938170D743670CAF' travel_id = '000057' agency_id = '070057' customer_id = '000057' begin_date = '20240226' end_date = '20240301' booking_fee = '600.00' total_price = '6000.00' currency_code = 'GBP'
    description = 'Description_57' overall_status = 'E' created_by = 'MUSTERMANN' created_at = '20240226120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240226120000.0000000' )
    ( mykey = '02D5290E594C1EDA9381718A56A0419F' travel_id = '000058' agency_id = '070058' customer_id = '000058' begin_date = '20240227' end_date = '20240302' booking_fee = '610.00' total_price = '6100.00' currency_code = 'USD'
    description = 'Description_58' overall_status = 'F' created_by = 'MUSTERMANN' created_at = '20240227120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240227120000.0000000' )
    ( mykey = '02D5290E594C1EDA93817247278E34EA' travel_id = '000059' agency_id = '070059' customer_id = '000059' begin_date = '20240228' end_date = '20240303' booking_fee = '620.00' total_price = '6200.00' currency_code = 'EUR'
    description = 'Description_59' overall_status = 'G' created_by = 'MUSTERMANN' created_at = '20240228120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240228120000.0000000' )
    ( mykey = '02D5290E594C1EDA938172FD0B5E6F5F' travel_id = '000060' agency_id = '070060' customer_id = '000060' begin_date = '20240229' end_date = '20240304' booking_fee = '630.00' total_price = '6300.00' currency_code = 'GBP'
    description = 'Description_60' overall_status = 'H' created_by = 'MUSTERMANN' created_at = '20240229120000.0000000' last_changed_by = 'MUSTERFRAU' last_changed_at = '20240229120000.0000000' )
    ).

*   delete existing entries in the database table
    delete from zpedro_travel.

*   insert the new table entries
    insert zpedro_travel from table @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully! | ).

  ENDMETHOD.
ENDCLASS.
