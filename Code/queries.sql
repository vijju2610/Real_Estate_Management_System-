
CREATE TABLE "Property" (
	"property_id"	INTEGER,
	"property_address"	INTEGER,
	"property_type"	TEXT,
	"property_area"	TEXT,
	"property_condition"	INTEGER,
	"fk_owner_id"	INTEGER,
	"fk_tenant_id"	INTEGER,
	"fk_document_id"	INTEGER,
	PRIMARY KEY("property_id")
	FOREIGN KEY (fk_owner_id) REFERENCES Owner (owner_id)
	FOREIGN KEY (fk_tenant_id) REFERENCES Tenant (tenant_id)
	FOREIGN KEY (fk_document_id) REFERENCES Document(document_id)
	
);

CREATE TABLE "Maintenancerequest" 
(
	"request_id"	INTEGER,
	"property_id" INTEGER,
	"vendor_id"	INTEGER,
	"request_date"	NUMERIC,
	"request_description"	TEXT,
	"request_status"	TEXT,
	"request_priority"	TEXT,
	PRIMARY KEY ("request_id")

	);

CREATE TABLE Owner(
"owner_id" int,
"owner_name" TEXT,
"owner_mobile" INT,
"owner_email" TEXT,
"owner_address"  TEXT ,
PRIMARY KEY("owner_id")
);


CREATE TABLE "Vendor" (
	"vendor_id"	INTEGER,
	"vendor_name"	TEXT,
	"vendor_address"	TEXT,
	"vendor_contact"	INTEGER,
	"services_offerred"	TEXT,
	PRIMARY KEY("vendor_id")
);

CREATE TABLE "Document" (
	"document_id"	INTEGER,
	"document_type"	TEXT,
	"document_description"	TEXT,
	"document_file"	TEXT,
	"document_date"	NUMERIC,
	PRIMARY KEY("document_id")
);

CREATE TABLE "Lease" (
	"lease_id"	INTEGER,
	"fk_property_id"	INTEGER,
	"fk_document_id"	INTEGER,
	"fk_tenant_id"	INTEGER,
	"lease_term"	TEXT,
	"security_deposit"	INTEGER,
	"rent"	INTEGER,
	PRIMARY KEY("lease_id")
	FOREIGN KEY (fk_property_id) REFERENCES Property (property_id)
	FOREIGN KEY (fk_document_id) REFERENCES Document (document_id)
	FOREIGN KEY (fk_tenant_id) REFERENCES Tenant (tenant_id)
);



CREATE TABLE "Transaction" (
	"transaction_id"	INTEGER,
	"fk_tenant_id"	INTEGER,
	"transaction_type"	TEXT,
	"transaction_amount"	TEXT,
	"transaction_date"	NUMERIC,
	"fk_property_id"	INTEGER,
	PRIMARY KEY ("transaction_id")
	FOREIGN KEY (fk_tenant_id) REFERENCES Tenant (tenant_id)
);



CREATE TABLE Tenant(
 "tenant_id" INTEGER,
 "tenant_name" TEXT,
 "tenant_moblie" INTEGER,
 "tenant_email" TEXT,
 "fk_document_id" TEXT,
 PRIMARY KEY ("tenant_id"),
 FOREIGN KEY (fk_document_id) REFERENCES Document (document_id)
);

CREATE TABLE "Property_Transaction" (
	"property_transaction_id"	INTEGER,
	"property_transaction_type"	TEXT,
	"property_transaction_date"	NUMERIC,
	"fk_property_id"	INTEGER,
	"financing_details"	TEXT,
	PRIMARY KEY("property_transaction_id")
	FOREIGN KEY (fk_property_id) REFERENCES Property (property_id)
	);

