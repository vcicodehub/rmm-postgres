CREATE TABLE rmm_events (
  "rmm_event_id" SERIAL NOT NULL, 
  "e_application" VARCHAR(500), 
  "e_user_id" VARCHAR(500), 
  "e_shop_number" VARCHAR(100), 
  "e_date" TIMESTAMP, 
  "e_type" VARCHAR(500), 
  "e_type_id" NUMERIC, 
  "e_analytics_id" NUMERIC, 
  "e_analytics_data" VARCHAR(4000), 
  "e_title" VARCHAR(500), 
  "e_label" VARCHAR(500), 
  "e_description" VARCHAR(4000), 
  "e_add_user_id" VARCHAR(500), 
  "e_add_date" DATE, 
  "e_mtc_user_id" VARCHAR(500), 
  "e_mtc_date" DATE, 
  PRIMARY KEY (rmm_event_id)
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
