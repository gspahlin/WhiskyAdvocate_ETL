-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "whiskey_stats" (
    "whiskey_id" INT   NOT NULL,
    "category_id" INT   NOT NULL,
    "name" TEXT   NOT NULL,
    "score" INT   NOT NULL,
    "price_usd" FLOAT   NOT NULL,
    "sale_volume" TEXT   NOT NULL,
    "percent_abv" FLOAT   NOT NULL,
    CONSTRAINT "pk_whiskey_stats" PRIMARY KEY (
        "whiskey_id"
     )
);

CREATE TABLE "reviews" (
    "whiskey_id" INT   NOT NULL,
    "author_id" INT   NOT NULL,
    "Review" TEXT   NOT NULL
);

CREATE TABLE "authors" (
    "author_id" INT   NOT NULL,
    "author" TEXT   NOT NULL,
    CONSTRAINT "pk_authors" PRIMARY KEY (
        "author_id"
     )
);

CREATE TABLE "categories" (
    "category_id" INT   NOT NULL,
    "category" TEXT   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "vector_descriptions" (
    "whiskey_id" INT   NOT NULL,
    "oak" INT   NOT NULL,
    "vanilla" INT   NOT NULL,
    "sweet" INT   NOT NULL,
    "chocolate" INT   NOT NULL,
    "fruit" INT   NOT NULL,
    "spice" INT   NOT NULL,
    "orange" INT   NOT NULL,
    "pepper" INT   NOT NULL,
    "cinnamon" INT   NOT NULL,
    "smoke" INT   NOT NULL,
    "caramel" INT   NOT NULL,
    "sherry" INT   NOT NULL,
    "toffee" INT   NOT NULL,
    "honey" INT   NOT NULL,
    "apple" INT   NOT NULL,
    "citrus" INT   NOT NULL,
    "ginger" INT   NOT NULL,
    "peat" INT   NOT NULL,
    "lemon" INT   NOT NULL,
    "dry" INT   NOT NULL,
    "leather" INT   NOT NULL,
    "sugar" INT   NOT NULL,
    "cherry" INT   NOT NULL,
    "toasted" INT   NOT NULL,
    "tobacco" INT   NOT NULL,
    "licorice" INT   NOT NULL,
    "nuts" INT   NOT NULL,
    "floral" INT   NOT NULL,
    "bitter" INT   NOT NULL,
    "complex" INT   NOT NULL,
    "subtle" INT   NOT NULL,
    "coconut" INT   NOT NULL
);

ALTER TABLE "whiskey_stats" ADD CONSTRAINT "fk_whiskey_stats_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "reviews" ADD CONSTRAINT "fk_reviews_whiskey_id" FOREIGN KEY("whiskey_id")
REFERENCES "whiskey_stats" ("whiskey_id");

ALTER TABLE "reviews" ADD CONSTRAINT "fk_reviews_author_id" FOREIGN KEY("author_id")
REFERENCES "authors" ("author_id");

ALTER TABLE "vector_descriptions" ADD CONSTRAINT "fk_vector_descriptions_whiskey_id" FOREIGN KEY("whiskey_id")
REFERENCES "whiskey_stats" ("whiskey_id");

