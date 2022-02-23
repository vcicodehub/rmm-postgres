create table "rmm_shop" (
  "rmm_shop_id" SERIAL PRIMARY KEY not null,
  "s_number" varchar(100),
  "s_store_number" integer,
  "s_name" varchar(1000),
  "s_addr_line1" varchar(500),
  "s_addr_line2" varchar(500),
  "s_addr_city" varchar(500),
  "s_addr_state" varchar(3),
  "s_addr_zip" varchar(10),
  "s_status" varchar(100),
  "s_district_manager" varchar(500),
  "s_senior_director" varchar(500),
  "s_exclude_from_inv" char(1),
  "s_keep_prv_month_inv" char(1),
  "s_add_user_id" varchar(500),
  "s_add_date" date,
  "s_mtc_user_id" varchar(500),
  "s_mtc_date" date,
  "s_email_address" varchar(1000)
);

