--Table dropping for restart

DROP TABLE IF EXISTS "reviews";

DROP TABLE IF EXISTS "authors";

DROP TABLE IF EXISTS "vector_descriptions";

DROP TABLE IF EXISTS "whiskey_stats";

DROP TABLE IF EXISTS "categories";

-- Table setup
-- issue with this table on import - will upload with whiskey id, trying other numeric fields
-- working fields: score, 
-- non-working fields: Price_USD (checked should not be memory issue for datatype), 
-- Sale_volume, 
-- Percent_ABV has null values fails anyway even if they aren't null
-- Name fails even when text data type is used, and when not null is dropped (I don't think there are nulls though)
-- changing the values of price_usd to 1000 and decapitalizing the hearders still didn't work. could the issue be the number of colums?
-- I haven't gotten a table in with more than two columns, but the ones with two have all been fine
-- price_usd still failed when it was one of two columns and all its values were set to 1000

CREATE TABLE "whiskey_stats" (
    "whiskey_id" BIGINT   NOT NULL,
    "category_id" INT   NOT NULL,
    "Name" VARCHAR(500)   NOT NULL,
    "Score" INT   NOT NULL,
    "Price_USD" BIGINT   NOT NULL,
    "Sale_volume" VARCHAR(100)   NOT NULL,
    "Percent_ABV" FLOAT  NOT NULL,
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
    "Author" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_authors" PRIMARY KEY (
        "author_id"
     )
);

CREATE TABLE "categories" (
    "category_id" INT   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "vector_descriptions" (
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
    "coconut" INT   NOT NULL,
	"whiskey_id" BIGINT   NOT NULL
);

ALTER TABLE "whiskey_stats" ADD CONSTRAINT "fk_whiskey_stats_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "reviews" ADD CONSTRAINT "fk_reviews_whiskey_id" FOREIGN KEY("whiskey_id")
REFERENCES "whiskey_stats" ("whiskey_id");

ALTER TABLE "reviews" ADD CONSTRAINT "fk_reviews_author_id" FOREIGN KEY("author_id")
REFERENCES "authors" ("author_id");

ALTER TABLE "vector_descriptions" ADD CONSTRAINT "fk_vector_descriptions_whiskey_id" FOREIGN KEY("whiskey_id")
REFERENCES "whiskey_stats" ("whiskey_id");