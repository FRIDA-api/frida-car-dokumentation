#import "../../../tables.typ": *
#import "../tables/header-table.typ": *
#import "../tables/policynumber-paramter-table.typ": *
#import "../tables/create-claim-body-table.typ": *

== Aktualisierung eines gemeldeten Schadens

=== Request

*Aufruf* 

PUT /claimsdata/{policyNumber}

*Path-Parameter*

#policyNumber-parameter-table

*Query-Parameter*

Kein Query-Parameter vorhanden.

*Request Header*

#defaultHeaderTable

*Request Body*

#createClaimBody

=== Response

*Response Code* 

Der HTTP-Response Code ist 200.

*Response Header*

#contentTypeHeaderTable

*Response Body*

#createClaimBody

=== Beispiel

Request

```text
PUT https://stoplight.io/mocks/claimstobe/claims-data-schema/444459889/claimsdata/123

Accept: application/json
Content-Type: application/json
{
  "language": "DE",
  "accidentDate": "2019-08-24",
  "accidentTime": "08:30:00",
  "accidentPostalCode": "50181",
  "accidentCity": "Bedburg",
  "accidentStreetName": "Germaniastraße",
  "accidentStreetNumber": "1b",
  "accidentDescription": "string",
  "accidentPoliceNumber": "2024-ABC123",
  "hasVehicleDamage": "not_specified",
  "vehicleDamageDescription": "Frontstoßstangenschaden",
  "injuredPerson": "not_specified",
  "injuredPersonNumber": "string",
  "witnessExists": "not_specified",
  "witnessNumber": "string",
  "witness": [
    {
      "personalInformation": {
        "formOfAdress": "no_adress",
        "title": "Dr.",
        "lastName": "Johnson",
        "firstName": "Alice",
        "postalCode": "50181",
        "city": "Bedburg",
        "streetName": "Germaniastraße",
        "streetNumber": "1b",
        "phoneNumber": "+49(40)321070",
        "emailAddress": "example@gmail.com"
      }
    }
  ],
  "vehicleDriver": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "driverLicensenumber": "DR123456",
    "licenseIssuedBy": "string",
    "damagedCarImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "damagedWindowImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "driverDamagedpartsGraphic": [
      "hinten links"
    ],
    "driverVisibleDamage": "string",
    "driverComments": "string",
    "vehicleDrivingAbility": "true",
    "damageCausedBy": [
      "Auffahren"
    ],
    "typeOfWildlife": "Rehwild",
    "certificateForWildlife": "string",
    "garageLocation": "50°56’28.8″N 6°57’30.0"
  },
  "otherVehicleDriver": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "driverLicensenumber": "DR123456",
    "licenseIssuedBy": "string",
    "damagedCarImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "damagedWindowImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "driverDamagedpartsGraphic": [
      "hinten links"
    ],
    "driverVisibleDamage": "string",
    "driverComments": "string",
    "vehicleDrivingAbility": "true",
    "damageCausedBy": [
      "Auffahren"
    ],
    "typeOfWildlife": "Rehwild",
    "certificateForWildlife": "string",
    "garageLocation": "50°56’28.8″N 6°57’30.0"
  },
  "policyholder": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "inputTaxDeduction": "not_specified",
    "vehicleMake": "BMW",
    "vehicleType": "M5",
    "vehicleReg": "BM LD1234",
    "insuranceCompany": "HDI",
    "policyNumber": "V-123-345-678-5",
    "vin": "W0L000051T2123456",
    "currentMileage": 1200,
    "greencardNumber": "string",
    "greencardExpirydate": "2019-08-24",
    "comprehensiveInsurance": "not_specified"
  },
  "otherPolicyholder": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "inputTaxDeduction": "not_specified",
    "vehicleMake": "BMW",
    "vehicleType": "M5",
    "vehicleReg": "BM LD1234",
    "insuranceCompany": "HDI",
    "policyNumber": "V-123-345-678-5",
    "vin": "W0L000051T2123456",
    "currentMileage": 1200,
    "greencardNumber": "string",
    "greencardExpirydate": "2019-08-24",
    "comprehensiveInsurance": "not_specified"
  }
}```


