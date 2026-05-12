#import "../lib/tarbit-theme.typ": arta
#import "../lib/tarbit-theme.typ": lexicon-entry

= The Scavenger's Lexicon: Compiled Archive

#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \
  The Arta dictionary is not sorted alphabetically; it is sorted by hardware execution priority. The logic system loads baseline acoustic signals first (Opcodes and Power States). Once the physical hardware is established, execution crosses the *DP Boundary* to process syntax modifiers (The "Dotted" Registers and Flags).

  #v(1em)
  #align(center)[
    #table(
      columns: (60pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*SECTOR*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      // BASE HARDWARE
      text(font: "monospace")[0x0], [*Grid Hums*], [`m, n, k`],
      text(font: "monospace")[0x1], [*Relays & Switches*], [`t', k', q', c`],
      text(font: "monospace")[0x2], [*Static & Vents*], [`s, sh, x, f, h, gh`],
      text(font: "monospace")[0x3], [*Failing Motors*], [`r, ng`],
      text(font: "monospace")[0x4], [*Power States*], [`i, a, u`],
      
      // THE DP BOUNDARY
      table.cell(
        colspan: 3, 
        fill: rgb("#eeeeee"), 
        align: center, 
        inset: 0.8em
      )[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE DP BOUNDARY (MODIFIERS) ---]
      ],
      
      // DOTTED STUFF
      text(font: "monospace")[0x5], [*Subject Registers*], [`m., n., k.`],
      text(font: "monospace")[0x6], [*Timeline Flags*], [`i., a., u.`],
      text(font: "monospace")[0x7], [*Logic Gates*], [`c., x.`],
      text(font: "monospace")[0x8], [*Vector Offsets*], [`t'., s., f., h., ng.`],
      text(font: "monospace")[0x9], [*The Hardware Bus*], [`.`]
    )
  ]
]
#v(2em)

// ========================================
== SECTOR [ t' ] // SHARP SWITCH

#lexicon-entry("t' i k'", "noun: A logical pointer directing execution to a specific hardware address.")
#lexicon-entry("t' u c", "noun: A physical, hand-held maintenance tool.")

// ========================================
== SECTOR [ k' ] // CRACKING RELAY

#lexicon-entry("k' i x", "verb: To permanently flash or burn data onto a hardened ROM chip.")
#lexicon-entry("k' a x", "verb: To physically strip or scavenge a hardware component from a larger system.")

// ========================================
== SECTOR [ q' ] // HEAVY BREAKER

#lexicon-entry("q' r i", "noun: An active, autonomous Martas defense drone.")
#lexicon-entry("q' a", "noun: A physically insulated, offline sanctuary safe from network intrusion.")
#lexicon-entry("q' u t'", "verb: To logically partition or reserve a sector of raw storage.")

// ========================================
== SECTOR [ c ] // MAGNETIC RELAY

#lexicon-entry("c i t'", "noun: An environmental or industrial hardware sensor (e.g., accelerometer or gyro).")
#lexicon-entry("c i r", "verb: To fetch or read raw data from a specific memory address.")
#lexicon-entry("c a c", "verb: To physically splice or bridge two live electrical wires.")

// ========================================
== SECTOR [ s ] // HIGH STATIC

#lexicon-entry("s i r", "noun: A physical copper wire or data bus.")
#lexicon-entry("s u ng", "noun: A temporary data buffer or holding queue.")

// ========================================
== SECTOR [ x ] // FRICTION SCRAPE

#lexicon-entry("x i sh", "noun: A mid-frequency radio transmission or broadcast signal.")
#lexicon-entry("x a", "noun: An empty, unwritten sector of memory; a null pointer.")

// ========================================
== SECTOR [ f ] // PRESSURE VENT

#lexicon-entry("f i r", "verb: To execute a continuous software process or loop.")
#lexicon-entry("f a c", "verb: To securely flush a buffer or drop a software connection.")
#lexicon-entry("f u x", "noun: Liquid coolant or industrial fluid used in thermal management.")

// ========================================
== SECTOR [ h ] // SHARED EXHAUST

#lexicon-entry("h i sh", "verb: To echo or output a raw signal through a hardware terminal.")
#lexicon-entry("h u sh", "verb: To place a system into a low-voltage idle or standby state.")

// ========================================
== SECTOR [ gh ] // PLATTER SPIN

#lexicon-entry("gh a sh", "verb: To aggressively overclock a hardware component past its stable baseline.")

// ========================================
== SECTOR [ a ] // NEUTRAL POWER STATE

#lexicon-entry("a r t' a", "noun: The root execution language and underlying logic of the enclave.")

// ========================================
== SECTOR [ m. ] // SUBJECT REGISTER (I/ME)

#lexicon-entry("m.", "prefix: [FIRST PERSON] Binds the opcode execution to the speaker (I/Me).")

// ========================================
== SECTOR [ n. ] // SUBJECT REGISTER (WE)

#lexicon-entry("n.", "prefix: [FIRST PLURAL] Binds the opcode execution to the speaker's group (We).")

// ========================================
== SECTOR [ k. ] // SUBJECT REGISTER (YOU)

#lexicon-entry("k.", "prefix: [SECOND PERSON] Binds the opcode execution to the target entity (You).")

// ========================================
== SECTOR [ c. ] // LOGIC GATE (COMPARE/IF)

#lexicon-entry("c.", "modifier: [GATE] The Relay dot. Evaluates the following phrase as a condition (IF).")

// ========================================
== SECTOR [ x. ] // LOGIC GATE (NOT/INVERT)

#lexicon-entry("x.", "modifier: [NOT] The Friction dot. Inverts or nullifies the following opcode or register (NO/FALSE).")

// ========================================
== SECTOR [ t'. ] // VECTOR OFFSET (AT/PIN)

#lexicon-entry("t'.", "modifier: [VECTOR PIN] The Switch dot. Indicates an exact, physical connection or adjacent location (at/on).")

// ========================================
== SECTOR [ s. ] // VECTOR OFFSET (ABOVE)

#lexicon-entry("s.", "modifier: [VECTOR HIGH] The Static dot. Indicates location above, on top of, or at a higher physical elevation.")

// ========================================
== SECTOR [ f. ] // VECTOR OFFSET (INSIDE)

#lexicon-entry("f.", "modifier: [VECTOR IN] The Vent dot. Indicates movement into or location inside a structure or port.")

// ========================================
== SECTOR [ h. ] // VECTOR OFFSET (OUTSIDE)

#lexicon-entry("h.", "modifier: [VECTOR OUT] The Exhaust dot. Indicates movement out of or location external to a structure.")

// ========================================
== SECTOR [ ng. ] // VECTOR OFFSET (BELOW)

#lexicon-entry("ng.", "modifier: [VECTOR LOW] The Drone dot. Indicates location below, underneath, or grounded beneath an object.")

// ========================================
== SECTOR [ i. ] // EXECUTION QUEUE (FUTURE)

#lexicon-entry("i.", "modifier: [QUEUED] The High-State dot. Indicates an action scheduled to happen (Future).")

// ========================================
== SECTOR [ a. ] // EXECUTION ACTIVE (PRESENT)

#lexicon-entry("a.", "modifier: [ACTIVE] The Neutral-State dot. Indicates an action currently executing (Present).")

// ========================================
== SECTOR [ u. ] // EXECUTION LOGGED (PAST)

#lexicon-entry("u.", "modifier: [LOGGED] The Low-State dot. Indicates an action that has concluded and written to memory (Past).")
