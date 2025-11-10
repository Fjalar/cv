#set document(
  author: "Fjalar Högnason Loodberg",
  date: datetime.today(),
  description: "Curriculum Vitae",
  keywords: ("CV", "cv", "Curriculum Vitae", "Fjalar", "Fjalar Högnason Loodberg"),
  title: "CV"
)

// ==================== Formatting and functions ====================

// https://forum.typst.app/t/3701/2
#let target = dictionary(std).at("target", default: () => "paged")
#show: it => context {
  if target() == "html" { return it }
  set page(paper: "a4",
    //margin: 2.5%,
  )
  it
}

#set page(margin: 24pt)

#set text(font: "Raleway",
  size: 10pt,)

#let midorigreen = rgb(78, 157, 45)

#show title: set text(size: 1.2em)
#show title: set align(center)
#show title: set text(midorigreen)

#show link: underline
#show link: set text(blue)
#show link: set text(font: "DejaVu Sans Mono")
#show link: set text(1em)

#show heading.where(depth: 1): set text(midorigreen)

#let href(part) = {
  let full_dest = "https://www." + part
  link(full_dest, part)
}

#let email(addr) = {
  link("mailto:" + addr, addr)
}

#let mystruct(first, second, third) = {
  grid(
    columns: (1fr, 1fr),
    grid.cell(
      rowspan: 3,
      align(horizon)[#first],
    ),
    align(right)[#grid(
        row-gutter: 5pt,
        second,
        text(0.8em)[
            #if type(third) == array {
              third.at(0)
              text("\n")
              third.at(1)
          } else {
            third
          }
        ]
      )
    ],
  )
}

// https://stackoverflow.com/a/77575725
#let LaTeX = {
  [L];box(move(
    dx: -4.2pt, dy: -1.2pt,
    box(scale(65%)[A])
  ));box(move(
  dx: -5.7pt, dy: 0pt,
  [T]
));box(move(
  dx: -7.0pt, dy: 2.7pt,
  box(scale(100%)[E])
));box(move(
  dx: -8.0pt, dy: 0pt,
  [X]
));h(-8.0pt)
}
#show "LaTeX": LaTeX
#show "LaTeX": set text(font: "New Computer Modern")

// ==================== ==================== ====================




#title[Fjalar Högnason Loodberg]

#align(center)[
  === #href("linkedin.com/in/fjalarhl") | #email("fjalarhognason@gmail.com")
]



= Education
  === #mystruct("MSc. Engineering, Nanoscience", "Sep 2019 - Jun 2024", "Lund University")

  // == MSc. Engineering, Engineering Nanoscience #h(1fr) Sep 2019 - Jun 2024
  // === #h(1fr) Lund University

    - Deeply intersectional program, covering chemistry, physics, biology, electronics, often a focus on scientific research
    - Specialization in materials chemistry and nanophysics
    - Used Java, C++, C, Python, and MATLAB in various mandatory and elective courses
    - Master's Thesis in materials chemistry:
        - Used transmission electron microscopy (TEM) and a unique gas handling system to study new materials at the atomic scale
        - Used Python & MATLAB for processing of application-specific TEM file formats, gas handling system data, simulations


  === #mystruct("Teacher's Assistant, Programming", "Jan 2022 - Jun 2023", "Lund University")
    - Helped students with programming exercises and assignments in Java
    - Supervised study hall sessions and lab sessions
    - Graded student assignments
    - Cemented my own programming knowledge

  === #mystruct("Summer Research Project", "Jun 2023 - Aug 2023", "Lund University")
    - Studied multiple Niobium- & Tantalum-based compound nanoparticles using Transmission Electron Microscopy & X-ray Energy Dispersive Spectroscopy
    - Data processing using MATLAB & Python, scientific writing in LaTeX



= Personal Projects

  === #mystruct("Raytracing/raymarching", "Rust", (href("gitlab.com/Fjalar/raymarching"), href("github.com/fjalar/weekend-rt")))
  - Offline software raytracer
    - No dependencies besides for RNG
    - Following the famous Raytracing in one weekend book series, translated to idiomatic Rust
  - Interactive 3D rendering engine using raymarching and the WGPU Rust crate based on the brand new WebGPU standard
    - Using a bleeding-edge API
    - GPU-accelerated 3D rendering engine similar to raytracing

  === #mystruct("Fractal Explorer", "C++/Rust", href("gitlab.com/Fjalar/bittermandel"))
  - Explorable software-rendered fractals using the SDL2 framework
  - Later re-implemented in Rust, using hardware acceleration and the Bevy game engine

  === #mystruct("Web Games", "Rust", (href("fjalar.github.io/2048"), href("fjalar.github.io/fairflips")))
  - Simple games using the Bevy game engine in Rust, available online through continuous deployment
  - Some of my work became an open source contribution to the Bevy project



#let course(name, credits) = {
  [#name #h(1fr) #(credits) ECTS #h(10%)]
}

#grid(
  columns: (1fr, 1fr),
  text()[= Select Courses
    - #course("Electromagnetics and Electronics", 7.5)
    - #course("Programming - First Course (Java)", 7.5)
    - #course("Programming - Second Course (Java)", 7.5)
    - #course("Concurrent Programming (Java)",  7.5)
    - #course("C++ Programming", 7.5)
    - #course("Efficient C", 7.5)
    - #course("Applied Machine Learning (Python)", 7.5)



  ],
  [= Skills
    - #text(weight: "bold")[Programming languages:] Java, C++, C, Rust, Python, MATLAB
    - #text(weight: "bold")[Office/writing:] LaTeX, Word, Excel
    - #text(weight: "bold")[Languages:] Swedish (C2), English (C2), German (B2), Icelandic (A2)
  ]
)
