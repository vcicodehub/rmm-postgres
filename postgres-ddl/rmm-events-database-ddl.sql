create table "rmm_events" (
  "rmm_event_id" SERIAL PRIMARY KEY not null,
  "e_application" varchar(500),
  "e_user_id" varchar(500),
  "e_shop_number" varchar(100),
  "e_date" timestamp,
  "e_start_time" timestamp,
  "e_end_time" timestamp,
  "e_duration" decimal,
  "e_type" varchar(500),
  "e_type_id" decimal,
  "e_title" varchar(500),
  "e_label" varchar(500),
  "e_description" varchar(4000),
  "e_add_user_id" varchar(500),
  "e_add_date" date,
  "e_mtc_user_id" varchar(500),
  "e_mtc_date" date
);

create table "rmm_notifications" (
  "rmm_notification_id" SERIAL PRIMARY KEY not null,
  "rmm_user_id" varchar(500),
  "rmm_shop_id" number,
  "n_date" date,
  "n_type" varchar(500),
  "n_type_id" decimal,
  "n_title" varchar(500),
  "n_label" varchar(500),
  "n_description" varchar(4000),
  "n_action" varchar(4000),
  "n_add_user_id" varchar(500),
  "n_add_date" date,
  "n_mtc_user_id" varchar(500),
  "n_mtc_date" date
);
