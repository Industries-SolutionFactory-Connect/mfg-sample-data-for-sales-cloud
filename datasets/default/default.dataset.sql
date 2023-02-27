BEGIN TRANSACTION;
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"DisplayUrl" VARCHAR(255), 
	"ExternalId" VARCHAR(255), 
	"ProductCode" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Family" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StockKeepingUnit" VARCHAR(255), 
	"QuantityUnitOfMeasure" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product2" VALUES(1,'False','','','','Mfg. Sample Prod','','Mfg. Sample Prod','','');
CREATE TABLE "ProductCatalog" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCatalog" VALUES(1,'Mfg. Sample Prod Catalog');
CREATE TABLE "ProductCategory" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"IsNavigational" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SortOrder" VARCHAR(255), 
	"CatalogId" VARCHAR(255), 
	"ParentCategoryId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategory" VALUES(1,'','True','Mfg. Sample Prod Category','','1','');
CREATE TABLE "ProductCategoryProduct" (
	id INTEGER NOT NULL, 
	"IsPrimaryCategory" VARCHAR(255), 
	"ProductCategoryId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategoryProduct" VALUES(1,'False','1','1');
COMMIT;
