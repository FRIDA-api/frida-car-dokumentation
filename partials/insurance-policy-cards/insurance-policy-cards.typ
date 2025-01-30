= Vertrags-API FRIDA Versicherten-Karten

Der Austausch der Vertragsdaten einer Kfz-Versicherung zwischen einem Versicherungsunternehmen und einem Dienstleister, wird von einem Wallet-Pass Provider bereitgestellt.
Hier wird die von MissMoneyPenny bereitgestellte API besprochen.

Die Vertragsdaten können auch weiteren Use Cases zur Verfügung stehen. Der Datenaustausch im Use Case Car Claims startet beim Versicherer mit dem Versand der Vertragsdaten über die API. Der Dienstleister kann diese Daten entgegen nehmen und stellt dann einen Installationslink für die Smartphone Wallet zur Verfügung. Wenn der Kunde den Link aufruft, wird die Smartphone Wallet auf dem Smartphone des Kunden installiert. Im Schadenfall bietet die Wallet-Lösung einen Link für den Geschädigten. Über den Aufruf des Links in Form eines QR-Codes in der Wallet, werden die Daten vom VN, die für die Schadenmeldung des Geschädigten erforderlich sind, an diesen übertragen.

#include "partials/aufrufmethoden.typ"

#include "partials/abfolge-der-kommunkation.typ"

#include "partials/webhooks.typ"

#include "partials/aenderung-einer-versichertenkarte.typ"

#include "partials/abfrage-einer-versichertenkarte.typ"

#include "partials/loeschung-einer-versichertenkarte.typ"

#include "partials/complex-data-types.typ"