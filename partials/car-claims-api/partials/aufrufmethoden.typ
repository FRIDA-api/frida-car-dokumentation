#import "../../../tables.typ": *

== Aufrufmethoden der FRIDA Schaden API 

#endpunktTable(
  (
    "/claimsdata", "POST", "Schickt alle nötigen Information eines Unfalles zu der API. Die Daten werden darauf hin verarbeitet und können jederzeit wieder abgerufen werden.",
    "/claimsdata/{policynumber}", "GET", "Ruft die Daten eines bestimmten Claims mit der mitgegebenen Policynumber auf", 
    "/claimsdata/{policynumber}", "PUT", "Verändert ein schon bestehenden Claim einer bestimmmten Policynumber mit den mitgebenen Daten"
  )
)