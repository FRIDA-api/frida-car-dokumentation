#import "../../../tables.typ": *

== Aufruf-Methoden MissMoneyPenny-Wallet-API

Bei der API handelt es sich um eine Restful API. Das Transferprotokoll ist HTTP und die Daten werden über ein JSON-Objekt übertragen.
In der folgenden Tabelle ist eine Übersicht der vorhandende Endpunkte. 

#endpunktTable(
  (
    "/api/v3/projects/{projectId}/external-passes/{extId}", "DELETE", "Löscht eine Versicherten-Karte mit bestimmter Id",
    "/api/v3/projects/{projectId}/external-passes/{extId}", "PATCH", "Aktualisiert oder erstellt eine Versicherten-Karte mit bestimmter Id",
    "/api/v3/projects/{projectId}/external-passes/{extId}", "GET", "Anforderung einer Versicherten-Karte mit bestimmter Id",

  )
)