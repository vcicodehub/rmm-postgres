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
