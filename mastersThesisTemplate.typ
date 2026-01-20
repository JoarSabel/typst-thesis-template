#import "common.typ":*

// Setup of page stylings
#set page(
  paper: "a4",
  margin: (
    top: 2.5cm, bottom: 3cm, left: 4.5cm, right: 2cm
  ),
  numbering: none,
  header: none,
)

#set par(leading: 0.65em, justify: false)
#set text(font: "Times New Roman", size: 12pt)
#show ref.where(form: "normal"): set ref(supplement: it => 
    if it.func() == heading and it.supplement != [Appendix] {
      "Chapter"
    } else {
      it.supplement
    } 
)


#show figure.where(
  kind: table
): set figure.caption(position: top)

#show outline: it => {
  in-outline.update(true)
  it
  in-outline.update(false)
}


// Placement of title center (vertical alignment) + horizon (horizontal alignment)
#align(center + horizon, text(18pt)[
  *#title*
])

#set par(leading: 0.65em, justify: true)
// Title page bottom right info
#align(right + bottom)[
  #name\
  Supervisors: #supervisors\
  #thesis\
  #faculty\
  #university\
  #year 
]

// Make a page break to ensure that title page is a page.
#pagebreak()

#set page(numbering: "I")
#counter(page).update(1)
// Insert the abstract and preface sections
#include "chapters/abstract.typ" // Mandatory
#pagebreak()

// TOC
#block[
  #show outline.entry.where(level: 1): it => {
    // v(12pt, weak: true)
    block(above: 1em)
    strong(it)
  }
  #outline(depth: 5, indent: auto)
]
#pagebreak()

// #show outline.entry.where(level: 1): set block(above: 1.2em)
// #show outline.title: set block(below: 1.2em)
#include "chapters/preface.typ" // Mandatory
#pagebreak()

#include "chapters/acronyms.typ"
#pagebreak()

// // Optional
// #outline(title: "List Of Figures", target: figure.where(kind: image))
// #pagebreak()
//
// // Optional
// #outline(title: "List Of Listings", target: figure.where(kind: "code"))
// #pagebreak()
#heading("List of Figures")
#v(2em)
#outline(title: none, target: figure.where(kind: image))
#pagebreak()

// Optional
#heading("List of Listings")
#v(2em)
#outline(title: none, target: figure.where(kind: "code"))
#pagebreak()

// Optional
#heading("List of Tables")
#v(2em)
#outline(title: none, target: figure.where(kind: table))
#pagebreak()

// Set numbering here, to avoid numbering abstract, preface and acronyms.
#set heading(numbering: "1.1")
#show heading: set block(below: 1em, above: 2em)
#set page(numbering: "1")
#counter(page).update(1)

#code( 
    // firstnumber:306,
    // stepnumber:1,
    // stepnumber:5,
    // numberfirstline: true,
    strokecolor: black,
    bgcolor: rgb("#F7F7F7"),
    numbers: true,
    caption: "Code: example.py",
    highlight: (1, 2, 3)
)[```python
# Python in a code box
a = 1

def add_one(v):
    return v + 1
```]

#include "chapters/introduction.typ"
#pagebreak()
#include "chapters/background.typ"
#pagebreak()
#include "chapters/method.typ"
#pagebreak()
#include "chapters/results.typ"
#include "chapters/discussion.typ"
#pagebreak()
#include "chapters/conclusion.typ"
#pagebreak()

#set heading(numbering: none)
#include "chapters/swedishSummary.typ"
#pagebreak()
#bibliography("works.bib", style: "ieee", title: auto)
#pagebreak()
#include "chapters/appendix.typ"
// #include "chapters/chapter1.typ"
// #include "chapters/chapter2.typ"
// #include "chapters/chapter3.typ"
// #pagebreak()
//
// #bibliography("works.bib", style: "ieee", title: auto)
//
