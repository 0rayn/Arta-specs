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
    #if dp [ #place(dx: 0.9em, dy: 1.5em)[#circle(radius: 1.5pt, fill: cl)] ] 
  ]
}

// making my life easier
#let arta-data = (
  // --- Subject Registers ---
  "m":  (ipa: "m",  segments: (e:true, d:true, c:true)),      // Low bucket
  "n":  (ipa: "n",  segments: (f:true, a:true, b:true)),      // High arch
  "k":  (ipa: "k",  segments: (f:true, g:true, e:true)),      // Left bracket
  
  // --- Subject Registers dotted variant ---
  "M":  (ipa: "m.",  segments: (e:true, d:true, c:true, dp:true)),      // Low bucket
  "N":  (ipa: "n.",  segments: (f:true, a:true, b:true, dp:true)),      // High arch
  "K":  (ipa: "k.",  segments: (f:true, g:true, e:true, dp:true)),      // Left bracket
 

  // --- Opcodes: The Relays & Switches (Ejectives/Clicks) ---
  "t'": (ipa: "tʼ", segments: (b:true, c:true, f:true, e:true)), // Sharp Switch
  "k'": (ipa: "kʼ", segments: (f:true, g:true, e:true)),         // Cracking Relay
  "q'": (ipa: "qʼ", segments: (b:true, c:true, g:true)),         // Heavy Breaker
  "c":  (ipa: "ǀ",  segments: (g:true, e:true, d:true)),         // Magnetic Relay (Click)
  
  // --- Opcodes: Static & Friction (Fricatives) ---
  "s":  (ipa: "s",  segments: (a:true, f:true, g:true, c:true, d:true)), // High Static
  "sh": (ipa: "ʃ",  segments: (a:true, g:true, d:true)),         // Mid Static
  "x":  (ipa: "x",  segments: (e:true, g:true, b:true)),         // Friction Scrape
  "f":  (ipa: "f",  segments: (f:true, g:true, e:true, d:true)), // Pressure Vent
  "h":  (ipa: "h",  segments: (f:true, g:true, e:true, d:true)), // Shared Exhaust
  "gh": (ipa: "ʁ",  segments: (f:true, a:true, b:true, g:true)), // Platter Spin
  
  // --- Opcodes: Failing Motors (Trills/Hums) ---
  "r":  (ipa: "r",  segments: (e:true, g:true, c:true)),         // Motor Trill
  "ng": (ipa: "ŋ",  segments: (f:true, a:true, b:true, c:true, e:true)), // Electronic Drone
  
  // --- Power States (Vowels) ---
  "i":  (ipa: "i",  segments: (a:true)),                         // High State
  "a":  (ipa: "ə",  segments: (g:true)),                         // Neutral State
  "u":  (ipa: "u",  segments: (d:true)),                         // Low State
  
  // --- Hardware Bus ---
  ".":  (ipa: " ",  segments: (dp:true)),                        // The Delimiter
  // --- Hexadecimal Numbers (0x0 - 0xF) ---
  "0":  (ipa: "0",  segments: (a:true, b:true, c:true, d:true, e:true, f:true)),
  "1":  (ipa: "1",  segments: (b:true, c:true)),
  "2":  (ipa: "2",  segments: (a:true, b:true, g:true, e:true, d:true)),
  "3":  (ipa: "3",  segments: (a:true, b:true, g:true, c:true, d:true)),
  "4":  (ipa: "4",  segments: (f:true, g:true, b:true, c:true)),
  "5":  (ipa: "5",  segments: (a:true, f:true, g:true, c:true, d:true)),
  "6":  (ipa: "6",  segments: (a:true, f:true, e:true, d:true, c:true, g:true)),
  "7":  (ipa: "7",  segments: (a:true, b:true, c:true)),
  "8":  (ipa: "8",  segments: (a:true, b:true, c:true, d:true, e:true, f:true, g:true)),
  "9":  (ipa: "9",  segments: (g:true, f:true, a:true, b:true, c:true)),
  "A":  (ipa: "A",  segments: (e:true, f:true, a:true, b:true, c:true, g:true)),
  "B":  (ipa: "B",  segments: (f:true, e:true, d:true, c:true, g:true)),
  "C":  (ipa: "C",  segments: (a:true, f:true, e:true, d:true)),
  "D":  (ipa: "D",  segments: (b:true, c:true, d:true, e:true, g:true)),
  "E":  (ipa: "E",  segments: (a:true, f:true, e:true, d:true, g:true)),
  "F":  (ipa: "F",  segments: (a:true, f:true, e:true, g:true)),
)

#let arta(input-string) = {
  let parts = input-string.split(" ")
  for p in parts {
    if p in arta-data {
      glyph(..arta-data.at(p).segments)
    } else {
      // Hardware Error: Render a blank box or a '?' to indicate a bad opcode
      rect(width: 1.2em, height: 1.8em, stroke: 0.5pt + red)
    }
  }
}

#let lexicon-entry(input-string, definition) = {
  let parts = input-string.split(" ")
  let ipa-out = ""
  
  for p in parts {
    if p in arta-data {
      ipa-out += arta-data.at(p).ipa
      if p == "." { ipa-out += " " } 
    }
  }

  box(width: 100%, inset: (y: 1.2em), stroke: (bottom: 0.5pt + luma(220)))[
    #stack(dir: ttb, spacing: 1em)[
      // TOP ROW: Identification Header (Near-letters and IPA)
      #stack(dir: ltr, spacing: 1.5em)[
        #text(size: 11pt, weight: "bold", font: "monospace")[#input-string]
        #text(size: 9pt, fill: gray, style: "italic")[#ipa-out]
      ]
      
      // BOTTOM ROW: Hardware Scrape + Definition
      #grid(
        columns: (120pt, 1fr),
        gutter: 2em,
        // Aligns both the glyphs and the text to the absolute top of the row
        align: (left + top, left + top),
        
        // Left Column: The Arta Scrape
        scale(x: 100%, origin: left + top)[#arta(input-string)],
        
        // Right Column: The Semantic Definition
        text(size: 10pt)[#definition]
      )
    ]
  ]
}

