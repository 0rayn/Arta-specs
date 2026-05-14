#import "../lib/tarbit-theme.typ": arta

= APPENDIX A: Arta System Character Map

This appendix serves as the master register for terminal emulation. It provides the QWERTY keyboard map required to print the physical 7-segment vectors using the Arta `.ttf` system font.

== 1. The Acoustic Opcodes (Consonants)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *t* ([tʼ]) \ #arta("t")],
  [ *j* ([kʼ]) \ #arta("j")],
  [ *q* ([qʼ]) \ #arta("q")],
  
  [ *c* ([ǀ]) \ #arta("c")],
  [ *s* ([s]) \ #arta("s")],
  [ *w* ([ʃ]) \ #arta("w")],
  [ *x* ([x]) \ #arta("x")],

  [ *h* ([h]) \ #arta("h")],
  [ *v* ([ʁ]) \ #arta("v")],
  [ *r* ([r]) \ #arta("r")],

  [ *g* ([ŋ]) \ #arta("g")]
)

== 2. The Voltage Flags (Vowels)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *i* (High) \ #arta("i") ],
  [ *a* (Neutral) \ #arta("a") ],
  [ *u* (Low) \ #arta("u") ]
)

== 3. Thread Contexts (System Pointers)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *M* (Host) \ #arta("M") ],
  [ *N* (Cluster) \ #arta("N") ],
  [ *K* (Client) \ #arta("K") ],
  [ *W* (External) \ #arta("W") ]
)

#v(200pt)

== 4. Timeline Flags (Execution Queue)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *I* (Queued) \ #arta("I") ],
  [ *A* (Active) \ #arta("A") ],
  [ *U* (Logged) \ #arta("U") ]
)

== 5. System & Logic Gates
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *C* (IF) \ #arta("C") ],
  [ *X* (NOT) \ #arta("X") ],
  [ *V* (AND) \ #arta("V") ],
  [ *R* (OR) \ #arta("R") ],
  [ *.* (THEN) \ #arta(".") ]
)

== 6. Vector Offsets
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *F* (IN) \ #arta("F") ],
  [ *H* (OUT) \ #arta("H") ],
  [ *S* (Above) \ #arta("S") ],
  [ *G* (Below) \ #arta("G") ],
  [ *T* (At) \ #arta("T") ]
)

== 7. The ALU Registers (Math Operators)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *+* (Add) \ #arta("+") ],
  [ *-* (Sub) \ #arta("-") ],
  [ *\** (Mult) \ #arta("*") ],
  [ *\/* (Div) \ #arta("/") ],
  [ *=* (Assign) \ #arta("=") ]
)

== 8. Hexadecimal Numbers (0x0 - 0xF)
#grid(
  columns: (22%, 22%, 22%, 22%),
  gutter: 4%,
  [ *0* \ #arta("0")],
  [ *1* \ #arta("1")],
  [ *2* \ #arta("2")],
  [ *3* \ #arta("3")],
  [ *4* \ #arta("4")],
  [ *5* \ #arta("5")],
  [ *6* \ #arta("6")],
  [ *7* \ #arta("7")],
  [ *8* \ #arta("8")],
  [ *9* \ #arta("9")],
  [ *!* (A) \ #arta("!")],
  [ *@* (B) \ #arta("@")],
  [ *\#* (C) \ #arta("#")],
  [ *\$* (D) \ #arta("$")],
  [ *%* (E) \ #arta("%")],
  [ *^* (F) \ #arta("^")],
)
