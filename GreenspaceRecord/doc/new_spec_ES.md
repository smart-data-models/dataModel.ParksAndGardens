Entidad: GreenspaceRecord  
=========================  
Esta especificación es una **versión temporal**. Se genera automáticamente a partir de las propiedades documentadas descritas en el schema.json condensadas en el archivo `model.yaml`. Se ha creado un archivo temporal `nuevo_modelo.yaml` en cada modelo de datos para evitar el impacto en los scripts existentes. Por lo tanto, la especificación estará incompleta mientras el schema.json no se actualice al nuevo formato (documentando las propiedades). Una vez actualizado el `modelo.yaml` (`nuevo_modelo.yaml`) necesita ser actualizado también (automáticamente) . Más información en este [link](https://github.com/smart-data-models/data-models/blob/master/specs/warning_message_new_spec.md). Mientras sea un formato provisional cualquier [feedback es bienvenido en este formulario](https://smartdatamodels.org/index.php/submit-an-issue-2/) eligiendo la opción `Feedback on the new specification`.  
Descripción global: **Esta entidad contiene una descripción armonizada de las condiciones registradas en un área o punto determinado dentro de un espacio verde (macizo de flores, jardín, etc.). Este tipo de entidad se ha inspirado en el tipo de entidad AgriParcelRecord definido por los Modelos de Datos Armonizados de la GSMA**.  

## Lista de propiedades  

`address`: La dirección postal.  `alternateName`: Un nombre alternativo para este artículo  `annotations`:   `areaServed`: La zona geográfica donde se presta un servicio o se ofrece un artículo.  `color`: El color del producto.  `dataProvider`: Una secuencia de caracteres que identifica al proveedor de la entidad de datos armonizada.  `dateCreated`: Sello de tiempo de creación de la entidad. Normalmente será asignado por la plataforma de almacenamiento.  `dateModified`: Sello de tiempo de la última modificación de la entidad. Esta será normalmente asignada por la plataforma de almacenamiento.  `dateObserved`:   `description`: Una descripción de este artículo  `id`:   `image`: Una imagen del artículo.  `location`:   `name`: El nombre de este artículo.  `owner`: Una lista que contiene una secuencia de caracteres codificados JSON que hace referencia a los Ids únicos de los propietarios  `refDevice`:   `refGreenspace`:   `seeAlso`:   `soilMoistureEc`:   `soilMoistureVwc`:   `soilTemperature`:   `source`: Una secuencia de caracteres que da como URL la fuente original de los datos de la entidad. Se recomienda que sea el nombre de dominio completamente calificado del proveedor de la fuente, o la URL del objeto fuente.  `type`: NGSI Tipo de entidad  ## Modelo de datos Descripción de las propiedades  
Ordenados alfabéticamente  
```yaml  
GreenspaceRecord:    
  description: 'This entity contains a harmonised description of the conditions recorded on a particular area or point inside a greenspace (flower bed, garden, etc.). This entity type has been inspired by the AgriParcelRecord entity type defined by the GSMA Harmonized Data Models.'    
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
      description: 'The geographic area where a service or offered item is provided.'    
      type: Property    
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
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    dateObserved:    
      format: date-time    
      type: string    
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
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *greenspacerecord_-_properties_-_owner_-_items_-_anyof    
      type: Property    
    refDevice:    
      anyOf: *greenspacerecord_-_properties_-_owner_-_items_-_anyof    
    refGreenspace:    
      anyOf: *greenspacerecord_-_properties_-_owner_-_items_-_anyof    
    seeAlso:    
      oneOf:    
        - items:    
            - format: uri    
              type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
    soilMoistureEc:    
      type: number    
    soilMoistureVwc:    
      maximum: 1    
      minimum: 0    
      type: number    
    soilTemperature:    
      type: number    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    type:    
      description: 'NGSI Entity type'    
      enum:    
        - GreenspaceRecord    
      type: string    
  required:    
    - id    
    - type    
    - location    
    - dateObserved    
  type: object    
```  
Aquí hay un ejemplo de un GreenspaceRecord en formato JSON como valores clave. Es compatible con NGSI V2 cuando se utiliza "opciones=valores-clave" y devuelve los datos de contexto de una entidad individual.  
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
Aquí hay un ejemplo de un GreenspaceRecord en formato JSON normalizado. Es compatible con NGSI V2 cuando se utiliza "opciones=valores clave" y devuelve los datos de contexto de una entidad individual.  
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
Aquí hay un ejemplo de un GreenspaceRecord en formato JSON-LD como valores clave. Es compatible con NGSI-LD cuando no se usan opciones y devuelve los datos de contexto de una entidad individual.  
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
Aquí hay un ejemplo de un GreenspaceRecord en formato JSON-LD normalizado. Es compatible con NGSI-LD cuando no se utilizan opciones y devuelve los datos de contexto de una entidad individual.  
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
