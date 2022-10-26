<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entity: FlowerBed  
=================<!-- /10-Header -->  
<!-- 15-License -->  
[Open License](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md)  
[document generated automatically](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Global description: **A garden plot in which flowers (or other plants) are grown. Usually you will find flower beds in parks, gardens, pedestrian areas or at big highway interchanges.**  
version: 0.0.1  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## List of properties  

<sup><sub>[*] If there is not a type in an attribute is because it could have several types or different formats/patterns</sub></sup>  
- `address[object]`: The mailing address  . Model: [https://schema.org/address](https://schema.org/address)- `alternateName[string]`: An alternative name for this item  - `annotations[array]`: Annotations about the item  . Model: [https://schema.org/Text](https://schema.org/Text)- `areaServed[string]`: The geographic area where a service or offered item is provided  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[array]`: Category of this flower bed. Enum:'hedge, lawnArea, portable, urbanTreeSpot'. Or any extended value needed by the application.  . Model: [https://schema.org/Text](https://schema.org/Text)- `color[string]`: The color of the product  . Model: [https://schema.org/color](https://schema.org/color)- `dataProvider[string]`: A sequence of characters identifying the provider of the harmonised data entity.  - `dateCreated[string]`: Entity creation timestamp. This will usually be allocated by the storage platform.  - `dateLastWatering[string]`: Timestamp which corresponds to the last watering of the flower bed.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[string]`: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.  - `depth[number]`: Depth of this flower bed.  . Model: [https://schema.org/depth](https://schema.org/depth)- `description[string]`: A description of this item  - `height[string]`: Heigth of this flower bed.  . Model: [https://schema.org/heigth](https://schema.org/heigth)- `id[*]`: Unique identifier of the entity  - `image[string]`: An image of the item  . Model: [https://schema.org/URL](https://schema.org/URL)- `location[*]`: Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon  - `name[string]`: The name of this item.  - `nextWateringDeadline[string]`: Deadline for next watering operation.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `owner[array]`: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)  - `refGarden[*]`: Flower bed's garden (if it belongs to any).  . Model: [https://schema.org/URL](https://schema.org/URL)- `seeAlso[*]`: list of uri pointing to additional resources about the item  - `shape[array]`: Shape of this flower bed. Enum:'rectangular, square, elliptic, polygonal, circular'. Or any other required by an application.  . Model: [https://schema.org/depth](https://schema.org/depth)- `source[string]`: A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.  - `taxon[array]`: Used to indicate the biological [taxon](http://en.wikipedia.org/wiki/en:taxon) to which the trees, or plants in the flower bed belong  . Model: [https://schema.org/Text](https://schema.org/Text)- `type[string]`: NGSI Entity Type: It has to be FlowerBed  - `width[number]`: Width of this flower bed.  . Model: [https://schema.org/width](https://schema.org/width)<!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Required properties  
- `id`  - `location`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Data Model description of properties  
Sorted alphabetically (click for details)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
FlowerBed:    
  description: 'A garden plot in which flowers (or other plants) are grown. Usually you will find flower beds in parks, gardens, pedestrian areas or at big highway interchanges.'    
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
    category:    
      description: 'Category of this flower bed. Enum:''hedge, lawnArea, portable, urbanTreeSpot''. Or any extended value needed by the application.'    
      items:    
        enum:    
          - hedge    
          - lawnArea    
          - portable    
          - urbanTreeSpot    
        type: string    
      minItems: 1    
      type: array    
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
    dateLastWatering:    
      description: 'Timestamp which corresponds to the last watering of the flower bed.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    depth:    
      description: 'Depth of this flower bed.'    
      minimum: 0    
      type: number    
      x-ngsi:    
        model: https://schema.org/depth    
        type: Property    
    description:    
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
        type: Property    
    height:    
      description: 'Heigth of this flower bed.'    
      minimum: 0    
      type: string    
      x-ngsi:    
        model: https://schema.org/heigth    
        type: Property    
    id:    
      anyOf: &flowerbed_-_properties_-_owner_-_items_-_anyof    
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
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: 'Geoproperty. Geojson reference to the item. Point'    
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
        - description: 'Geoproperty. Geojson reference to the item. LineString'    
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
        - description: 'Geoproperty. Geojson reference to the item. Polygon'    
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
        - description: 'Geoproperty. Geojson reference to the item. MultiPoint'    
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
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
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
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
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
        type: Geoproperty    
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    nextWateringDeadline:    
      description: 'Deadline for next watering operation.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *flowerbed_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    refGarden:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Flower bed''s garden (if it belongs to any).'    
      x-ngsi:    
        model: https://schema.org/URL    
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
    shape:    
      description: 'Shape of this flower bed. Enum:''rectangular, square, elliptic, polygonal, circular''. Or any other required by an application.'    
      items:    
        enum:    
          - rectangular    
          - square    
          - elliptic    
          - polygon    
          - circular    
        type: string    
      minItems: 1    
      type: array    
      uniqueItems: true    
      x-ngsi:    
        model: https://schema.org/depth    
        type: Property    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    taxon:    
      description: 'Used to indicate the biological [taxon](http://en.wikipedia.org/wiki/en:taxon) to which the trees, or plants in the flower bed belong'    
      items:    
        type: string    
      minItems: 1    
      type: array    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    type:    
      description: 'NGSI Entity Type: It has to be FlowerBed'    
      enum:    
        - FlowerBed    
      type: string    
      x-ngsi:    
        type: Property    
    width:    
      description: 'Width of this flower bed.'    
      minimum: 0    
      type: number    
      x-ngsi:    
        model: https://schema.org/width    
        type: Property    
  required:    
    - id    
    - location    
    - type    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/dataModel.ParksAndGardens/FlowerBed/schema.json    
  x-model-tags: ""    
  x-version: 0.0.1    
```  
</details>    
<!-- /60-ModelYaml -->  
<!-- 70-MiddleNotes -->  
<!-- /70-MiddleNotes -->  
<!-- 80-Examples -->  
## Example payloads    
#### FlowerBed NGSI-v2 key-values Example    
Here is an example of a FlowerBed in JSON-LD format as key-values. This is compatible with NGSI-v2 when  using `options=keyValues` and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "FlowerBed-345",  
  "type": "FlowerBed",  
  "category": ["urbanTreeSpot"],  
  "dateLastWatering": "2017-03-31T08:00:00Z",  
  "address": {  
    "streetAddress": "Paseo Zorrilla, 122",  
    "adressLocality": "Valladolid",  
    "addressCountry": "Spain"  
  },  
  "location": {  
    "type": "Point",  
    "coordinates": [-4.743187, 41.627999]  
  },  
  "soilTemperature": 17,  
  "soilMoistureVwc": 0.85  
}  
```  
</details>  
#### FlowerBed NGSI-v2 normalized Example    
Here is an example of a FlowerBed in JSON-LD format as normalized. This is compatible with NGSI-v2 when not using options and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "FlowerBed-345",  
  "type": "FlowerBed",  
  "category": {  
    "value": ["urbanTreeSpot"]  
  },  
  "soilMoistureVwc": {  
    "value": 0.85  
  },  
  "dateLastWatering": {  
    "type": "DateTime",  
    "value": "2017-03-31T08:00:00Z"  
  },  
  "soilTemperature": {  
    "value": 17  
  },  
  "address": {  
    "type": "PostalAddress",  
    "value": {  
      "addressCountry": "Spain",  
      "streetAddress": "Paseo Zorrilla, 122",  
      "adressLocality": "Valladolid"  
    }  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Point",  
      "coordinates": [-4.743187, 41.627999]  
    }  
  }  
}  
```  
</details>  
#### FlowerBed NGSI-LD key-values Example    
Here is an example of a FlowerBed in JSON-LD format as key-values. This is compatible with NGSI-LD when  using `options=keyValues` and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
    "type": "FlowerBed",  
    "address": {  
        "type": "Property",  
        "value": {  
            "addressCountry": "Spain",  
            "streetAddress": "Paseo Zorrilla, 122",  
            "adressLocality": "Valladolid",  
            "type": "PostalAddress"  
        }  
    },  
    "category": {  
        "type": "Property",  
        "value": [  
            "urbanTreeSpot"  
        ]  
    },  
    "dateLastWatering": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2017-03-31T08:00:00Z"  
        }  
    },  
    "location": {  
        "type": "GeoProperty",  
        "value": {  
            "type": "Point",  
            "coordinates": [  
                -4.743187,  
                41.627999  
            ]  
        }  
    },  
    "soilMoistureVwc": {  
        "type": "Property",  
        "value": 0.85  
    },  
    "soilTemperature": {  
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
#### FlowerBed NGSI-LD normalized Example    
Here is an example of a FlowerBed in JSON-LD format as normalized. This is compatible with NGSI-LD when not using options and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
    "type": "FlowerBed",  
    "address": {  
        "addressCountry": "Spain",  
        "adressLocality": "Valladolid",  
        "streetAddress": "Paseo Zorrilla, 122",  
        "type": "PostalAddress"  
    },  
    "category": [  
        "urbanTreeSpot"  
    ],  
    "dateLastWatering": {  
        "@type": "DateTime",  
        "@value": "2017-03-31T08:00:00Z"  
    },  
    "location": {  
        "coordinates": [  
            -4.743187,  
            41.627999  
        ],  
        "type": "Point"  
    },  
    "soilMoistureVwc": 0.85,  
    "soilTemperature": 17,  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
There are two options for representing measurements observed. A) Through a linked entity of type `GreenspaceRecord` (attribute named `refRecord`). B) Through a group of measurement properties already defined by [GreenspaceRecord](../../GreenspaceRecord/doc/spec.md). Here it is the description of the attribute to be used for option `refRecord`; List of records which contain measurements related to this                 flower bed. Attribute type; Relationship. List of references to entities of type `GreenspaceRecord`  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
See [FAQ 10](https://smartdatamodels.org/index.php/faqs/) to get an answer on how to deal with magnitude units  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
