#import "../../../tables.typ": *

== Webhooks

Die Versicherung stellt MissMoneyPenny einen Endpunkt für bestimmte Events bereit.
Folgende Informationen müssen dafür übergeben werden:
1. Die Projekt ID
2. Ein API-Endpunkt, welcher fähig ist einen HTTPS-POST Aufruf entgegenzunehmen.
3. Eine Authentifizierung-Methode mit Credentials.

Die zu übergebenden Daten im Fall eines Events sehen wie folgt aus:

#parameterTableWithoutCondition((
  "eventId", "String", "Die Id des Events",
  "externalId", "String",  "Die Id des Versicherungsnehmers oder des Vertrages",
  "internalId", "String",  "Die Id des Wallet-Passes in der internen Datebank",
  "platform", "String", "Die Platform, wo der Wallet-Pass hinzugefügt oder gelöscht wird. Zum Beispiel Google oder Apple.",
  "timestamp", "String",  "Zeitpunkt des jeweiligen Events. Zum Beispiel \"2023-08-08T08:22:49Z\"",
  "type", "String",  "Art des Events. Momentan wird nur \"added\" und \"removed\" unterstützt"
))