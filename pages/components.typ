#import "../lib.typ": callout

= #context document.title

#outline(
  title: none,
  target: heading.where(level: 2),
)

== Callouts/Admonitions

Callouts and admonitions use the selected theme's colors.

#callout([Note])[
  Use a callout to highlight helpful context.

  ```typst
  #callout([Note])[
    Use a callout to highlight helpful context.
  ]
  ```
]

#callout(type: "tip", [Tip])[
  Put font choices and site-specific overrides in custom.css.

  ```typst
  #callout(type: "tip", [Tip])[
    Put font choices and site-specific overrides in custom.css.
  ]
  ```
]


#callout(type: "warning", [Warning])[
  Typst HTML export is experimental.

  ```typst
  #callout(type: "warning", [Warning])[
    Typst HTML export is experimental.
  ]
  ```
]

#callout(type: "danger", [Danger])[
  Use this variant for critical information.
  ```typst
  #callout(type: "danger", [Danger])[
    Use this variant for critical information.
  ]
  ```
]
