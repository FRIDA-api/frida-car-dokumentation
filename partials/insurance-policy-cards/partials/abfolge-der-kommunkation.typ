#import "@preview/pintorita:0.1.2"
#import "../../../tables.typ": *

== Abfolge der Kommunikation

Mit den definierten Methoden können die Versicherten-Karten verwaltet werden. Im folgenden Sequenzdiagramm wird der Ablauf verdeutlicht.
Es gibt 4 Parteien, die Versicherung, der Wallet-Pass-Provider, die Versicherungsnehmer und die Unfallbeteiligten.

Für die Registrierung der Versicherten-Karte, ruft die Versicherung ein HTTP-POST oder HTTP-PATCH zum Endpunkt auf. Als Rückgabewert erhält die Versicherung unter anderem einen URL Link, der dem Versicherungsnehmer zugesendet wird, zum Beispielt als QR-Code in einer E-Mail. 
Ruft er diesen auf, wird der Wallet Pass auf seinem Smartphone installiert.

Die Versicherung besitzt die Möglichkeit, MissMoneyPenny einen Endpunkt für Webhooks bereitzustellen.
Dieser wird für die Registrierung, Änderrung oder Löschung eines Wallet-Pass aufgerufen.

Die Versicherung kann jederzeit die Daten des Versicherungsnehmer ändern oder löschen. Im Wallet werden diese automatisch angepasst.

In dem Wallet-Pass des Versicherungsnehmers ist der Link zur Schadenkarte für den Geschädigten als QR-Code hinterlegt. Scannt der Geschädigte diesen QR-Code wird der Installationsprozess für den Schaden-Pass gestartet. Dabei werden die Daten an den Schaden-Pass übertragen, die für die Meldung des Schadens durch den Geschädigten relevant sind.

#show raw.where(lang: "pintora"): it => pintorita.render(it.text)

```pintora
sequenceDiagram
  @param actorBackground #d3d3d3
  @param actorLineColor #000000
  @param actorBorderColor #000000
  title: Verwaltung der Versicherten-Karten 
  autonumber
  Versicherung->>Passprovider: Informationen zur Versicherung 
  Versicherung->>Versicherungsnehmer: Link zur Versicherten-Karte 
  Versicherungsnehmer->>Passprovider: Versicherten-Karte registrieren
  opt #ffffff Webhook 
    Passprovider->>Versicherung: Versicherten-Karte wurde registriert/gespeichert
  end
  Versicherung->>Passprovider: aktualisierung der Versicherungsinformationen
  Passprovider->>Versicherungsnehmer: aktualisiert die Versicherten-Karte im Wallet
  Unfallbeteiligter->>Versicherungsnehmer: Scan QR auf der Versicherten-Karte
  Versicherungsnehmer-->>Unfallbeteiligter: URL zur Kontakt-Karte
  Unfallbeteiligter->>Passprovider: Abfrage Kontakt-Karte
  Passprovider-->>Unfallbeteiligter: Kontakt-Karte
  opt #ffffff Delete 
    Versicherungsnehmer->>Passprovider: Versicherten-Karte löschen 
  end
  opt #ffffff Webhook 
    Passprovider->>Versicherung: Event: Versicherten-Karte wurde aus dem Wallet gelöscht
  end
```