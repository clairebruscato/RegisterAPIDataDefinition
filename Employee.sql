CREATE EXTENSION pgcrypto;

CREATE TABLE employee (
  Record_ID uuid NOT NULL,
  First_Name character varying(32) NOT NULL DEFAULT(''),
  Last_Name character varying(32) NOT NULL DEFAULT(''),
  Employee_ID int NOT NULL,
  Active character varying(8) NOT NULL,
  Classification char(2) CHECK (Classification in ('GM','SM','C')),
  Manager uuid,
  Password character varying(32) NOT NULL DEFAULT,
  Created_On timestamp without time zone NOT NULL DEFAULT now(),
  PRIMARY KEY (Record_ID),
) WITH (
  OIDS=FALSE
);
