<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entity: Garden  
==============<!-- /10-Header -->  
<!-- 15-License -->  
[Open License](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/Garden/LICENSE.md)  
[document generated automatically](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Global description: **A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.**  
version: 0.0.3  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## List of properties  

<sup><sub>[*] If there is not a type in an attribute is because it could have several types or different formats/patterns</sub></sup>  
- `address[object]`: The mailing address  . Model: [https://schema.org/address](https://schema.org/address)- `alternateName[string]`: An alternative name for this item  - `annotations[array]`: Annotations about the item  . Model: [https://schema.org/Text](https://schema.org/Text)- `areaServed[string]`: Higher level area to which the garden belongs to. It can be used to group gardens per responsible, district, neighbourhood, etc  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[array]`: Garden's category. Enum:'public, private, botanical, castle, community, monastery, residential, fencedOff'. Or any other value needed by an application.  . Model: [https://schema.org/Text](https://schema.org/Text)- `color[string]`: The color of the product  . Model: [https://schema.org/color](https://schema.org/color)- `dataProvider[string]`: A sequence of characters identifying the provider of the harmonised data entity.  - `dateCreated[string]`: Entity creation timestamp. This will usually be allocated by the storage platform.  - `dateLastWatering[string]`: Timestamp which corresponds to the last watering of this garden  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[string]`: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.  - `description[string]`: A description of this item  - `id[*]`: Unique identifier of the entity  - `image[string]`: An image of the item  . Model: [https://schema.org/URL](https://schema.org/URL)- `location[*]`: Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon  - `name[string]`: The name of this item.  - `nextWateringDeadline[string]`: Deadline for next watering operation to be done on this garden  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `openingHours[string]`: Opening hours of this garden  . Model: [https://schema.org/openingHours](https://schema.org/openingHours)- `owner[array]`: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)  - `refRecord[array]`: List of records which contain measurements related to this garden  . Model: [https://schema.org/URL](https://schema.org/URL)- `seeAlso[*]`: list of uri pointing to additional resources about the item  - `source[string]`: A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.  - `style[string]`: Enum:'public, english, french, chinese, japanese, zen, rosarium, herb_garden, kitchen'. Garden's style.  . Model: [https://schema.org/Text](https://schema.org/Text)- `type[string]`: NGSI Entity Type: It has to be Garden  <!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Required properties  
- `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Data Model description of properties  
Sorted alphabetically (click for details)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Garden:    
  description: 'A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.'    
  properties:    
    address:    
      description: The mailing address    
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
        district:    
          description: 'A district is a type of administrative division that, in some countries, is managed by the local government.'    
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
        streetNr:    
          description: Number identifying a specific property on a public street.    
          type: string    
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    alternateName:    
      description: An alternative name for this item    
      type: string    
      x-ngsi:    
        type: Property    
    annotations:    
      description: Annotations about the item    
      items:    
        type: string    
      type: array    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    areaServed:    
      description: 'Higher level area to which the garden belongs to. It can be used to group gardens per responsible, district, neighbourhood, etc'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    category:    
      description: 'Garden''s category. Enum:''public, private, botanical, castle, community, monastery, residential, fencedOff''. Or any other value needed by an application.'    
      items:    
        enum:    
          - botanical    
          - castle    
          - community    
          - fencedOff    
          - monastery    
          - private    
          - public    
          - residential    
        type: string    
      minItems: 1    
      type: array    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    color:    
      description: The color of the product    
      type: string    
      x-ngsi:    
        model: https://schema.org/color    
        type: Property    
    dataProvider:    
      description: A sequence of characters identifying the provider of the harmonised data entity.    
      type: string    
      x-ngsi:    
        type: Property    
    dateCreated:    
      description: Entity creation timestamp. This will usually be allocated by the storage platform.    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateLastWatering:    
      description: Timestamp which corresponds to the last watering of this garden    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    dateModified:    
      description: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    description:    
      description: A description of this item    
      type: string    
      x-ngsi:    
        type: Property    
    id:    
      anyOf: &garden_-_properties_-_owner_-_items_-_anyof    
        - description: Property. Identifier format of any NGSI entity    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: Property. Identifier format of any NGSI entity    
          format: uri    
          type: string    
      description: Unique identifier of the entity    
      x-ngsi:    
        type: Property    
    image:    
      description: An image of the item    
      format: uri    
      type: string    
      x-ngsi:    
        model: https://schema.org/URL    
        type: Property    
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: GeoProperty. Geojson reference to the item. Point    
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
          title: GeoJSON Point    
          type: object    
        - description: GeoProperty. Geojson reference to the item. LineString    
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
          title: GeoJSON LineString    
          type: object    
        - description: GeoProperty. Geojson reference to the item. Polygon    
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
          title: GeoJSON Polygon    
          type: object    
        - description: GeoProperty. Geojson reference to the item. MultiPoint    
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
          title: GeoJSON MultiPoint    
          type: object    
        - description: GeoProperty. Geojson reference to the item. MultiLineString    
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
          title: GeoJSON MultiLineString    
          type: object    
        - description: GeoProperty. Geojson reference to the item. MultiLineString    
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
          title: GeoJSON MultiPolygon    
          type: object    
      x-ngsi:    
        type: GeoProperty    
    name:    
      description: The name of this item.    
      type: string    
      x-ngsi:    
        type: Property    
    nextWateringDeadline:    
      description: Deadline for next watering operation to be done on this garden    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    openingHours:    
      description: Opening hours of this garden    
      type: string    
      x-ngsi:    
        model: https://schema.org/openingHours    
        type: Property    
    owner:    
      description: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: Property. Unique identifier of the entity    
      type: array    
      x-ngsi:    
        type: Property    
    refRecord:    
      description: List of records which contain measurements related to this garden    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: Property. Unique identifier of the entity    
      type: array    
      x-ngsi:    
        model: https://schema.org/URL    
        type: Relationship    
    seeAlso:    
      description: list of uri pointing to additional resources about the item    
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
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    style:    
      description: 'Enum:''public, english, french, chinese, japanese, zen, rosarium, herb_garden, kitchen''. Garden''s style.'    
      enum:    
        - chinese    
        - english    
        - french    
        - herb_garden    
        - japanese    
        - kitchen    
        - public    
        - rosarium    
        - zen    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    type:    
      description: 'NGSI Entity Type: It has to be Garden'    
      enum:    
        - Garden    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2022 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.ParksAndGardens/blob/master/Garden/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/dataModel/ParksAndGardens/Garden/schema.json    
  x-model-tags: ""    
  x-version: 0.0.3    
```  
</details>    
<!-- /60-ModelYaml -->  
<!-- 70-MiddleNotes -->  
<!-- /70-MiddleNotes -->  
<!-- 80-Examples -->  
## Example payloads    
#### Garden NGSI-v2 key-values Example    
Here is an example of a Garden in JSON-LD format as key-values. This is compatible with NGSI-v2 when  using `options=keyValues` and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "Santander-Garden-Piquio",  
  "type": "Garden",  
  "name": "Jardines de Piquio",  
  "description": "Jardines de Piquio. Zona El Sardinero",  
  "location": {  
    "type": "Point",  
    "coordinates": [-3.7836974, 43.4741091]  
  },  
  "address": {  
    "streetAddress": "Avenida Castañeda",  
    "addressLocality": "Santander",  
    "postalCode": "39005"  
  },  
  "openingHours": "Mo-Su",  
  "style": "french",  
  "category": ["public"],  
  "areaServed": "El Sardinero",  
  "dateLastWatering": "2017-03-31T08:00:00Z",  
  "refRecord": ["Santander-Garden-Piquio-Record-1"]  
}  
```  
</details>  
#### Garden NGSI-v2 normalized Example    
Here is an example of a Garden in JSON-LD format as normalized. This is compatible with NGSI-v2 when not using options and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "Santander-Garden-Piquio",  
  "type": "Garden",  
  "category": {  
    "type": "array",  
    "value": [  
      "public"  
    ]  
  },  
  "style": {  
    "type": "Text",  
    "value": "french"  
  },  
  "description": {  
    "type": "Text",  
    "value": "Jardines de Piquio. Zona El Sardinero"  
  },  
  "dateLastWatering": {  
    "type": "DateTime",  
    "value": "2017-03-31T08:00:00Z"  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Point",  
      "coordinates": [  
        -3.7836974,  
        43.4741091  
      ]  
    }  
  },  
  "refRecord": {  
    "type": "URI",  
    "value": [  
      "Santander-Garden-Piquio-Record-1"  
    ]  
  },  
  "areaServed": {  
    "type": "Text",  
    "value": "El Sardinero"  
  },  
  "address": {  
    "type": "PostalAddress",  
    "value": {  
      "addressLocality": "Santander",  
      "postalCode": "39005",  
      "streetAddress": "Avenida Casta\u00f1eda"  
    }  
  },  
  "openingHours": {  
    "type": "Text",  
    "value": "Mo-Su"  
  },  
  "name": {  
    "type": "Text",  
    "value": "Jardines de Piquio"  
  }  
}  
```  
</details>  
#### Garden NGSI-LD key-values Example    
Here is an example of a Garden in JSON-LD format as key-values. This is compatible with NGSI-LD when  using `options=keyValues` and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
  "type": "Garden",  
  "address": {  
    "addressLocality": "Santander",  
    "postalCode": "39005",  
    "streetAddress": "Avenida Casta\u00f1eda"  
  },  
  "areaServed": "El Sardinero",  
  "category": [  
    "public"  
  ],  
  "dateLastWatering":  "2017-03-31T08:00:00Z"  
  ,  
  "description": "Jardines de Piquio. Zona El Sardinero",  
  "location": {  
    "coordinates": [  
      -3.7836974,  
      43.4741091  
    ],  
    "type": "Point"  
  },  
  "name": "Jardines de Piquio",  
  "openingHours": "Mo-Su",  
  "refRecord": [  
    "urn:ngsi-ld:Record:Santander-Garden-Piquio-Record-1"  
  ],  
  "style": "french",  
  "@context": [  
    "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
  ]  
}  
```  
</details>  
#### Garden NGSI-LD normalized Example    
Here is an example of a Garden in JSON-LD format as normalized. This is compatible with NGSI-LD when not using options and returns the context data of an individual entity.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
  "type": "Garden",  
  "address": {  
    "type": "Property",  
    "value": {  
      "addressLocality": "Santander",  
      "postalCode": "39005",  
      "streetAddress": "Avenida Casta\u00f1eda",  
      "type": "PostalAddress"  
    }  
  },  
  "areaServed": {  
    "type": "Property",  
    "value": "El Sardinero"  
  },  
  "category": {  
    "type": "Property",  
    "value": [  
      "public"  
    ]  
  },  
  "dateLastWatering": {  
    "type": "Property",  
    "value": {  
      "@type": "DateTime",  
      "@value": "2017-03-31T08:00:00Z"  
    }  
  },  
  "description": {  
    "type": "Property",  
    "value": "Jardines de Piquio. Zona El Sardinero"  
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
  "name": {  
    "type": "Property",  
    "value": "Jardines de Piquio"  
  },  
  "openingHours": {  
    "type": "Property",  
    "value": "Mo-Su"  
  },  
  "refRecord": {  
    "type": "Relationship",  
    "object": [  
      "urn:ngsi-ld:Record:Santander-Garden-Piquio-Record-1"  
    ]  
  },  
  "style": {  
    "type": "Property",  
    "value": "french"  
  },  
  "@context": [  
    "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
  ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
See [FAQ 10](https://smartdatamodels.org/index.php/faqs/) to get an answer on how to deal with magnitude units  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
