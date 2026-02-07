#import "utils.typ": *
#import "@preview/fontawesome:0.6.0": *
#set document(
  author: "Fjalar Högnason Loodberg",
  date: datetime.today(),
  description: "Curriculum Vitae",
  keywords: ("CV", "cv", "Curriculum Vitae", "Fjalar", "Fjalar Högnason Loodberg"),
  title: "Fjalar Högnason Loodberg"
)
#set page(margin: 24pt)
#set par(leading: 0.5em)
#set text(font: "Raleway", size: 10pt,)
#show title: set text(size: 1.2em)
#show title: set align(center)
#show title: set text(midorigreen)
#show link: underline
#show link: set text(blue)
#show link: set text(font: "DejaVu Sans Mono")
#show link: set text(1em)
#show heading.where(depth: 1): set text(midorigreen, size: 1.2em)

#let include_phone_number = sys.inputs.at("include_phone_number", default: () => "false")

#let phone_number = if include_phone_number == "true" {
  read(".phone_number")
} else {
  ""
}

#grid(
  columns: (85%, 15%),
  rows: (auto, auto),
  row-gutter: 10pt,
  title(),
  grid.cell(
    rowspan: 2,
    scale(160%, block(clip: true, radius: 8pt, image("headshot.jpg", width: 35%)))
  ),
  align(center)[
    === #fa-icon("linkedin") #href("linkedin.com/in/fjalarhl") | #fa-icon("envelope") #email("fjalarhognason@gmail.com") #if include_phone_number == "true" {[| #fa-phone() #link("tel:", phone_number)]}
  ]
)


// Short description of myself
I am a recent graduate, excited to start my career as an engineer. My education has given me a foundational understanding of everything from materials chemistry and electronics, to quantum physics and low-level programming. I program in my spare time, and have multiple projects under my belt. A lot of my spare time is spent programming, both on personal projects and contributing to others. I am a quick learner, and not afraid to ask questions.

= Education
  == #cv_entry("MSc. Engineering, Nanoscience", "Sep 2019 - Jun 2024", "Lund University")

  // == MSc. Engineering, Engineering Nanoscience #h(1fr) Sep 2019 - Jun 2024
  // === #h(1fr) Lund University

    A deeply intersectional program, covering chemistry, physics, biology, electronics, often a focus on scientific research. I chose to specialization in materials chemistry and nanophysics, and wrote my master's thesis on electron microscopy on metal alloys using a unique instrument at Lund University. I also did a summer research project using the same instrument in the summer of 2023. Additionally, I took as many elective programming courses as my time would allow, in languages such as #monospace("Java"), #monospace("C++"), #monospace("C"), #monospace("Python"), and #monospace("MATLAB").

  == #cv_entry("Teacher's Assistant, Programming", "Jan 2022 - Jun 2023", "Lund University")
    For three semesters, I supervised study hall and lab sessions for other students in multiple Java programming courses. I also graded student assignments, which helped me develop my pedagogical skills, as well as cement my own programming knowledge.

= Student Activities

  == #cv_entry("Web Master/Moderator", "Jan 2020 - May 2020", "INASCON Student Conference")
  I helped build and maintain a website and moderated a forum for participants of a volunteer-run scientific conference.

  == #cv_entry("Event Organizer", "Jan 2022 - Jan 2024", "F-Guild at Engineering Faculty")
  I organized in-person events and tournaments, as well as moderated an online gaming community for students in the engineering nanoscience and adjacent programs.

  == #cv_entry("Sustainability Person", "Mar 2022 - May 2022", "Lundakarnevalen")
  As a member of the Ministry of Sustainability, I had the task of solving sustainability challenges in planning a \~500'000 visitor carnival called Lundakarnevalen, and was also in charge of waste disposal logistics for the events.

  == #cv_entry("Active Member", "Dec 2019 - Jun 2024", "Electronics Hackerspace")
  I was an active member of an electronics hackerspace during most of my studies, where students could come and solder, 3D print, make circuit boards, and discuss their projects with other students.

= Programming Projects
I enjoy programming in my spare time, and have a number of projects viewable on #fa-icon("github") #link("https://github.com/Fjalar", "GitHub") and #fa-icon("gitlab") #link("https://gitlab.com/Fjalar", "GitLab"). Some topics that have caught my eye are 3D graphics and raytracing, GPU acceleration, continuous deployment using GitHub Actions, and game development. Some highlights include a 3D #link("https://gitlab.com/Fjalar/raymarching", "raymarching engine") written in Rust, a #link("https://gitlab.com/Fjalar/mandel", "fractal explorer") written in C++, and a few web games #link("https://fjalar.github.io/2048", "(1)") #link("https://fjalar.github.io/fairflips", "(2)") written in Rust and deployed through GitHub Actions. I have also participated in Game Jams, where a small group of volunteers develop a game in a short amount of time, the most recent producing a #link("https://henkehedstrom.itch.io/clown-escape", "game in Godot").

#grid(
  columns: (1fr, 1fr),
  [= Select Courses
    #course("Concurrent Programming",  7.5)\
    #course("C++ Programming", 7.5)\
    #course("Efficient C", 7.5)\
    #course("Memory Technology for Machine Learning", 7.5)\
    #course("Applied Machine Learning", 7.5)\

  ],
  [= Skills
    *Programming languages:* \ #box_elements(([#fa-icon("java", size: 7.5pt) #monospace("Java")], monospace("C++"), monospace("C"), [#fa-icon("rust", size: 7.5pt) #monospace("Rust")], [#fa-icon("python", size: 7.5pt) #monospace("Python")], monospace("MATLAB")))\

    *Tools:* \ #box_elements(([#fa-linux(size: 7.5pt) Linux], [#fa-git-alt(size: 7.5pt) git], "GitHub CI/CD", "LaTeX", "Typst"))\
  ]
)
