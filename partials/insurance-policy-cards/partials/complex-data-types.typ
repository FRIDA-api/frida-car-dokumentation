#import "../../../tables.typ": *

== Komplexe Datentypen

=== Versicherten Karte Params Datenschema <pass-data-schema>

Beinhaltet alle nötigen Information zur Verwaltung einer digitalen Versicherten Karte. Es handelt sich um eine Map, somit sind die Attributnamen frei wählbar und müssen nicht unbedingt den Angegebenden gleichen. Die Attribute dienen als Beispiel der benötigten Information für die Versicherten-Karte im Kfz-Versicherungskontext. 

#parameterTableWithExample(
(
  "vehicleReg", "string", "Optional", "Amtliches Kennzeichen des Fahrzeugs", "RV-JB 123",
  "title", "string", "Pflicht", "Titel Versicherungsnehmer:in", "Prof. Dr.",
  "firstName", "string", "Pflicht", "Vorname Versicherungsnehmer:in", "Frida",
  "lastName", "string", "Pflicht", "Name Versicherungsnehmer:in", "Mustermann",
  "policyNumber", "string", "Pflicht", "Versicherungsnummer", "V-012-345-678-9",
  "productName", "string", "Optional", "Produktname", "Kfz-Versicherung",
  "produktform", "string", "Optional", "Produktform", "Kfz Versicherung Mobil Plus",
  "branch", "string", "Optional", "Sparte", "Kfz Haftpflicht, Kfz Vollkasko, Kfz Teilkasko, Kfz Unfall",
  "exess", "string", "Optional", "Selbstbeteiligung", "150EUR / 1.000 EUR",
  "hullService", "string", "Optional", "Kasko-Service", "freie Werkstattwahl (ja /nein)",
  "coverType", "string", "Optional", "KFV-Deckungsart", "VK ohne Selbstbehalt",
  "protectiveCover", "boolean","Optional", "Schutzbrief / Verkehrsservice", "(ja / nein)",
  "ncb", "string", "Optional", "Schadensfreiheitklasse", "SF 19 / 28 %",
  "vehicleMake", "string", "Optional", "Fahrzeughersteller", "Mercedes-Benz",
  "vehicleType", "string", "Optional", "Fahrzeugmodell", "C250 D 4 Matic",
  "vin", "string", "Optional", "Fahrzeug-Identifizierungsnummer", "WDD2051A123456789",
  "mileage", "string", "Optinal", "Kilometerstand des Fahrzeugs", "15.000",
  "regDate", "string", "Optional", "Erstzulassung des Fahrzeugs", "21.03.2016",
  "annualFee", "string", "Optional", "Jahresbruttoprämie", "520,00 EURO",
  "formOfPayment", "string", "Optional", "Zahlweise", "jährlich",
  "birthDate", "string", "Optional", "Geburtsdatum", "01.01.1970",
  "contractManagerName", "string", "Optional", "Vertrasgsbetreuer Name", "Makler Mustermann",
  "contractManagerPhone", "string", "Optional", "Vertragsbetreuer Telefon", "49301234567",
  "contractManagerEmail", "string", "Optional",  "Vertragsbetreuer E-Mail", "MaklerMustermann@Makler.de"
  )
)