#import "../../../tables.typ": *
#import "../tables/pass-api-path-parameter-table.typ"
#import "complex-data-types.typ"

== Erstellung oder Änderung einer digitalen Versicherten-Karte

=== Request

*Aufruf* 

PATCH /api/v3/projects/{projectId}/external-passes/{extId}

*Path-Parameter*


#pass-api-path-parameter-table

*Query-Parameter*

Kein Query-Parameter vorhanden.

*Request Header*

#parameterTable((
  "X-API-Key", "string", "Pflicht", "Der API-Key für die Authentifizierung",
  "Content-Type", "string", "Optional", "Der Type des Request Bodys. Der Wert ist immer application/json",
  "Accept", "string", "Optional", "Der Type des akzeptierenden Response Body. Der Wert ist immer application/json"
))

*Request Body*

#parameterTable((
  "expired", "boolean", "Optional", "Der Ablaufstatus. Der Wert ist true, wenn Versicherungsvertrag abgelaufen ist. Der QR-Code des Passes wird daraufhin ausgegraut und die persönlichen Information gelöscht.",
  "params", [params Objekt @pass-data-schema], "Optional", "Informationen zur Kfz-Versicherung nach FRIDA-Standard",
))

=== Response

*Response Code* 

Der HTTP-Response Code ist 200.

*Response Header*

#parameterTable((
  "Content-Type", "string", "Optional", "Der Type des Request Bodys. Der Wert ist immer application/json"
))

*Response Body*

#parameterTable((
  "expired", "boolean", "Optional", "Der Ablaufstatus. Der Wert ist true, wenn Versicherungsvertrag abgelaufen ist. Der QR-Code des Passes wird daraufhin ausgegraut und die persönlichen Information gelöscht.",
  "params", [params Objekt @pass-data-schema], "Optional", "Informationen zur Kfz-Versicherung nach FRIDA-Standard",
  "gPayUrl", "string", "Optional", "Die URL für den Download des GPay-Pass (Google Pay)",
  "hasUserAppleWallet", "boolean", "Optional", "Information ob der Pass auf einem Apple-Wallet hinzugefügt wurde",
  "hasUserGooglePay", "boolean", "Optional", "Information ob der Pass auf GPay hinzugefügt wurde",
  "id", "integer", "Pflicht", "Id des Passes",
  "imageURL", "string", "Optional", "URL eines Bildes",
  "infoUrl", "string", "Pflicht", "URL der Informationen",
  "passUrl", "string", "Pflicht", "URL für den Pass (Apple Wallet)",
  "startUrl", "string", "Pflicht", "Die URL für API Aufrufe",
  "webhookToken", "string", "Pflicht", "Der Authentifizierungstoken um Webhooks aufzurufen"
))

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
    "makeModel": "MMP Motors Q350 Coupé",
    "regDate": "15.08.2022",
    "vin": "MMPGRTZ1JZ3W370756",
    "coverage": "Kfz-Vollkasko (1.000,- € SB) und Kfz-Teilkasko (150,- € SB)",
    "mileage": "12.000",
    "ncb": "SF 14",
    "additionalServices": "Schutzbrief, Werkstattservice, freie Werkstattwahl",
    "genericString1": "Zusätzlicher Textinhalt 1",
    "genericString2": "Zusätzlicher Textinhalt 2",
    "genericString3": "Zusätzlicher Textinhalt 3",
    "genericDate1": "2022-11-19T14:00:00.782Z",
    "genericDate2": "2023-08-05T13:30:00.782Z",
    "hasProtectionLetter": "true",
    "genericBoolean1": "false",
    "genericBoolean2": "true",
    "genericNumber1": "12345",
    "email": "info@missmp.eu",
    "GPayConsent": "false"
  }
}
```

Response

```text
Content-Type: application/json
{
  "expired": false,
  "gPayUrl": "https://pay.google.com/gp/v/save/SignedJWTToken",
  "hasUserAppleWallet": true,
  "hasUserGooglePay": "false",
  "id": 0,
  "imageURL": "string",
  "infoUrl": "string",
  "passUrl": "https://app-tse-dev.missmp.eu/api/v3/cases/123456/passes?token=SignedAuthenticationToken",
  "startUrl": "string",
  "webhookToken": "43c9f8e844ab4d6f82bafd7a69f6c2de"
  "params": {
    "vehicleReg": "M-MP 007",
    "title": "Prof. Dr.",
    "firstName": "Frida",
    "lastName": "Mustermann",
    "policyNumber": "V-012-345-678-9",
    "makeModel": "MMP Motors Q350 Coupé",
    "regDate": "15.08.2022",
    "vin": "MMPGRTZ1JZ3W370756",
    "coverage": "Kfz-Vollkasko (1.000,- € SB) und Kfz-Teilkasko (150,- € SB)",
    "mileage": "12.000",
    "ncb": "SF 14",
    "additionalServices": "Schutzbrief, Werkstattservice, freie Werkstattwahl",
    "genericString1": "Zusätzlicher Textinhalt 1",
    "genericString2": "Zusätzlicher Textinhalt 2",
    "genericString3": "Zusätzlicher Textinhalt 3",
    "genericDate1": "2022-11-19T14:00:00.782Z",
    "genericDate2": "2023-08-05T13:30:00.782Z",
    "hasProtectionLetter": "true",
    "genericBoolean1": "false",
    "genericBoolean2": "true",
    "genericNumber1": "12345",
    "email": "info@missmp.eu",
    "GPayConsent": "false"
  }
}
```