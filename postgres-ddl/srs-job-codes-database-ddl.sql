create database srs_job_codes;

create table "srs_job_codes" (
  "srs_job_codes_id" SERIAL PRIMARY KEY not null,
  "jc_code" integer,
  "jc_standard_retail_cost" decimal,
  "jc_store_retail_cost" decimal,
  "jc_shop_charge" decimal,
  "jc_max_quantity" integer,
  "jc_description" varchar(2000),
  "jc_category" integer,
  "jc_metal_type" varchar(200),
  "jc_bundle_metal_type" varchar(200),
  "jc_headset_type" varchar(200),
  "jc_min_carat" decimal,
  "jc_max_carat" decimal,
  "jc_read_only" char,
  "jc_add_user_id" varchar(500),
  "jc_add_date" timestamp,
  "jc_mtc_user_id" varchar(500),
  "jc_mtc_date" timestamp
);

create table "srs_bundles" (
  "srs_bundle_id" SERIAL PRIMARY KEY not null,
  "srs_job_code" integer,
  "b_name" varchar(200),
  "b_bundle_type" varchar(200),
  "b_metal_type" varchar(200),
  "b_jewelry_type" varchar(200),
  "b_job_code" integer,
  "b_add_user_id" varchar(500),
  "b_add_date" timestamp,
  "b_mtc_user_id" varchar(500),
  "b_mtc_date" timestamp
);

create table "srs_job_code_bundles" (
  "srs_bundle_id" integer REFERENCES srs_bundles("srs_bundle_id") not null,
  "srs_job_codes_id" integer REFERENCES srs_job_codes("srs_job_codes_id") not null,
  "jcb_status" varchar(100),
  "jcb_add_user_id" varchar(500),
  "jcb_add_date" timestamp,
  "jcb_mtc_user_id" varchar(500),
  "jcb_mtc_date" timestamp,
  PRIMARY KEY(srs_bundle_id, srs_job_codes_id)
);

create table "srs_job_code_categories" (
  "srs_job_code_categories_id" SERIAL PRIMARY KEY not null,
  "jcc_title" varchar(100),
  "jcc_add_user_id" varchar(500),
  "jcc_add_date" timestamp,
  "jcc_mtc_user_id" varchar(500),
  "jcc_mtc_date" timestamp
);

create table "srs_bundle_metal_types" (
  "srs_bundle_metal_types_id" SERIAL PRIMARY KEY not null,
  "bmt_metal_type" varchar(500),
  "bmt_short_name" varchar(100),
  "bmt_bundle_metal_type" varchar(500),
  "bmt_add_user_id" varchar(500),
  "bmt_add_date" timestamp,
  "bmt_mtc_user_id" varchar(500),
  "bmt_mtc_date" timestamp
);

CREATE ROLE srs LOGIN PASSWORD 'WV+eN+HFQ-eH2_5w';
CREATE ROLE srs_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA srs TO srs_role;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA srs TO srs_role;
GRANT srs_role TO srs;

CREATE ROLE srs_test LOGIN PASSWORD 'srs_test';
CREATE ROLE test;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA srs TO test;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA srs TO test;
GRANT test TO srs_test;
