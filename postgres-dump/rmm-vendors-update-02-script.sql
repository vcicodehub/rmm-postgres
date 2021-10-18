alter table rmm_vendor_order drop column rmm_product_id;
alter table rmm_vendor_order drop column rmm_order_id;
alter table rmm_vendor_order drop column rmm_order_line_item_id;
alter table rmm_vendor_order drop column vo_description2;

alter table rmm_vendor_order add column vo_status varchar(100);