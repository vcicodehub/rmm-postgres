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
  "s_add_date" timestamp,
  "s_mtc_user_id" varchar(500),
  "s_mtc_date" timestamp,
  "s_email_address" varchar(1000),
  "s_phone_number" varchar(50),
  "s_comment" varchar(4000)
);

create table "rmm_feature" (
  "rmm_feature_id" SERIAL PRIMARY KEY not null,
  "f_name" varchar(500),
  "f_description" varchar(4000),
  "f_status" varchar(50),
  "f_add_user_id" varchar(500),
  "f_add_date" date,
  "f_mtc_user_id" varchar(500),
  "f_mtc_date" date
);

create table "rmm_feature_toggle" (
  "rmm_feature_toggle_id" SERIAL PRIMARY KEY not null,
  "rmm_feature_id" integer REFERENCES rmm_feature("rmm_feature_id") not null,
  "ft_shop_number" varchar(100),
  "ft_employee_number" varchar(100),
  "ft_repair_district" varchar(100),
  "ft_add_user_id" varchar(500),
  "ft_add_date" date,
  "ft_mtc_user_id" varchar(500),
  "ft_mtc_date" date
);


