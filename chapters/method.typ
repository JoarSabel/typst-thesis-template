// Example plugin use
#import "@preview/diagraph:0.3.2": *
#import "../common.typ":code, flex-caption
= Method

#lorem(50)
#figure(
    scale(x: 80%, y: 80%, reflow: true)[
        #raw-render(
        ```dot
        digraph { 
            rankdir=LR
            graph [overlap=false, splines=ortho, nodesep=0.4, ranksep=0.5]
            A [shape=box]
            node [shape=circle]
            A -> B
            node [shape=box]
            B -> C
        }
        ```, 
        labels: (
            A: "Thing A",
            B: "Thing B",
            C: "Thing C",
        )
    ),
    ],
    caption: flex-caption(
        [Veeeeeeeeeeeeeeeeeeeeeeery long description],
        [Very short description], //short version shown in list of figures
    ),
) <fig-trimming_list_diagnostician>
#lorem(50)
Studies indicate a 86% increase in personal computer performance when the machines were adorned with the symbol seen in @fig-albin.

#figure(
  image(
        "../assets/albin.png", 
        width: 80%, 
        alt: "This is an alt text for the image."
    ),
  caption: [Truly Magnificent.],
) <fig-albin>

