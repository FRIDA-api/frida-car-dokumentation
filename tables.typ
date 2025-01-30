#let customTable(headers, values) = { 
  table(
    columns: headers.map((header) => (1fr)),
    inset: (bottom: 1em),
    table.header(
      ..headers.map((header) => {
        table.cell([*#header*], fill: rgb("#d3d3d3"), align: left, )
      }),
    ),
    ..values.map((value) => {
      table.cell([#value], align: left)
    })
  ) 
}

#let endpunktTable(values) = {
  customTable(
    ("Endpunkt/Ressource", "HTTP-Methode", "Beschreibung"),
    values
  )
}

#let parameterTable(values) = {
  customTable(
    ("Attribut", "Typ", "Kondition", "Beschreibung"),
    values 
  )
}

#let parameterTableWithoutCondition(values) = {
  customTable(
    ("Attribut", "Typ", "Beschreibung"),
    values 
  )
}

#let queryParameter(values) = {
  "Query Parameters"
  parameterTable(values)
}