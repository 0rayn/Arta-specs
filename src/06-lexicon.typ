#import "../lib/tarbit-theme.typ": arta
#import "../lib/tarbit-theme.typ": lexicon-entry

= The Scavenger's Lexicon: Compiled Archive

#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \
  The Arta dictionary is mapped directly to standard QWERTY inputs. The logic system loads contiguous baseline acoustic signals first (Lowercase). Once the physical hardware is established, execution crosses the *Shift Boundary* to process syntax modifiers (Uppercase).

  #v(1em)
  #align(center)[
    #table(
      columns: (110pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*QWERTY MAP*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      text(font: "monospace")[Lowercase], [*Grid Hums*], [`m, n, k, w`],
      text(font: "monospace")[Lowercase], [*Relays/Switches*], [`t, q, c, p`],
      text(font: "monospace")[Lowercase], [*Static & Vents*], [`s, x, f, v`],
      text(font: "monospace")[Lowercase], [*Failing Motors*], [`r, g`],
      text(font: "monospace")[Lowercase], [*Power States*], [`i, a, u`],
      
      table.cell(colspan: 3, fill: rgb("#eeeeee"), align: center, inset: 0.8em)[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE SHIFT BOUNDARY (MODIFIERS) ---]
      ],
      
      text(font: "monospace")[Uppercase], [*Context Pointers*], [`M, N, K, W`],
      text(font: "monospace")[Uppercase], [*Timeline Flags*], [`I, A, U`],
      text(font: "monospace")[Uppercase], [*Logic Gates*], [`C, X, R, V, Q`],
      text(font: "monospace")[Uppercase], [*Vector Offsets*], [`T, S, F, P, G`],
      text(font: "monospace")[System Keys], [*Execution Triggers*], [`. , ..`]
    )
  ]
]
#v(2em)

// ========================================
== SECTOR [ n ] // HIGH GRID WHINE

#lexicon-entry("nit", "verb: To execute an optical fetch or visual ping of the immediate environment.")

// ========================================
== SECTOR [ w ] // MID STATIC

#lexicon-entry("wiw", "verb: To echo or output a raw signal through a hardware terminal.")
#lexicon-entry("wuw", "verb: To place a system into a low-voltage idle or standby state.")

// ========================================
== SECTOR [ t ] // SHARP SWITCH

#lexicon-entry("tiq", "noun: A logical pointer directing execution to a specific hardware address.")
#lexicon-entry("tuk", "modifier: A physical hardware component that is present but permanently unfunctional; a bricked or burned-out circuit.")
#lexicon-entry("tuc", "noun: A physical, hand-held maintenance tool.")

// ========================================
== SECTOR [ q ] // HEAVY BREAKER

#lexicon-entry("qri", "noun: An active, autonomous Martas defense drone.")
#lexicon-entry("qix", "verb: To permanently flash or burn data onto a hardened ROM chip.")
#lexicon-entry("qa", "noun: A physically insulated, offline sanctuary safe from network intrusion.")
#lexicon-entry("qax", "verb: To physically strip or scavenge a hardware component.")
#lexicon-entry("qut", "verb: To logically partition or reserve a sector of raw storage.")

// ========================================
== SECTOR [ c ] // MAGNETIC RELAY

#lexicon-entry("cit", "noun: An environmental or industrial hardware sensor.")
#lexicon-entry("cir", "verb: To fetch or read raw data from a specific memory address.")
#lexicon-entry("cac", "verb: To physically splice or bridge two live electrical wires.")

// ========================================
== SECTOR [ s ] // HIGH STATIC

#lexicon-entry("sir", "noun: A physical copper wire or data bus.")
#lexicon-entry("sug", "noun: A temporary data buffer or holding queue.")

// ========================================
== SECTOR [ x ] // FRICTION SCRAPE

#lexicon-entry("xiw", "noun: A mid-frequency radio transmission or broadcast signal.")
#lexicon-entry("xa", "noun: An empty, unwritten sector of memory; a null pointer.")

// ========================================
== SECTOR [ f ] // PRESSURE VENT

