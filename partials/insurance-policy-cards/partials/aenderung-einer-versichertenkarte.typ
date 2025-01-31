#import "../../../tables.typ": *
#import "../tables/pass-api-path-parameter-table.typ"
#import "complex-data-types.typ"
#import "../tables/response-body-table.typ": *
#import "../tables/attribute.typ": *
#import "../../../util/attribute.typ": *
#import "example.typ": *

== Erstellung oder Änderung einer digitalen Versicherten-Karte

=== Request

*Aufruf* 

PATCH /api/v3/projects/{projectId}/external-passes/{extId}

*Path-Parameter*

#pass-api-path-parameter-table

*Query-Parameter*

Kein Query-Parameter vorhanden.

*Request Header*

#parameterTableWithExample((
  ..xApiKeyAttribut,
  ..contentTypAttribut,
  ..acceptAttribut
))

*Request Body*

#parameterTable((
  ..expiredAttribut,
  ..paramAttibut,
))

=== Response

*Response Code* 

Der HTTP-Response Code ist 200.

*Response Header*

#parameterTable((
  ..contentTypAttribut
))

*Response Body*

#response-body-table

=== Beispiel

Request

```text
PATCH https://stoplight.io/mocks/mmpt/api-integration/595935930/projects/581/external-passes/{TEST_VHLC_2022_02_15_01}

Accept: application/json
{
  "expired": false,
  "params": {
    "vehicleReg": "M-MP 007",
    "title": "Prof. Dr.",
    "firstName": "Frida",
    "lastName": "Mustermann",
    "policyNumber": "V-012-345-678-9",
    "productName": "Kfz-Versicherung",
    "produktform": "Kfz-Versicherung Mobil",
    "branch": "kfz-Haftpflicht",
    "exess": "150EUR / 1.000 EUR",
    "hullService": "freie Werktstattwahl",
    "coverType": "VK ohne Selbstbehalt",,
    "protectiveCover": "ja",
    "ncb": "SF 14",
    "vehicleMake": "MMP Motors Q350 Coupé",
    "vehicleType": "C250 D 4 Matic",
    "vin": "MMPGRTZ1JZ3W370756",
    "mileage": "12.000",
    "regDate": "15.08.2022",
    "annualFee": "520,00 EURO"
    "formOfPayment": "jährlich",
    "birthDate": "01.01.1970",
    "contractManagerName": "Makler Mustermann",
    "contractManagerPhone": "49301234567", 
    "contractManagerEmail": "MaklerMustermann@Makler.de"
  }
}
```

#responseExample



