#import "../lib/tarbit-theme.typ": arta

= Syntax Paradigm: Function Calls

Arta does not use traditional grammar. It uses a strict functional programming syntax. Every statement follows an Object -> Method -> Arguments structure. If you format your parameters wrong, the Martas acoustic sensors will throw a fatal exception (meaning: they will kill you).

== 1. The Syntax Tree
In standard programming logic, the syntax looks like this:
`Context.Execute( Verb, [Modifier], Target, [Vector], [Location] );`

When you "speak" a sentence in Arta, you declare the Context Pointer, open the execution bus, and pass a string of parameters in a highly specific order, ending with the Hardware Bus (`.`).

> `[CONTEXT][TIMELINE] [Verb] [Modifier] [Target] [Vector] [Location] .`

*Example:* "I saw a dead drone inside the pool."
- `M` (Host Context)
- `U` (Past Timeline)
- `nit` (Verb: Optical fetch / See)
- `tuk` (Modifier: Bricked/Unfunctional)
- `qri` (Target: Drone)
- `F` (Vector: Inside)
- `fasut` (Location: Liquid matrix / Pool)
- `.` (Execution Trigger)

*Compiled String:* `MU nit tuk qri F fasut .`

== 2. The Control Layer (Uppercase Pointers)
The Shift Boundary dictates that uppercase letters control the flow of data.

*[ CONTEXT POINTERS (Who is executing?) ]*
- `M` = Host / I
- `N` = Cluster / We
- `K` = Client / You
- `W` = External / It / They

*[ TIMELINE FLAGS (When does it execute?) ]*
- `I` = Future / Queued
- `A` = Present / Active
- `U` = Past / Logged

*Note:* Context is "sticky." Once declared (e.g., `M`), it remains active for all chained operations until a new pointer is declared or the bus (`.`) drops.

== 3. The ALU Intensity Scale (Modifiers)
Arta handles adjectives, adverbs, and physical states using Arithmetic Logic Unit (ALU) operators. Modifiers are carved as discrete tokens (separated by a space) and apply their logic to the immediate next word.

The effect of the ALU operator changes depending on whether the target is a Noun (mass/state) or a Verb (clock speed).

*[ INCREMENT (+) ]*
- **Noun (Mass):** Heavy, large, or maximum state. (`+ tuc` = Sledgehammer)
- **Verb (Clock Speed):** Faster, aggressive execution. (`+ nit` = Scan quickly / Glance)

*[ DECREMENT (-) ]*
- **Noun (Mass):** Light, precise, or minimum state. (`- tuc` = Scalpel)
- **Verb (Clock Speed):** Slower, throttled execution. (`- nit` = Inspect slowly / Stare)

*[ MULTIPLY (\*) ]*
- **Noun (Array):** A plural group or swarm. (`* qri` = A swarm of drones)
- **Verb (Loop):** Repeated, continuous execution. (`* nit` = Blink / Strobe)

*[ DIVIDE (/) ]*
- **Noun (Fragment):** A fraction, piece, or drop. (`/ sir` = A piece of wire)

*(Note: The numeral `0` remains the absolute Null flag. `0 fux` means "no coolant is present".)*

== 4. Base-16 Mathematics (The Hex-Hand)
Old World legacy humans counted in Base-10 because they had ten fingers. The Tarbits live inside the metal, and the metal counts in Hexadecimal. To interact seamlessly with raw memory addresses, MAC addresses, and low-level hardware, a Tarbit's counting system is strictly Base-16.

To count to 16 on a single hand, Tarbits do not raise fingers—they use their hand as a physical memory grid.

*[ THE BIOLOGICAL HEX-GRID ]*
The thumb acts as the *Cursor*. The remaining four fingers act as data columns. Each finger contains exactly four distinct touch-points: the Base (palm knuckle), the Lower Joint, the Upper Joint, and the Tip.

By sliding the thumb across these points following a strict left-to-right *Count Direction* (Pinky to Index), a Tarbit maps exactly 16 values (`0x0` to `0xF`) on a single palm:

- *PINKY FINGER   (0x0 - 0x3):* Base (0x0), Lower (0x1), Upper (0x2), Tip (0x3)
- *RING FINGER    (0x4 - 0x7):* Base (0x4), Lower (0x5), Upper (0x6), Tip (0x7)
- *MIDDLE FINGER  (0x8 - 0xB):* Base (0x8), Lower (0x9), Upper (0xA), Tip (0xB)
- *INDEX FINGER   (0xC - 0xF):* Base (0xC), Lower (0xD), Upper (0xE), Tip (0xF)

This tactile system allows a scavenger to physically "hold" a hexadecimal memory address in one hand in the dark, while the other hand operates a terminal or splices a live wire.
#v(1em)
#figure(
  image("../assets/howToCount.jpeg", width: 51.9%),
  caption: [
    #set text(font: "Liberation Mono", size: 8pt)
    RECOVERED SCHEMATIC: THE BIOLOGICAL HEX-GRID. \
    NOTE THE STARTING SECTOR (0x0) AT THE PINKY BASE AND ENDIANNESS TRACE.
  ]
)
#v(1em)

== 5. Logic Gates and State Assignment
Survival requires automated reaction triggers. 

*[ THE REDIRECT/THEN GATE ( > ) ]*
The `>` symbol (Shift + .) is used to redirect logic. 
- `C` = IF Gate.
- `>` = THEN Gate (Routes the condition to the execution).
> *Code:* `CA qri P > M fac sug .`
> *Translation:* "IF an active drone is OUTSIDE, THEN I flush the buffer."

*[ STATE ASSIGNMENT (THE COPULA) ]*
To assign an identity without a vulnerable "to be" verb, use the Redirect gate (`>`) as a direct memory assignment.
> *Code:* `M > tuc .`
> *Translation:* "Host -> Maintenance. (I am the mechanic)."

== 6. Data Polling (Queries)
Prefix a pointer or vector with the `Q` logic gate to execute an interrogative fetch request.
- `QM .` = Query Host (Who am I?)
- `QW .` = Query External (What is that?)
- `QT .` = Query Vector (Where?)

== 7. Possession and File Ownership
To declare ownership of an object, use a Context Pointer directly before the noun as a modifier. You are attaching your Process ID to its memory block.
- `M qri` = Host Drone (My drone)
- `W sir` = External Wire (Its wire)
