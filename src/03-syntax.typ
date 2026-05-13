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
Humans traditionally count in Base-10 because they have ten fingers. The Tarbits live inside the metal, and the metal counts in Hexadecimal. To interact seamlessly with raw memory addresses, MAC addresses, and low-level hardware, Arta's counting system is strictly Base-16. To count to 16 on a single hand, Tarbits do not raise fingers ; they use their hand as a physical memory grid.

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

== 4. Assembly Syntax (V-O-O)
A Arta sentence operates like an Assembly Language instruction (`MOV DEST, SRC`). The syntax strictly follows a Verb-Object-Object structure. The Subject (the one executing the command) is not a separate word ; it is a one-letter prefix attached directly to the verb.

*[ THE SUBJECT PREFIXES ]* \
- `[m.]` = I / Me (First Person)
- `[n.]` = We (First Person Plural)
- `[k.]` = You / Target (Second Person)
- `[sh.]` = He / She / It / They (External Pointer)

*[ SENTENCE ASSEMBLY ]* \
To build a sentence, you attach the prefix to the root verb, followed by the target objects.

> `[PREFIX].[VERB] [OBJECT_1] [OBJECT_2]`

*Example:* If `[tʼ ə r]` is "to build", and `[ŋ i]` is "power":
- `[m.tʼ ə r] [ŋ i]` = "I build power."
- `[k.kʼ ə s] [ŋ i]` = "You kill the power."

== 5. The Execution Queue (Timeline Flags)

In Arta, time is not a fluid, philosophical concept; it is a system log. A Tarbit does not speak in past, present, or future tenses. Instead, they treat time as an *Execution Queue*. 

To indicate when an action happens, a Tarbit prepends the entire instruction with a *Timeline Flag*---a Power State bound to a Decimal Point (`.`)---acting as a header byte for the data packet. If no flag is present, the action defaults to the Present (Executing).

*[ THE QUEUE STATES ]*
- *[i.] (High State / Queued):* The instruction is scheduled. Represents the Future Tense.
- *[ə.] (Neutral State / Active):* The instruction is executing now. Represents the Present Tense.
- *[u.] (Low State / Logged):* The instruction has concluded and is cached. Represents the Past Tense.

*[ TIMELINE ASSEMBLY ]*
The timeline flag is spoken as a sharp, standalone whisper before the main command.

> `[FLAG] [PREFIX].[VERB] [OBJECT]`

*Examples:*
- `[i.] [m.tʼ ə r] [a r tʼ a]` = "Target Queue: I will build the Arta system."
- `[u.] [k.kʼ ə s] [ŋ i]` = "Cached Log: You killed the power."

== 6. Logic Gates (Branching and Negation)

A Tarbit cannot rely purely on linear execution; survival requires conditional logic. Arta uses "Dotted" Logic Gates to create IF/THEN statements and Nullifiers.

*[ THE COMPARE GATE (IF) ]* \
To create a condition, append the `[c.]` (Relay Gate) modifier to the front of the phrase. The phrase is then followed by a Hardware Bus `.` to trigger the execution (THEN).
\
\
*[ THE INVERT GATE (NOT) ]* \
To negate an object or an action, place the `[x.]` (Friction Gate) modifier immediately before the target word.
\
\

*Example 1: Affirmative Condition*
> "If drone here then kill power."
- `[c.] [q' r i] . [m.k' a s] [ng i]`
- (If: Drone [THEN] I-kill Power)

*Example 2: Negative Condition* \
> "If no drone; no I kill power." \
- `[c.] [x.] [q' r i] . [x.] [m.k' a s] [ng i]` \
  #arta("c.  q' r i  r.  c i t'  .  k' a s  ng i") \
- (Gate: Null Drone [THEN] Null I kill power)
\
*[ THE BOOLEAN GATES (AND / OR) ]* \
To chain multiple objects or conditions together, Tarbits use the Boolean Dots. They sit strictly between the two elements they are modifying.

- `[k'.]` (The AND Gate): Binds two elements. Both must be true/present.
- `[r.]` (The OR Gate): Branches two elements. Either can be true/present.

*Example 1: Boolean AND*
> "I scavenge the drone and the sensor."
- `[m.k' a x] [q' r i] [k'.] [c i t']`
- (I scavenge . Drone [AND] Sensor)

