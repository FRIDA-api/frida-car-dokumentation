#import "../../../tables.typ": *

#let pass-api-path-parameter-table = parameterTable((
  "projectId", "string", "Pflicht", "Die Id des jeweiligen Projektes. Zum Beispiel die der Kfz-Versicherungssparte",
  "extId", "string", "Pflicht", "Die Id des Versicherungsnehmers oder des Vertrages"
))