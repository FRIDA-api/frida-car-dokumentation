#import "../../../tables.typ": *

== Komplexe Datentypen

=== Schadensmeldung Datenschema <car-claims-schema>

#let booleanWert = "false, true oder not_specified"

#parameterTableWithExample(
  (
  "language", "string", "Optional", "Verwendete Sprache", "DE",
  "accidentDate", "string", "Optional", "Unfalldatum ohne Zeit", "2019-08-24",
  "accidentTime", "string", "Pflicht", "Unfallzeit", "string",
  "accidentCoordinates", "string", "Pflicht", "50°56’28.8″N 6°57’30.0″E Der erste Wert liegt zwischen -90 und 90, die Längengradangabe zwischen -180 und 180. Nutzten Sie die Bogenmaßangaben, muss am Schluss ein „W“ für „West“ oder „E“ für „East“ stehen", "string",
  "accidentPostalCode", "string", "Optional", "Postleitzahl des Unfallortes", "30161",
  "accidentCity", "string", "Optional", "Stadt des Unfallortes", "Hannover",
  "accidentStreetName", "string", "Optional", "Straßennamen des Unfallortes", "Podbielskistraße",
  "accidentStreetNumber", "string", "Pflicht", "Straßennummer des Unfallortes", "402",
  "accidentDesription", "string", "Optional", "Unfallbeschreibung", "glatt, und dann mach Auto so, ich mach so, Unfall",
  "accidentPoliceNumber", "string", "Pflicht", "Unfallnummer des Polizei", "0511 109-2671",
  "hasVehicleDamage", "string", "Optional", "Gibt es weitere Sachschäden, (ja/nein)?",  booleanWert,
  "propertyDamageDescription", "string", "Optional", "Beschreibung der Sachschäden", "no_information",
  "injuredPerson", "string", "Pflicht", "Gibt es verletzte Personen, (ja/nein)?", booleanWert,
  "injuredPersonNumber", "string", "Optional", "Anzahl der verletzten Personen", "2",
  "witnessExists", "string", "Pflicht", "Gibt es Zeugen, (ja/nein)?", booleanWert,
  "witnessCount", "string", "Optional", "Anzahl der Zeugen", "1",
  "witness", [Array von persönlichen Informationen Objekten @personal-information], "Optional", "Beinhaltet Information üben Zeugen", "",
  "vehicleDriver", [Fahrer Objekt @driver], "Optional", "Information über den ersten Fahrer", "",
  "otherVehicleDriver", [Fahrer Objekt @driver], "Optional", "Beinhaltet Information über den zweiten Fahrer", "",
  "policyholder", [Versicherter Objekt @policyholder], "Pflicht", "Beinhaltet Information über den ersten Fahrer", "",
  "otherPolicyholder", [Versicherter Objekt @policyholder], "Pflicht", "Beinhaltet Information über den zweiten Fahrer", "",
  )
)

=== Persönliche Informationen <personal-information>

#parameterTableWithExample(
  (
    "formOfAddress", "string", "Optional", "Anrede", "Herr",
    "title", "string", "Optional", "Titel", "Dr",
    "lastName", "string", "Optional", "Nachname", "Schmitz",
    "firstName", "string", "Optional", "Vorname", "Ralf",
    "postalCode", "string", "Optional", "Postleitzahl", "50181",
    "city", "string", "Optional", "Ort", "Bedburg",
    "streetName", "string", "Optional", "Straßen", "Am Kleefeldchen",
    "streetNumber", "string", "Optional", "Hausnummer", "1",
    "phoneNumber", "string", "Optional", "Telefonnummer", "49(40)321070",
    "mail", "string", "Optional", "E-Mail Addresse", "example@gmail.com"
  )
)

=== Fahrer <driver>

#parameterTableWithExample(
  (
    "personalInformation", [PersonalInformation Objekt @personal-information], "Optional", "Persönliche Informationen des Fahrers", "",
    "driverLicensenumber", "string", "Optional", "Führerscheinnummer", "string",
    "licenseIssuedBy", "string", "Optional", "Führerschein ausgestellt von", "string",
    "damagedCarImages", "Array von Bildern", "Optional", "Bilder vom Schaden", "null",
    "damagedWindowImages", "Array von Bildern", "Optional", "Bilder vom Glasschaden", "null",
    "driverDamagedpartsGraphic", "Array von strings", "Optional", "Auswahl der beschädigten Stellen", 
    "A	 vorne links
B	 Seite vorne links
C	 Fahrertür links
D	 hintere Tür links
E	 Seite hinten links
F	 hinten links
G	 vorne rechts
H	 Seite vorne rechts
I	 Beifahrertür rechts
J	 Seite hinten rechts
K	 hinten rechts
L	 Motorhaube
M	 Frontscheibe
N	 Dach
O	 Heckscheibe
P	 Kofferraum",
    "driverVisibleDamage", "Array von strings", "Optional", "Beschreibung sichtbare Schäden", "string",
    "driverComments", "string", "Optional", "Bemerkungen des Fahrers", "string",
    "vehicleDrivingAbility", "string", "Optional", "Ist das Fahrbereit, (ja/nein)?", booleanWert,
    "damageCausedBy", "string", "Optional", "Die Schadensursache", "Auffahren
Rangieren/Parken
Missachtung der Vorfahrt
Abbiegen
Abkommen von der Fahrbahn
Überholvorgang
Spurwechsel
Sonstiges
",
    "typeOfWildlife", "string", "Optional", "Tierart", "Rehwild",
    "certificateForWildlife", "string", "Optional", "Bestätigung durch Förster", "string",
    "garageLocation", "string", "Optional", "Werkstatt Standort", "50°56’28.8″N 6°57’30.0"
  )
)

=== Versicherter <policyholder> 

#parameterTableWithExample(
  (
    "personalInformation", [Persönliche Information Objekt @personal-information], "Optional", "Informationen des Fahrers", "",
    "inputTaxDeduction", "string", "Optional", "Vorsteuerabzug, (ja/nein)?", booleanWert,
    "vehicleMake", "string", "Optional", "Fahrzeugmarke", "BMW",
    "vehicleType", "string", "Optional", "Fahrzeugmodell", "330d",
    "vehicleReg", "string", "Optional", "Kennzeichen", "BM LD1234",
    "insuranceCompany", "string", "Optional", "Versicherungsanbieter", "HDI",
    "policyNumber", "string", "Optional", "Versichertennummer", "v-123-345-678-5",
    "currentMileage", "string", "Optional", "Aktueller Kilometerstand", "253",
    "greencardNumber", "string", "Optional", "Grüne-Karte Nummer", "string",
    "greencardExpirydate", "string", "Optional", "Ablaufdatum der Grünen-Karte", "2019-08-24",
    "comprehensiveInsurance", "string", "Optional", "Volkaskoversichert, (ja/nein)?", booleanWert
  )
)

