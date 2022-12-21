/* (Beta) Export of data model FlowerBed of the subject dataModel.ParksAndGardens for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE FlowerBed_type AS ENUM ('FlowerBed');
CREATE TABLE FlowerBed (address json, alternateName text, annotations json, areaServed text, category json, color text, dataProvider text, dateCreated timestamp, dateLastWatering timestamp, dateModified timestamp, depth text, description text, height text, id text, image text, location json, name text, nextWateringDeadline timestamp, owner json, refGarden text, seeAlso json, shape json, source text, taxon json, type FlowerBed_type, width text);