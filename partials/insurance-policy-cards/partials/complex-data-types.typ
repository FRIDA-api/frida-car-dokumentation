#import "../../../tables.typ": *

== Komplexe Datentypen

=== Versicherten Karte Params Datenschema <pass-data-schema>

Beinhaltet alle nötigen Information zur Verwaltung einer digitalen Versicherten Karte. Es handelt sich um eine Map, somit sind die Attributnamen frei wählbar und müssen nicht unbedingt den Angegebenden gleichen. Die Attribute dienen als Beispiel der benötigten Information für die Versicherten-Karte im Kfz-Versicherungskontext. 

#parameterTable(
  (
  "additionalServices", "string", "Optional", "Zusätzliche Services im Versicherungsvertrag",
  "coverage", "string", "Optional", "Abdeckung im Versicherungsvertrag, zum Beispiel Kfz-Vollkasko (1.000,- € SB) und Kfz-Teilkasko (150,- € SB) ",
  "firstName", "string", "Pflicht", "Vorname",
  "lastName", "string", "Pflicht", "Nachname",
  "makeModel", "string", "Optional", "Fahrzeug Modell",
  "mileage", "string", "Optinal", "Kilometerstand des Fahrzeugs",
  "ncb", "string", "Optional", "Schadensfreiheitklasse",
  "policyNumber", "string", "Pflicht", "Versicherungsnummer",
  "regDate", "string", "Optional", "Anmeldungsdatum des Fahrzeugs",
  "title", "string", "Pflicht", "Titel des Kunden",
  "vehicleReg", "string", "Optional", "Kennzeichen des Fahrzeugs",
  "vin", "string", "Optional", "Fahrzeug-Identifizierungsnummer",
  "genericString", "string", "Optional", "Ein beliebiger Stringwert. Attributname kann frei gewählt werden.",
  "genericBoolean", "boolean", "Optional", "Ein beliebiger Boolean Wert. Attributname kann freigewählt werden.",
  "genericNumber", "number", "Optional", "Eine beliebige Nummer. Attributname kann frei gewählt werden.",
  "email", "string", "Optional", "Verwendete Email für die Verteilung",
  "hasProtectionLetter", "boolean", "Optional", "Wert ob der Vertrag ein Schutzbrief beinhaltet",
  "productName", "string", "Optional", "Produktname",
  "produktform", "string", "Optional", "Produktform",
  "branch", "string", "Optional", "Sparte",
  "exess", "string", "Optional", "Selbstbeteiligung",
  "vehicleMake", "string", "Optional", "Fahrzeughersteller",
  "vehicleType", "string", "Optional", "Fahrzeugmodell"
  )
)