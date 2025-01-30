#import "../../../tables.typ": *

#let acceptHeaderTable = parameterTable((
  "Accept", "String", "Pflicht", "application/json"
))

#let contentTypeHeaderTable = parameterTable((
  "Content-Type", "String", "Pflicht", "Der Type des HTTP-Bodys. Der Wert ist immer application/json"
))

#let defaultHeaderTable = parameterTable((
  "Accept", "String", "Pflicht", "Der erwartete Type des HTTP-Response-Bodys. Der Wert ist immer application/json",
  "Content-Type", "String", "Pflicht", "Der Type des HTTP-Bodys. Der Wert ist immer application/json"
))