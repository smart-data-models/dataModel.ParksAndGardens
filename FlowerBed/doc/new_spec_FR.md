Entité : FlowerBed  
==================  
[Licence ouverte](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md)  
Description globale : **Une parcelle de jardin dans laquelle des fleurs (ou d'autres plantes) sont cultivées. En général, vous trouverez des plates-bandes dans les parcs, les jardins, les zones piétonnes ou les grands échangeurs routiers.  

## Liste des biens  

- `address`: L'adresse postale.  - `alternateName`: Un autre nom pour cet article  - `annotations`: Annotations sur le sujet  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `category`: Catégorie de ce parterre de fleurs. Enum : "haie, pelouseAire, portable, urbanTreeSpot". Ou toute valeur étendue nécessaire à l'application.  - `color`: La couleur du produit  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `dateLastWatering`: Horodatage qui correspond au dernier arrosage du parterre de fleurs.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `depth`: Profondeur de ce parterre de fleurs.  - `description`: Une description de cet article  - `height`: Hauteur de ce parterre de fleurs.  - `id`: Identifiant unique de l'entité  - `image`: Une image de l'objet  - `location`:   - `name`: Le nom de cet article.  - `nextWateringDeadline`: Date limite pour la prochaine opération d'arrosage.  - `owner`: Une liste contenant une séquence de caractères codés en JSON faisant référence aux Ids uniques du ou des propriétaires  - `refGarden`: Le jardin du parterre de fleurs (s'il en existe un).  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur le sujet  - `shape`: Forme de ce parterre de fleurs. Enum : "rectangulaire, carré, elliptique, polygonal, circulaire". Ou tout autre élément requis par une demande.  - `source`: Une séquence de caractères donnant comme URL la source originale des données de l'entité. Il est recommandé d'utiliser le nom de domaine complet du fournisseur de la source, ou l'URL de l'objet source.  - `taxon`: Utilisé pour indiquer le [taxon] biologique (http://en.wikipedia.org/wiki/en:taxon) auquel appartiennent les arbres ou les plantes dans la plate-bande  - `type`: Type d'entité NGSI : Il doit s'agir de FlowerBed  - `width`: Largeur de ce parterre de fleurs.    
Propriétés requises  
- `id`  - `location`  - `type`  ## Modèle de données description des biens  
Classement par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
FlowerBed:    
  description: 'A garden plot in which flowers (or other plants) are grown. Usually you will find flower beds in parks, gardens, pedestrian areas or at big highway interchanges.'    
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
      description: 'Timestamp which corresponds to the last watering of the flower bed.'    
      format: date-time    
      type: Property    
      x-ngsi:    
        model: https://schema.org/DateTime    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    depth:    
      description: 'Depth of this flower bed.'    
      minimum: 0    
      type: Property    
      x-ngsi:    
        model: https://schema.org/depth    
    description:    
      description: 'A description of this item'    
      type: Property    
    height:    
      description: 'Heigth of this flower bed.'    
      minimum: 0    
      type: Property    
      x-ngsi:    
        model: https://schema.org/heigth    
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
      description: 'Deadline for next watering operation.'    
      format: date-time    
      type: Property    
      x-ngsi:    
        model: https://schema.org/DateTime    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *flowerbed_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
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
      type: Property    
      uniqueItems: true    
      x-ngsi:    
        model: https://schema.org/depth    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    taxon:    
      description: 'Used to indicate the biological [taxon](http://en.wikipedia.org/wiki/en:taxon) to which the trees, or plants in the flower bed belong'    
      items:    
        type: string    
      minItems: 1    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    type:    
      description: 'NGSI Entity Type: It has to be FlowerBed'    
      enum:    
        - FlowerBed    
      type: Property    
    width:    
      description: 'Width of this flower bed.'    
      minimum: 0    
      type: Property    
      x-ngsi:    
        model: https://schema.org/width    
  required:    
    - id    
    - location    
    - type    
  type: object    
```  
</details>    
## Exemples de charges utiles  
#### FlowerBed NGSI V2 valeurs clés Exemple  
Voici un exemple d'un lit de fleurs au format JSON comme valeurs clés. Il est compatible avec NGSI V2 lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
#### FlowerBed NGSI V2 normalisé Exemple  
Voici un exemple de lit de fleurs au format JSON normalisé. Ce format est compatible avec la version 2 du NGSI lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
#### FlowerBed NGSI-LD valeurs clés Exemple  
Voici un exemple d'un lit de fleurs au format JSON-LD comme valeurs clés. Il est compatible avec le format NGSI-LD lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
```json  
{"@context": ["https://schema.lab.fiware.org/ld/context",  
              "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"],  
 "address": {"addressCountry": "Spain",  
             "adressLocality": "Valladolid",  
             "streetAddress": "Paseo Zorrilla, 122",  
             "type": "PostalAddress"},  
 "category": ["urbanTreeSpot"],  
 "dateLastWatering": {"@type": "DateTime", "@value": "2017-03-31T08:00:00Z"},  
 "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
 "location": {"coordinates": [-4.743187, 41.627999], "type": "Point"},  
 "soilMoistureVwc": 0.85,  
 "soilTemperature": 17,  
 "type": "FlowerBed"}  
```  
#### FlowerBed NGSI-LD normalisé Exemple  
Voici un exemple d'un lit de fleurs au format JSON-LD tel que normalisé. Il est compatible avec le format JSON-LD lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
```json  
{  
    "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
    "type": "FlowerBed",  
    "category": {  
        "type": "Property",  
        "value": [  
            "urbanTreeSpot"  
        ]  
    },  
    "soilMoistureVwc": {  
        "type": "Property",  
        "value": 0.85  
    },  
    "dateLastWatering": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2017-03-31T08:00:00Z"  
        }  
    },  
    "soilTemperature": {  
        "type": "Property",  
        "value": 17  
    },  
    "address": {  
        "type": "Property",  
        "value": {  
            "addressCountry": "Spain",  
            "streetAddress": "Paseo Zorrilla, 122",  
            "adressLocality": "Valladolid",  
            "type": "PostalAddress"  
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
    "@context": [  
        "https://schema.lab.fiware.org/ld/context",  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
    ]  
}  
```  
Il existe deux options pour représenter les mesures observées. A) Par le biais d'une entité liée de type "GreenSpaceRecord" (attribut nommé "record"). B) Par un groupe de propriétés de mesure déjà définies par [GreenspaceRecord](../../GreenspaceRecord/doc/spec.md). Il s'agit ici de la description de l'attribut à utiliser pour l'option `refRecord` ; Liste des enregistrements qui contiennent des mesures relatives à cette plate-bande. Type d'attribut ; Relation. Liste des références aux entités du type "GreenSpaceRecord".  
