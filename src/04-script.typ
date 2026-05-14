#import "../lib/tarbit-theme.typ": glyph

= The Scavenger's Script (Orthography)

Because carving curves into metal is slow, loud, and leaves jagged edges, the physical Arta script is angular. It is built entirely on the 7 lines of a standard digital LED display, plus a Decimal Point (DP).

== 1. The QWERTY Hardware Map (The Shift Boundary)
Arta is mapped to standard QWERTY for rapid terminal entry. The most critical aspect of written Arta is the *Shift Boundary*.

- *Lowercase (Data Layer):* Represents physical acoustic hardware. These shapes are built using only the main 7 segments. 
- *Uppercase (Control Layer):* Represents System Modifiers. By pressing `SHIFT` on a terminal, a Tarbit elevates a raw sound into a command. 

Physically, a Tarbit creates an Uppercase modifier by carving the exact same shape as the Lowercase letter, but adding the *Execution Dot (Decimal Point)* in the bottom right corner.

*[ EXAMPLE: THE 'A' REGISTER ]*
- `a` (Neutral Power State): #glyph("g") (Middle bar only).
- `A` (Active Timeline Flag): #glyph("gp") (Middle bar + DP). The dot tells the Martas OS: "This is a system command, not raw data."

== 2. The Execution Bus
When the Decimal Point (`.`) sits alone in its own character box #glyph("p"), it acts as the Hardware Bus. It executes the current instruction string and clears the Context Pointer memory stack.
