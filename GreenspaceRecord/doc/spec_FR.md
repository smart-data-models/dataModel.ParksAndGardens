Entité : GreenspaceRecord  
=========================  
[Licence ouverte](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/GreenspaceRecord/LICENSE.md)  
Description globale : **Cette entité contient une description harmonisée des conditions enregistrées sur une zone ou un point particulier à l'intérieur d'un espace vert (plate-bande, jardin, etc.).**  

## Liste des biens  

- `address`: L'adresse postale.  - `alternateName`: Un autre nom pour cet article  - `annotations`: Annotations sur le sujet  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `color`: La couleur du produit  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `dateObserved`: La date et l'heure de cette observation au format ISO8601 UTC  - `description`: Une description de cet article  - `id`: Identifiant unique de l'entité  - `image`: Une image de l'objet  - `location`:   - `name`: Le nom de cet article.  - `owner`: Une liste contenant une séquence de caractères codés en JSON faisant référence aux Ids uniques du ou des propriétaires  - `refDevice`: Le ou les dispositifs utilisés pour obtenir les données exprimées par cet enregistrement  - `refGreenspace`: Le jardin ou le parterre de fleurs auquel ce document se réfère  - `refWeatherObserved`:  Météo observée associée aux mesures décrites par cette entité  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur le sujet  - `soilMoistureEc`: L'humidité douce observée mesurée en tant que conductivité électrique, CE en unités Siemens par mètre (S/m)  - `soilMoistureVwc`: L'humidité du sol observée, mesurée en tant que teneur volumétrique en eau, VWC (pourcentage, exprimé en parties pour un)  - `soilTemperature`: La température du sol observée en degrés Celsius  - `source`: Une séquence de caractères donnant comme URL la source originale des données de l'entité. Il est recommandé d'utiliser le nom de domaine complet du fournisseur de la source, ou l'URL de l'objet source.  - `type`: Type d'entité NGSI : Il doit s'agir de GreenspaceRecord    
Propriétés requises  
- `dateObserved`  - `id`  - `location`  - `type`    
Ce type d'entité a été inspiré du type d'entité AgriParcelRecord défini par les modèles de données harmonisés de la GSMA.  
## Modèle de données description des biens  
Classement par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
GreenspaceRecord:    
  description: 'This entity contains a harmonised description of the conditions recorded on a particular area or point inside a greenspace (flower bed, garden, etc.).'    
  properties:    
    address:    
      description: 'The mailing address.'    
      properties:    
        addressCountry:    
          description: 'Property. The country. For example, Spain. Model:''https://schema.org/Text'''    
          type: string    
        addressLocality:    
          description: 'Property. The locality in which the street address is, and which is in the region. Model:''https://schema.org/Text'''    
          type: string    
        addressRegion:    
          description: 'Property. The region in which the locality is, and which is in the country. Model:''https://schema.org/Text'''    
          type: string    
        areaServed:    
          description: 'Property. The geographic area where a service or offered item is provided. Model:''https://schema.org/Text'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, Spain. Model:''https://schema.org/Text'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, Spain. Model:''https://schema.org/Text'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/Text'''    
          type: string    
      type: Property    
    alternateName:    
      description: 'An alternative name for this item'    
      type: Property    
    annotations:    
      description: 'Annotations about the item'    
      items:    
        type: string    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    color:    
      description: 'The color of the product'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/color    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    dateObserved:    
      description: 'The date and time of this observation in ISO8601 UTCformat'    
      format: date-time    
      type: Property    
      x-ngsi:    
        model: https://schema.org/DateTime    
    description:    
      description: 'A description of this item'    
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
      type: Property    
    image:    
      description: 'An image of the item'    
      format: uri    
      type: Property    
      x-ngsi:    
        model: https://schema.org/URL    
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
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *greenspacerecord_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
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
      type: Relationship    
      x-ngsi:    
        model: https://schema.org/URL.    
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
      type: Relationship    
      x-ngsi:    
        model: https://schema.org/URL.    
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
      type: Relationship    
      x-ngsi:    
        model: https://schema.org/URL.    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
      oneOf:    
        - items:    
            - format: uri    
              type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
      type: Property    
    soilMoistureEc:    
      description: 'The observed soild moisture measured as Electrical Conductivity, EC in units of Siemens per meter (S/m)'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Number    
        units: 'Siemens per meter'    
    soilMoistureVwc:    
      description: 'The observed soil moisture measured as Volumetric Water Content, VWC (percentage, expressed in parts per one)'    
      maximum: 1    
      minimum: 0    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Number    
    soilTemperature:    
      description: 'The observed soil temperature in Celsius degrees'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Number    
        units: 'degrees Celsius'    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    type:    
      description: 'NGSI Entity Type: It has to be GreenspaceRecord'    
      enum:    
        - GreenspaceRecord    
      type: Property    
  required:    
    - id    
    - type    
    - location    
    - dateObserved    
  type: object    
```  
</details>    
## Exemples de charges utiles  
#### GreenspaceRecord NGSI V2 Exemple de valeurs clés  
Voici un exemple d'un GreenspaceRecord au format JSON comme valeurs clés. Il est compatible avec NGSI V2 lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
#### GreenspaceRecord NGSI V2 normalisé Exemple  
Voici un exemple d'un GreenspaceRecord au format JSON tel que normalisé. Il est compatible avec la version 2 du NGSI lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
#### GreenspaceRecord NGSI-LD valeurs clés Exemple  
Voici un exemple d'un GreenspaceRecord au format JSON-LD comme valeurs clés. Il est compatible avec le format NGSI-LD lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
```json  
{"@context": ["https://schema.lab.fiware.org/ld/context",  
              "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"],  
 "dateObserved": {"@type": "DateTime", "@value": "2019-01-15T12:00:00Z"},  
 "id": "urn:ngsi-ld:GreenspaceRecord:Santander-Garden-Piquio-Record-1",  
 "location": {"coordinates": [-3.7836974, 43.4741091], "type": "Point"},  
 "refGreenspace": "urn:ngsi-ld:Greenspace:Santander-Garden-Piquio",  
 "relativeHumidity": 0.87,  
 "soilTemperature": 13,  
 "temperature": 17,  
 "type": "GreenspaceRecord"}  
```  
#### GreenspaceRecord NGSI-LD normalisé Exemple  
Voici un exemple d'un GreenspaceRecord au format JSON-LD tel que normalisé. Il est compatible avec le format NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
```json  
{  
    "id": "urn:ngsi-ld:GreenspaceRecord:Santander-Garden-Piquio-Record-1",  
    "type": "GreenspaceRecord",  
    "refGreenspace": {  
        "type": "Relationship",  
        "object": "urn:ngsi-ld:Greenspace:Santander-Garden-Piquio"  
    },  
    "temperature": {  
        "type": "Property",  
        "value": 17  
    },  
    "soilTemperature": {  
        "type": "Property",  
        "value": 13  
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
    "relativeHumidity": {  
        "type": "Property",  
        "value": 0.87  
    },  
    "dateObserved": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2019-01-15T12:00:00Z"  
        }  
    },  
    "@context": [  
        "https://schema.lab.fiware.org/ld/context",  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
    ]  
}  
```  
