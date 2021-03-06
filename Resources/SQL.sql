drop table if exists "FINAL_MERGE", "L_AIRPORT_ID", "L_UNIQUE_CARRIERS", "RDUCurrentDestinations", "RDUCurrentFlights", "RDU_2015_19_Delays_Causes_ML";

CREATE TABLE "FINAL_MERGE"
(
    "ITIN_ID" INT NOT NULL,
    "COUPONS" INT NOT NULL,
	"YEAR" INT NOT NULL,
    "ORIGIN_AIRPORT_ID" INT NOT NULL,
	"QUARTER" INT NOT NULL,
    "ORIGIN" VARCHAR NOT NULL,
	"DEST_AIRPORT_ID" INT NOT NULL,
    "DEST" VARCHAR NOT NULL,
	"TICKET_CARRIER" VARCHAR NOT NULL,
    "OPERATING_CARRIER" VARCHAR NOT NULL,
	"REPORTING_CARRIER" VARCHAR NOT NULL,
    "PASSENGERS" INT NOT NULL,
	"FARE_CLASS" VARCHAR NOT NULL,
    "DISTANCE_GROUP" INT NOT NULL,
	"ITIN_GEO_TYPE" INT NOT NULL,
    "ROUNDTRIP" INT NOT NULL,
	"ITIN_FARE" INT NOT NULL,
    "MILES_FLOWN" INT NOT NULL
     );


CREATE TABLE "L_AIRPORT_ID"
(
    "Code" INT NOT NULL,
   	"Description" VARCHAR NOT NULL
     );

CREATE TABLE "L_UNIQUE_CARRIERS"
(
    "Code" VARCHAR NOT NULL,
   	"Description" VARCHAR NOT NULL
     );

CREATE TABLE "RDUCurrentDestinations"
(
    "DEST_AIRPORT_ID" INT NOT NULL,
   	"DEST" VARCHAR NOT NULL,
	"DEST_CITY_NAME" VARCHAR NOT NULL,
   	"DISTANCE" INT NOT NULL,
	"DISTANCE_GROUP" INT NOT NULL,
   	"CITY" VARCHAR NOT NULL,
	"STATE" VARCHAR NOT NULL,
   	"LATITUDE" INT NOT NULL,
	"LONGITUDE" INT NOT NULL
     );

CREATE TABLE "RDUCurrentFlights"
(
    "OP_UNIQUE_CARRIER" VARCHAR NOT NULL,
   	"OP_CARRIER_FL_NUM" INT NOT NULL,
	"DEST_AIRPORT_ID" INT NOT NULL,
   	"DEST" VARCHAR NOT NULL,
	"DEST_CITY_NAME" VARCHAR NOT NULL,
   	"DISTANCE" INT NOT NULL,
	"DISTANCE_GROUP" INT NOT NULL
     );

CREATE TABLE "RDU_2015_19_Delays_Causes_ML"
(
    "YEAR" INT NOT NULL,
   	"QUARTER" INT NOT NULL,
	"MONTH" INT NOT NULL,
   	"DAY_OF_MONTH" INT NOT NULL,
	"DAY_OF_WEEK" INT NOT NULL,
   	"FL_DATE" DATE NOT NULL,
	"OP_UNIQUE_CARRIER" VARCHAR NOT NULL,
	"OP_CARRIER_FL_NUM" INT NOT NULL,
   	"ORIGIN_AIRPORT_ID" INT NOT NULL,
	"ORIGIN" VARCHAR NOT NULL,
   	"ORIGIN_WAC" INT NOT NULL,
	"DEST_AIRPORT_ID" INT NOT NULL,
   	"DEST" VARCHAR NOT NULL,
	"DEST_CITY_NAME" VARCHAR NOT NULL,
	"DEST_STATE_ABR" VARCHAR NOT NULL,
   	"DEST_WAC" INT NOT NULL,
	"CRS_DEP_TIME" INT NOT NULL,
   	"DEP_TIME" INT NOT NULL,
	"DEP_DELAY" INT NOT NULL,
   	"DEP_DELAY_NEW" INT NOT NULL,
	"DEP_DEL15" INT NOT NULL,
	"DEP_DELAY_GROUP" INT NOT NULL,
   	"DEP_TIME_BLK" VARCHAR NOT NULL,
	"CRS_ARR_TIME" INT NOT NULL,
   	"ARR_TIME" INT NOT NULL,
	"ARR_DELAY" INT NOT NULL,
   	"ARR_DELAY_NEW" INT NOT NULL,
	"ARR_DEL15" INT NOT NULL,
	"ARR_DELAY_GROUP" VARCHAR NOT NULL,
   	"ARR_TIME_BLK" VARCHAR NOT NULL,
	"CANCELLED" INT NOT NULL,
   	"CANCELLATION_CODE" VARCHAR NOT NULL,
	"DIVERTED" INT NOT NULL,
   	"CRS_ELAPSED_TIME" INT NOT NULL,
	"ACTUAL_ELAPSED_TIME" INT NOT NULL,
	"AIR_TIME" INT NOT NULL,
   	"DISTANCE" INT NOT NULL,
	"DISTANCE_GROUP" INT NOT NULL,
   	"CARRIER_DELAY" INT NOT NULL,
	"WEATHER_DELAY" INT NOT NULL,
   	"NAS_DELAY" INT NOT NULL,
	"SECURITY_DELAY" INT NOT NULL,
	"LATE_AIRCRAFT_DELAY" INT NOT NULL
     );