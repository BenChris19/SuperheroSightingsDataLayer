--Note that you might want to run these 2 commands separately as I am using PostgreSQL
DROP TABLE IF EXISTS superhero;
CREATE DATABASE superhero;

CREATE TABLE SuperheroSupervillan(
superId SERIAL PRIMARY KEY,
superName VARCHAR(100) NOT NULL,
superdescription VARCHAR(250),
superpower VARCHAR(50) NOT NULL
);

CREATE TABLE Organization(
organizationId SERIAL PRIMARY KEY,
organizationName VARCHAR(100) NOT NULL,
organizationDescription VARCHAR(250),
organizationAddress VARCHAR(250) NOT NULL
);

CREATE TABLE OrganizationAffilition(
superId INT NOT NULL,
organizationId INT NOT NULL,
PRIMARY KEY(superId, organizationId),
FOREIGN KEY(superId) REFERENCES SuperheroSupervillan(superId),
FOREIGN KEY(organizationId) REFERENCES Organization(organizationId)
);

CREATE TABLE "Location"(
locationId SERIAL PRIMARY KEY,
locationName VARCHAR(100) NOT NULL,
locationAddress VARCHAR(250) NOT NULL,
locationDescription VARCHAR(250),
locationLatitude NUMERIC(8,4) NOT NULL,
locationLongitude NUMERIC(8,4) NOT NULL
);

CREATE TABLE Sightings(
sightingId SERIAL PRIMARY KEY,
superId INT NOT NULL,
locationId INT NOT NULL,
sightDate DATE NOT NULL,
FOREIGN KEY(superId) REFERENCES SuperheroSupervillan(superId),
FOREIGN KEY(locationId) REFERENCES "Location"(locationId)
);