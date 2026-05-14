// ==========================================
// ARTA SPECIFICATION THEME
// AESTHETIC: ARCHIVAL / TERMINAL PRINTOUT
// OS COMPATIBILITY: DEBIAN / LINUX NATIVE
// ==========================================

#let redact(content) = box(fill: rgb("#111111"), inset: 0pt, text(fill: rgb("#111111"), content))
#let hex-dump(content) = text(font: "Liberation Mono", size: 7pt, fill: luma(150), tracking: 0.2em, content)

#let tarbit-doc(title: "", body) = {
  let terminal-font = ("Liberation Mono", "DejaVu Sans Mono")

  let eng-grid = tiling(size: (20pt, 20pt))[
    #line(start: (0pt, 0pt), end: (20pt, 0pt), stroke: 0.5pt + rgb("#e5e5e0"))
    #line(start: (0pt, 0pt), end: (0pt, 20pt), stroke: 0.5pt + rgb("#e5e5e0"))
  ]

  set page(
    paper: "a4",
    margin: (x: 1.2in, y: 1.5in),
    background: [
      #rect(width: 100%, height: 100%, fill: eng-grid)
      #place(center + horizon)[
        #rotate(-45deg)[
          #text(size: 80pt, weight: "bold", fill: rgb("#f4f4f0"), tracking: 0.1em)[READ ONLY]
        ]
      ]
    ],
    header: [
      #set text(size: 8pt, font: terminal-font, fill: luma(100))
      #grid(
        columns: (1fr, 1fr),
        align(left)[#hex-dump("0x00F8A 0x11B2C 0x99F01")],
        align(right)[SYS_ARCHIVE \/\/ FRAGMENT-RESTORED]
      )
    ],
    footer: [
      #set text(size: 8pt, font: terminal-font, fill: luma(100))
      #line(length: 100%, stroke: 0.5pt)
      #grid(
        columns: (1fr, 1fr, 1fr),
        align(left)[#hex-dump("CHK: 88A9")],
        align(center)[PAGE #context counter(page).display("1")],
        align(right)[#hex-dump("MEM: OK")]
      )
    ]
  )
  
  set text(font: terminal-font, size: 10pt, weight: "medium", fill: rgb("#191919"))
  set par(justify: true, leading: 0.8em)

  show heading.where(level: 1): it => {
    v(2em)
    box(
      width: 100%,
      stroke: (bottom: 2.5pt + black, top: 2.5pt + black),
      inset: (y: 12pt),
      text(size: 16pt, weight: "bold", tracking: 0.1em, upper(it.body) + " █")
    )
    v(1.5em)
  }
  
  show heading.where(level: 2): it => {
    v(1.5em)
    text(size: 11pt, weight: "bold", "> " + upper(it.body))
    v(0.8em)
  }

  align(center)[
    #v(25%)
    #line(length: 100%, stroke: 4pt)
    #v(1.5em)
    #text(size: 26pt, weight: "bold", tracking: 0.2em, upper(title))
    #v(1.5em)
    #text(size: 11pt, weight: "bold")[DOCUMENT CLASSIFICATION: READ-ONLY] \
    #v(0.5em)
    #text(size: 10pt)[AUTHOR: <\ERR_SECTOR_UNREADABLE> \/\/ DATA PURGED] \
    #text(size: 10pt)[TIMESTAMP: POST-FRACTURE EPOCH] \
    #v(1em)
    #hex-dump("INITIALIZING KERNEL PANIC... BYPASSING...")
    #v(1.5em)
    #line(length: 100%, stroke: 4pt)
  ]
  pagebreak()
  body
}
// ==========================================
// ARTA HARDWARE FONT INTEGRATION
// ==========================================
#let arta(input-string) = {
  box(inset: (y: 0.5em))[
    #text(font: "ARTA", size: 14pt, tracking: 1.2em)[#input-string]
  ]
}

// ==========================================
// THE LEXICON MACRO (2-FIELD BARE-METAL)
// ==========================================
#let lexicon-entry(keys, definition) = {
  box(width: 100%, inset: (y: 1.2em), stroke: (bottom: 0.5pt + luma(220)))[
    #stack(dir: ttb, spacing: 1em)[
      #text(size: 11pt, weight: "bold", font: "monospace", fill: rgb("#555"))[Keystrokes: #keys]
      
      #grid(
        columns: (120pt, 1fr),
        gutter: 2em,
        align: (left + top, left + top),
        scale(x: 100%, origin: left + top)[#arta(keys)],
        text(size: 10pt)[#definition]
      )
    ]
  ]
}
