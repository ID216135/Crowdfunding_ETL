drop table if exists  category cascade;

CREATE TABLE "category" (
    "category_id" varchar unique primary key  NOT NULL,
    "category" varchar   NOT NULL
);

drop table if exists contacts cascade;

CREATE TABLE "contacts" (
    "contact_id" int unique primary key  NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL

);

drop table if exists subcategory cascade;

CREATE TABLE "subcategory" (
    "subcategory_id" varchar unique primary key  NOT NULL,
    "subcategory" varchar   NOT NULL
);

drop table if exists campaign cascade;

CREATE TABLE "campaign" (
    "cf_id" int unique primary key NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id),
	foreign key (contact_id) references contacts(contact_id)
);

select * from campaign;

select * from category;

select * from contacts;

select * from subcategory;
