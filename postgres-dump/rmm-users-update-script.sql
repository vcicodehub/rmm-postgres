alter table rmm_role add ro_description varchar(1000);

update rmm_role set ro_description = 'Administrator' where ro_name = 'ADMIN';
update rmm_role set ro_description = 'User' where ro_name = 'USER';
update rmm_role set ro_description = 'District Manager' where ro_name = 'DM';
update rmm_role set ro_description = 'Manager' where ro_name = 'MANAGER';
update rmm_role set ro_description = 'Corporate User' where ro_name = 'CORPORATE';

create table "rmm_permission" (
  "rmm_permission_id" serial primary key,
  "p_name" varchar(500),
  "p_description" varchar(1000),
  "p_status" varchar(100),
  "p_add_user_id" varchar(500),
  "p_add_date" date,
  "p_mtc_user_id" varchar(500),
  "p_mtc_date" date
);

create table "rmm_role_permission" (
  "rmm_role_id" integer references rmm_role("rmm_role_id"),
  "rmm_permission_id" integer  references rmm_permission("rmm_permission_id"),
  "rp_status" varchar(100),
  "rp_add_user_id" varchar(500),
  "rp_add_date" date,
  "rp_mtc_user_id" varchar(500),
  "rp_mtc_date" date
);

insert into rmm_permission (p_name, p_description, p_status, p_add_user_id, p_add_date, p_mtc_user_id, p_mtc_date)
  VALUES ('REQUEST_SUPPLIES', 'Request Supplies', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  ('RECEIVE_SUPPLIES', 'Receive Supplies', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  ('STONE_INVENTORY', 'Stone Inventory', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  ('MONTHLY_INVENTORY', 'Monthly Inventory', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  ('SHOP_TRANSFER_ORDERS', 'Shop Transfer Orders', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  ('MY_NOTICES', 'My Notices', 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date);

insert into rmm_role_permission (rmm_role_id, rmm_permission_id, rp_status, rp_add_user_id, rp_add_date, rp_mtc_user_id, rp_mtc_date)
  VALUES (1, 1, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (1, 2, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (1, 3, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (1, 4, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (1, 5, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (1, 6, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 1, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 2, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 3, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 4, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 5, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (4, 6, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 1, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 2, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 3, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 4, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 5, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (5, 6, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (2, 1, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (2, 2, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date),
  (3, 4, 'ACTIVE', 'SYSTEM', current_date, 'SYSTEM', current_date);
  