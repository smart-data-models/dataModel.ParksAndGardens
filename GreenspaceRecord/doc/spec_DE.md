<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entität: GreenspaceRecord  
=========================<!-- /10-Header -->  
<!-- 15-License -->  
[Offene Lizenz](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/GreenspaceRecord/LICENSE.md)  
[Dokument automatisch generiert](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Globale Beschreibung: **Diese Einheit enthält eine harmonisierte Beschreibung der Bedingungen, die auf einer bestimmten Fläche oder an einem bestimmten Punkt innerhalb einer Grünfläche (Blumenbeet, Garten usw.) erfasst wurden.**  
Version: 0.0.3  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Liste der Eigenschaften  

<sup><sub>[*] Wenn es für ein Attribut keinen Typ gibt, liegt das daran, dass es mehrere Typen oder unterschiedliche Formate/Muster haben kann</sub></sup>.  
- `address[object]`: Die Postanschrift  . Model: [https://schema.org/address](https://schema.org/address)- `alternateName[string]`: Ein alternativer Name für diesen Artikel  - `annotations[array]`: Anmerkungen zum Artikel  . Model: [https://schema.org/Text](https://schema.org/Text)- `areaServed[string]`: Das geografische Gebiet, in dem eine Dienstleistung oder ein angebotener Artikel erbracht wird  . Model: [https://schema.org/Text](https://schema.org/Text)- `color[string]`: Die Farbe des Produkts  . Model: [https://schema.org/color](https://schema.org/color)- `dataProvider[string]`: Eine Folge von Zeichen zur Identifizierung des Anbieters der harmonisierten Dateneinheit.  - `dateCreated[string]`: Zeitstempel der Entitätserstellung. Dieser wird in der Regel von der Speicherplattform zugewiesen.  - `dateModified[string]`: Zeitstempel der letzten Änderung der Entität. Dieser wird in der Regel von der Speicherplattform vergeben.  - `dateObserved[string]`: Das Datum und die Uhrzeit dieser Beobachtung im ISO8601 UTC-Format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `description[string]`: Eine Beschreibung dieses Artikels  - `id[*]`: Eindeutiger Bezeichner der Entität  - `image[string]`: Ein Bild des Artikels  . Model: [https://schema.org/URL](https://schema.org/URL)- `litterCoverage[number]`: Prozentualer Anteil der Oberfläche, der mit Abfällen oder anderen Abfallstoffen bedeckt ist  . Model: [https://schema.org/Number](https://schema.org/Number)- `location[*]`: Geojson-Referenz auf das Element. Es kann Punkt, LineString, Polygon, MultiPoint, MultiLineString oder MultiPolygon sein  - `name[string]`: Der Name dieses Artikels.  - `owner[array]`: Eine Liste mit einer JSON-kodierten Zeichenfolge, die auf die eindeutigen Kennungen der Eigentümer verweist  - `refDevice[*]`: Das Gerät oder die Geräte, die zur Gewinnung der in diesem Datensatz enthaltenen Daten verwendet wurden  . Model: [https://schema.org/URL.](https://schema.org/URL.)- `refGreenspace[*]`: Der Garten oder das Blumenbeet, auf den/das sich dieser Eintrag bezieht  . Model: [https://schema.org/URL.](https://schema.org/URL.)- `refWeatherObserved[*]`:  Wetterbeobachtungen im Zusammenhang mit den von dieser Einheit beschriebenen Messungen  . Model: [https://schema.org/URL.](https://schema.org/URL.)- `seeAlso[*]`: Liste von URLs, die auf zusätzliche Ressourcen zu dem Artikel verweisen  - `soilMoistureEc[number]`: Die beobachtete Bodenfeuchtigkeit wird als elektrische Leitfähigkeit (EC) in der Einheit Siemens pro Meter (S/m) gemessen.  . Model: [https://schema.org/Number](https://schema.org/Number)- `soilMoisturePressure[number]`: Die beobachtete Bodenfeuchte, gemessen als Druck, Druck in Einheiten von Kilopascal (kPa)  . Model: [https://schema.org/Number](https://schema.org/Number)- `soilMoistureVwc[number]`: Die beobachtete Bodenfeuchtigkeit wird als volumetrischer Wassergehalt (VWC) gemessen (in Prozent, ausgedrückt in Teilen pro eins).  . Model: [https://schema.org/Number](https://schema.org/Number)- `soilTemperature[number]`: Die beobachtete Bodentemperatur in Celsiusgraden  . Model: [https://schema.org/Number](https://schema.org/Number)- `source[string]`: Eine Folge von Zeichen, die die ursprüngliche Quelle der Entitätsdaten als URL angibt. Es wird empfohlen, den voll qualifizierten Domänennamen des Quellanbieters oder die URL des Quellobjekts zu verwenden.  - `type[string]`: NGSI-Entitätstyp: Es muss GreenspaceRecord sein  <!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Erforderliche Eigenschaften  
- `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
Dieser Entitätstyp wurde durch den Entitätstyp AgriParcelRecord inspiriert, der von den GSMA Harmonized Data Models definiert wurde.  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Datenmodell Beschreibung der Eigenschaften  
Alphabetisch sortiert (für Details anklicken)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
GreenspaceRecord:    
  description: 'This entity contains a harmonised description of the conditions recorded on a particular area or point inside a greenspace (flower bed, garden, etc.).'    
  properties:    
    address:    
      description: 'The mailing address'    
      properties:    
        addressCountry:    
          description: 'Property. The country. For example, Spain. Model:''https://schema.org/addressCountry'''    
          type: string    
        addressLocality:    
          description: 'Property. The locality in which the street address is, and which is in the region. Model:''https://schema.org/addressLocality'''    
          type: string    
        addressRegion:    
          description: 'Property. The region in which the locality is, and which is in the country. Model:''https://schema.org/addressRegion'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, 03578. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, 24004. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    annotations:    
      description: 'Annotations about the item'    
      items:    
        type: string    
      type: array    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    color:    
      description: 'The color of the product'    
      type: string    
      x-ngsi:    
        model: https://schema.org/color    
        type: Property    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: string    
      x-ngsi:    
        type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateObserved:    
      description: 'The date and time of this observation in ISO8601 UTCformat'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    description:    
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
        type: Property    
    id:    
      anyOf: &greenspacerecord_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Unique identifier of the entity'    
      x-ngsi:    
        type: Property    
    image:    
      description: 'An image of the item'    
      format: uri    
      type: string    
      x-ngsi:    
        model: https://schema.org/URL    
        type: Property    
    litterCoverage:    
      description: 'Percentage of the surface covered with litter or other waste materials'    
      maximum: 1    
      minimum: 0    
      type: number    
      x-ngsi:    
        model: https://schema.org/Number    
        type: Property    
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: 'GeoProperty. Geojson reference to the item. Point'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                type: number    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - Point    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Point'    
          type: object    
        - description: 'GeoProperty. Geojson reference to the item. LineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - LineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON LineString'    
          type: object    
        - description: 'GeoProperty. Geojson reference to the item. Polygon'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 4    
                type: array    
              type: array    
            type:    
              enum:    
                - Polygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Polygon'    
          type: object    
        - description: 'GeoProperty. Geojson reference to the item. MultiPoint'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPoint    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPoint'    
          type: object    
        - description: 'GeoProperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiLineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiLineString'    
          type: object    
        - description: 'GeoProperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    items:    
                      type: number    
                    minItems: 2    
                    type: array    
                  minItems: 4    
                  type: array    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPolygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPolygon'    
          type: object    
      x-ngsi:    
        type: GeoProperty    
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *greenspacerecord_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    refDevice:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'The device or devices used to obtain the data expressed by this record'    
      x-ngsi:    
        model: https://schema.org/URL.    
        type: Relationship    
    refGreenspace:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'The garden or flower bed to which this record refers to'    
      x-ngsi:    
        model: https://schema.org/URL.    
        type: Relationship    
    refWeatherObserved:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: ' Weather observed associated to the measurements described by this entity'    
      x-ngsi:    
        model: https://schema.org/URL.    
        type: Relationship    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
      oneOf:    
        - items:    
            format: uri    
            type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
      x-ngsi:    
        type: Property    
    soilMoistureEc:    
      description: 'The observed soild moisture measured as Electrical Conductivity, EC in units of Siemens per meter (S/m)'    
      type: number    
      x-ngsi:    
        model: https://schema.org/Number    
        type: Property    
        units: 'Siemens per meter'    
    soilMoisturePressure:    
      description: 'The observed soild moisture measured as Pressure, presure in units of kiloPascals (kPa)'    
      type: number    
      x-ngsi:    
        model: https://schema.org/Number    
        type: Property    
        units: kPa    
    soilMoistureVwc:    
      description: 'The observed soil moisture measured as Volumetric Water Content, VWC (percentage, expressed in parts per one)'    
      maximum: 1    
      minimum: 0    
      type: number    
      x-ngsi:    
        model: https://schema.org/Number    
        type: Property    
    soilTemperature:    
      description: 'The observed soil temperature in Celsius degrees'    
      type: number    
      x-ngsi:    
        model: https://schema.org/Number    
        type: Property    
        units: 'degrees Celsius'    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    type:    
      description: 'NGSI Entity Type: It has to be GreenspaceRecord'    
      enum:    
        - GreenspaceRecord    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2022 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.ParksAndGardens/blob/master/GreenspaceRecord/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/data-models/specs/ParksAndGardens/GreenspaceRecord/schema.json    
  x-model-tags: ""    
  x-version: 0.0.3    
```  
</details>    
<!-- /60-ModelYaml -->  
<!-- 70-MiddleNotes -->  
<!-- /70-MiddleNotes -->  
<!-- 80-Examples -->  
## Beispiel-Nutzlasten  
#### GreenspaceRecord NGSI-v2 key-values Beispiel  
Hier ist ein Beispiel für einen GreenspaceRecord im JSON-LD-Format als Key-Values. Dies ist mit NGSI-v2 kompatibel, wenn `options=keyValues` verwendet wird, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "Santander-Garden-Piquio-Record-1",  
  "type": "GreenspaceRecord",  
  "location": {  
    "type": "Point",  
    "coordinates": [-3.7836974, 43.4741091]  
  },  
  "temperature": 17,  
  "relativeHumidity": 0.87,  
  "soilTemperature": 13,  
  "refGreenspace": "Santander-Garden-Piquio",  
  "dateObserved": "2019-01-15T12:00:00Z"  
}  
```  
</details>  
#### GreenspaceRecord NGSI-v2 normalisiert Beispiel  
Hier ist ein Beispiel für einen GreenspaceRecord im JSON-LD-Format in normalisierter Form. Dies ist kompatibel mit NGSI-v2, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "Santander-Garden-Piquio-Record-1",  
  "type": "GreenspaceRecord",  
  "refGreenspace": {  
    "type": "Relationship",  
    "value": "Santander-Garden-Piquio"  
  },  
  "temperature": {  
    "value": 17  
  },  
  "soilTemperature": {  
    "value": 13  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Point",  
      "coordinates": [-3.7836974, 43.4741091]  
    }  
  },  
  "relativeHumidity": {  
    "value": 0.87  
  },  
  "dateObserved": {  
    "type": "DateTime",  
    "value": "2019-01-15T12:00:00Z"  
  }  
}  
```  
</details>  
#### GreenspaceRecord NGSI-LD key-values Beispiel  
Hier ist ein Beispiel für einen GreenspaceRecord im JSON-LD-Format als Key-Values. Dies ist mit NGSI-LD kompatibel, wenn `options=keyValues` verwendet wird und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:GreenspaceRecord:Santander-Garden-Piquio-Record-1",  
    "type": "GreenspaceRecord",  
    "dateObserved": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2019-01-15T12:00:00Z"  
        }  
    },  
    "location": {  
        "type": "GeoProperty",  
        "value": {  
            "type": "Point",  
            "coordinates": [  
                -3.7836974,  
                43.4741091  
            ]  
        }  
    },  
    "refGreenspace": {  
        "type": "Relationship",  
        "object": "urn:ngsi-ld:Greenspace:Santander-Garden-Piquio"  
    },  
    "relativeHumidity": {  
        "type": "Property",  
        "value": 0.87  
    },  
    "soilMoisturePressure": {  
        "type": "Property",  
        "value": 11  
    },  
    "soilTemperature": {  
        "type": "Property",  
        "value": 13  
    },  
    "temperature": {  
        "type": "Property",  
        "value": 17  
    },  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
    ]  
}  
```  
</details>  
#### GreenspaceRecord NGSI-LD normalisiert Beispiel  
Hier ist ein Beispiel für einen GreenspaceRecord im JSON-LD-Format in normalisierter Form. Dies ist mit NGSI-LD kompatibel, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:GreenspaceRecord:Santander-Garden-Piquio-Record-1",  
    "type": "GreenspaceRecord",  
    "dateObserved": {  
        "@type": "DateTime",  
        "@value": "2019-01-15T12:00:00Z"  
    },  
    "location": {  
        "coordinates": [  
            -3.7836974,  
            43.4741091  
        ],  
        "type": "Point"  
    },  
    "refGreenspace": "urn:ngsi-ld:Greenspace:Santander-Garden-Piquio",  
    "relativeHumidity": 0.87,  
    "soilTemperature": 13,  
    "temperature": 17,  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
Siehe [FAQ 10] (https://smartdatamodels.org/index.php/faqs/), um eine Antwort auf die Frage zu erhalten, wie man mit Größeneinheiten umgeht  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
