create table "rmm_events" (
  "rmm_event_id" SERIAL PRIMARY KEY,
  "rmm_user_id" varchar(500),
  "e_date" date,
  "e_type" varchar(500),
  "e_type_id" decimal,
  "e_title" varchar(500),
  "e_description" varchar(4000),
  "e_add_user_id" varchar(500),
  "e_add_date" date,
  "e_mtc_user_id" varchar(500),
  "e_mtc_date" date
);
