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
  "jc_headset_type" varchar(200),
  "jc_min_carat" decimal,
  "jc_max_carat" decimal,
  "jc_read_only" char,
  "jc_add_user_id" varchar(500),
  "jc_add_date" date,
  "jc_mtc_user_id" varchar(500),
  "jc_mtc_date" date
);

create table "srs_bundles" (
  "srs_bundle_id" SERIAL PRIMARY KEY not null,
  "b_name" varchar(200),
  "b_bundle_type" varchar(200),
  "b_metal_type" varchar(200),
  "b_jewelery_type" varchar(200),
  "b_add_user_id" varchar(500),
  "b_add_date" date,
  "b_mtc_user_id" varchar(500),
  "b_mtc_date" date
);

create table "srs_job_code_bundles" (
  "srs_job_codes_bundle_id" integer,
  "srs_job_codes_id" integer,
  "jcb_status" varchar(100),
  "jcb_add_user_id" varchar(500),
  "jcb_add_date" date,
  "jcb_mtc_user_id" varchar(500),
  "jcb_mtc_date" date,
  PRIMARY KEY(srs_job_codes_bundle_id, srs_job_codes_id)
);