INSERT INTO Vendor (vendor_id, vendor_name, vendor_address, vendor_contact, services_offerred)
VALUES
  (1001, "Acme Inc.", "123 Main St", 5551234567, "Plumbing"),
  (1002, "Best Buy", "456 Elm St", 8885551212, "Electronics"),
  (1003, "City Cafe", "789 Oak St", 9992223333, "Restaurant"),
  (1004, "Discount Tire", "1011 Pine St", 7774445555, "Auto Repair"),
  (1005, "Fantastic Cleaners", "1213 Spruce St", 6663332222, "Cleaning Services"),
  (1006, "Green Lawn Care", "1415 Maple Ave", 4449876543, "Lawn Care"),
  (1007, "Happy Hardware", "1617 Birch St", 3331234567, "Hardware Supplies"),
  (1008, "Cozy Bookstore", "1819 Walnut St", 2227654321, "Books"),
  (1009, "Tech Repair X", "2021 Elm St", 1114321098, "Computer Repair"),
  (1010, "Cloud Fitness", "2223 Oak St", 5550987654, "Gym Membership"),
  (1011, "Pet Paradise", "2425 Spruce St", 7778889999, "Pet Grooming"),
  (1012, "Crafty Corner", "2627 Elm St", 6665554444, "Arts & Crafts Supplies"),
  (1013, "Sun & Sand Travel", "2829 Oak St", 5552221111, "Travel Agency"),
  (1014, "Mountain View Bikes", "3031 Birch St", 4443330000, "Bicycle Shop"),
  (1015, "Blooming Gardens", "3233 Maple Ave", 3334445555, "Florist"),
  (1016, "Dr. Fixit", "3435 Walnut St", 2229876543, "Appliance Repair"),
  (1017, "Learn It All", "3637 Elm St", 1117654321, "Educational Services"),
  (1018, "Fit & Fab", "3839 Oak St", 5556543210, "Yoga Studio"),
  (1019, "Delicious Delights", "4041 Spruce St", 4445432109, "Catering Service"),
  (1020, "Snap Happy Photo", "4243 Birch St", 3333210987, "Photography Services")


INSERT INTO Owner (owner_id, owner_name, owner_mobile, owner_email, owner_address)
VALUES
(1001, "John Doe", 5551234567, "john@example.com", "123 Main St"),
(1002, "Jane Smith", 8885551212, "jane@example.com", "456 Elm St"),
(1003, "Alice Johnson", 9994445555, "alice@example.com", "789 Oak St"),
(1004, "Bob Brown", 7773332222, "bob@example.com", "1011 Pine St"),
(1005, "Emily Davis", 6662221111, "emily@example.com", "1213 Spruce St"),
(1006, "Michael Johnson", 4447778888, "michael@example.com", "1415 Maple Ave"),
(1007, "Sarah Lee", 3338889999, "sarah@example.com", "1617 Birch St"),
(1008, "David Wilson", 2229998888, "david@example.com", "1819 Walnut St"),
(1009, "Rachel Miller", 1116667777, "rachel@example.com", "2021 Elm St"),
(1010, "Samuel Taylor", 5556667777, "samuel@example.com", "2223 Oak St"),
(1011, "Olivia White", 4445556666, "olivia@example.com", "2425 Spruce St"),
(1012, "Sophia Anderson", 3334445555, "sophia@example.com", "2627 Elm St"),
(1013, "Ethan Clark", 2223334444, "ethan@example.com", "2829 Oak St"),
(1014, "Ava Scott", 1112223333, "ava@example.com", "3031 Birch St"),
(1015, "Noah Martinez", 5554443333, "noah@example.com", "3233 Maple Ave"),
(1016, "Mia Thompson", 4443332222, "mia@example.com", "3435 Walnut St"),
(1017, "William Garcia", 3332221111, "william@example.com", "3637 Elm St"),
(1018, "Charlotte Hernandez", 2221110000, "charlotte@example.com", "3839 Oak St"),
(1019, "James Lopez", 1110009999, "james@example.com", "4041 Spruce St"),
(1020, "Amelia King", 5556667777, "amelia@example.com", "4243 Birch St");

