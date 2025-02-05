#let customTable(columns, headers, values) = { 
  table(
    columns: columns,
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
    (1fr, 1fr, 1fr),
    ("Endpunkt/Ressource", "HTTP-Methode", "Beschreibung"),
    values
  )
}

#let parameterTable(values) = {
  customTable(
    (30%, 20%, 20%, 30%),
    ("Attribut", "Typ", "Kondition", "Beschreibung"),
    values 
  )
}

#let parameterTableWithExample(values) = {
  customTable(
    (27%, 15%, 12%, 23%, 23%),
    ("Attribut", "Typ", "Kondition", "Beschreibung", "Beispielswert"
  ), values)
}

#let parameterTableWithoutCondition(values) = {
  customTable(
    (1fr, 1fr, 1fr),
    ("Attribut", "Typ", "Beschreibung"),
    values 
  )
}

#let queryParameter(values) = {
  "Query Parameters"
  parameterTable(values)
}