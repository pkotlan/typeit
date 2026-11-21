#import "../src/themes.typ": themes

#let template(theme, doc) = {
  assert(
    theme in themes.values(),
    message: "Unknown theme: " + theme,
  )

  html.html({
    html.head({
      html.meta(charset: "utf-8")
      for stylesheet in (theme + ".css", "components.css", "custom.css") {
        html.link(rel: "stylesheet", href: stylesheet)
      }

      html.title([
        #context document.title
      ])
    })

    html.elem("nav")[
      #context {
        let docs = query(
          document,
        )

        for doc in docs {
          link(doc.location())[
            #block()[
              *#doc.title*
            ]
          ]
        }
      }
    ]

    html.body()[#doc]
  })
}
