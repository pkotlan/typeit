

#let callout(type: "note", heading, body) = [
  #html.elem("aside", attrs: (class: "callout " + type))[
    #html.elem("p", attrs: (class: "callout-title"))[#heading]
    #body
  ]
]
