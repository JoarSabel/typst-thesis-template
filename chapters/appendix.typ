
#let appendix(body) = {
  set heading(numbering: "A.", supplement: [Appendix])
  counter(heading).update(0)
  body
}
= Appendix
#show: appendix
= Project Repository <repo>
Source code for the implementation can be found at blabla.com

