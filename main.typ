#import "partials/header.typ": *

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
  numbering: "1",
  header: context {
  let elems = query(selector(heading.where(level: 1)).after(here()))

  let currentTitle = "";

  if elems.len() != 0 and elems.first().location().page() == here().page() {
    currentTitle = [#elems.first().body] 
  } else {
    elems = query(selector(heading.where(level: 1).before(here())))
    if elems.len() != 0 {
      currentTitle = [#elems.last().body] 
    }
  }
  if(currentTitle != "") {
    return [#documentTitle #h(1fr) #currentTitle #line(length: 100%)]
  }
  return "";
  } 
)

#set heading(numbering: "1.1.1")

#set text(
  lang: "de"
)

#include "partials/header.typ"

#include "partials/einfuehrung.typ"

#include "partials/insurance-policy-cards/insurance-policy-cards.typ"

#include "partials/car-claims-api/car-claims-api.typ"