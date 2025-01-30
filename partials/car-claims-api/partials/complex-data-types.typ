#import "../../../tables.typ": *

== Komplexe Datentypen

=== Schadensmeldung Datenschema <car-claims-schema>

#parameterTable(
  (
  "language", "string", "Optional", "Verwendete Sprache",
  "accidentDate", "date als string", "Optional", "Unfalldatum ohne Zeit",
  "accidentTime", "time als string", "Pflicht", "Unfallzeit",
  "accidentCoordinates", "string", "Pflicht", "50°56’28.8″N 6°57’30.0″E Der erste Wert liegt zwischen -90 und 90, die Längengradangabe zwischen -180 und 180. Nutzten Sie die Bogenmaßangaben, muss am Schluss ein „W“ für „West“ oder „E“ für „East“ stehen",
  "accidentPostalCode", "string", "Optional", "Postleitzahl des Unfallortes",
  "accidentCity", "string", "Optinal", "Stadt des Unfallortes",
  "accidentStreetName", "string", "Optional", "Straßennamen des Unfallortes",
  "accidentStreetNumber", "string", "Pflicht", "Straßennummer des Unfallortes",
  "accidentDesription", "string", "Optional", "Unfallbeschreibung",
  "accidentPoliceNumber", "string", "Pflicht", "Unfallnummer des Polizeit",
  "hasVehicleDamage", "string", "Optional", "Gibt es weitere Sachschäden, ja/nein? Erlaubte Werte: not_specified, false, true",
  "propertyDamageDescription", "string", "Optional", "Beschreibung der Sachschäden",
  "injuredPerson", "string", "Pflicht", "Gibt es verletzte Personen, ja/nein? Erlaubte Werte: not_specified, false, true",
  "injuredPersonNumber", "string", "Optional", "Anzahl der verletzten Personen",
  "witnessExists", "string", "Pflicht", "Gibt es Zeugen, ja/nein? Erlaubte Werte: not_specified, false, true",
  "witnessCount", "string", "Optional", "Anzahl der Zeugen",
  "witness", [Array von persönlichen Informationen Objekten @personal-information], "Optional", "Beinhaltet Information üben Zeugen",
  "vehicleDriver", [Fahrer Objekt @driver], "Optional", "Information über den ersten Fahrer",
  "otherVehicleDriver", [Fahrer Objekt @driver], "Optional", "Beinhaltet Information über den zweiten Fahrer",
  "policyholder", [Versicherter Objekt @policyholder], "Pflicht", "Beinhaltet Information über den ersten Fahrer",
  "otherPolicyholder", [Versicherter Objekt @policyholder], "Pflicht", "Beinhaltet Information über den zweiten Fahrer"
  )
)

=== Persönliche Informationen <personal-information>

#parameterTable(
  (
    "formOfAddress", "string", "Optional", "Anrede",
    "title", "string", "Optional", "Titel",
    "lastName", "string", "Optional", "Nachname",
    "firstName", "string", "Optional", "Vorname",
    "postalCode", "string", "Optional", "Postleitzahl",
    "city", "string", "Optional", "Ort",
    "streetName", "string", "Optional", "Straßen",
    "streetNumber", "string", "Optional", "Hausnummer",
    "phoneNumber", "string", "Optional", "Telefonnummer",
    "emailAddress", "string", "Optional", "E-Mail Addresse",
  )
)

=== Fahrer <driver>

#parameterTable(
  (
    "personalInformation", [PersonalInformation Objekt @personal-information], "Optional", "Persönliche Informationen des Fahrers",
    "driverLicensenumber", "string", "Optional", "Führerscheinnummer",
    "licenseIssuedBy", "string", "Optional", "Führerschein ausgestellt von",
    "damagedCardImages", "Array von Bildern", "Optional", "Bilder vom Schaden",
    "damagedWindowImages", "Array von Bildern", "Optional", "Bilder vom Glasschaden",
    "driverDamagedpartsGraphic", "Array von strings", "Optional", "Beschädigten Stellen",
    "driverVisibleDamage", "Array von strings", "Optional", "Beschreibung sichtbare Schäden",
    "driverComments", "string", "Optional", "Bemerkungen des Fahrers",
    "vehicleDrivingAbility", "string", "Optional", "Ist das Fahrbereit, ja/nein? Erlaubte Werte: not_specified, true, false",
    "damageCausedBy", "string", "Optional", "Die Schadensursache",
    "typeOfWildlife", "string", "Optional", "Tierart",
    "certificateForWildlife", "string", "Optional", "Bestätigung durch Förster || native FileAPI des Clients (Dunkelverarbeitung)",
    "garageLocation", "string", "Optional", "Werkstatt Standort",
  )
)

=== Versicherter <policyholder> 

#parameterTable(
  (
    "personalInformation", [Persönliche Information Objekt @personal-information], "Optional", "Informationen des Fahrers",
    "inputTaxDeduction", "string", "Optional", "Vorsteuerabzug, ja/nein? Erlaubte Werte: not_specified, true, false",
    "vehicleMake", "string", "Optional", "Fahrzeugmarke",
    "vehicleType", "string", "Optional", "Fahrzeugmodell",
    "vehicleReg", "string", "Optional", "Kennzeichen",
    "insuranceCompany", "string", "Optional", "Versicherungsanbieter",
    "policyNumber", "string", "Optional", "Versichertennummer",
    "vin", "string", "Optional", "Fahrzeug-Identifizierungsnummer",
    "currentMileage", "string", "Optional", "Aktueller Kilometerstand",
    "greencardNumber", "string", "Optional", "Grüne-Karte Nummer",
    "greencardExpirydate", "string", "Optional", "Ablaufdatum der Grünen-Karte",
    "comprehensiveInsurance", "string", "Optional", "Volkaskoversichert ja/nein",
  )
)

