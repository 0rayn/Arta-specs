// ==========================================
// ARTA SPECIFICATION THEME
// AESTHETIC: ARCHIVAL / TERMINAL PRINTOUT / FOUND DOCUMENT
// OS COMPATIBILITY: DEBIAN / LINUX NATIVE
// ==========================================

// 1. New Macro: Redacted Text (Black boxes)
#let redact(content) = box(fill: rgb("#111111"), inset: 0pt, text(fill: rgb("#111111"), content))

// 2. New Macro: Hex Dump (For memory artifacts)
#let hex-dump(content) = text(font: "Liberation Mono", size: 7pt, fill: luma(150), tracking: 0.2em, content)

#let tarbit-doc(title: "", body) = {
  let terminal-font = ("Liberation Mono", "DejaVu Sans Mono")

  // 3. The Background Grid Pattern
  let eng-grid = tiling(size: (20pt, 20pt))[
    #line(start: (0pt, 0pt), end: (20pt, 0pt), stroke: 0.5pt + rgb("#e5e5e0"))
    #line(start: (0pt, 0pt), end: (0pt, 20pt), stroke: 0.5pt + rgb("#e5e5e0"))
  ]

  // 4. The Page Setup with Grid & Watermark
  set page(
    paper: "a4",
    margin: (x: 1.2in, y: 1.5in),
    background: [
      // Draw the grid
      #rect(width: 100%, height: 100%, fill: eng-grid)
      // Draw the massive faded watermark
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

  // 5. Brutalist Headings (Now with Terminal Block Cursors)
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

  // 6. The Title Page
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
// THE DICTIONARY MACRO
// ==========================================
#let lexicon(arta, english, sounds, pos) = {
  let terminal-font = ("Liberation Mono", "DejaVu Sans Mono")
  v(1em)
  block(
    width: 100%,
    stroke: 1pt + black,
    inset: 12pt,
    radius: 0pt,
    fill: rgb("#f8f8f6"), // Slightly lighter than the grid so the blocks pop
  )[
    #set text(font: terminal-font, size: 9pt)
    #grid(
      columns: (1fr, 3fr),
      row-gutter: 8pt,
      align: (left, left),
      [*ROOT:* #text(size: 12pt, weight: "bold", upper(arta))], [*CLASS:* #upper(pos)],
      [*DEF :*], [#english],
      [*SIG :*], [_ #sounds _]
    )
  ]
}

// ==========================================
// ARTA GLYPH RENDERER (7-SEGMENT DRIVER)
// ==========================================
#let glyph(a: false, b: false, c: false, d: false, e: false, f: false, g: false, dp: false) = {
  let th = 1.5pt 
  let cl = rgb("#111111") 
  let soft = rgb("#cccccc") 
  
  // AUTOMATED GROUND LOGIC:
  // Trigger if glyph uses Middle (g) AND (Upper segments OR Lower segments)
  let upper = (a or b or f)
  let lower = (d or c or e)
  let needs_ground = upper != lower

  box(width: 1.2em, height: 1.8em, baseline: 15%)[
    // Render ground plane if manually requested OR automatically needed
    #if needs_ground [ #place(dx: -0.1em, dy: 0.8em)[#line(length: 1.4em, stroke: 0.5pt + soft)] ]

    // Horizontal Segments
    #if a [ #place(dx: 0.2em, dy: 0em)[#line(length: 0.6em, stroke: th + cl)] ]   
    #if g [ #place(dx: 0.2em, dy: 0.8em)[#line(length: 0.6em, stroke: th + cl)] ] 
    #if d [ #place(dx: 0.2em, dy: 1.6em)[#line(length: 0.6em, stroke: th + cl)] ] 
    
    // Vertical Segments
    #if b [ #place(dx: 0.8em, dy: 0.1em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if c [ #place(dx: 0.8em, dy: 0.9em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if f [ #place(dx: 0.1em, dy: 0.1em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if e [ #place(dx: 0.1em, dy: 0.9em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    
    // Syntax Modifier
    #if dp [ #place(dx: 1.1em, dy: 1.5em)[#circle(radius: 1.5pt, fill: cl)] ] 
  ]
}

