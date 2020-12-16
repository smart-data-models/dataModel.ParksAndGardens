Entité : Jardin  
===============  
[Licence ouverte](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/Garden/LICENSE.md)  
Description globale : **Un jardin est un espace planifié distinct, généralement en plein air, réservé à l'exposition, à la culture et à la jouissance des plantes et autres formes de nature.  

## Liste des biens  

- `address`: L'adresse postale.  - `alternateName`: Un autre nom pour cet article  - `annotations`: Annotations sur le sujet  - `areaServed`: Zone de niveau supérieur à laquelle le jardin appartient. Il peut être utilisé pour regrouper les jardins par responsable, district, quartier, etc.  - `category`: La catégorie des jardins. Enum : "public, privé, botanique, château, communauté, monastère, résidentiel, clôturé". Ou toute autre valeur requise par une demande.  - `color`: La couleur du produit  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `dateLastWatering`: Horodatage qui correspond au dernier arrosage de ce jardin  - `dateModified`: Horodatage de la dernière modification de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `description`: Une description de cet article  - `id`: Identifiant unique de l'entité  - `image`: Une image de l'objet  - `location`:   - `name`: Le nom de cet article.  - `nextWateringDeadline`: Date limite pour la prochaine opération d'arrosage de ce jardin  - `openingHours`: Heures d'ouverture de ce jardin  - `owner`: Une liste contenant une séquence de caractères codés en JSON faisant référence aux Ids uniques du ou des propriétaires  - `refRecord`: Liste des dossiers contenant des mesures relatives à ce jardin  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur le sujet  - `source`: Une séquence de caractères donnant comme URL la source originale des données de l'entité. Il est recommandé d'utiliser le nom de domaine complet du fournisseur de la source, ou l'URL de l'objet source.  - `style`: Enum : "public, anglais, français, chinois, japonais, zen, rosarium, herb_garden, cuisine". Style du jardin.  - `type`: Type d'entité NGSI : Il doit s'agir d'un jardin    
Propriétés requises  
- `id`  - `location`  - `name`  - `type`  ## Modèle de données description des biens  
Classement par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Garden:    
  description: 'A garden is a distinguishable planned space, usually outdoors, set aside for the display, cultivation, and enjoyment of plants and other forms of nature.'    
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
      description: 'Higher level area to which the garden belongs to. It can be used to group gardens per responsible, district, neighbourhood, etc'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    category:    
      description: 'Garden''s category. Enum:''public, private, botanical, castle, community, monastery, residential, fencedOff''. Or any other value needed by an application.'    
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
    dateLastWatering:    
      description: 'Timestamp which corresponds to the last watering of this garden'    
      format: date-time    
      type: Property    
      x-ngsi:    
        model: https://schema.org/DateTime    
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
    nextWateringDeadline:    
      description: 'Deadline for next watering operation to be done on this garden'    
      format: date-time    
      type: Property    
      x-ngsi:    
        model: https://schema.org/DateTime    
    openingHours:    
      description: 'Opening hours of this garden'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/openingHours    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: Property    
    refRecord:    
      description: 'List of records which contain measurements related to this garden'    
      items:    
        anyOf: *garden_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: Relationship    
      x-ngsi:    
        model: https://schema.org/URL    
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
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    style:    
      description: 'Enum:''public, english, french, chinese, japanese, zen, rosarium, herb_garden, kitchen''. Garden''s style.'    
      enum:    
        - public    
        - english    
        - french    
        - chinese    
        - japanese    
        - zen    
        - rosarium    
        - herb_garden    
        - kitchen    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    type:    
      description: 'NGSI Entity Type: It has to be Garden'    
      enum:    
        - Garden    
      type: Property    
  required:    
    - id    
    - type    
    - location    
    - name    
  type: object    
```  
</details>    
## Exemples de charges utiles  
#### Exemple de valeurs clés de l'INSG V2  
Voici un exemple de jardin en format JSON comme valeurs clés. Ce format est compatible avec NGSI V2 lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
#### Jardin NGSI V2 normalisé Exemple  
Voici un exemple de jardin au format JSON tel que normalisé. Il est compatible avec NGSI V2 lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
#### Exemple de valeurs clés de l'INSG-LD  
Voici un exemple de jardin en format JSON-LD comme valeurs clés. Il est compatible avec le format NGSI-LD lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
#### Jardin NGSI-LD normalisé Exemple  
Voici un exemple de jardin en format JSON-LD tel que normalisé. Il est compatible avec le format JSON-LD lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
