Entità: FlowerBed  
=================  
[Licenza aperta](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md)  
[documento generato automaticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Descrizione globale: **Un appezzamento di giardino in cui si coltivano fiori (o altre piante). Di solito si trovano aiuole nei parchi, nei giardini, nelle aree pedonali o nei grandi svincoli autostradali.  

## Elenco delle proprietà  

- `address`: L'indirizzo postale  - `alternateName`: Un nome alternativo per questa voce  - `annotations`: Annotazioni sull'elemento  - `areaServed`: L'area geografica in cui viene fornito un servizio o un articolo offerto  - `category`: Categoria di questa aiuola. Enum:'hedge, lawnArea, portable, urbanTreeSpot'. O qualsiasi valore esteso necessario all'applicazione.  - `color`: Il colore del prodotto  - `dataProvider`: Una sequenza di caratteri che identifica il fornitore dell'entità di dati armonizzata.  - `dateCreated`: Timestamp di creazione dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `dateLastWatering`: Timestamp che corrisponde all'ultima irrigazione dell'aiuola.  - `dateModified`: Timestamp dell'ultima modifica dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `depth`: Profondità di questa aiuola.  - `description`: Una descrizione di questo articolo  - `height`: Altezza di questa aiuola.  - `id`: Identificatore unico dell'entità  - `image`: Un'immagine dell'oggetto  - `location`: Riferimento Geojson all'elemento. Può essere Point, LineString, Polygon, MultiPoint, MultiLineString o MultiPolygon  - `name`: Il nome di questo articolo.  - `nextWateringDeadline`: Termine ultimo per la prossima irrigazione.  - `owner`: Una lista contenente una sequenza di caratteri codificata in JSON che si riferisce agli ID unici dei proprietari  - `refGarden`: Giardino dell'aiuola (se appartiene a qualcuno).  - `seeAlso`: elenco di uri che puntano a risorse aggiuntive sull'elemento  - `shape`: Forma di questa aiuola. Enum:'rettangolare, quadrata, ellittica, poligonale, circolare'. O qualsiasi altro richiesto da un'applicazione.  - `source`: Una sequenza di caratteri che dà la fonte originale dei dati dell'entità come URL. Si raccomanda di essere il nome di dominio completamente qualificato del fornitore di origine, o l'URL dell'oggetto di origine.  - `taxon`: Usato per indicare il [taxon](http://en.wikipedia.org/wiki/en:taxon) biologico al quale appartengono gli alberi o le piante dell'aiuola  - `type`: Tipo di entità NGSI: Deve essere FlowerBed  - `width`: Larghezza di questa aiuola.    
Proprietà richieste  
- `id`  - `location`  - `type`  ## Descrizione del modello di dati delle proprietà  
Ordinati in ordine alfabetico (clicca per i dettagli)  
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
```  
</details>    
## Esempio di payloads  
#### FlowerBed NGSI-v2 valori chiave Esempio  
Ecco un esempio di un FlowerBed in formato JSON-LD come valori-chiave. Questo è compatibile con NGSI-v2 quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
#### FlowerBed NGSI-v2 normalizzato Esempio  
Ecco un esempio di un FlowerBed in formato JSON-LD normalizzato. Questo è compatibile con NGSI-v2 quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
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
#### FlowerBed NGSI-LD valori-chiave Esempio  
Ecco un esempio di un FlowerBed in formato JSON-LD come key-values. Questo è compatibile con NGSI-LD quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
    "https://smartdatamodels.org/context.jsonld",  
    "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
  ]  
}  
```  
#### FlowerBed NGSI-LD normalizzato Esempio  
Ecco un esempio di un FlowerBed in formato JSON-LD normalizzato. Questo è compatibile con NGSI-LD quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
```json  
{  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld",  
    "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
  ],  
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
  "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
  "location": {  
    "coordinates": [  
      -4.743187,  
      41.627999  
    ],  
    "type": "Point"  
  },  
  "soilMoistureVwc": 0.85,  
  "soilTemperature": 17,  
  "type": "FlowerBed"  
}  
```  
Ci sono due opzioni per rappresentare le misure osservate. A) Attraverso un'entità collegata di tipo `GreenspaceRecord` (attributo denominato `refRecord`). B) Attraverso un gruppo di proprietà di misura già definite da [GreenspaceRecord](../../GreenspaceRecord/doc/spec.md). Ecco la descrizione dell'attributo da utilizzare per l'opzione `refRecord`; Lista di record che contengono misurazioni relative a questa aiuola. Tipo di attributo; Relazione. Elenco di riferimenti a entità di tipo `GreenspaceRecord`.  
