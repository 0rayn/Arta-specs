#import "../lib/tarbit-theme.typ": arta

= APPENDIX A: Arta System Character Map

This appendix serves as the master register for field-scraping and terminal-emulation. It provides a 1:1 mapping between acoustic hardware signals and their physical 7-segment scrape patterns.

== 1. The Acoustic Opcodes (Consonants)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[tʼ]* \ #arta("t'")],
  [ *[kʼ]* \ #arta("k'")],
  [ *[qʼ]* \ #arta("q'")],
  
  [ *[ǀ]* \ #arta("c")],
  [ *[S]* \ #arta("s")],
  [ *[ʃ]* \ #arta("sh")],
  [ *[x]* \ #arta("x")],

  [ *[f] / [h]* \ #arta("h")],
  [ *[ʁ]* \ #arta("gh")],
  [ *[r]* \ #arta("r")],

  [ *[ŋ]* \ #arta("ng")]
)

== 2. The Voltage Flags (Vowels)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[i]* (High) \ #arta("i") ],
  [ *[ə]* (Neutral) \ #arta("a") ],
  [ *[u]* (Low) \ #arta("u") ]
)

== 3. The Subject Registers (Prefixes)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[m]* + DP \ #arta("m.") ],
  [ *[n]* + DP \ #arta("n.") ],
  [ *[k]* + DP \ #arta("k.") ]
)

#v(200pt)

== 4. Timeline Flags (Execution Queue)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[i.]* (Queued) \ #arta("i.") ],
  [ *[ə.]* (Active) \ #arta("a.") ],
  [ *[u.]* (Logged) \ #arta("u.") ]
)

== 5. Logic Gates (Branching and Negation)
#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [ *[c.]* (IF) \ #arta("c.") ],
  [ *[x.]* (NOT) \ #arta("x.") ]
)

== 5. Vector Offsets
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[f.]* (IN) \ #arta("f.") ],
  [ *[h.]* (OUT) \ #arta("h.") ],
  [ *[s.]* (Above) \ #arta("s.") ],
  [ *[ng.]* (Below) \ #arta("ng.") ],
  [ *[t']* (at) \ #arta("t'.") ]
)

== 5. The ALU Registers (Math Operators)

Used for base-16 calculation, memory address incrementing, and variable assignment. 

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *+* (Add) \ #arta("+") ],
  [ *-* (Sub) \ #arta("-") ],
  [ **\* (Mult) \ #arta("*") ],
  [ *\/* (Div) \ #arta("/") ],
  [ *=* (Assign) \ #arta("=") ]
)


== 6. Hexadecimal Numbers (0x0 - 0xF)

Numbers follow standard 7-segment numeric mapping to ensure compatibility with Old World hardware displays.
#grid(
  columns: (22%, 22%, 22%, 22%),
  gutter: 4%,
  [ *0x0* \ #arta("0")],
  [ *0x1* \ #arta("1")],
  [ *0x2* \ #arta("2")],
  [ *0x3* \ #arta("3")],
  [ *0x4* \ #arta("4")],
  [ *0x5* \ #arta("5")],
  [ *0x6* \ #arta("6")],
  [ *0x7* \ #arta("7")],
  [ *0x8* \ #arta("8")],
  [ *0x9* \ #arta("9")],
  [ *0xA* \ #arta("A")],
  [ *0xB* \ #arta("B")],
  [ *0xC* \ #arta("C")],
  [ *0xD* \ #arta("D")],
  [ *0xE* \ #arta("E")],
  [ *0xF* \ #arta("F")],
)
