#import "../lib/tarbit-theme.typ": arta

= The Machine Grammar

Arta was not born from poetry; it was compiled from necessity. Its grammar mirrors the rigid logic of the systems the Tarbits scavenge. There are no irregular verbs, no silent letters, and no exceptions to the rules. If the syntax does not compile, the meaning is lost.

== 1. The Dual-Mode Phonetics (Tactical vs. Hearth)
While the "Dead Pitch" rule strictly forbids the use of voiced vowels in the Silicon Wastes, human nature cannot be entirely overwritten. Arta operates in two distinct modes depending on the environment:

*[ TACTICAL MODE (DEVOICED) ]* \
Spoken in the Wastes and the Martas. All vowels are reduced to unvoiced, whispered air. It is harsh, entirely machine-like, and designed solely to bypass acoustic AI sensors.

*[ HEARTH MODE (VOICED) ]* \
Spoken only deep within the safety of the suspended enclaves. Here, Tarbits vocalize the power states (`[i]`, `[ə]`, `[u]`) as true, resonant vowels. Because voicing a vowel in the wild is a death sentence, speaking "Hearth Arta" to someone is the ultimate sign of intimacy and trust. It means: _"I know we are safe here with you."_ 

== 2. Absolute Morphology
Old World languages were bloated with historical baggage and unpronounced letters. Arta strips this down to 1:1 mapping. 

*[ NO SILENT LETTERS ]* \
What is written is exactly what is executed by the mouth. If a letter exists in a word, it carries acoustic data and must be pronounced.

== 3. Base-16 Mathematics (The Hex-Hand)
Humans traditionally count in Base-10 because they have ten fingers. The Tarbits live inside the metal, and the metal counts in Hexadecimal. To interact seamlessly with raw memory addresses, MAC addresses, and low-level hardware, Arta's counting system is strictly Base-16. To count to 16 on a single hand, Tarbits do not raise fingers; they use their hand as a physical memory grid.

*[ THE BIOLOGICAL HEX-GRID ]* \
The thumb acts as the *Cursor*. The remaining four fingers act as data columns (C0–C3). Each finger contains exactly four distinct touch-points: the Base (palm knuckle), the Lower Joint, the Upper Joint, and the Tip. By sliding the thumb across these points from right-to-left (Pinky to Index), a Tarbit maps exactly 16 values (0x0 to 0xF) on a single palm:

- *PINKY FINGER   (0x0 - 0x3):* Base (0), Lower (1), Upper (2), Tip (3)
- *RING FINGER    (0x4 - 0x7):* Base (4), Lower (5), Upper (6), Tip (7)
- *MIDDLE FINGER  (0x8 - 0xB):* Base (8), Lower (9), Upper (A), Tip (B)
- *INDEX FINGER   (0xC - 0xF):* Base (C), Lower (D), Upper (E), Tip (F)

This tactile system allows a scavenger to physically "hold" a hexadecimal memory address in their left hand in the dark, while their right hand operates a terminal or splices a live wire.

#v(1em)
#figure(
  image("../assets/howToCount.jpeg", width: 55%),
  caption: [
    #set text(font: "Liberation Mono", size: 8pt)
    RECOVERED SCHEMATIC: THE BIOLOGICAL HEX-GRID. \
    NOTE THE STARTING SECTOR (0x0) AT THE PINKY BASE AND ENDIANNESS TRACE.
  ]
)
#v(1em)

== 4. Stateful Execution and Context Switching

Arta operates as a stateful machine. To save bandwidth and carving time, sentences do not require a subject attached to every action. Instead, the language relies on *Context Switching*. 

The syntax of an executable command is strictly **Opcode-Register-Register**. The entity performing the action is determined by the currently active *Thread Context*.

*[ THREAD CONTEXTS (THE POINTERS) ]* \
A Tarbit declares an active thread using a standalone memory pointer. Once declared, every subsequent command is executed by that thread until a new context is declared.

- `[m.]` = Context: Local Host (I / Me)
- `[n.]` = Context: Local Cluster (We)
- `[k.]` = Context: Target Client (You)
- `[sh.]` = Context: External Node (It / They)

*[ SENTENCE ASSEMBLY ]* \
Pointers are *never* attached to opcodes. To build a command block, declare the Context Pointer, leave a physical gap, and then batch-execute your opcodes sequentially on the same line. 

> `[CONTEXT_POINTER]  [OPCODE] [REGISTER]` 

