#import "../lib/tarbit-theme.typ": arta

= APPENDIX A: Arta System Character Map

This appendix serves as the master register for field-scraping. 
*(Note: Lowercase shapes are identical to Uppercase, minus the execution dot).*

== 1. System Modifiers (Uppercase Control Layer)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *M* (Host) \ #arta("M") ],
  [ *N* (Cluster) \ #arta("N") ],
  [ *K* (Client) \ #arta("K") ],
  [ *W* (External) \ #arta("W") ],
  
  [ *I* (Future) \ #arta("I") ],
  [ *A* (Present) \ #arta("A") ],
  [ *U* (Past) \ #arta("U") ],
  [ *Q* (Query) \ #arta("Q") ],

  [ *C* (IF) \ #arta("C") ],
  [ *X* (NOT) \ #arta("X") ],
  [ *V* (AND) \ #arta("V") ],
  [ *R* (OR) \ #arta("R") ],
  
  [ *F* (Inside) \ #arta("F") ],
  [ *P* (Outside) \ #arta("P") ],
  [ *S* (Above) \ #arta("S") ],
  [ *G* (Below) \ #arta("G") ]
)

== 2. System States and ALU
#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [ *=* (Assign) \ #arta("=") ],
  [ *>* (redirect) \ #arta(">") ],
  [ *+* (Inc) \ #arta("+") ],
  [ *\** (Loop) \ #arta("*") ],
  [ *-* (Dec) \ #arta("-") ],
  [ *\/* (Frag) \ #arta("/") ],
  [ *.* (Execute) \ #arta(".") ],
)

== 3. Hexadecimal Numerals (Base-16)
*(Note: Upper hex digits A-F are mapped to the Shift+1-6 keys for dedicated physical hardware routing).*

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 1.5em,
  
  [ *0* \ #arta("0") ], [ *1* \ #arta("1")], [ *2* \ #arta("2")], [ *3* \ #arta("3")],
  [ *4* \ #arta("4")], [ *5* \ #arta("5")], [ *6* \ #arta("6")], [ *7* \ #arta("7")],
  [ *8* \ #arta("8")], [ *9* \ #arta("9")], [ *A* `!` \ #arta("!")], [ *B* `@` \ #arta("@")],
  [ *C* `#` \ #arta("#")], [ *D* `$` \ #arta("$")], [ *E* `%` \ #arta("%")], [ *F* `^` \ #arta("^") ],
)

