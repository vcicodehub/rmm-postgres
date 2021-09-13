create table "rmm_inventory_report" (
  "rmm_inventory_report_id" SERIAL PRIMARY KEY,
  "rmm_shop_id" SERIAL,
  "ir_status" varchar(100),
  "ir_diamonds_cost" decimal,
  "ir_asst_dia_bags_cost" decimal,
  "ir_genuine_colored_cost" decimal,
  "ir_created_colored_cost" decimal,
  "ir_synthetic_colored_cost" decimal,
  "ir_pearls_cost" decimal,
  "ir_gold_stock_10K_cost" decimal,
  "ir_gold_stock_10K_count" decimal,
  "ir_gold_stock_14K_cost" decimal,
  "ir_gold_stock_14K_count" decimal,
  "ir_gold_stock_18K_cost" decimal,
  "ir_gold_stock_18K_count" decimal,
  "ir_gold_solder_10K_cost" decimal,
  "ir_gold_solder_10K_count" decimal,
  "ir_gold_solder_14K_cost" decimal,
  "ir_gold_solder_14K_count" decimal,
  "ir_gold_solder_18K_cost" decimal,
  "ir_gold_solder_18K_count" decimal,
  "ir_gold_casting_grain_10K_cost" decimal,
  "ir_gold_casting_grain_10K_count" decimal,
  "ir_gold_casting_grain_14K_cost" decimal,
  "ir_gold_casting_grain_14K_count" decimal,
  "ir_gold_casting_grain_18K_cost" decimal,
  "ir_gold_casting_grain_18K_count" decimal,
  "ir_platinum_stock_cost" decimal,
  "ir_platinum_stock_count" decimal,
  "ir_platinum_solder_cost" decimal,
  "ir_platinum_solder_count" decimal,
  "ir_gold_findings_cost" decimal,
  "ir_gold_findings_count" decimal,
  "ir_platinum_findings_cost" decimal,
  "ir_platinum_findings_count" decimal,
  "ir_silver_stock_cost" decimal,
  "ir_silver_stock_count" decimal,
  "ir_silver_solder_cost" decimal,
  "ir_silver_solder_count" decimal,
  "ir_silver_casting_grain_cost" decimal,
  "ir_silver_casting_grain_count" decimal,
  "ir_silver_findings_cost" decimal,
  "ir_silver_findings_count" decimal,
  "ir_total" decimal,
  "ir_completion_date" date,
  "ir_shop_approval_status" char(1),
  "ir_dm_approval_status" char(1),
  "ir_op_approval_status" char(1),
  "ir_run_date" date,
  "ir_variance_total" decimal,
  "ir_fiscal_mmyyyy" varchar(6),
  "ir_inv_total" decimal,
  "ir_previous_total" decimal
);

create table "rmm_supply_categories" (
  "rmm_supply_categories_id" SERIAL PRIMARY KEY,
  "sc_category" varchar(200),
  "sc_description" varchar(500),
  "sc_bulk_item" char(1),
  "sc_cost" decimal,
  "sc_add_user_id" varchar(500),
  "sc_add_date" date,
  "sc_mtc_user_id" varchar(500),
  "sc_mtc_date" date
);

create table "rmm_product" (
  "rmm_product_id" SERIAL PRIMARY KEY,
  "rmm_supply_categories_id" SERIAL REFERENCES rmm_supply_categories("rmm_supply_categories_id"),
  "p_key" varchar(1000),
  "p_type" varchar(100),
  "p_description" varchar(4000),
  "p_cost" decimal,
  "p_status" varchar(100),
  "p_name" varchar(200),
  "p_quality" varchar(100),
  "p_cut" varchar(100),
  "p_size" varchar(20),
  "p_shape" varchar(100),
  "p_size_carat" varchar(50),
  "p_color" varchar(100),
  "p_ster_quality" varchar(100),
  "p_add_user_id" varchar(500),
  "p_add_date" date,
  "p_mtc_user_id" varchar(500),
  "p_mtc_date" date
);

