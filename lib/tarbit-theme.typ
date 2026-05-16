// ==========================================
// ARTA SPECIFICATION THEME v2.2
// AESTHETIC: ARCHIVAL / TERMINAL PRINTOUT
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
          #text(size: 80pt, weight: "bold", fill: rgb("#f4f4f0"), tracking: 0.1em)[YONA_OS ROOT]
        ]
      ]
    ],
    header: [
      #set text(size: 8pt, font: terminal-font, fill: luma(100))
      #grid(
        columns: (1fr, 1fr),
        align(left)[#hex-dump("0x00F8A 0x11B2C 0x99F01")],
        align(right)[SYS_ARCHIVE \/\/ ARTA_V2.2]
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
    #text(size: 11pt, weight: "bold")[DOCUMENT CLASSIFICATION: ROOT_ACCESS] \
    #v(0.5em)
    #text(size: 10pt)[AUTHOR: YONA_OS \/\/ TARBIT_NODE_0x7A] \
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
// ARTA GLYPH RENDERER (STRING PARSER)
// ==========================================
#let glyph(segs) = {
  let th = 1.5pt 
  let cl = rgb("#111111") 
  let soft = rgb("#cccccc") 
  
  let s = lower(segs)
  let a = s.contains("a")
  let b = s.contains("b")
  let c = s.contains("c")
  let d = s.contains("d")
  let e = s.contains("e")
  let f = s.contains("f")
  let g = s.contains("g")
  let dp = s.contains("p")

  let upper = (a or b or f)
  let lower = (d or c or e)
  let needs_ground = upper != lower

  box(width: 1.2em, height: 1.8em, baseline: 15%)[
    #if needs_ground [ #place(dx: -0.1em, dy: 0.8em)[#line(length: 1.4em, stroke: 0.5pt + soft)] ]
    #if a [ #place(dx: 0.2em, dy: 0em)[#line(length: 0.6em, stroke: th + cl)] ]   
    #if g [ #place(dx: 0.2em, dy: 0.8em)[#line(length: 0.6em, stroke: th + cl)] ] 
    #if d [ #place(dx: 0.2em, dy: 1.6em)[#line(length: 0.6em, stroke: th + cl)] ] 
    #if b [ #place(dx: 0.8em, dy: 0.1em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if c [ #place(dx: 0.8em, dy: 0.9em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if f [ #place(dx: 0.1em, dy: 0.1em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if e [ #place(dx: 0.1em, dy: 0.9em)[#line(end: (0em, 0.6em), stroke: th + cl)] ] 
    #if dp [ #place(dx: 0.9em, dy: 1.5em)[#circle(radius: 1.5pt, fill: cl)] ] 
  ]
}

#let arta-data = (
  // ALU & States
  "0": "abcdef", "^": "aefg", "+": "fg", "-": "gc", "*": "fgp", "/": "gcp", "=": "dg", ".": "p", ">": "dcg",
  // Hex Numerals
  "1": "bc", "2": "abdeg", "3": "abcdg", "4": "bcfg", "5": "acdfg", "6": "acdefg", "7": "abc", "8": "abcdefg", "9": "abcdfg", "!": "abcefg", "@": "cdefg", "#": "afed", "$": "bcdeg", "%": "adefg",
  // Uppercase (Control Layer)
  "M": "cdep", "N": "abfp", "K": "efgp", "W": "adfgp", // Pointers
  "I": "ap", "A": "gp", "U": "dp",                     // Timelines
  "C": "degp", "X": "bgep", "V": "cdegp", "R": "cegp", "Q": "bcgp", // Logic
  "T": "bcefp", "S": "agdp", "P": "abefp", "G": "abcefp", "F": "fegdp", // Vectors (P = Outside, F = Inside)
  // Lowercase (Data Layer - Auto-derived by stripping 'p')
  "m": "cde", "n": "abf", "k": "efg", "w": "adfg",
  "i": "a", "a": "g", "u": "d",
  "c": "deg", "x": "bge", "v": "cdeg", "r": "ceg", "q": "bcg",
  "t": "bcef", "s": "agd", "p": "abef", "g": "abcef", "f": "fecd"
)

// ==========================================
// ARTA GLYPH RENDERER (CONTIGUOUS PARSER)
// ==========================================
#let arta(input-string) = {
  // Iterate through the string character-by-character
  for char in input-string.clusters() {
    if char == " " { 
      // Render physical whitespace between separate words/blocks
      h(0.8em) 
    } else if char in arta-data { 
      // Valid hardware character: draw the scrape
      glyph(arta-data.at(char)) 
    } else { 
      // Unallocated memory/Placeholder: draw a red error block
      rect(width: 1.2em, height: 1.8em, stroke: 0.5pt + red) 
    }
  }
}

#let lexicon-entry(input-string, definition) = {
  box(width: 100%, inset: (y: 1.2em), stroke: (bottom: 0.5pt + luma(220)))[
    #stack(dir: ttb, spacing: 1em)[
      #text(size: 11pt, weight: "bold")[#input-string]
      #grid(
        columns: (120pt, 1fr), gutter: 2em, align: (left + top, left + top),
        // This now feeds the contiguous string into our updated character parser
        scale(x: 100%, origin: left + top)[#arta(input-string)],
        text(size: 10pt)[#definition]
      )
    ]
  ]
}
