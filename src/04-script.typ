#import "../lib/tarbit-theme.typ": arta

= The Scavenger's Script (Orthography)

In the Wastes, there is no paper and there is no ink. Tarbits write with screwdrivers, combat knives, and soldering irons on rusted server chassis and blast doors. Because carving curves into metal is slow, loud, and leaves jagged edges, the physical Arta script is entirely angular.

== 1. The 7-Segment Scrape

The alphabet is directly repurposed from the most common piece of intact Old World e-waste: the 7-segment digital LED display. Every character in Arta is formed by carving a specific combination of these 7 straight lines.

== 2. Whitespace and The Decimal Point (DP)
In the Wastes, carving takes energy. Therefore, standard spaces between words are simply left as empty, uncarved metal. The compiler ignores them. 

However, the Decimal Point (DP) serves two highly specific, active hardware functions:

1. *The System Modifier:* When carved inside the same box as a raw acoustic glyph (like a Grid Hum or a Vector), it promotes that sound into a System Pointer (e.g., the hum `[m]` becomes the Context Pointer `[m.]`). 
2. *The Execution Trigger (THEN):* When the DP sits alone in its own character box `.`, it is not a space. It is the *Hardware Bus*. It acts as a logical `THEN` gate, signaling the end of a conditional statement and triggering the execution of the following command.

== 3. The Glyph Architecture

The shape of the carve reflects the acoustic nature of the sound. 

*[ THE CONTEXT POINTERS ]*
- *[m.] (Local Host):* #arta("m.") (Low bucket + DP)
- *[n.] (Local Cluster):* #arta("n.") (High arch + DP)
- *[k.] (Target Client):* #arta("k.") (Left bracket + DP)
- *[sh.] (External Node):* #arta("sh.") (Closed grid + DP)

*[ THE HARDWARE CONSONANTS ]*
- *[tʼ] (Sharp Switch):* #arta("t'") (Vertical dual-line).
- *[ʃ] (Static):* #arta("sh") (Enclosed parallel lines).
- *[qʼ] (Heavy Breaker):* #arta("q'") (Heavy box structure).

*[ THE POWER STATES (VOWELS) ]*
The power states map to the physical vertical height on the grid.
- *[i] (High State):* #arta("i") (Top bar / High voltage).
- *[a] (Neutral State):* #arta("a") (Middle bar / Baseline).
- *[u] (Low State):* #arta("u") (Bottom bar / Grounded).

== 4. Field Execution: "I boot the system"

To execute the command `[m.] [tʼ i ʃ] [a r tʼ a]` on a terminal, a Tarbit utilizes the standalone pointer protocol. The pointer is carved, a physical gap is left, and then the opcode is carved. 

#v(1em)
#align(center)[
  #scale(x: 200%, y: 200%)[
    #arta("m.  t' i sh  a r t' a")
  ]
]
#v(1em)

To anyone else, it looks like a meaningless series of scratches and a bullet hole. To a Swapper, it is a perfectly formatted initialization command for the core Arta logic.