INSERT INTO Document (document_id, document_type, document_description, document_file, document_date)
VALUES
(1001, "Lease Agreement", "Standard lease agreement", "lease_agreement.pdf", "2024-01-01"),
(1002, "Insurance Policy", "Property insurance policy", "insurance_policy.pdf", "2024-02-01"),
(1003, "Property Deed", "Deed of the property", "property_deed.pdf", "2024-03-01"),
(1004, "Maintenance Agreement", "Maintenance services agreement", "maintenance_agreement.pdf", "2024-04-01"),
(1005, "Utility Bill", "Monthly utility bill", "utility_bill.pdf", "2024-05-01"),
(1006, "Tenant Application", "Application from tenant", "tenant_application.pdf", "2024-06-01"),
(1007, "Service Contract", "Contract for services", "service_contract.pdf", "2024-07-01"),
(1008, "Lease Renewal", "Renewal of lease agreement", "lease_renewal.pdf", "2024-08-01"),
(1009, "Property Inspection Report", "Report of property inspection", "inspection_report.pdf", "2024-09-01"),
(1010, "Tenant Agreement", "Agreement with tenant", "tenant_agreement.pdf", "2024-10-01"),
(1011, "Property Tax Statement", "Statement of property taxes", "tax_statement.pdf", "2024-11-01"),
(1012, "Sublease Agreement", "Agreement for subleasing", "sublease_agreement.pdf", "2024-12-01"),
(1013, "Elevator Maintenance Contract", "Maintenance contract for elevators", "elevator_maintenance_contract.pdf", "2025-01-01"),
(1014, "Renovation Permit", "Permit for renovation", "renovation_permit.pdf", "2025-02-01"),
(1015, "Parking Lease", "Lease for parking space", "parking_lease.pdf", "2025-03-01"),
(1016, "Landscaping Contract", "Contract for landscaping services", "landscaping_contract.pdf", "2025-04-01"),
(1017, "Pool Maintenance Agreement", "Agreement for pool maintenance", "pool_maintenance_agreement.pdf", "2025-05-01"),
(1018, "Fire Inspection Report", "Report of fire inspection", "fire_inspection_report.pdf", "2025-06-01"),
(1019, "Pest Control Contract", "Contract for pest control services", "pest_control_contract.pdf", "2025-07-01"),
(1020, "HVAC Service Agreement", "Agreement for HVAC services", "hvac_service_agreement.pdf", "2025-08-01");

INSERT INTO Property (property_id, property_address, property_type, property_area, property_condition, 
fk_owner_id, fk_tenant_id, fk_document_id)
VALUES 
(1001, "123 Main St", "House", "2000 sq ft", 1, 1001, NULL, 1001),
(1002, "456 Elm St", "Apartment", "1200 sq ft", 2, 1002, NULL, 1002),
(1003, "789 Oak St", "Condo", "1000 sq ft", 1, 1003, NULL, 1003),
(1004, "1011 Pine St", "Townhouse", "1500 sq ft", 3, 1004, NULL, 1004),
(1005, "1213 Spruce St", "House", "1800 sq ft", 2, 1005, NULL, 1005),
(1006, "1415 Maple Ave", "Apartment", "1000 sq ft", 1, 1006, NULL, 1006),
(1007, "1617 Birch St", "Condo", "1200 sq ft", 2, 1007, NULL, 1007),
(1008, "1819 Walnut St", "Townhouse", "1600 sq ft", 3, 1008, NULL, 1008),
(1009, "2021 Elm St", "House", "2200 sq ft", 1, 1009, NULL, 1009),
(1010, "2223 Oak St", "Apartment", "1100 sq ft", 2, 1010, NULL, 1010),
(1011, "2425 Spruce St", "Condo", "1300 sq ft", 3, 1011, NULL, 1011),
(1012, "2627 Elm St", "Townhouse", "1700 sq ft", 1, 1012, NULL, 1012),
(1013, "2829 Oak St", "House", "2400 sq ft", 2, 1013, NULL, 1013),
(1014, "3031 Birch St", "Apartment", "950 sq ft", 1, 1014, NULL, 1014),
(1015, "3233 Maple Ave", "Condo", "1400 sq ft", 3, 1015, NULL, 1015),
(1016, "3435 Walnut St", "Townhouse", "1900 sq ft", 2, 1016, NULL, 1016),
(1017, "3637 Elm St", "House", "2100 sq ft", 1, 1017, NULL, 1017),
(1018, "3839 Oak St", "Apartment", "1250 sq ft", 3, 1018, NULL, 1018),
(1019, "4041 Spruce St", "Condo", "1600 sq ft", 2, 1019, NULL, 1019),
(1020, "4243 Birch St", "Townhouse", "2000 sq ft", 1, 1020, NULL, 1020);

