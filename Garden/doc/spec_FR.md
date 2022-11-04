<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entité : Garden  
===============<!-- /10-Header -->  
<!-- 15-License -->  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/Garden/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Description globale : **Un jardin est un espace planifié distinct, généralement en plein air, réservé à la présentation, à la culture et à l'appréciation des plantes et d'autres formes de la nature**.  
version : 0.0.3  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Liste des propriétés  

<sup><sub>[*] S'il n'y a pas de type dans un attribut, c'est parce qu'il pourrait avoir plusieurs types ou différents formats/modèles</sub></sup>.  
- `address[object]`: L'adresse postale  . Model: [https://schema.org/address](https://schema.org/address)- `alternateName[string]`: Un nom alternatif pour cet élément  - `annotations[array]`: Annotations sur l'élément  . Model: [https://schema.org/Text](https://schema.org/Text)- `areaServed[string]`: Zone de niveau supérieur à laquelle appartient le jardin. Il peut être utilisé pour regrouper les jardins par responsable, district, quartier, etc.  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[array]`: Catégorie du jardin. Enum : 'public, privé, botanique, château, communauté, monastère, résidentiel, fencedOff'. Ou toute autre valeur nécessaire à une application.  . Model: [https://schema.org/Text](https://schema.org/Text)- `color[string]`: La couleur du produit  . Model: [https://schema.org/color](https://schema.org/color)- `dataProvider[string]`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated[string]`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateLastWatering[string]`: Horodatage qui correspond au dernier arrosage de ce jardin  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[string]`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description[string]`: Une description de cet article  - `id[*]`: Identifiant unique de l'entité  - `image[string]`: Une image de l'article  . Model: [https://schema.org/URL](https://schema.org/URL)- `location[*]`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `name[string]`: Le nom de cet élément.  - `nextWateringDeadline[string]`: Date limite pour le prochain arrosage à effectuer sur ce jardin  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `openingHours[string]`: Heures d'ouverture de ce jardin  . Model: [https://schema.org/openingHours](https://schema.org/openingHours)- `owner[array]`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `refRecord[array]`: Liste des enregistrements qui contiennent des mesures relatives à ce jardin  . Model: [https://schema.org/URL](https://schema.org/URL)- `seeAlso[*]`: liste d'uri pointant vers des ressources supplémentaires sur l'article  - `source[string]`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `style[string]`: Enum : 'public, english, french, chinese, japanese, zen, rosarium, herb_garden, kitchen'. Le style du jardin.  . Model: [https://schema.org/Text](https://schema.org/Text)- `type[string]`: Type d'entité NGSI : Il doit s'agir de Garden  <!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Propriétés requises  
- `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Garden:    
  description: 'A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.'    
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
      description: 'Timestamp which corresponds to the last watering of this garden'    
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
    description:    
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
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
    nextWateringDeadline:    
      description: 'Deadline for next watering operation to be done on this garden'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    openingHours:    
      description: 'Opening hours of this garden'    
      type: string    
      x-ngsi:    
        model: https://schema.org/openingHours    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    refRecord:    
      description: 'List of records which contain measurements related to this garden'    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
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
## Exemples de charges utiles  
#### Garden NGSI-v2 key-values Exemple  
Voici un exemple de jardin au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-v2 lorsque vous utilisez `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
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
#### Garden NGSI-v2 normalisé Exemple  
Voici un exemple de jardin au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
<details><summary><strong>show/hide example</strong></summary>    
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
</details>  
#### Garden NGSI-LD valeurs-clés Exemple  
Voici un exemple de jardin au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-LD lorsque vous utilisez `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
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
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
    ]  
}  
```  
</details>  
#### Jardin NGSI-LD normalisé Exemple  
Voici un exemple de jardin au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
    "type": "Garden",  
    "address": {  
        "addressLocality": "Santander",  
        "postalCode": "39005",  
        "streetAddress": "Avenida Casta\u00f1eda",  
        "type": "PostalAddress"  
    },  
    "areaServed": "El Sardinero",  
    "category": [  
        "public"  
    ],  
    "dateLastWatering": {  
        "@type": "DateTime",  
        "@value": "2017-03-31T08:00:00Z"  
    },  
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
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
Voir [FAQ 10](https://smartdatamodels.org/index.php/faqs/) pour obtenir une réponse sur la façon de traiter les unités de magnitude.  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
