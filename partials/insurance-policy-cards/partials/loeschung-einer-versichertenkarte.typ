#import "../../../tables.typ": *
#import "../tables/pass-api-path-parameter-table.typ": *

== Löschung einer digitalen Versicherten-Karte

=== Request

*Aufruf* 

DELETE /api/v3/projects/{projectId}/external-passes/{extId}

*Path-Parameter*

#pass-api-path-parameter-table

*Query-Parameter*

Kein Query-Parameter vorhanden.

*Request Header*

#parameterTable((
  "X-API-Key", "string", "Pflicht", "Der API-Key für die Authentifizierung",
))

*Request Body*

Kein Request-Body vorhanden

=== Response

*Response Code* 

Der HTTP-Response Code ist 200.

*Response Header*

Kein Response Header vorhanden.

*Response Body*

Kein Response Body vorhanden.

=== Beispiel

Request

```text
DELETE https://stoplight.io/mocks/mmpt/api-integration/595935930/projects/581/external-passes/{TEST_VHLC_2022_02_15_01}

X-API-Key: 123
```

Response

```text
200 Ok
```