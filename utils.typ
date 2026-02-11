// utils for CV

// https://forum.typst.app/t/3701/2
#let target = dictionary(std).at("target", default: () => "paged")
#show: it => context {
  if target() == "html" { return it }
  set page(paper: "a4",
    //margin: 2.5%,
  )
  it
}

#let monospace(my_text) = {
  text(font: "DejaVu Sans Mono")[#my_text]
}

#let midorigreen = rgb(78, 157, 45)

#let href(part) = {
  let full_dest = "https://" + part
  link(full_dest, part)
}

#let email(addr) = {
  link("mailto:" + addr, addr)
}

#let cv_entry(first, second, third) = {
  grid(
    columns: (1fr, 1fr),
    grid.cell(
      rowspan: 3,
      align(horizon)[#first],
    ),
    align(right)[#grid(
        row-gutter: 5pt,
        text(0.8em)[
          #third,
            #if type(third) == array {
              for e in third {
                e + "\n"
              }
          } else {
            second
          }
        ]
      )
    ],
  )
}

#let cv_entry_2(first, second, third) = {
  grid(
    columns: (1fr, 1fr, 1fr),
    grid.cell(
      rowspan: 3,
      align(horizon)[#first],
    ),
    text(0.8em)[
        #if type(third) == array {
          for e in third {
            e + "\n"
          }
      } else {
        third
      }
    ],
    align(right)[#grid(
        row-gutter: 5pt,
        second,
      )
    ],
  )
}

#let cv_entry_3(first, second) = {
  grid(
    columns: (1fr, 1fr, 1fr),
    grid.cell(
      rowspan: 3,
      align(horizon)[#first],
    ),
    text(0.8em)[
        #if type(third) == array {
          for e in third {
            e + "\n"
          }
      } else {
        third
      }
    ],
    align(right)[#grid(
        row-gutter: 5pt,
        second,
      )
    ],
  )
}

#let course(name, credits) = {
  [#name #h(1fr) #(credits) ECTS #h(7.5%)]
}

// https://stackoverflow.com/a/77575725
#let LaTeX = {
  text(font: "New Computer Modern")[
  #[L];#box(move(
    dx: -4.2pt, dy: -1.2pt,
    box(scale(65%)[A])
  ));#box(move(
  dx: -5.7pt, dy: 0pt,
  [T]
));#box(move(
  dx: -7.0pt, dy: 2.7pt,
  box(scale(100%)[E])
));#box(move(
  dx: -8.0pt, dy: 0pt,
  [X]
));#h(-8.0pt)]
}
#show "LaTeX": LaTeX
#show "LaTeX": set text(font: "New Computer Modern")


#let Typst = {
  text(font: "Libertinus Serif")[Typst]
}

#let box_elements(array) = {
  for e in array{
    box(rect(radius: 4pt, fill: midorigreen.lighten(50%))[#e])
  }
}
