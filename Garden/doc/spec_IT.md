Entità: Giardino  
================  
[Licenza aperta](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/Garden/LICENSE.md)  
[documento generato automaticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Descrizione globale: **Un giardino è uno spazio pianificato distinguibile, di solito all'aperto, messo da parte per l'esposizione, la coltivazione e il godimento di piante e altre forme di natura.  

## Elenco delle proprietà  

- `address`: L'indirizzo postale  - `alternateName`: Un nome alternativo per questa voce  - `annotations`: Annotazioni sull'elemento  - `areaServed`: Area di livello superiore a cui appartiene il giardino. Può essere usato per raggruppare giardini per responsabile, distretto, quartiere, ecc.  - `category`: Categoria del giardino. Enum:'pubblico, privato, botanico, castello, comunità, monastero, residenziale, recintatoOff'. O qualsiasi altro valore necessario per un'applicazione.  - `color`: Il colore del prodotto  - `dataProvider`: Una sequenza di caratteri che identifica il fornitore dell'entità di dati armonizzata.  - `dateCreated`: Timestamp di creazione dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `dateLastWatering`: Timestamp che corrisponde all'ultima irrigazione di questo giardino  - `dateModified`: Timestamp dell'ultima modifica dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `description`: Una descrizione di questo articolo  - `id`: Identificatore unico dell'entità  - `image`: Un'immagine dell'oggetto  - `location`: Riferimento Geojson all'elemento. Può essere Point, LineString, Polygon, MultiPoint, MultiLineString o MultiPolygon  - `name`: Il nome di questo articolo.  - `nextWateringDeadline`: Termine ultimo per la prossima irrigazione da fare su questo giardino  - `openingHours`: Orari di apertura di questo giardino  - `owner`: Una lista contenente una sequenza di caratteri codificata in JSON che si riferisce agli ID unici dei proprietari  - `refRecord`: Elenco delle registrazioni che contengono misure relative a questo giardino  - `seeAlso`: elenco di uri che puntano a risorse aggiuntive sull'elemento  - `source`: Una sequenza di caratteri che dà la fonte originale dei dati dell'entità come URL. Si raccomanda di essere il nome di dominio completamente qualificato del fornitore di origine, o l'URL dell'oggetto di origine.  - `style`: Enum:'public, english, french, chinese, japanese, zen, rosarium, herb_garden, kitchen'. Stile del giardino.  - `type`: Tipo di entità NGSI: Deve essere Giardino    
Proprietà richieste  
- `id`  - `location`  - `name`  - `type`  ## Descrizione del modello di dati delle proprietà  
Ordinati in ordine alfabetico (clicca per i dettagli)  
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
        - public    
        - english    
        - french    
        - chinese    
        - japanese    
        - zen    
        - rosarium    
        - herb_garden    
        - kitchen    
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
    - location    
    - name    
  type: object    
```  
</details>    
## Esempio di payloads  
#### Giardino NGSI-v2 valori chiave Esempio  
Ecco un esempio di un giardino in formato JSON-LD come key-values. Questo è compatibile con NGSI-v2 quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
#### Giardino NGSI-v2 normalizzato Esempio  
Ecco un esempio di un giardino in formato JSON-LD normalizzato. Questo è compatibile con NGSI-v2 quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
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
#### Giardino NGSI-LD valori-chiave Esempio  
Ecco un esempio di un giardino in formato JSON-LD come key-values. Questo è compatibile con NGSI-LD quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
      "streetAddress": "Avenida Casta\u00f1eda",  
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
    "https://smartdatamodels.org/context.jsonld",  
    "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
  ]  
}  
```  
#### Giardino NGSI-LD normalizzato Esempio  
Ecco un esempio di un giardino in formato JSON-LD normalizzato. Questo è compatibile con NGSI-LD quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
```json  
{  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld",  
    "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld"  
  ],  
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
  "id": "urn:ngsi-ld:Garden:Santander-Garden-Piquio",  
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
  "type": "Garden"  
}  
```  