If chaining multiple commands under the *same* context, simply list them with physical gaps. The active thread will execute them in sequence. 

> `[CONTEXT_POINTER]  [OPCODE] [REGISTER]  [OPCODE] [REGISTER]`

The Execution Bus (`.`) acts as a hard interrupt. It is only used to close a logical condition or to terminate the current thread block so a new Context Pointer can take over.

> `[CONTEXT_1]  [OPCODE] [REGISTER]  .  [CONTEXT_2]  [OPCODE] [REGISTER]`

*Example: Batch Execution & Context Switching*
> "Local Host kills the drone and fetches the sensor. Target Client locks the door."
- `[m.]  [k' a s] [q' r i]  [c i r] [c i t']  .  [k.]  [q' u t'] [t' i k']`
- (Context Local Host: Kill Drone [Batch] Fetch Sensor . [INTERRUPT] Context Target Client: Lock Door)

== 5. The Execution Queue (Timeline Flags)

In Arta, time is not a fluid, philosophical concept; it is a system log. A Tarbit does not speak in past, present, or future tenses. Instead, they treat time as an *Execution Queue*. 

To indicate when an action happens, a Tarbit prepends the entire instruction with a *Timeline Flag*---a Power State bound to a Decimal Point (`.`)---acting as a header byte for the data packet. If no flag is present, the action defaults to the Present (Executing).

*[ THE QUEUE STATES ]*
- *[i.] (High State / Queued):* The instruction is scheduled. Represents the Future Tense.
- *[ə.] (Neutral State / Active):* The instruction is executing now. Represents the Present Tense.
- *[u.] (Low State / Logged):* The instruction has concluded and is cached. Represents the Past Tense.

*[ TIMELINE ASSEMBLY ]*
The timeline flag is spoken as a sharp, standalone whisper before the main command.
> `[FLAG]  [CONTEXT_POINTER]  [OPCODE]  [REGISTER]`

*Examples:*
- `[i.]  [m.]  [tʼ ə r]  [a r tʼ a]` = "Target Queue: Local Host will build the Arta system."
- `[u.]  [k.]  [kʼ ə s]  [ŋ i]` = "Cached Log: Target Client killed the power."

== 6. Logic Gates (Branching and Negation)

A Tarbit cannot rely purely on linear execution; survival requires conditional logic. Arta uses "Dotted" Logic Gates to create IF/THEN statements and Nullifiers.

*[ THE COMPARE GATE (IF) ]* \
To create a condition, append the `[c.]` (Relay Gate) modifier to the front of the phrase. The phrase is then followed by a Hardware Bus `.` to trigger the execution (THEN).
\
\
*[ THE INVERT GATE (NOT) ]* \
To negate a register or an opcode, place the `[x.]` (Friction Gate) modifier immediately before the target.
\
\
*Example 1: Affirmative Condition*
> "If drone here then Local Host kills power."
- `[c.]  [q' r i]  .  [m.]  [k' a s]  [ng i]`
- (If: Drone [THEN] Local Host kills Power)

*Example 2: Negative Condition* \
> "If no drone; no Local Host kills power."
\
- `[c.]  [x.]  [q' r i]  .  [x.]  [m.]  [k' a s]  [ng i]` \
  #arta("c.  x.  q' r i  .  x.  m.  k' a s  ng i") \
- (Gate: Null Drone [THEN] Null Local Host kills power)
\
*[ THE BOOLEAN GATES (AND / OR) ]* \
To chain multiple registers or conditions together, Tarbits use the Boolean Dots. They sit strictly between the two elements they are modifying.

- `[gh.]` (The AND Gate): Binds two elements. Both must be true/present.
- `[r.]` (The OR Gate): Branches two elements. Either can be true/present.

*Example 3: Boolean AND*
> "Local Host scavenges the drone and the sensor."
- `[m.]  [k' a x]  [q' r i]  [gh.]  [c i t']`
- (Local Host scavenges . Drone [AND] Sensor)

*Example 4: Complex Logic Branching*
> "If drone OR sensor here; Local Host kills power."
- `[c.]  [q' r i]  [r.]  [c i t']  .  [m.]  [k' a s]  [ng i]`
- (Gate: Drone [OR] Sensor [THEN] Local Host kills power)
\
== 7. Vector Offsets (Spatial Pointers)

