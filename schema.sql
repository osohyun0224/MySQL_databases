CREATE TABLE person(
person_name character varying(1073741823),
person_address character varying(1073741823),
job set_of(character varying(1073741823))
) COLLATE utf8_bin  REUSE_OID ;

CREATE TABLE job_info
		 UNDER person(
average_salary integer DEFAULT 1 NOT NULL
) COLLATE utf8_bin  REUSE_OID ;

CREATE TABLE income
		 UNDER person(
tax integer DEFAULT 1 NOT NULL
) COLLATE utf8_bin  REUSE_OID ;

