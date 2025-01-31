#import "../../../tables.typ": *
#import "../../../util/boolean-example.typ": *

#let response-body-table = parameterTableWithExample((
  "expired", "boolean", "Optional", "Der Ablaufstatus. Der Wert ist true, wenn Versicherungsvertrag abgelaufen ist. Der QR-Code des Passes wird daraufhin ausgegraut und die persönlichen Information gelöscht.", booleanExample,
  "params", [params Objekt @pass-data-schema], "Optional", "Informationen zur Kfz-Versicherung nach FRIDA-Standard", "",
  "gPayUrl", "string", "Optional", "Die URL für den Download des GPay-Pass (Google Pay)" , "http://gpay...",
  "hasUserAppleWallet", "boolean", "Optional", "Information ob der Pass auf einem Apple-Wallet hinzugefügt wurde", booleanExample,
  "hasUserGooglePay", "boolean", "Optional", "Information ob der Pass auf GPay hinzugefügt wurde", booleanExample,
  "id", "integer", "Pflicht", "Id des Passes",
  "imageURL", "string", "Optional", "URL eines Bildes",
  "infoUrl", "string", "Pflicht", "URL der Informationen",
  "passUrl", "string", "Pflicht", "URL für den Pass (Apple Wallet)",
  "startUrl", "string", "Pflicht", "Die URL für API Aufrufe",
  "webhookToken", "string", "Pflicht", "Der Authentifizierungstoken um Webhooks aufzurufen"
))