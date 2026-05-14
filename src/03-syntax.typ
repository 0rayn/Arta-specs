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
- `nit` (Verb)
- `tuk` (Modifier: Bricked/Unfunctional (Dead))
- `qri` (Target: Drone)
- `F` (Vector: Inside)
- `fasut` (Location)
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

== 3. The Hexadecimal Intensity Scale (Modifiers)
Arta handles adjectives and physical states via a Base-16 gradient using absolute boundaries. You do not need unique words for "hot" or "cold." You scale the noun.
- `0` = Absolute Zero / None / Dead
- `8` = Mid-range / Nominal
- `F` (Max/^) = Max Capacity / Critical

*Example: `fux` (Temperature/Coolant)*
- `0 fux` = Freezing
- `8 fux` = Warm
- `F fux` = Boiling / Critical Heat

== 4. Logic Gates and State Assignment
Survival requires automated reaction triggers. 

*[ THE IF/THEN LOOP ]*
- `C` = IF Gate.
- `=` = THEN Gate (triggers the condition).
> *Code:* `C A qri P = M fac sug .`
> *Translation:* "IF an active drone is OUTSIDE, THEN I flush the buffer."

*[ STATE ASSIGNMENT (THE COPULA) ]*
To assign an identity without a vulnerable "to be" verb, use the THEN gate (`=`) as a direct memory assignment.
> *Code:* `M = tuc .`
> *Translation:* "Host = Maintenance. (I am the mechanic)."

== 5. Data Polling (Queries)
Prefix a pointer or vector with the `Q` logic gate to execute an interrogative fetch request.
- `Q M .` = Query Host (Who am I?)
- `Q W .` = Query External (What is that?)
- `Q T .` = Query Vector (Where?)

== 6. Possession and File Ownership
To declare ownership of an object, use a Context Pointer directly before the noun as a modifier. You are attaching your Process ID to its memory block.
- `M qri` = Host Drone (My drone)
- `W sir` = External Wire (Its wire)
