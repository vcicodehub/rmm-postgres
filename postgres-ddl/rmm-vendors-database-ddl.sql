create table "rmm_vendor" (
  "rmm_vendor_id" SERIAL PRIMARY KEY,
  "v_type" varchar(100),
  "v_status" varchar(100),
  "v_number" varchar(100),
  "v_name" varchar(1000),
  "v_email_addr" varchar(500),
  "v_addr_line1" varchar(500),
  "v_addr_line2" varchar(500),
  "v_addr_city" varchar(500),
  "v_addr_state" varchar(3),
  "v_addr_zip" varchar(10),
  "v_order_method" varchar(100),
  "v_cadcam" char(1),
  "v_payterm_discount" decimal,
  "v_payterm_net_date" date,
  "v_payterm_net_days" decimal,
  "v_add_user_id" varchar(500),
  "v_add_date" date,
  "v_mtc_user_id" varchar(500),
  "v_mtc_date" date
);

