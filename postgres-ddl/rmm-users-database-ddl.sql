create table "rmm_user" (
  "rmm_user_id" varchar(500) PRIMARY KEY,
  "u_name" varchar(500),
  "u_password" varchar(200),
  "u_status" varchar(100),
  "u_add_user_id" varchar(500),
  "u_add_date" date,
  "u_mtc_user_id" varchar(500),
  "u_mtc_date" date
);

create table "rmm_role" (
  "rmm_role_id" SERIAL PRIMARY KEY,
  "ro_name" varchar(500),
  "ro_description" varchar(1000),
  "ro_status" varchar(100),
  "ro_add_user_id" varchar(500),
  "ro_add_date" date,
  "ro_mtc_user_id" varchar(500),
  "ro_mtc_date" date
);

create table "rmm_user_role" (
  "rmm_user_id" varchar(500) REFERENCES rmm_user("rmm_user_id"),
  "rmm_role_id" SERIAL REFERENCES rmm_role("rmm_role_id"),
  "ur_value" varchar(1000),
  "ur_status" varchar(100),
  "ur_add_user_id" varchar(500),
  "ur_add_date" date,
  "ur_mtc_user_id" varchar(500),
  "ur_mtc_date" date,
  PRIMARY KEY(rmm_user_id, rmm_role_id)
);

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

create table "rmm_search_profile" (
  "rmm_search_profile_id" serial primary key,
  "rmm_user_id" varchar(500) references rmm_user("rmm_user_id"),
  "sp_status" varchar(100),
  "sp_name" varchar(500),
  "sp_type" varchar(100),
  "sp_add_user_id" varchar(500),
  "sp_add_date" date,
  "sp_mtc_user_id" varchar(500),
  "sp_mtc_date" date
);

create table "rmm_search_profile_criteria" (
  "rmm_search_criteria_id" serial primary key,
  "rmm_search_profile_id" integer references rmm_search_profile("rmm_search_profile_id"),
  "spc_name" varchar(500),
  "spc_value" varchar(100),
  "spc_add_user_id" varchar(500),
  "spc_add_date" date,
  "spc_mtc_user_id" varchar(500),
  "spc_mtc_date" date
);
