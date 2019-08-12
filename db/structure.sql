CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "networks" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "call_letters" varchar, "channel" integer);
CREATE TABLE "shows" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "network_id" integer);
CREATE TABLE "actors" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar, "last_name" varchar);
CREATE TABLE "characters" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "actor_id" integer, "show_id" integer);
INSERT INTO "schema_migrations" (version) VALUES
('1'),
('2'),
('3'),
('4'),
('5');


