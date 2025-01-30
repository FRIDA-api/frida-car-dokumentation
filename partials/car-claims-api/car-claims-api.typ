= FRIDA Schaden API

Die FRIDA Schaden-API ermöglicht es Versicherungsnehmern und Geschädigten, die für eine Schadenmeldung relevanten Daten an den Versicherer oder Dienstleister der Schadenbearbeitung zu übergeben. Auf dem Wallet Vertrags-Pass und dem Schaden-Pass ist jeweils ein Link zum Frontend des Schadenmeldeprozesses hinterlegt. In diesem Frontend werden die Daten für die Schaden-API erfasst. Bei der Meldung werden einige bekannte Vertragsdaten des Versicherungsnehmers übernommen, damit diese nicht erneut eingegeben werden müssen.

#include "partials/aufrufmethoden.typ"

#include "partials/erstellung-einer-schadensmeldung.typ"

#include "partials/anforderung-einer-schadensmeldung.typ"

#include "partials/aktualisierung-einer-schadensmeldung.typ"

#include "partials/complex-data-types.typ"