Response

```text
200 Ok
Content-Type: application/json
{
  "language": "DE",
  "accidentDate": "2019-08-24",
  "accidentTime": "08:30:00",
  "accidentPostalCode": "50181",
  "accidentCity": "Bedburg",
  "accidentStreetName": "Germaniastraße",
  "accidentStreetNumber": "1b",
  "accidentDescription": "string",
  "accidentPoliceNumber": "2024-ABC123",
  "hasVehicleDamage": "not_specified",
  "vehicleDamageDescription": "Frontstoßstangenschaden",
  "injuredPerson": "not_specified",
  "injuredPersonNumber": "string",
  "witnessExists": "not_specified",
  "witnessNumber": "string",
  "witness": [
    {
      "personalInformation": {
        "formOfAdress": "no_adress",
        "title": "Dr.",
        "lastName": "Johnson",
        "firstName": "Alice",
        "postalCode": "50181",
        "city": "Bedburg",
        "streetName": "Germaniastraße",
        "streetNumber": "1b",
        "phoneNumber": "+49(40)321070",
        "emailAddress": "example@gmail.com"
      }
    }
  ],
  "vehicleDriver": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "driverLicensenumber": "DR123456",
    "licenseIssuedBy": "string",
    "damagedCarImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "damagedWindowImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "driverDamagedpartsGraphic": [
      "hinten links"
    ],
    "driverVisibleDamage": "string",
    "driverComments": "string",
    "vehicleDrivingAbility": "true",
    "damageCausedBy": [
      "Auffahren"
    ],
    "typeOfWildlife": "Rehwild",
    "certificateForWildlife": "string",
    "garageLocation": "50°56’28.8″N 6°57’30.0"
  },
  "otherVehicleDriver": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "driverLicensenumber": "DR123456",
    "licenseIssuedBy": "string",
    "damagedCarImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "damagedWindowImages": [
      {
        "file": "iVBORw0KGgoAAAANSUhEUgAAAAUA",
        "path": "string"
      }
    ],
    "driverDamagedpartsGraphic": [
      "hinten links"
    ],
    "driverVisibleDamage": "string",
    "driverComments": "string",
    "vehicleDrivingAbility": "true",
    "damageCausedBy": [
      "Auffahren"
    ],
    "typeOfWildlife": "Rehwild",
    "certificateForWildlife": "string",
    "garageLocation": "50°56’28.8″N 6°57’30.0"
  },
  "policyholder": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "inputTaxDeduction": "not_specified",
    "vehicleMake": "BMW",
    "vehicleType": "M5",
    "vehicleReg": "BM LD1234",
    "insuranceCompany": "HDI",
    "policyNumber": "V-123-345-678-5",
    "vin": "W0L000051T2123456",
    "currentMileage": 1200,
    "greencardNumber": "string",
    "greencardExpirydate": "2019-08-24",
    "comprehensiveInsurance": "not_specified"
  },
  "otherPolicyholder": {
    "personalInformation": {
      "formOfAdress": "no_adress",
      "title": "Dr.",
      "lastName": "Johnson",
      "firstName": "Alice",
      "postalCode": "50181",
      "city": "Bedburg",
      "streetName": "Germaniastraße",
      "streetNumber": "1b",
      "phoneNumber": "+49(40)321070",
      "emailAddress": "example@gmail.com"
    },
    "inputTaxDeduction": "not_specified",
    "vehicleMake": "BMW",
    "vehicleType": "M5",
    "vehicleReg": "BM LD1234",
    "insuranceCompany": "HDI",
    "policyNumber": "V-123-345-678-5",
    "vin": "W0L000051T2123456",
    "currentMileage": 1200,
    "greencardNumber": "string",
    "greencardExpirydate": "2019-08-24",
    "comprehensiveInsurance": "not_specified"
  }
}
```