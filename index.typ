#import "lib.typ": template, themes

#let theme = themes.vague

// define the pages (possibly in separate files, then include them)
// template will take care of the rest
#document("index.html", title: [Home])[
  #show: template.with(theme)

  #html.elem("p", attrs: (align: "center"))[
    #image("assets/logos/" + theme + "_logo.svg", width: 50%)
  ]
  #include "pages/home.typ"
] <home>

#document("gettingstarted.html", title: [Getting started])[
  #show: template.with(theme)

  #include "pages/gettingstarted.typ"

] <gettingstarted>


#document("components.html", title: [Components])[
  #show: template.with(theme)

  #include "pages/components.typ"

] <gettingstarted>


#document("themes.html", title: [Themes])[
  #show: template.with(theme)

  #include "pages/themes.typ"

] <themes>

// css
#for stylesheet in ("vague.css", "rosepine.css", "rosepine-moon.css", "rosepine-dawn.css", "components.css", "custom.css") {
  asset(stylesheet, read("styles/" + stylesheet, encoding: none))
}

// font
#asset(
  "fonts/MonaspaceKryptonVar.woff2",
  read("assets/fonts/Monaspace Krypton Var.woff2", encoding: none),
)