#lexicon-entry("fir", "verb: To execute a continuous software process or loop.")
#lexicon-entry("fac", "verb: To securely flush a buffer or drop a software connection.")
#lexicon-entry("fasut", "noun: A static liquid storage matrix, coolant vat, or uncirculated slurry basin.")
#lexicon-entry("fux", "noun: Liquid coolant or industrial fluid used in thermal management.")

// ========================================
== SECTOR [ v ] // PLATTER SPIN

#lexicon-entry("vaw", "verb: To aggressively overclock a hardware component.")

// ========================================
== SECTOR [ a ] // NEUTRAL POWER STATE

#lexicon-entry("arta", "noun: The root execution language and underlying logic of the enclave.")

// ========================================
== SECTOR [ M ] // CONTEXT (HOST)

#lexicon-entry("M", "prefix: [HOST] Binds an opcode to the speaker (I/Me), or assigns local possession (My).")

// ========================================
== SECTOR [ N ] // CONTEXT (CLUSTER)

#lexicon-entry("N", "prefix: [CLUSTER] Binds an opcode to the speaker's group (We), or assigns group possession (Our).")

// ========================================
== SECTOR [ K ] // CONTEXT (CLIENT)

#lexicon-entry("K", "prefix: [CLIENT] Binds an opcode to the target (You), or assigns target possession (Your).")

// ========================================
== SECTOR [ W ] // CONTEXT (EXTERNAL)

#lexicon-entry("W", "prefix: [EXTERNAL] Binds an opcode to a third-party, or assigns external possession.")

// ========================================
== SECTOR [ C ] // LOGIC GATE (IF)

#lexicon-entry("C", "modifier: [IF GATE] Evaluates the following phrase as a condition.")

// ========================================
== SECTOR [ X ] // LOGIC GATE (NOT)

#lexicon-entry("X", "modifier: [NOT GATE] Inverts or nullifies the following opcode or register.")

// ========================================
== SECTOR [ V ] // LOGIC GATE (AND)

#lexicon-entry("V", "modifier: [AND GATE] Binds two conditions or opcodes together on a single logical track.")

// ========================================
== SECTOR [ R ] // LOGIC GATE (OR)

#lexicon-entry("R", "modifier: [OR GATE] Offers a diverging branch between two choices.")

// ========================================
== SECTOR [ Q ] // LOGIC GATE (QUERY)

#lexicon-entry("Q", "modifier: [QUERY] Casts the following phrase as a polling request for data (Question).")

// ========================================
== SECTOR [ T ] // VECTOR (AT)

#lexicon-entry("T", "modifier: [VECTOR AT] Indicates an exact, physical connection or adjacent location.")

// ========================================
== SECTOR [ S ] // VECTOR (ABOVE)

#lexicon-entry("S", "modifier: [VECTOR ABOVE] Indicates location above, on top of, or at a higher physical elevation.")

// ========================================
== SECTOR [ F ] // VECTOR (INSIDE)

#lexicon-entry("F", "modifier: [VECTOR IN / THIS] Indicates movement inside, or acts as a local memory pointer.")

// ========================================
== SECTOR [ P ] // VECTOR (OUTSIDE)

#lexicon-entry("P", "modifier: [VECTOR OUT / THAT] Indicates movement outside, or acts as an external memory pointer.")

// ========================================
== SECTOR [ G ] // VECTOR (BELOW)

#lexicon-entry("G", "modifier: [VECTOR BELOW] Indicates location below, underneath, or grounded.")

// ========================================
== SECTOR [ I ] // QUEUE (FUTURE)

#lexicon-entry("I", "modifier: [QUEUED] Indicates an action scheduled to happen (Future).")

// ========================================
== SECTOR [ A ] // ACTIVE (PRESENT)

#lexicon-entry("A", "modifier: [ACTIVE] Indicates an action currently executing (Present).")

// ========================================
== SECTOR [ U ] // LOGGED (PAST)

#lexicon-entry("U", "modifier: [LOGGED] Indicates an action that has concluded and written to memory (Past).")

// ========================================
== SECTOR [ . ] // SYSTEM LOGIC

#lexicon-entry(".", "modifier: [EXECUTION TRIGGER] The Hardware Bus. Acts as a 'THEN' gate.")
#lexicon-entry("..", "modifier: [SYSTEM HALT / EOF] End of File. Clears all active thread contexts.")