Arta does not have prepositions; it uses *Vector Offsets*. When a Tarbit needs to specify a physical location, they place a Directional Dot immediately before the target register, treating the target as a base memory address and the dot as the spatial offset.

*[ THE OFFSETS ]* \
- `[f.]` (Vent): Inside / Into
- `[h.]` (Exhaust): Outside / Out of
- `[s.]` (Static): Above / Over
- `[ng.]` (Drone): Below / Under
- `[t'.]` (Switch): At / Pinned to

*Example 1: Internal Location*
> "Local Host hides in the sanctuary."
- `[m.]  [q' u]  [f.]  [q' a]` 
- (Local Host locks . [Vector In] Sanctuary)

*Example 2: Grounded Location*
> "The coolant is under the drone."
- `[f u x]  [ng.]  [q' r i]`
- (Coolant . [Vector Low] Drone)

== 8. Data Polling (Questions)

A Tarbit does not use question words like "Who, What, Where, or Why." They execute a Data Poll. By placing the `[q'.]` (Query Flag) at the beginning of a phrase, the sentence becomes a `GET` request waiting for a return variable.

*[ POLLED EXECUTION ]*
> "Did the drone kill the power?"
- `[q'.]  [u.]  [sh.]  [k' a s]  [ng i]`
- (Query . Past . External Node kills Power?)

*[ SPATIAL POLLING (WHERE) ]*
To ask "Where," a Tarbit simply polls a Vector Offset.
> "Where is the sanctuary?"
- `[q'.]  [f.]  [q' a]`
- (Query . Inside . Sanctuary?)

== 9. Operator Overloading (The ALU Modifiers)

The Arithmetic Logic Unit (ALU) symbols do more than just math. When placed before a word, they act as parameter modifiers. Their exact physical translation depends entirely on the data type (Register vs. Opcode) they are modifying.

*[ THE DECREMENT (`-`) ]*
- *Applied to an Opcode (Throttle):* Executes the action slowly, quietly, or with low power.
- `- [m.]  [k' a x]` (Local Host slowly scavenges)
- *Applied to a Register (Scale Down):* Modifies the object to be small, light, or minor.
- `- [s i r]` (A small wire)

*[ THE INCREMENT (`+`) ]*
- *Applied to an Opcode (Overclock):* Executes the action rapidly, aggressively, or with high power.
- `+ [m.]  [f i r]` (Local Host runs fast)
- *Applied to a Register (Scale Up):* Modifies the object to be large, heavy, or major.
- `+ [q' r i]` (A massive drone / A heavy drone)

*[ THE MULTIPLIER (`*`) ]*
- *Applied to an Opcode (Loop):* Executes the action repeatedly or continuously.
- `* [m.]  [h i sh]` (Local Host repeatedly broadcasts)
- *Applied to a Register (The Absolute Plural):* Allocates an array of multiple instances. This serves as the universal plural marker. 
  - `* [t' a r]` (Builders)
  - `* [q' r i]` (A drone swarm / Many drones)

== 10. Data Allocation (Namespaces and Pointers)

Just as ALU operators change their function depending on what they modify, Arta overloads Context Pointers and Vector Offsets to manage physical inventory and spatial pointing.

*[ NAMESPACES (POSSESSION) ]* \
To claim possession of a physical object, a Tarbit treats their Context Pointer as a namespace. Placing a Context Pointer directly before a Register (instead of an Opcode) assigns ownership of that data block.

- `[m.]` (Local Host Namespace / My)
- `[n.]` (Local Cluster Namespace / Our)
- `[k.]` (Target Client Namespace / Your)
- `[sh.]` (External Node Namespace / Their / Its)

*Example: Possession*
> "Local Host scavenges Target Client's wire."
- `[m.]  [k' a x]  .  [k.]  [s i r]`
- (Local Host scavenges [THEN] Client's wire)

*[ MEMORY POINTERS (DEMONSTRATIVES) ]* \
When a Tarbit needs to distinguish between two identical objects in physical space (This vs. That), they overload the In/Out Vector Offsets to act as local and external memory pointers.

- `[f.]` (Local Pointer / THIS): The object is "In" the immediate vicinity or in hand.
- `[h.]` (External Pointer / THAT): The object is "Out" of reach or distant.

*Example: Pointing*
> "This tool is broken. Local Host needs that tool."
- `[x.]  [f.]  [t' u c]  .  [m.]  [c i r]  [h.]  [t' u c]`
- (Null This tool [THEN] Local Host fetches That tool)