create table "rmm_order" (
  "rmm_order_id" SERIAL PRIMARY KEY,
  "rmm_user_id" varchar(500),
  "rmm_shop_id" SERIAL,
  "rmm_vendor_id" SERIAL,
  "o_number" varchar(100),
  "o_type" varchar(100),
  "o_date" date,
  "o_status" varchar(100),
  "o_store_comment" varchar(4000),
  "o_is_received" char(1),
  "o_is_delivered" char(1),
  "o_repair_job_num" varchar(500),
  "o_approved_by" varchar(500),
  "o_approved_by_date" date,
  "o_add_user_id" varchar(500),
  "o_add_date" date,
  "o_mtc_user_id" varchar(500),
  "o_mtc_date" date
);

create table "rmm_receipt" (
  "rmm_receipt_id" SERIAL PRIMARY KEY,
  "rmm_order_id" SERIAL REFERENCES rmm_order("rmm_order_id"),
  "r_date" date,
  "r_status" varchar(100),
  "r_add_user_id" varchar(500),
  "r_add_date" date,
  "r_mtc_user_id" varchar(500),
  "r_mtc_date" date
);

create table "rmm_invoice" (
  "rmm_invoice_id" SERIAL PRIMARY KEY,
  "rmm_order_id" SERIAL REFERENCES rmm_order("rmm_order_id"),
  "i_number" varchar(200),
  "i_status" varchar(200),
  "i_date" date,
  "i_grand_total" decimal,
  "i_sent_to_sap" char(1),
  "i_sent_to_sap_date" date,
  "i_pay_to_sap" char(1),
  "i_add_user_id" varchar(500),
  "i_add_date" date,
  "i_mtc_user_id" varchar(500),
  "i_mtc_date" date
);

create table "rmm_order_line_item" (
  "rmm_order_line_item_id" SERIAL PRIMARY KEY,
  "rmm_order_id" SERIAL REFERENCES rmm_order("rmm_order_id"),
  "rmm_product_id" SERIAL REFERENCES rmm_product("rmm_product_id"),
  "oli_product_key" varchar(1000),
  "oli_description" varchar(4000),
  "oli_uom" varchar(100),
  "oli_line_num" decimal,
  "oli_quantity_ordered" decimal,
  "oli_quantity_delivered" decimal,
  "oli_quantity_invoiced" decimal,
  "oli_add_user_id" varchar(500),
  "oli_add_date" date,
  "oli_mtc_user_id" varchar(500),
  "oli_mtc_date" date
);

create table "rmm_receipt_line_item" (
  "rmm_receipt_line_item_id" SERIAL PRIMARY KEY,
  "rmm_receipt_id" SERIAL REFERENCES rmm_receipt("rmm_receipt_id"),
  "rmm_product_id" SERIAL REFERENCES rmm_product("rmm_product_id"),
  "rli_quantity" decimal,
  "rli_add_user_id" varchar(500),
  "rli_add_date" date,
  "rli_mtc_user_id" varchar(500),
  "rli_mtc_date" date
);

create table "rmm_invoice_line_item" (
  "rmm_invoice_line_item_id" SERIAL PRIMARY KEY,
  "rmm_invoice_id" SERIAL REFERENCES rmm_invoice("rmm_invoice_id"),
  "rmm_product_id" SERIAL REFERENCES rmm_product("rmm_product_id"),
  "ili_description" varchar(2000),
  "ili_line_num" decimal,
  "ili_cost" decimal,
  "ili_quantity" decimal,
  "ili_total_amount" decimal,
  "ili_add_user_id" varchar(500),
  "ili_add_date" date,
  "ili_mtc_user_id" varchar(500),
  "ili_mtc_date" date
);

create table "rmm_shop_inventory" (
  "rmm_shop_inventory_id" SERIAL PRIMARY KEY,
  "rmm_shop_id" SERIAL,
  "rmm_product_id" SERIAL REFERENCES rmm_product("rmm_product_id"),
  "si_quantity" decimal,
  "si_status" varchar(100),
  "si_add_user_id" varchar(500),
  "si_add_date" date,
  "si_mtc_user_id" varchar(500),
  "si_mtc_date" date
);