#import "../lib/tarbit-theme.typ": glyph

= The Scavenger's Script (Orthography)

In the Wastes, there is no paper and there is no ink. Tarbits write with screwdrivers, combat knives, and soldering irons on rusted server chassis and blast doors. 

Because carving curves into metal is slow, loud, and leaves jagged edges, the physical Arta script is entirely angular.

== 1. The 7-Segment Scrape

The alphabet is directly repurposed from the most common piece of intact Old World e-waste: the 7-segment digital LED display. Every character in Arta is formed by carving a specific combination of these 7 straight lines. 

== 2. The Subject Marker (The Decimal Point)

In Arta's machine syntax, every verb must have a Subject Prefix (`m.`, `n.`, `k.`). To prevent these prefixes from being misread as standalone nouns or verbs, Tarbits use the physical Decimal Point (DP) located at the bottom-right of the display housing as a Syntax Modifier.

When the DP is violently punched or drilled out next to a letter, it casts that letter as the executing Subject.

*[ THE PREFIX GLYPHS ]*
- *m (I/Me):* #glyph(e: true, d: true, c: true) (Low bucket shape) 
  - *Written as Prefix:* #glyph(e: true, d: true, c: true, dp: true)
- *n (We):* #glyph(f: true, a: true, b: true) (High arch shape)
  - *Written as Prefix:* #glyph(f: true, a: true, b: true, dp: true)
- *k (You/Target):* #glyph(f: true, g: true, e: true) (Left bracket shape)
  - *Written as Prefix:* #glyph(f: true, g: true, e: true, dp: true)

== 3. The Glyph Architecture

When a Tarbit carves a word, they are simply drawing the physical segments. The shape of the carve reflects the acoustic nature of the sound.

*[ THE HARDWARE CONSONANTS ]*
- *t' (Sharp Switch):* #glyph(b: true, c: true) (A single, fast vertical line down the right side). 
- *sh (Static):* #glyph(a: true, g: true, d: true) (Three parallel horizontal lines). Looks exactly like a radio wave interference symbol.
- *q' (Heavy Breaker):* #glyph(a: true, f: true, e: true, d: true) (A heavy, three-sided box on the left). It takes force to carve, mirroring the heavy throat-pop.

*[ THE POWER STATES (VOWELS) ]*
The power states perfectly map to the physical vertical height on the 7-segment grid. 
- *i (High State):* #glyph(a: true) (Just the top bar). Voltage is high.
- *a (Neutral State):* #glyph(g: true) (Just the middle bar). Voltage is baseline.
- *u (Low State):* #glyph(d: true) (Just the bottom bar). Voltage is grounded.

== 4. Field Execution

If a Tarbit needs to carve the command `m.t'ish` ("I boot the system") into a blast door, they don't write letters. They execute the script:

#v(1em)
#align(center)[
  #scale(x: 200%, y: 200%)[
    #glyph(e: true, d: true, c: true, dp: true) // m.
    #glyph(b: true, c: true) // t'
    #glyph(a: true) // i
    #glyph(a: true, g: true, d: true) // sh
  ]
]
#v(1em)

To anyone else, it looks like a meaningless series of scratches and a bullet hole. To a Swapper, it is a perfectly formatted initialization command.