INSERT INTO Tenant (tenant_id, tenant_name, tenant_moblie, tenant_email, fk_document_id)
VALUES
(1001, "Alice Johnson", 5551234567, "alice@example.com", 1006),
(1002, "Bob Smith", 8885551212, "bob@example.com", 1007),
(1003, "Emma Brown", 9994445555, "emma@example.com", 1008),
(1004, "William Davis", 7773332222, "william@example.com", 1009),
(1005, "Sophia Wilson", 6662221111, "sophia@example.com", 1010),
(1006, "James Taylor", 4447778888, "james@example.com", 1011),
(1007, "Olivia Lee", 3338889999, "olivia@example.com", 1012),
(1008, "Daniel Anderson", 2229998888, "daniel@example.com", 1013),
(1009, "Emily Martinez", 1116667777, "emily@example.com", 1014),
(1010, "Michael Clark", 5556667777, "michael@example.com", 1015),
(1011, "Amelia Scott", 4445556666, "amelia@example.com", 1016),
(1012, "Noah Hernandez", 3334445555, "noah@example.com", 1017),
(1013, "Ava Lopez", 2223334444, "ava@example.com", 1018),
(1014, "Ethan Garcia", 1112223333, "ethan@example.com", 1019),
(1015, "Mia Thompson", 5554443333, "mia@example.com", 1020),
(1016, "William Lee", 4443332222, "william@example.com", 1001),
(1017, "Charlotte Martinez", 3332221111, "charlotte@example.com", 1002),
(1018, "James Smith", 2221110000, "james@example.com", 1003),
(1019, "Olivia Brown", 1110009999, "olivia@example.com", 1004),
(1020, "Daniel Johnson", 5556667777, "daniel@example.com", 1005);


INSERT INTO Lease (lease_id, fk_property_id, fk_document_id, fk_tenant_id, lease_term, security_deposit, rent)
VALUES
(1001, 1001, 1001, 1001, "12 months", 1000, 1200),
(1002, 1002, 1002, 1002, "6 months", 800, 1000),
(1003, 1003, 1003, 1003, "9 months", 900, 1100),
(1004, 1004, 1004, 1004, "12 months", 1200, 1300),
(1005, 1005, 1005, 1005, "6 months", 1000, 1200),
(1006, 1006, 1006, 1006, "9 months", 1100, 1400),
(1007, 1007, 1007, 1007, "12 months", 1300, 1500),
(1008, 1008, 1008, 1008, "6 months", 1200, 1400),
(1009, 1009, 1009, 1009, "9 months", 1300, 1500),
(1010, 1010, 1010, 1010, "12 months", 1400, 1600),
(1011, 1011, 1011, 1011, "6 months", 1300, 1500),
(1012, 1012, 1012, 1012, "9 months", 1500, 1700),
(1013, 1013, 1013, 1013, "12 months", 1600, 1800),
(1014, 1014, 1014, 1014, "6 months", 1500, 1700),
(1015, 1015, 1015, 1015, "9 months", 1700, 1900),
(1016, 1016, 1016, 1016, "12 months", 1800, 2000),
(1017, 1017, 1017, 1017, "6 months", 1600, 1800),
(1018, 1018, 1018, 1018, "9 months", 1800, 2000),
(1019, 1019, 1019, 1019, "12 months", 1900, 2100),
(1020, 1020, 1020, 1020, "6 months", 1700, 1900);

