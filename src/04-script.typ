#import "../lib/tarbit-theme.typ": glyph

= The Scavenger's Script (Orthography)

It is not that paper and ink ceased to exist in the Wastes; it is that paper cannot interface with a motherboard. When a Tarbit patches a cyberdeck into a dormant Old World server, the data must be output to the human eye. 

High-resolution LCDs and OLED screens are useless to a scavenger—their delicate liquid crystals bled out, and their micro-traces corroded decades ago. The only display technology robust enough to survive the Rust Oceans is the 7-segment LED block. 

The 7-segment diode architecture is the cockroach of the Old World ecosystem. It draws almost zero voltage, requires minimal logic to drive, and is easily salvaged from broken microwaves, alarm clocks, and industrial control panels. The visual script of Arta was not invented by poets; it was dictated by the only surviving screens. When Tarbits *do* carve messages into blast doors or rusted chassis, they are simply mimicking the brutalist output of their cyberdecks.

== 1. The QWERTY Hardware Map (The Shift Boundary)

Arta is mapped directly to standard Old World QWERTY keyboards for rapid terminal entry. The most critical aspect of reading and writing Arta is the *Shift Boundary*.

- *Lowercase (The Data Layer):* Represents physical acoustic sounds. These baseline shapes are rendered using *only* the 7 main straight lines of the display. 
- *Uppercase (The Control Layer):* Represents System Modifiers. On a cyberdeck, a Tarbit holds the `SHIFT` key to elevate a raw sound into a system command. 

*The Visual Output:* How does a 7-segment display show a capitalized letter? It doesn't have the pixels for it. Instead, the hardware renders an Uppercase modifier by displaying the exact same shape as the Lowercase letter, but illuminating the *Execution Dot (Decimal Point)* in the bottom right corner of the block. The dot elevates the data into a command.

*[ EXAMPLE: THE 'A' REGISTER ]*
- `a` (Neutral Power State): #glyph("g") (Middle bar only. Pure acoustic data).
- `A` (Active Timeline Flag): #glyph("gp") (Middle bar + DP. The dot tells the Martas OS: "This is a system command, not raw data").

== 2. The Execution Bus (`.`)

When the Decimal Point (`.`) is rendered completely alone in its own character box #glyph("p"), it is not a modifier. It acts as the *Hardware Bus*. It physically signals a closed circuit, executes the current instruction string, and clears the Context Pointer memory stack for the next command.
