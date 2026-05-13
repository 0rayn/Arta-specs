#import "../lib/tarbit-theme.typ": glyph

= The Scavenger's Script (Orthography)

In the Wastes, there is no paper and there is no ink. Tarbits write with screwdrivers, combat knives, and soldering irons on rusted server chassis and blast doors. Because carving curves into metal is slow, loud, and leaves jagged edges, the physical Arta script is entirely angular.

== 1. The 7-Segment Scrape

The alphabet is directly repurposed from the most common piece of intact Old World e-waste: the 7-segment digital LED display. Every character in Arta is formed by carving a specific combination of these 7 straight lines.

== 2. Whitespace and The Execution Trigger (DP)
In the Wastes, carving takes energy. Therefore, standard spaces between words are simply left as empty, uncarved metal. The compiler ignores them.
However, the standalone Decimal Point (DP) serves a highly specific, active hardware function:

1. *The Subject Prefix:* When carved within the same box as a Subject Glyph (`[m]`, `[n]`, `[k]`), it binds the subject to the verb.
2. *The Execution Trigger (THEN):* When the DP sits alone in its own character box `.`, it is not a space. It is the *Hardware Bus*. It acts as a logical `THEN` gate, signaling the end of a conditional statement (`[c.]`) and triggering the execution of the following command.

*[ THE PREFIX GLYPHS ]*
- *[m] (I/Me):* #glyph(e: true, d: true, c: true) (Low bucket shape) 
  - *As Prefix:* #glyph(e: true, d: true, c: true, dp: true) 
- *[n] (We):* #glyph(f: true, a: true, b: true) (High arch shape)
  - *As Prefix:* #glyph(f: true, a: true, b: true, dp: true) 
- *[k] (You/Target):* #glyph(f: true, g: true, e: true) (Left bracket shape)
  - *As Prefix:* #glyph(f: true, g: true, e: true, dp: true) 

== 3. The Glyph Architecture

The shape of the carve reflects the acoustic nature of the sound.

*[ THE HARDWARE CONSONANTS ]*
- *[tʼ] (Sharp Switch):* #glyph(b: true, c: true, f: true, e: true) (Vertical dual-line structure).
- *[ʃ] (Static):* #glyph(a: true, g: true, d: true) (Three parallel horizontal lines).
- *[qʼ] (Heavy Breaker):* #glyph(b: true, c: true, g: true) (A heavy box structure).

*[ THE POWER STATES (VOWELS) ]*
The power states map to the physical vertical height on the grid.
- *[i] (High State):* #glyph(a: true) (Top bar / High voltage).
- *[ə] (Neutral State):* #glyph(g: true) (Middle bar / Baseline).
- *[u] (Low State):* #glyph(d: true) (Bottom bar / Grounded).

== 4. Field Execution: "I boot the system"

To execute the command `[m.tʼ i ʃ] [ə r tʼ ə]` on a terminal or blast door, a Tarbit utilizes the DP-Space protocol to ensure the verb and object are distinct while keeping the subject-prefix attached.

#v(1em)
#align(center)[
  #scale(x: 200%, y: 200%)[
    // VERB BLOCK: Subject Prefix [m.] + Verb Root [t' i ʃ]
    #glyph(e: true, d: true, c: true, dp: true)
    #glyph(b: true, c: true, f: true, e: true) 
    #glyph(a: true)                            
    #glyph(a: true, g: true, d: true)
    // HARDWARE SPACE: Standalone DP
    #glyph(dp: true)
    // OBJECT BLOCK: [ə r tʼ ə] (System)
    #glyph(g: true)                            // [ə]
    #glyph(e: true, g: true, c: true)          // [r]
    #glyph(b: true, c: true, f: true, e: true) // [t']
    #glyph(g: true)                            // [ə]
  ]
]
#v(1em)

To anyone else, it looks like a meaningless series of scratches and a bullet hole. To a Swapper, it is a perfectly formatted initialization command for the core Arta logic.
