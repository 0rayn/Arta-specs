#import "../lib/tarbit-theme.typ": arta
#import "../lib/tarbit-theme.typ": lexicon-entry

= The Scavenger's Lexicon: Compiled Archive

#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \
  The Arta dictionary is mapped directly to standard QWERTY inputs. The logic system loads baseline acoustic signals first (Lowercase letters). Once the physical hardware is established, execution crosses the *Shift Boundary* to process syntax modifiers (Uppercase letters).

  #v(1em)
  #align(center)[
    #table(
      columns: (110pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*QWERTY MAP*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      // BASE HARDWARE
      text(font: "monospace")[Lowercase], [*Grid Hums*], [`m, n, k`],
      text(font: "monospace")[Lowercase], [*Relays/Switches*], [`t, j, q, c`],
      text(font: "monospace")[Lowercase], [*Static & Vents*], [`s, w, x, f, h, v`],
      text(font: "monospace")[Lowercase], [*Failing Motors*], [`r, g`],
      text(font: "monospace")[Lowercase], [*Power States*], [`i, a, u`],
      
      // THE SHIFT BOUNDARY
      table.cell(
        colspan: 3, 
        fill: rgb("#eeeeee"), 
        align: center, 
        inset: 0.8em
      )[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE SHIFT BOUNDARY (MODIFIERS) ---]
      ],
      
      // UPPERCASE / SYSTEM KEYS
      text(font: "monospace")[Uppercase], [*Subject Registers*], [`M, N, K, W`],
      text(font: "monospace")[Uppercase], [*Timeline Flags*], [`I, A, U`],
      text(font: "monospace")[Uppercase], [*Logic Gates*], [`C, X, R, V`],
      text(font: "monospace")[Uppercase], [*Vector Offsets*], [`T, S, F, H, G`],
      text(font: "monospace")[System Keys], [*Execution Triggers*], [`. , ..`]
    )
  ]
]
#v(2em)

// ========================================
== SECTOR [ t ] // SHARP SWITCH [T']

#lexicon-entry("t i j", "noun: [t' i k'] A logical pointer directing execution to a specific hardware address.")
#lexicon-entry("t u c", "noun: [t' u c] A physical, hand-held maintenance tool.")

// ========================================
== SECTOR [ j ] // CRACKING RELAY [K']

#lexicon-entry("j i x", "verb: [k' i x] To permanently flash or burn data onto a hardened ROM chip.")
#lexicon-entry("j a x", "verb: [k' a x] To physically strip or scavenge a hardware component.")

// ========================================
== SECTOR [ q ] // HEAVY BREAKER [Q']

#lexicon-entry("q r i", "noun: [q' r i] An active, autonomous Martas defense drone.")
#lexicon-entry("q a", "noun: [q' a] A physically insulated, offline sanctuary safe from network intrusion.")
#lexicon-entry("q u t", "verb: [q' u t'] To logically partition or reserve a sector of raw storage.")

// ========================================
== SECTOR [ c ] // MAGNETIC RELAY

#lexicon-entry("c i t", "noun: [c i t'] An environmental or industrial hardware sensor.")
#lexicon-entry("c i r", "verb: [c i r] To fetch or read raw data from a specific memory address.")
#lexicon-entry("c a c", "verb: [c a c] To physically splice or bridge two live electrical wires.")

// ========================================
== SECTOR [ s ] // HIGH STATIC

#lexicon-entry("s i r", "noun: [s i r] A physical copper wire or data bus.")
#lexicon-entry("s u g", "noun: [s u ng] A temporary data buffer or holding queue.")

// ========================================
== SECTOR [ x ] // FRICTION SCRAPE

#lexicon-entry("x i w", "noun: [x i sh] A mid-frequency radio transmission or broadcast signal.")
#lexicon-entry("x a", "noun: [x a] An empty, unwritten sector of memory; a null pointer.")

// ========================================
== SECTOR [ f ] // PRESSURE VENT

#lexicon-entry("f i r", "verb: [f i r] To execute a continuous software process or loop.")
#lexicon-entry("f a c", "verb: [f a c] To securely flush a buffer or drop a software connection.")
#lexicon-entry("f u x", "noun: [f u x] Liquid coolant or industrial fluid used in thermal management.")

// ========================================
== SECTOR [ h ] // SHARED EXHAUST

#lexicon-entry("h i w", "verb: [h i sh] To echo or output a raw signal through a hardware terminal.")
#lexicon-entry("h u w", "verb: [h u sh] To place a system into a low-voltage idle or standby state.")

