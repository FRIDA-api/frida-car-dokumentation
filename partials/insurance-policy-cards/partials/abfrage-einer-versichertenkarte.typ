#import "../../../tables.typ": *
#import "../tables/pass-api-path-parameter-table.typ": *
#import "complex-data-types.typ": *
#import "../../../util/boolean-example.typ": *
#import "../tables/response-body-table.typ": *
#import "../tables/attribute.typ": *
#import "../../../util/attribute.typ": *
#import "example.typ": *

== Abfrage einer digitalen Versicherten-Karte

=== Request

*Aufruf* 

GET /api/v3/projects/{projectId}/external-passes/{extId}

*Path-Parameter*

#pass-api-path-parameter-table

*Query-Parameter*

Kein Query-Parameter vorhanden.

*Request Header*

#parameterTableWithExample((
  ..xApiKeyAttribut,
  ..acceptAttribut
))

*Request Body*

Kein Request Body vorhanden.

=== Response

*Response Code* 

Der HTTP-Response Code ist 200.

*Response Header*

#parameterTableWithExample((
  ..contentTypAttribut
))

*Response Body*

#response-body-table

=== Beispiel

Request

```text
GET https://stoplight.io/mocks/mmpt/api-integration/595935930/projects/581/external-passes/{TEST_VHLC_2022_02_15_01}

Accept: application/json
```
#responseExample
