create database srs_custom_jewelry;

create table "srs_cj_custom_job" (
  "srs_cj_custom_job_id" SERIAL PRIMARY KEY not null,
  "cj_status" varchar(100),
  "cj_version" integer,
  "cj_version_status" varchar(100),
  "cj_job_number" varchar(100),
  "cj_shop_number" varchar(100),
  "cj_store_number" varchar(100),
  "cj_order_number" varchar(100),
  "cj_job_code" varchar(100),
  "cj_piece_type" varchar(100),
  "cj_shank" varchar(100),
  "cj_estimated_completion_date" timestamp,
  "cj_created_date" timestamp,
  "cj_category" varchar(100),
  "cj_vendor" varchar(500),
  "cj_vendor_number" varchar(200),
  "cj_customer_name" varchar(500),
  "cj_style" varchar(100),
  "cj_size_mm" varchar(100),
  "cj_dimension_a" varchar(100),
  "cj_dimension_b" varchar(100),
  "cj_dimension_c" varchar(100),
  "cj_dimension_d" varchar(100),
  "cj_dimension_e" varchar(100),
  "cj_dimension_f" varchar(100),
  "cj_dimension_g" varchar(100),
  "cj_engraving_required" char(1),
  "cj_engraving_charge" decimal,
  "cj_nonmelee_stones" char(1),
  "cj_nonsignet_melee_stones" char(1),
  "cj_notes" varchar(4000),
  "cj_metal_notes" varchar(4000),
  "cj_stone_notes" varchar(4000),
  "cj_attachment_notes" varchar(4000),
  "cj_employee_notes" varchar(4000),
  "cj_material_notes" varchar(4000),
  "cj_add_user_id" varchar(500),
  "cj_add_date" timestamp,
  "cj_mtc_user_id" varchar(500),
  "cj_mtc_date" timestamp
);

create table "srs_cj_vendor_job" (
  "srs_cj_vendor_job_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "vj_status" varchar(100),
  "vj_vendor_number" varchar(500),
  "vj_vendor_name" varchar(100),
  "vj_job_number" varchar(100),
  "vj_tool" varchar(500),
  "vj_retail_price" decimal,  
  "vj_add_user_id" varchar(500),
  "vj_add_date" timestamp,
  "vj_mtc_user_id" varchar(500),
  "vj_mtc_date" timestamp
);

create table "srs_cj_metal" (
  "srs_cj_metal_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "m_status" varchar(100),
  "m_type" varchar(100),  
  "m_tone" varchar(100),
  "m_carat" varchar(100),
  "m_placement" varchar(100),
  "m_notes" varchar(4000),  
  "m_add_user_id" varchar(500),
  "m_add_date" timestamp,
  "m_mtc_user_id" varchar(500),
  "m_mtc_date" timestamp
);

create table "srs_cj_stone" (
  "srs_cj_stone_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "s_status" varchar(100),
  "s_stone_type" varchar(100),
  "s_product_type" varchar(100),
  "s_color" varchar(100),
  "s_shape" varchar(100),
  "s_cut" varchar(100),
  "s_clarity" varchar(100),
  "s_size_mm" varchar(100),
  "s_size_ct" varchar(100),
  "s_quantity" varchar(100),
  "s_placement" varchar(100),
  "s_setting_style" varchar(100),
  "s_provided_by" varchar(100),
  "s_notes" varchar(4000),  
  "s_add_user_id" varchar(500),
  "s_add_date" timestamp,
  "s_mtc_user_id" varchar(500),
  "s_mtc_date" timestamp
);

create table "srs_cj_attachment" (
  "srs_cj_attachment_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "a_status" varchar(100),
  "a_original_filename" varchar(1000),
  "a_system_filename" varchar(1000),
  "a_content_type" varchar(100),
  "a_content" bytea,
  "a_notes" varchar(4000),  
  "a_add_user_id" varchar(500),
  "a_add_date" timestamp,
  "a_mtc_user_id" varchar(500),
  "a_mtc_date" timestamp
);

create table "srs_cj_employee" (
  "srs_cj_employee_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "e_employee_id" varchar(100),
  "e_first_name" varchar(500),
  "e_last_name" varchar(500),  
  "e_add_user_id" varchar(500),
  "e_add_date" timestamp,
  "e_mtc_user_id" varchar(500),
  "e_mtc_date" timestamp
);

create table "srs_cj_material" (
  "srs_cj_material_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "ma_status" varchar(100),
  "ma_sequence" integer,
  "ma_signet_merch" char(1),
  "ma_sku" varchar(100),
  "ma_type" varchar(100),
  "ma_description" varchar(4000),
  "ma_condition" varchar(1000),
  "ma_supplier" varchar(200),
  "ma_value" decimal,
  "ma_metal_type" varchar(100),
  "ma_engraving" char(1),
  "ma_carat_weight" varchar(100),
  "ma_stones" char(1),
  "ma_fractured_stone" char(1),
  "ma_tested_diamond" char(1),
  "ma_large_diamond" char(1),
  "ma_quantity" integer,
  "ma_intended_use" varchar(4000),
  "ma_notes" varchar(4000),  
  "ma_add_user_id" varchar(500),
  "ma_add_date" timestamp,
  "ma_mtc_user_id" varchar(500),
  "ma_mtc_date" timestamp
);

create table "srs_cj_image" (
  "srs_cj_images_id" SERIAL PRIMARY KEY not null,
  "srs_cj_custom_job_id" SERIAL REFERENCES srs_cj_custom_job("srs_cj_custom_job_id"),
  "i_status" varchar(100),
  "i_selected" char(1),
  "i_original_filename" varchar(2000),
  "i_image_url" varchar(2000),
  "i_image_type" varchar(200),
  "i_image_taken_type" varchar(200),
  "i_image_add_date" timestamp,
  "i_notes" varchar(4000),  
  "i_add_user_id" varchar(500),
  "i_add_date" timestamp,
  "i_mtc_user_id" varchar(500),
  "i_mtc_date" timestamp
);

create table "srs_cj_types" (
  "srs_cj_types_id" SERIAL PRIMARY KEY not null,
  "t_type_category" varchar(200),
  "t_type_code" varchar(200),
  "t_type_name" varchar(500),
  "t_sequence_num" integer,
  "t_add_user_id" varchar(500),
  "t_add_date" timestamp,
  "t_mtc_user_id" varchar(500),
  "t_mtc_date" timestamp
);

create table "srs_cj_types_xref" (
  "srs_cj_types_parent_id" integer REFERENCES srs_cj_types("srs_cj_types_id") not null,
  "srs_cj_types_child_id" integer REFERENCES srs_cj_types("srs_cj_types_id") not null,
  "tx_type_status" varchar(500),
  "tx_add_user_id" varchar(500),
  "tx_add_date" timestamp,
  "tx_mtc_user_id" varchar(500),
  "tx_mtc_date" timestamp,
  PRIMARY KEY(srs_cj_types_parent_id, srs_cj_types_child_id)
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



