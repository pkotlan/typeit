#import "template.typ": template


// define the pages (possibly in separate files, then include them)
// template will take care of the rest
#document("home.html", title: [Home])[
  #show: template.with("vague")

  #include "pages/home.typ"
] <home>

#document("gettingstarted.html", title: [Getting started])[
  #show: template.with("vague")

  #include "pages/gettingstarted.typ"

] <gettingstarted>


// css
#asset(
  "vague.css",
  read("styles/vague.css", encoding: none),
)

// font
#asset(
  "fonts/MonaspaceKryptonVar.woff2",
  read("assets/fonts/Monaspace Krypton Var.woff2", encoding: none),
)
