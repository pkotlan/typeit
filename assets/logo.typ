#set page(width: auto, height: auto, fill: none, margin: 0pt)


#let themes = (
  vague: (bg: rgb("#141415"), fg: rgb("#cdcdcd"), accent: rgb("#7e98e8")),
  rosepine: (bg: rgb("#191724"), fg: rgb("#e0def4"), accent: rgb("#c4a7e7")),
  "rosepine-moon": (bg: rgb("#232136"), fg: rgb("#e0def4"), accent: rgb("#c4a7e7")),
  "rosepine-dawn": (bg: rgb("#faf4ed"), fg: rgb("#464261"), accent: rgb("#907aa9")),
)

#let logo(theme) = [
  #block(fill: theme.at("bg"), inset: 12pt, radius: 5pt)[
    #align(center + horizon)[
      #text(size: 32pt, fill: theme.at("fg"), font: "Monaspace Krypton NF", weight: "bold")[
        type#text(font: "Monaspace Radon NF", style: "italic", fill: theme.at("accent"), tracking: -3pt)[it]
      ]
    ]
  ]
]

#for theme in themes.keys() {
  document(theme + "_logo.svg")[
    #logo(themes.at(theme))
  ]
}
