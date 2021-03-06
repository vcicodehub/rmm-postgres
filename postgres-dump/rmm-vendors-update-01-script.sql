alter table rmm_vendor add v_send_flip_file char(1);
alter table rmm_vendor add v_requires_srsp char(1);
alter table rmm_vendor add v_requires_kimberly char(1);

update rmm_vendor set v_send_flip_file = 'N';
update rmm_vendor set v_requires_srsp = 'N';
update rmm_vendor set v_requires_kimberly = 'N';

create table "rmm_vendor_invoice_error" (
  "rmm_vendor_invoice_error_id" serial,
  "rmm_order_id" integer,
  "rmm_invoice_id" integer,
  "vie_amount" decimal,
  "vie_color" varchar(100),
  "vie_cut" varchar(100),
  "vie_category" varchar(1000),
  "vie_description" varchar(1000),
  "vie_error" char(1),
  "vie_invoice_number" integer,
  "vie_line_number" integer,
  "vie_message" varchar(4000),
  "vie_po_date" date,
  "vie_po_number" integer,
  "vie_processed" char(1),
  "vie_quality" varchar(100),
  "vie_quantity" integer,
  "vie_series" varchar(500),
  "vie_shape" varchar(200),
  "vie_ship_date" date,
  "vie_shop_number" integer,
  "vie_size_ct" varchar(200),
  "vie_sku" varchar(200),
  "vie_sterling_category" varchar(200),
  "vie_type" varchar(200),
  "vie_uniqueness" varchar(200),
  "vie_unit_cost" decimal,
  "vie_uom" varchar(100),
  "vie_vendor_name" varchar(500),
  "vie_vendor_number" integer,
  "vie_add_user_id" varchar(500),
  "vie_add_date" date,
  "vie_mtc_user_id" varchar(500),
  "vie_mtc_date" date
);

create table "rmm_vendor_order" (
  "rmm_vendor_order_id" serial,
  "rmm_product_id" integer,
  "rmm_order_id" integer,
  "rmm_order_line_item_id" integer,
  "vo_vendor_name" varchar(500),
  "vo_vendor_number" integer,
  "vo_po_number" varchar(100),
  "vo_line_number" integer,
  "vo_shop_number" integer,
  "vo_po_date" date,
  "vo_description" varchar(2000),
  "vo_description2" varchar(2000),
  "vo_type" varchar(100),
  "vo_quantity" integer,
  "vo_category" varchar(500),
  "vo_sku" varchar(100),
  "vo_series" varchar(200),
  "vo_quality" varchar(100),
  "vo_size_ct" varchar(100),
  "vo_size_mm" varchar(100),
  "vo_shape" varchar(100),
  "vo_color" varchar(100),
  "vo_cut" varchar(100),
  "vo_processed" char(1),
  "vo_error" char(1),
  "vo_message" varchar(4000),
  "vo_add_user_id" varchar(500),
  "vo_add_date" date,
  "vo_mtc_user_id" varchar(500),
  "vo_mtc_date" date
);

create table "rmm_vendor_ftp" (
  "rmm_vendor_ftp_id" serial,
  "rmm_vendor_id" decimal,
  "vftp_vendor_name" varchar(50),
  "vftp_param1" varchar(50),
  "vftp_param2" varchar(50),
  "vftp_param3" varchar(50),
  "vftp_active" char(1),
  "vftp_validated" char(1),
  "vftp_check_flags_only" char(1),
  "vftp_transaction_id" integer,
  "vftp_add_user_id" varchar(500),
  "vftp_add_date" date,
  "vftp_mtc_user_id" varchar(500),
  "vftp_mtc_date" date
);

create table "rmm_vendor_file" (
  "rmm_vendor_file_id" serial,
  "vf_checksum" varchar(100),
  "vf_filename" varchar(500),
  "vf_vendor_name" varchar(500),
  "vf_doc_type" varchar(100),
  "vf_status" varchar(100),
  "vf_num_exceptions" integer,
  "vf_num_invalid_docs" integer,
  "vf_num_valid_docs" integer,
  "vf_file_set" integer,
  "vf_date_processed" date,
  "vf_file_id" integer,
  "vf_active" char(1),
  "vf_message" varchar(4000),
  "vf_add_user_id" varchar(500),
  "vf_add_date" date,
  "vf_mtc_user_id" varchar(500),
  "vf_mtc_date" date
);