// ========================================
== SECTOR [ v ] // PLATTER SPIN [GH]

#lexicon-entry("v a w", "verb: [gh a sh] To aggressively overclock a hardware component.")

// ========================================
== SECTOR [ a ] // NEUTRAL POWER STATE

#lexicon-entry("a r t a", "noun: [a r t' a] The root execution language and underlying logic of the enclave.")

// ========================================
== SECTOR [ M ] // SUBJECT REGISTER (HOST)

#lexicon-entry("M", "prefix: [m. HOST] Binds an opcode to the speaker (I/Me), or assigns local possession (My).")

// ========================================
== SECTOR [ N ] // SUBJECT REGISTER (CLUSTER)

#lexicon-entry("N", "prefix: [n. CLUSTER] Binds an opcode to the speaker's group (We), or assigns group possession (Our).")

// ========================================
== SECTOR [ K ] // SUBJECT REGISTER (CLIENT)

#lexicon-entry("K", "prefix: [k. CLIENT] Binds an opcode to the target (You), or assigns target possession (Your).")

// ========================================
== SECTOR [ W ] // SUBJECT REGISTER (EXTERNAL/IT)

#lexicon-entry("W", "prefix: [sh. EXTERNAL] Binds an opcode to a third-party, or assigns external possession.")

// ========================================
== SECTOR [ C ] // LOGIC GATE (COMPARE/IF)

#lexicon-entry("C", "modifier: [c. IF GATE] Evaluates the following phrase as a condition.")

// ========================================
== SECTOR [ X ] // LOGIC GATE (NOT/INVERT)

#lexicon-entry("X", "modifier: [x. NOT GATE] Inverts or nullifies the following opcode or register.")

// ========================================
== SECTOR [ V ] // LOGIC GATE (BOOLEAN AND)

#lexicon-entry("V", "modifier: [gh. AND GATE] Binds two conditions or opcodes together on a single logical track.")

// ========================================
== SECTOR [ R ] // LOGIC GATE (BOOLEAN OR)

#lexicon-entry("R", "modifier: [r. OR GATE] Offers a diverging branch between two choices.")

// ========================================
== SECTOR [ Q ] // LOGIC GATE (POLLING/QUERY)

#lexicon-entry("Q", "modifier: [q'. QUERY] Casts the following phrase as a polling request for data (Question).")

// ========================================
== SECTOR [ T ] // VECTOR OFFSET (AT/PIN)

#lexicon-entry("T", "modifier: [t'. VECTOR AT] Indicates an exact, physical connection or adjacent location.")

// ========================================
== SECTOR [ S ] // VECTOR OFFSET (ABOVE)

#lexicon-entry("S", "modifier: [s. VECTOR ABOVE] Indicates location above, on top of, or at a higher physical elevation.")

// ========================================
== SECTOR [ F ] // VECTOR OFFSET (INSIDE)

#lexicon-entry("F", "modifier: [f. VECTOR IN / THIS] Indicates movement inside, or acts as a local memory pointer.")

// ========================================
== SECTOR [ H ] // VECTOR OFFSET (OUTSIDE)

#lexicon-entry("H", "modifier: [h. VECTOR OUT / THAT] Indicates movement outside, or acts as an external memory pointer.")

// ========================================
== SECTOR [ G ] // VECTOR OFFSET (BELOW)

#lexicon-entry("G", "modifier: [ng. VECTOR BELOW] Indicates location below, underneath, or grounded.")

// ========================================
== SECTOR [ I ] // EXECUTION QUEUE (FUTURE)

#lexicon-entry("I", "modifier: [i. QUEUED] Indicates an action scheduled to happen (Future).")

// ========================================
== SECTOR [ A ] // EXECUTION ACTIVE (PRESENT)

#lexicon-entry("A", "modifier: [a. ACTIVE] Indicates an action currently executing (Present).")

// ========================================
== SECTOR [ U ] // EXECUTION LOGGED (PAST)

#lexicon-entry("U", "modifier: [u. LOGGED] Indicates an action that has concluded and written to memory (Past).")

// ========================================
== SECTOR [ . ] // SYSTEM MODIFIER

#lexicon-entry(".", "modifier: [EXECUTION TRIGGER] The Hardware Bus. Acts as a 'THEN' gate.")
#lexicon-entry(". .", "modifier: [SYSTEM HALT / EOF] End of File. Clears all active thread contexts.")
