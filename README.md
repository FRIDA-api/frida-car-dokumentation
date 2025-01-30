Für die Dokumentenerstellung wurde Typst benutzt.
https://github.com/typst/typst

Unter Windows können Sie Typst mit folgenden Befehl über einen Package-Manager installieren:

winget install --id Typst.Typst

Nach Neustart der Powershell können Sie die Dokumentation bauen lassen:

typst compile main.typ frida-car-dokumentation.pdf

Die Dokumentation sollte sich nun im Root-Verzeichnis befinden.

Bei aktiver Bearbeitung empfielt sich die watch-Funktion von Typst zu verwenden.

typst watch main.typ
