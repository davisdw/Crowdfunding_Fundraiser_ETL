CREATE TABLE "campaign" (
  "cf_id" int PRIMARY KEY,
  "contact_id" int,
  "company_name" varchar,
  "description" varchar,
  "goal" float,
  "pledged" float,
  "outcome" varchar,
  "backers_count" int,
  "country" varchar(2),
  "currency" varchar(3),
  "launch_date" datetime,
  "end_date" datetime,
  "category_id" varchar(4),
  "subcategory_id" varchar(5)
);

CREATE TABLE "contacts" (
  "contact_id" int PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar
);

CREATE TABLE "category" (
  "category_id" int PRIMARY KEY,
  "category" varchar
);

CREATE TABLE "subcategory" (
  "subcategory_id" int PRIMARY KEY,
  "subcategory" varchar
);

ALTER TABLE "campaign" ADD FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");
