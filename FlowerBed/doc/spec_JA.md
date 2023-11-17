<!-- 10-Header -->    
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)    
エンティティフラワーベッド    
=============<!-- /10-Header -->    
<!-- 15-License -->    
[オープン・ライセンス](https://github.com/smart-data-models//dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md)    
[文書は自動的に生成される](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)    
<!-- /15-License -->    
<!-- 20-Description -->    
グローバルな記述：**花（または他の植物）を育てる庭の区画。通常、花壇は公園や庭園、歩行者天国、大きな高速道路のインターチェンジなどで見られる**。    
バージョン: 0.0.2    
<!-- /20-Description -->    
<!-- 30-PropertiesList -->    
## プロパティのリスト    
<sup><sub>[*] 属性に型がない場合は、複数の型があるか、異なるフォーマット/パターンがある可能性があるためです</sub></sup>。    
- `address[object]`: 郵送先住所  . Model: [https://schema.org/address](https://schema.org/address)	- `addressCountry[string]`: 国。例えば、スペイン  . Model: [https://schema.org/addressCountry](https://schema.org/addressCountry)    
	- `addressLocality[string]`: 番地がある地域と、その地域に含まれる地域  . Model: [https://schema.org/addressLocality](https://schema.org/addressLocality)    
	- `addressRegion[string]`: その地域がある地域、またその国がある地域  . Model: [https://schema.org/addressRegion](https://schema.org/addressRegion)    
	- `district[string]`: 地区とは行政区画の一種で、国によっては地方自治体によって管理されている。      
	- `postOfficeBoxNumber[string]`: 私書箱の住所のための私書箱番号。例：03578  . Model: [https://schema.org/postOfficeBoxNumber](https://schema.org/postOfficeBoxNumber)    
	- `postalCode[string]`: 郵便番号。例：24004  . Model: [https://schema.org/https://schema.org/postalCode](https://schema.org/https://schema.org/postalCode)    
	- `streetAddress[string]`: 番地  . Model: [https://schema.org/streetAddress](https://schema.org/streetAddress)    
- `alternateName[string]`: この項目の別名  - `annotations[array]`: アイテムに関する注釈  . Model: [https://schema.org/Text](https://schema.org/Text)- `areaServed[string]`: サービスまたは提供品が提供される地理的地域  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[array]`: この花壇のカテゴリ。Enum:'hedge, lawnArea, portable, urbanTreeSpot'。またはアプリケーションが必要とする拡張値  . Model: [https://schema.org/Text](https://schema.org/Text)- `color[string]`: 製品の色  . Model: [https://schema.org/color](https://schema.org/color)- `dataProvider[string]`: ハーモナイズされたデータ・エンティティの提供者を識別する一連の文字。  - `dateCreated[date-time]`: エンティティの作成タイムスタンプ。これは通常、ストレージプラットフォームによって割り当てられます。  - `dateLastWatering[date-time]`: 花壇の最後の散水に対応するタイムスタンプ  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[date-time]`: エンティティの最終変更のタイムスタンプ。これは通常、ストレージプラットフォームによって割り当てられる。  - `depth[number]`: この花壇の深さ  . Model: [https://schema.org/depth](https://schema.org/depth)- `description[string]`: この商品の説明  - `height[string]`: この花壇の高さ  . Model: [https://schema.org/heigth](https://schema.org/heigth)- `id[*]`: エンティティの一意識別子  - `image[uri]`: 商品の画像  . Model: [https://schema.org/URL](https://schema.org/URL)- `location[*]`: アイテムへの Geojson 参照。Point、LineString、Polygon、MultiPoint、MultiLineString、MultiPolygon のいずれか。  - `name[string]`: このアイテムの名前  - `nextWateringDeadline[date-time]`: 次回の散水作業の締め切り  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `owner[array]`: 所有者の固有IDを参照するJSONエンコードされた文字列を含むリスト。  - `refGarden[*]`: 花壇の庭（もしあれば）  . Model: [https://schema.org/URL](https://schema.org/URL)- `seeAlso[*]`: アイテムに関する追加リソースを指すURIのリスト  - `shape[array]`: 花壇の形状。長方形、正方形、楕円形、多角形、円形'。またはアプリケーションが必要とするその他  . Model: [https://schema.org/depth](https://schema.org/depth)- `source[string]`: エンティティ・データの元のソースを URL として示す一連の文字。ソース・プロバイダの完全修飾ドメイン名、またはソース・オブジェクトの URL を推奨する。  - `taxon[array]`: 花壇の樹木や植物が属する生物学的[分類群](http://en.wikipedia.org/wiki/en:taxon)を示すために使用される。  . Model: [https://schema.org/Text](https://schema.org/Text)- `type[string]`: NGSIエンティティタイプ：FlowerBedでなければならない  - `width[number]`: この花壇の幅  . Model: [https://schema.org/width](https://schema.org/width)<!-- /30-PropertiesList -->    
<!-- 35-RequiredProperties -->    
必須プロパティ    
- `id`  - `type`  <!-- /35-RequiredProperties -->    
<!-- 40-RequiredProperties -->    
<!-- /40-RequiredProperties -->    
<!-- 50-DataModelHeader -->    
## プロパティのデータモデル記述    
アルファベット順（クリックで詳細表示）    
<!-- /50-DataModelHeader -->    
<!-- 60-ModelYaml -->    
<details><summary><strong>full yaml details</strong></summary>      
```yaml    
FlowerBed:      
  description: 'A garden plot in which flowers (or other plants) are grown. Usually you will find flower beds in parks, gardens, pedestrian areas or at big highway interchanges.'      
  properties:      
    address:      
      description: The mailing address      
      properties:      
        addressCountry:      
          description: 'The country. For example, Spain'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressCountry      
            type: Property      
        addressLocality:      
          description: 'The locality in which the street address is, and which is in the region'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressLocality      
            type: Property      
        addressRegion:      
          description: 'The region in which the locality is, and which is in the country'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressRegion      
            type: Property      
        district:      
          description: 'A district is a type of administrative division that, in some countries, is managed by the local government'      
          type: string      
          x-ngsi:      
            type: Property      
        postOfficeBoxNumber:      
          description: 'The post office box number for PO box addresses. For example, 03578'      
          type: string      
          x-ngsi:      
            model: https://schema.org/postOfficeBoxNumber      
            type: Property      
        postalCode:      
          description: 'The postal code. For example, 24004'      
          type: string      
          x-ngsi:      
            model: https://schema.org/https://schema.org/postalCode      
            type: Property      
        streetAddress:      
          description: The street address      
          type: string      
          x-ngsi:      
            model: https://schema.org/streetAddress      
            type: Property      
        streetNr:      
          description: Number identifying a specific property on a public street      
          type: string      
          x-ngsi:      
            type: Property      
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
      description: The geographic area where a service or offered item is provided      
      type: string      
      x-ngsi:      
        model: https://schema.org/Text      
        type: Property      
    category:      
      description: 'Category of this flower bed. Enum:''hedge, lawnArea, portable, urbanTreeSpot''. Or any extended value needed by the application'      
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
      description: The color of the product      
      type: string      
      x-ngsi:      
        model: https://schema.org/color      
        type: Property      
    dataProvider:      
      description: A sequence of characters identifying the provider of the harmonised data entity      
      type: string      
      x-ngsi:      
        type: Property      
    dateCreated:      
      description: Entity creation timestamp. This will usually be allocated by the storage platform      
      format: date-time      
      type: string      
      x-ngsi:      
        type: Property      
    dateLastWatering:      
      description: Timestamp which corresponds to the last watering of the flower bed      
      format: date-time      
      type: string      
      x-ngsi:      
        model: https://schema.org/DateTime      
        type: Property      
    dateModified:      
      description: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform      
      format: date-time      
      type: string      
      x-ngsi:      
        type: Property      
    depth:      
      description: Depth of this flower bed      
      minimum: 0      
      type: number      
      x-ngsi:      
        model: https://schema.org/depth      
        type: Property      
    description:      
      description: A description of this item      
      type: string      
      x-ngsi:      
        type: Property      
    height:      
      description: Heigth of this flower bed      
      minimum: 0      
      type: string      
      x-ngsi:      
        model: https://schema.org/heigth      
        type: Property      
    id:      
      anyOf:      
        - description: Identifier format of any NGSI entity      
          maxLength: 256      
          minLength: 1      
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
          type: string      
          x-ngsi:      
            type: Property      
        - description: Identifier format of any NGSI entity      
          format: uri      
          type: string      
          x-ngsi:      
            type: Property      
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
        - description: Geojson reference to the item. Point      
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
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. LineString      
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
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. Polygon      
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
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiPoint      
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
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiLineString      
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
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiLineString      
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
      x-ngsi:      
        type: GeoProperty      
    name:      
      description: The name of this item      
      type: string      
      x-ngsi:      
        type: Property      
    nextWateringDeadline:      
      description: Deadline for next watering operation      
      format: date-time      
      type: string      
      x-ngsi:      
        model: https://schema.org/DateTime      
        type: Property      
    owner:      
      description: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)      
      items:      
        anyOf:      
          - description: Identifier format of any NGSI entity      
            maxLength: 256      
            minLength: 1      
            pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
            type: string      
            x-ngsi:      
              type: Property      
          - description: Identifier format of any NGSI entity      
            format: uri      
            type: string      
            x-ngsi:      
              type: Property      
        description: Unique identifier of the entity      
        x-ngsi:      
          type: Property      
      type: array      
      x-ngsi:      
        type: Property      
    refGarden:      
      anyOf:      
        - description: Identifier format of any NGSI entity      
          maxLength: 256      
          minLength: 1      
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
          type: string      
          x-ngsi:      
            type: Property      
        - description: Identifier format of any NGSI entity      
          format: uri      
          type: string      
          x-ngsi:      
            type: Property      
      description: Flower bed's garden (if it belongs to any)      
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
    shape:      
      description: 'Shape of this flower bed. Enum:''rectangular, square, elliptic, polygonal, circular''. Or any other required by an application'      
      items:      
        enum:      
          - circular      
          - elliptic      
          - polygon      
          - rectangular      
          - square      
        type: string      
      minItems: 1      
      type: array      
      uniqueItems: true      
      x-ngsi:      
        model: https://schema.org/depth      
        type: Property      
    source:      
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object'      
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
      description: Width of this flower bed      
      minimum: 0      
      type: number      
      x-ngsi:      
        model: https://schema.org/width      
        type: Property      
  required:      
    - id      
    - type      
  type: object      
  x-derived-from: ""      
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2022 Contributors to Smart Data Models Program'      
  x-license-url: https://github.com/smart-data-models/dataModel.ParksAndGardens/blob/master/FlowerBed/LICENSE.md      
  x-model-schema: https://smart-data-models.github.io/dataModel.ParksAndGardens/FlowerBed/schema.json      
  x-model-tags: ""      
  x-version: 0.0.2      
```    
</details>      
<!-- /60-ModelYaml -->    
<!-- 70-MiddleNotes -->    
<!-- /70-MiddleNotes -->    
<!-- 80-Examples -->    
## ペイロードの例    
#### FlowerBed NGSI-v2 キー値の例    
以下はFlowerBedをJSON-LD形式でkey-valuesとした例である。これはNGSI-v2と互換性があり、`options=keyValues`を使用すると、個々のエンティティのコンテキストデータを返す。    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "FlowerBed-345",  
  "type": "FlowerBed",  
  "category": [  
    "urbanTreeSpot"  
  ],  
  "dateLastWatering": "2017-03-31T08:00:00Z",  
  "address": {  
    "streetAddress": "Paseo Zorrilla, 122",  
    "adressLocality": "Valladolid",  
    "addressCountry": "Spain"  
  },  
  "location": {  
    "type": "Point",  
    "coordinates": [  
      -4.743187,  
      41.627999  
    ]  
  },  
  "soilTemperature": 17,  
  "soilMoistureVwc": 0.85  
}  
```  
</details>    
#### FlowerBed NGSI-v2 正規化例    
以下は、正規化された JSON-LD 形式の FlowerBed の例である。これは、オプションを使用しない場合、NGSI-v2と互換性があり、個々のエンティティのコンテキストデータを返します。    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "FlowerBed-345",  
  "type": "FlowerBed",  
  "category": {  
    "type": "StructuredValue",  
    "value": [  
      "urbanTreeSpot"  
    ]  
  },  
  "soilMoistureVwc": {  
    "type": "Number",  
    "value": 0.85  
  },  
  "dateLastWatering": {  
    "type": "DateTime",  
    "value": "2017-03-31T08:00:00Z"  
  },  
  "soilTemperature": {  
    "type": "Number",  
    "value": 17  
  },  
  "address": {  
    "type": "StructuredValue",  
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
      "coordinates": [  
        -4.743187,  
        41.627999  
      ]  
    }  
  }  
}  
```  
</details>    
#### FlowerBed NGSI-LD キー値の例    
以下はFlowerBedをJSON-LD形式でkey-valuesとした例である。options=keyValues`を使うとNGSI-LDと互換性があり、個々のエンティティのコンテキストデータを返す。    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
  "type": "FlowerBed",  
  "address": {  
    "addressCountry": "Spain",  
    "streetAddress": "Paseo Zorrilla, 122",  
    "adressLocality": "Valladolid",  
    "type": "PostalAddress"  
  },  
  "category": [  
    "urbanTreeSpot"  
  ],  
  "dateLastWatering": "2017-03-31T08:00:00Z",  
  "location": {  
    "type": "Point",  
    "coordinates": [  
      -4.743187,  
      41.627999  
    ]  
  },  
  "soilMoistureVwc": 0.85,  
  "soilTemperature": 17,  
  "@context": [  
    "https://raw.githubusercontent.com/smart-data-models/dataModel.ParksAndGardens/master/context.jsonld"  
  ]  
}  
```  
</details>    
#### FlowerBed NGSI-LD 正規化例    
以下は、正規化された JSON-LD 形式の FlowerBed の例である。これは、オプションを使用しない場合はNGSI-LDと互換性があり、個々のエンティティのコンテキストデータを返します。    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "urn:ngsi-ld:FlowerBed:FlowerBed-345",  
  "type": "FlowerBed",  
  "address": {  
    "type": "Property",  
    "value": {  
      "addressCountry": "Spain",  
      "adressLocality": "Valladolid",  
      "streetAddress": "Paseo Zorrilla, 122"  
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
      "coordinates": [  
        -4.743187,  
        41.627999  
      ],  
      "type": "Point"  
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
</details><!-- /80-Examples -->    
<!-- 90-FooterNotes -->    
観測された測定値を表すには2つの選択肢がある。A) `GreenspaceRecord` 型のリンクされたエンティティ（属性名 `refRecord`）を通して。B) [GreenspaceRecord](../../GreenspaceRecord/doc/spec.md)ですでに定義されている測定プロパティのグループを通して。ここでは、オプション `refRecord` に使用する属性の説明です。属性タイプ; 関係。タイプ `GreenspaceRecord` のエンティティへの参照のリスト。    
<!-- /90-FooterNotes -->    
<!-- 95-Units -->    
マグニチュード単位の扱い方については、[FAQ 10](https://smartdatamodels.org/index.php/faqs/)を参照のこと。    
<!-- /95-Units -->    
<!-- 97-LastFooter -->    
---    
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->    