INSERT INTO "Maintenancerequest" (request_id,property_id,vendor_id, request_date, request_description, request_status, request_priority)
VALUES
(1001, 1001, 1021, "2024-03-26", "Leaky faucet", "Open", "High"),
(1002, 1002, 1022, "2024-03-27", "Broken window", "Open", "Medium"),
(1003, 1003, 1023, "2024-03-28", "Faulty AC", "Open", "High"),
(1004, 1004, 1024, "2024-03-29", "Leaking roof", "Open", "High"),
(1005, 1005, 1025, "2024-03-30", "Clogged drain", "Open", "Medium"),
(1006, 1006, 1026, "2024-03-31", "Broken dishwasher", "Open", "High"),
(1007, 1007, 1027, "2024-04-01", "Electrical issue", "Open", "High"),
(1008, 1008, 1028, "2024-04-02", "Plumbing inspection", "Open", "Medium"),
(1009, 1009, 1029, "2024-04-03", "HVAC maintenance", "Open", "Medium"),
(1010, 1010, 1030, "2024-04-04", "Fitness equipment repair", "Open", "Low"),
(1011, 1011, 1031, "2024-04-05", "Pet odor removal", "Open", "Medium"),
(1012, 1012, 1032, "2024-04-06", "Craft supplies delivery", "Open", "Low"),
(1013, 1013, 1033, "2024-04-07", "Travel package booking", "Open", "Low"),
(1014, 1014, 1034, "2024-04-08", "Bike tune-up", "Open", "Medium"),
(1015, 1015, 1035, "2024-04-09", "Flower delivery", "Open", "High"),
(1016, 1016, 1036, "2024-04-10", "Appliance installation", "Open", "High"),
(1017, 1017, 1037, "2024-04-11", "Tutoring session scheduling", "Open", "Medium"),
(1018, 1018, 1038, "2024-04-12", "Yoga class reservation", "Open", "Low"),
(1019, 1019, 1039, "2024-04-13", "Catering for event", "Open", "High"),
(1020, 1020, 1040, "2024-04-14", "Photo shoot booking", "Open", "High")

INSERT INTO "Transaction" (transaction_id, fk_tenant_id, transaction_type, transaction_amount, transaction_date, fk_property_id)
VALUES
(1001, 1001, "Rent Payment", 1200, "2024-03-01", 1001),
(1002, 1002, "Rent Payment", 1000, "2024-03-01", 1002),
(1003, 1003, "Rent Payment", 1100, "2024-03-01", 1003),
(1004, 1004, "Rent Payment", 1300, "2024-03-01", 1004),
(1005, 1005, "Rent Payment", 1200, "2024-03-01", 1005),
(1006, 1006, "Rent Payment", 1400, "2024-03-01", 1006),
(1007, 1007, "Rent Payment", 1500, "2024-03-01", 1007),
(1008, 1008, "Rent Payment", 1400, "2024-03-01", 1008),
(1009, 1009, "Rent Payment", 1500, "2024-03-01", 1009),
(1010, 1010, "Rent Payment", 1600, "2024-03-01", 1010),
(1011, 1011, "Rent Payment", 1500, "2024-03-01", 1011),
(1012, 1012, "Rent Payment", 1700, "2024-03-01", 1012),
(1013, 1013, "Rent Payment", 1800, "2024-03-01", 1013),
(1014, 1014, "Rent Payment", 1700, "2024-03-01", 1014),
(1015, 1015, "Rent Payment", 1900, "2024-03-01", 1015),
(1016, 1016, "Rent Payment", 2000, "2024-03-01", 1016),
(1017, 1017, "Rent Payment", 1800, "2024-03-01", 1017),
(1018, 1018, "Rent Payment", 2000, "2024-03-01", 1018),
(1019, 1019, "Rent Payment", 2100, "2024-03-01", 1019),
(1020, 1020, "Rent Payment", 1900, "2024-03-01", 1020)

