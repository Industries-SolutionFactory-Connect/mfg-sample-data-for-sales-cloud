BEGIN TRANSACTION;
CREATE TABLE "ProductCatalog" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCatalog" VALUES(1,'Onboarding Catalog');
CREATE TABLE "ProductCategory" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsNavigational" VARCHAR(255), 
	"SortOrder" VARCHAR(255), 
	"CatalogId" VARCHAR(255), 
	"ParentCategoryId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategory" VALUES(1,'','Onboarding Products','True','','1','');
COMMIT;
