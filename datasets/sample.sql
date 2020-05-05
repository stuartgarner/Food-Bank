BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0018E00001Lr5jdQAB','Pret a Manger','');
INSERT INTO "Account" VALUES('0018E00001Lr5jYQAR','Gails Bakery','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a008E00000DFO4AQAX','Cakes','2020-05-08','Non-refrigerated','a018E00000E0vWoQAJ');
INSERT INTO "Delivery_Item__c" VALUES('a008E00000DFO3vQAH','Ham and Cheese baguettes','2020-05-08','Non-refrigerated','a018E00000E0vWjQAJ');
INSERT INTO "Delivery_Item__c" VALUES('a008E00000DFO40QAH','Salads','2020-05-06','Non-refrigerated','a018E00000E0vWjQAJ');
INSERT INTO "Delivery_Item__c" VALUES('a008E00000DFO45QAH','Sourdough','2020-05-07','Non-refrigerated','a018E00000E0vWoQAJ');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	account__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a018E00000E0vWjQAJ','Sandwiches','2020-05-06T11:00:00.000Z','Scheduled','0018E00001Lr5jdQAB');
INSERT INTO "Delivery__c" VALUES('a018E00000E0vWoQAJ','Bread and cakes','2020-05-08T11:00:00.000Z','Requested','0018E00001Lr5jYQAR');
COMMIT;