*Example 2: Complex Logic Branching*
> "If drone OR sensor here; kill power."
- `[c.] [q' r i] [r.] [c i t'] . [k' a s] [ng i]`
- (Gate: Drone [OR] Sensor . kill power)
\
== 7. Vector Offsets (Spatial Pointers)

Arta does not have prepositions; it uses *Vector Offsets*. When a Tarbit needs to specify a physical location, they place a Directional Dot immediately before the target object, treating the target as a base memory address and the dot as the spatial offset.

*[ THE OFFSETS ]* \
- `[f.]` (Vent): Inside / Into
- `[h.]` (Exhaust): Outside / Out of
- `[s.]` (Static): Above / Over
- `[ng.]` (Drone): Below / Under
- `[t'.]` (Switch): At / Pinned to

*Example 1: Internal Location*
> "I hide in the sanctuary."
- `[m.q' u] [f.] [q' a]` 
- (I lock . [Vector In] Sanctuary)

*Example 2: Grounded Location*
> "The coolant is under the drone."
- `[f u x] [ng.] [q' r i]`
- (Coolant . [Vector Low] Drone)

== 8. Data Polling (Questions)

A Tarbit does not use question words like "Who, What, Where, or Why." They execute a Data Poll. By placing the `[q'.]` (Query Flag) at the beginning of a phrase, the sentence becomes a `GET` request waiting for a return variable.

*[ POLLED EXECUTION ]*
> "Did the drone kill the power?"
- `[q'.] [u.] [sh.k' a s] [ng i]`
- (Query . Past . It kills Power?)

*[ SPATIAL POLLING (WHERE) ]*
To ask "Where," a Tarbit simply polls a Vector Offset. 
> "Where is the sanctuary?"
- `[q'.] [f.] [q' a]`
- (Query . Inside . Sanctuary?)

== 9. Operator Overloading (The ALU Modifiers)

The Arithmetic Logic Unit (ALU) symbols do more than just math. When placed before a word, they act as parameter modifiers. Their exact physical translation depends entirely on the data type (Noun vs. Verb) they are modifying.

*[ THE DECREMENT (`-`) ]*
- *Applied to an Opcode (Throttle):* Executes the action slowly, quietly, or with low power.
  - `- [m.k' a x]` (I slowly scavenge)
- *Applied to a Register (Scale Down):* Modifies the object to be small, light, or minor.
  - `- [s i r]` (A small wire)

*[ THE INCREMENT (`+`) ]*
- *Applied to an Opcode (Overclock):* Executes the action rapidly, aggressively, or with high power.
  - `+ [m.f i r]` (I run fast)
- *Applied to a Register (Scale Up):* Modifies the object to be large, heavy, or major.
  - `+ [q' r i]` (A massive drone / A heavy drone)

*[ THE MULTIPLIER (`*`) ]*
- *Applied to an Opcode (Loop):* Executes the action repeatedly or continuously.
  - `* [m.h i sh]` (I repeatedly broadcast)
- *Applied to a Register (The Absolute Plural):* Allocates an array of multiple instances. This serves as the universal plural marker. 
  - `* [t' a r]` (Builders)
  - `* [q' r i]` (A drone swarm / Many drones)

  == 10. Data Allocation (Namespaces and Pointers)

Just as ALU operators change their function depending on what they modify, Arta overloads Subject Prefixes and Vector Offsets to manage physical inventory and spatial pointing.

*[ NAMESPACES (POSSESSION) ]* \
To claim possession of a physical object, a Tarbit treats their Subject Prefix as a namespace. Attaching a Subject Prefix directly to a Noun (instead of a Verb) assigns ownership of that register.

- `[m.]` (My)
- `[n.]` (Our)
- `[k.]` (Your)
- `[sh.]` (Their / Its)

*Example: Possession*
> "I scavenge your wire."
- `[m.k' a x]  .  [k.s i r]`
- (I-scavenge [THEN] Your-wire)

*[ MEMORY POINTERS (DEMONSTRATIVES) ]* \
When a Tarbit needs to distinguish between two identical objects in physical space (This vs. That), they overload the In/Out Vector Offsets to act as local and external memory pointers.

- `[f.]` (Local Pointer / THIS): The object is "In" the immediate vicinity or in hand.
- `[h.]` (External Pointer / THAT): The object is "Out" of reach or distant.

*Example: Pointing*
> "This tool is broken. I need that tool."
- `[x.] [f.t' u c]  .  [m.c i r]  [h.t' u c]`
- (Null This-tool [THEN] I-fetch That-tool)