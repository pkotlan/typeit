
gen:
  typst compile --features html,bundle --format bundle index.typ docs

watch:
  typst watch --features html,bundle --format bundle index.typ docs