INSERT INTO "Property_Transaction" (property_transaction_id, property_transaction_type, property_transaction_date, fk_property_id, financing_details)
VALUES
(1031, "Lease", "2024-11-01", 1011, "Monthly Rent"),
(1032, "Sale", "2024-12-01", 1012, "Mortgage"),
(1033, "Purchase", "2025-01-01", 1013, "Cash"),
(1034, "Lease", "2025-02-01", 1014, "Monthly Rent"),
(1035, "Sale", "2025-03-01", 1015, "Bank Loan"),
(1036, "Purchase", "2025-04-01", 1016, "Cash"),
(1037, "Lease", "2025-05-01", 1017, "Monthly Rent"),
(1038, "Sale", "2025-06-01", 1018, "Mortgage"),
(1039, "Purchase", "2025-07-01", 1019, "Cash"),
(1040, "Lease", "2025-08-01", 1020, "Monthly Rent"),
(1041, "Lease", "2024-11-01", 1011, "Monthly Rent"),
(1042, "Sale", "2024-12-01", 1012, "Mortgage"),
(1043, "Purchase", "2025-01-01", 1013, "Cash"),
(1044, "Lease", "2025-02-01", 1014, "Monthly Rent"),
(1045, "Sale", "2025-03-01", 1015, "Bank Loan"),
(1046, "Purchase", "2025-04-01", 1016, "Cash"),
(1047, "Lease", "2025-05-01", 1017, "Monthly Rent"),
(1048, "Sale", "2025-06-01", 1018, "Mortgage"),
(1049, "Purchase", "2025-07-01", 1019, "Cash"),
(1050, "Lease", "2025-08-01", 1020, "Monthly Rent");

SELECT * FROM Document 
SELECT * FROM Lease
SELECT * FROM Maintenancerequest
SELECT * FROM Owner
SELECT * FROM Property
SELECT * FROM Property_Transaction
SELECT * FROM Tenant
SELECT * FROM "Transaction" ;
SELECT * FROM Vendor

SELECT * FROM Document WHERE document_id="1014";
SELECT * FROM Vendor WHERE vendor_id BETWEEN 1003 AND 1009;
SELECT * FROM Property WHERE property_type ="Apartment";

--1. Select all the Tenants along with corresponding lease details. 
SELECT Tenant.tenant_name, Lease.lease_term, Lease.security_deposit, Lease.rent
FROM Tenant
INNER JOIN Lease 
ON 
Tenant.tenant_id = Lease.fk_tenant_id
LIMIT 5;

--2.Select all Transactions made by the Tenants including which property they live.
SELECT "Transaction".transaction_id, "Transaction".transaction_date, "Transaction".transaction_amount, Property.property_address
FROM "Transaction"
INNER JOIN Property ON "Transaction".fk_property_id = Property.property_id;

--3.Selecting all required documents with a certain property.
SELECT Document.document_type, Document.document_description
FROM Document
INNER JOIN Lease
 ON 
Document.document_id = Lease.fk_document_id; 

--4.Selecting all Property and all documents associated with them
SELECT Property.property_address, Document.document_type
FROM Property
LEFT JOIN Lease 
ON 
Property.property_id = Lease.fk_property_id
LEFT JOIN Document
ON 
Lease.fk_document_id = Document.document_id;

--5.Selecting all Transactions with all the Tenants and Propertyaddress from the statements
SELECT "Transaction".*, Tenant.tenant_name, Property.property_address
FROM "Transaction"
INNER JOIN Tenant ON "Transaction".fk_tenant_id = Tenant.tenant_id
INNER JOIN Property ON "Transaction".fk_property_id = Property.property_id
AND transaction_amount BETWEEN 1200 AND 1400
LIMIT 3 ;

