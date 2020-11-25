Entity: Garden  
==============  
This specification is a **temporal version**. It is automatically generated from the  documented properties described in the schema.json condensed into the file `model.yaml`. A temporary `new_model.yaml` file has been created in every data model to avoid impacting into existing scripts. Thus, the specification will be incomplete as long as the schema.json is not updated to the new format (documenting properties). Once updated the `model.yaml` (`new_model.yaml`) needs to be updated as well (automatically) . Further info in this [link](https://github.com/smart-data-models/data-models/blob/master/specs/warning_message_new_spec.md). As long as it is a provisional format any [feedback is welcomed in this form](https://smartdatamodels.org/index.php/submit-an-issue-2/) choosing option `Feedback on the new specification`  
Global description: **A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.**  

## List of properties  

`address`: The mailing address.  `alternateName`: An alternative name for this item  `annotations`:   `areaServed`:   `category`:   `color`: The color of the product.  `dataProvider`: A sequence of characters identifying the provider of the harmonised data entity.  `dateCreated`: Entity creation timestamp. This will usually be allocated by the storage platform.  `dateLastWatering`:   `dateModified`: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.  `description`: A description of this item  `id`:   `image`: An image of the item.  `location`:   `name`: The name of this item.  `nextWateringDeadline`:   `openingHours`:   `owner`: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)  `refRecord`:   `seeAlso`:   `source`: A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.  `style`:   `type`: NGSI Entity type  ## Data Model description of properties  
Sorted alphabetically  
```yaml  
Garden:    
  description: 'A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.'    
  properties:    
    address:    
      description: 'The mailing address.'    
      properties:    
        addressCountry:    
          type: string    
        addressLocality:    
          type: string    
        addressRegion:    
          type: string    
        areaServed:    
          type: string    
        postOfficeBoxNumber:    
          type: string    
        postalCode:    
          type: string    
        streetAddress:    
          type: string    
      type: Property    
    alternateName:    
      description: 'An alternative name for this item'    
      type: Property    
    annotations:    
      items:    
        type: string    
      type: array    
    areaServed:    
      type: string    
    category:    
      items:    
        enum:    
          - public    
          - private    
          - botanical    
          - castle    
          - community    
          - monastary    
          - residential    
          - fencedOff    
        type: string    
      minitems: 1    
      type: array    
    color:    
      description: 'The color of the product.'    
      type: string    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    dateLastWatering:    
      format: date-time    
      type: string    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    description:    
      description: 'A description of this item'    
      type: Property    
    id:    
      anyOf: &garden_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
    image:    
      description: 'An image of the item.'    
      format: uri    
      type: string    
    location:    
      $id: https://geojson.org/schema/Geometry.json    
      $schema: "http://json-schema.org/draft-07/schema#"    
      oneOf:    
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
      title: 'GeoJSON Geometry'    
    name:    
      description: 'The name of this item.'    
      type: Property    
    nextWateringDeadline:    
      format: date-time    
      type: string    
    openingHours:    
      type: string    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
      type: Property    
    refRecord:    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
      type: array    
    seeAlso:    
      oneOf:    
        - items:    
            - format: uri    
              type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    style:    
      enum:    
        - english    
        - french    
        - chinese    
        - japanese    
        - zen    
        - rosarium    
        - herb_garden    
        - kitchen    
      type: string    
    type:    
      description: 'NGSI Entity type'    
      enum:    
        - Garden    
      type: string    
  required:    
    - id    
    - type    
    - location    
    - name    
  type: object    
```  
Here is an example of a Garden in JSON format as key-values. This is compatible with NGSI V2 when  using `options=keyValues` and returns the context data of an individual entity.  
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
Here is an example of a Garden in JSON format as normalized. This is compatible with NGSI V2 when  using `options=keyValues` and returns the context data of an individual entity.  
```json  
{  
  "id": "Santander-Garden-Piquio",  
  "type": "Garden",  
  "category": {  
    "value": ["public"]  
  },  
  "style": {  
    "value": "french"  
  },  
  "description": {  
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
      "coordinates": [-3.7836974, 43.4741091]  
    }  
  },  
  "refRecord": {  
    "type": "Relationship",  
    "value": ["Santander-Garden-Piquio-Record-1"]  
  },  
  "areaServed": {  
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
    "value": "Mo-Su"  
  },  
  "name": {  
    "value": "Jardines de Piquio"  
  }  
}  
```  
Here is an example of a Garden in JSON-LD format as key-values. This is compatible with NGSI-LD when not using options and returns the context data of an individual entity.  
```json  
{"@context": ["https://schema.lab.fiware.org/ld/context",  
              "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"],  
 "address": {"addressLocality": "Santander",  
             "postalCode": "39005",  
             "streetAddress": "Avenida CastaÃ±eda",  
             "type": "PostalAddress"},  
 "areaServed": "El Sardinero",  
 "category": ["public"],  
 "dateLastWatering": {"@type": "DateTime", "@value": "2017-03-31T08:00:00Z"},  
 "description": "Jardines de Piquio. Zona El Sardinero",  
 "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
 "location": {"coordinates": [-3.7836974, 43.4741091], "type": "Point"},  
 "name": "Jardines de Piquio",  
 "openingHours": "Mo-Su",  
 "refRecord": ["urn:ngsi-ld:Record:Santander-Garden-Piquio-Record-1"],  
 "style": "french",  
 "type": "Garden"}  
```  
Here is an example of a Garden in JSON-LD format as normalized. This is compatible with NGSI-LD when not using options and returns the context data of an individual entity.  
```json  
{  
    "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
    "type": "Garden",  
    "category": {  
        "type": "Property",  
        "value": [  
            "public"  
        ]  
    },  
    "style": {  
        "type": "Property",  
        "value": "french"  
    },  
    "description": {  
        "type": "Property",  
        "value": "Jardines de Piquio. Zona El Sardinero"  
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
                -3.7836974,  
                43.4741091  
            ]  
        }  
    },  
    "refRecord": {  
        "type": "Relationship",  
        "object": [  
            "urn:ngsi-ld:Record:Santander-Garden-Piquio-Record-1"  
        ]  
    },  
    "areaServed": {  
        "type": "Property",  
        "value": "El Sardinero"  
    },  
    "address": {  
        "type": "Property",  
        "value": {  
            "addressLocality": "Santander",  
            "postalCode": "39005",  
            "streetAddress": "Avenida CastaÃ±eda",  
            "type": "PostalAddress"  
        }  
    },  
    "openingHours": {  
        "type": "Property",  
        "value": "Mo-Su"  
    },  
    "name": {  
        "type": "Property",  
        "value": "Jardines de Piquio"  
    },  
    "@context": [  
        "https://schema.lab.fiware.org/ld/context",  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
    ]  
}  
```  
