#let template(theme, doc) = {
  set text(fill: white)

  html.html({
    html.head({
      html.meta(charset: "utf-8")
      html.link(
        rel: "stylesheet",
        href: theme + ".css",
      )

      html.title([
        #context document.title
      ])
    })

    html.elem("nav", attrs: (style: "display: flex; gap: 1rem; flex-wrap: wrap;"))[
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
