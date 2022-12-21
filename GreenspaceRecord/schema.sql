/* (Beta) Export of data model GreenspaceRecord of the subject dataModel.ParksAndGardens for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE GreenspaceRecord_type AS ENUM ('GreenspaceRecord');
CREATE TABLE GreenspaceRecord (address json, alternateName text, annotations json, areaServed text, color text, dataProvider text, dateCreated timestamp, dateModified timestamp, dateObserved timestamp, description text, id text, image text, litterCoverage text, location json, name text, owner json, refDevice text, refGreenspace text, refWeatherObserved text, seeAlso json, soilMoistureEc text, soilMoisturePressure text, soilMoistureVwc text, soilTemperature text, source text, type GreenspaceRecord_type);