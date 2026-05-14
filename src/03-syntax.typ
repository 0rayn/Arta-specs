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
Humans traditionally count in Base-10 because they have ten fingers. The Tarbits live inside the metal, and the metal counts in Hexadecimal. To interact seamlessly with raw memory addresses, MAC addresses, and low-level hardware, Arta's counting system is strictly Base-16. 

*[ THE BIOLOGICAL HEX-GRID ]* \
The thumb acts as the *Cursor*. The remaining four fingers act as data columns (C0–C3). Each finger contains exactly four distinct touch-points: the Base, the Lower Joint, the Upper Joint, and the Tip. By sliding the thumb across these points from right-to-left (Pinky to Index), a Tarbit maps exactly 16 values (0x0 to 0xF) on a single palm.

== 4. Stateful Execution and Context Switching
Arta operates as a stateful machine. To save bandwidth and carving time, sentences do not require a subject attached to every action. Instead, the language relies on *Context Switching*. 

The syntax of an executable command is strictly **Opcode-Register-Register**. The entity performing the action is determined by the currently active *Thread Context*.

*[ THREAD CONTEXTS (THE POINTERS) ]* \
- `[M]` = Context: Local Host (I / Me)
- `[N]` = Context: Local Cluster (We)
- `[K]` = Context: Target Client (You)
- `[W]` = Context: External Node (It / They)

*[ SENTENCE ASSEMBLY ]* \
Pointers are *never* attached to opcodes. To build a command block, declare the Context Pointer, leave a physical gap, and then batch-execute your opcodes sequentially on the same line. 

> `[CONTEXT_POINTER]  [OPCODE] [REGISTER]` 

If chaining multiple commands under the *same* context, simply list them with physical gaps. The active thread will execute them in sequence. The Execution Bus (`.`) acts as a hard interrupt. It is only used to close a logical condition or to terminate the current thread block so a new Context Pointer can take over.

*Example: Batch Execution & Context Switching*
> "Local Host kills the drone and fetches the sensor. Target Client locks the door."
- Keystrokes: `M jas qri cir cit . K qut tij`
- Arta: #arta("M jas qri cir cit . K qut tij")

== 5. The Execution Queue (Timeline Flags)
In Arta, time is not a fluid, philosophical concept; it is a system log. A Tarbit does not speak in past, present, or future tenses. Instead, they treat time as an *Execution Queue*. 

To indicate when an action happens, a Tarbit prepends the entire instruction with a *Timeline Flag*---a Power State bound to a Decimal Point (`.`)---acting as a header byte for the data packet.

*[ THE QUEUE STATES ]*
- *[I] (High State / Queued):* The instruction is scheduled. (Future).
- *[A] (Neutral State / Active):* The instruction is executing now. (Present).
- *[U] (Low State / Logged):* The instruction has concluded and is cached. (Past).

*Example:*
> "Target Queue: Local Host will build the Arta system."
- Keystrokes: `I M tar arta`
- Arta: #arta("I M tar arta")

== 6. Logic Gates (Branching and Negation)
A Tarbit cannot rely purely on linear execution; survival requires conditional logic. Arta uses "Dotted" Logic Gates to create IF/THEN statements and Nullifiers.

*[ THE COMPARE GATE (IF) ]* \
To create a condition, append the `[C]` (Relay Gate) modifier to the front of the phrase. The phrase is then followed by a Hardware Bus `.` to trigger the execution (THEN).

*[ THE INVERT GATE (NOT) ]* \
To negate a register or an opcode, place the `[X]` (Friction Gate) modifier immediately before the target.

*Example 1: Affirmative Condition*
> "If drone here then Local Host kills power."
- Keystrokes: `C qri . M jas gi`
- Arta: #arta("C qri . M jas gi")

*[ THE BOOLEAN GATES (AND / OR) ]* \
To chain multiple registers or conditions together, Tarbits use the Boolean Dots. They sit strictly between the two elements they are modifying.

- `[V]` (The AND Gate): The Platter dot. Binds two elements. Both must be true/present.
- `[R]` (The OR Gate): The Motor dot. Branches two elements. Either can be true/present.

*Example 2: Complex Logic Branching*
> "If drone OR sensor here; Local Host kills power."
- Keystrokes: `C qri R cit . M jas gi`
- Arta: #arta("C qri R cit . M jas gi")

== 7. Vector Offsets (Spatial Pointers)
Arta does not have prepositions; it uses *Vector Offsets*. When a Tarbit needs to specify a physical location, they place a Directional Dot immediately before the target register.

*[ THE OFFSETS ]* \
- `[F]` (Vent): Inside / Into
- `[H]` (Exhaust): Outside / Out of
- `[S]` (Static): Above / Over
- `[G]` (Drone): Below / Under
- `[T]` (Switch): At / Pinned to

*Example 1: Grounded Location*
> "The coolant is under the drone."
- Keystrokes: `fux G qri`
- Arta: #arta("fux G qri")

== 8. Data Polling (Questions)
A Tarbit does not use question words like "Who, What, Where, or Why." They execute a Data Poll. By placing the `[Q]` (Query Flag) at the beginning of a phrase, the sentence becomes a `GET` request waiting for a return variable.

*[ POLLED EXECUTION ]*
> "Did the external node kill the power?"
- Keystrokes: `Q U W jas gi`
- Arta: #arta("Q U W jas gi")

== 9. Operator Overloading (The ALU Modifiers)
The Arithmetic Logic Unit (ALU) symbols do more than just math. When placed before a word, they act as parameter modifiers.

- `[-]` (Decrement): Applied to an Opcode (Slow/Quiet) or a Register (Scale Down).
- `[+]` (Increment): Applied to an Opcode (Overclock/Fast) or a Register (Scale Up).
- `[*]` (Multiplier): Applied to an Opcode (Loop) or a Register (Absolute Plural/Array).
- `[/]` (Divide): Applied to an Opcode (Stutter) or a Register (Fragmented/Broken).
- `[=]` (Assign): Applied to an Opcode (Force Override) or a Register (Exact Clone).

== 10. Data Allocation (Namespaces and Pointers)
Placing a Context Pointer directly before a Register (instead of an Opcode) assigns ownership of that data block.

- `[M]` (Local Host Namespace / My)
- `[N]` (Local Cluster Namespace / Our)
- `[K]` (Target Client Namespace / Your)
- `[W]` (External Node Namespace / Their / Its)

When a Tarbit needs to distinguish between two identical objects in physical space (This vs. That), they overload the In/Out Vector Offsets to act as local and external memory pointers.

- `[F]` (Local Pointer / THIS): The object is "In" the immediate vicinity or in hand.
- `[H]` (External Pointer / THAT): The object is "Out" of reach or distant.
