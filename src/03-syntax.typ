= The Machine Grammar

Arta was not born from poetry; it was compiled from necessity. Its grammar mirrors the rigid logic of the systems the Tarbits scavenge. There are no irregular verbs, no silent letters, and no exceptions to the rules. If the syntax does not compile, the meaning is lost.

== 1. The Dual-Mode Phonetics (Tactical vs. Hearth)
While the "Dead Pitch" rule strictly forbids the use of voiced vowels in the Silicon Wastes, human nature cannot be entirely overwritten. Arta operates in two distinct modes depending on the environment:

*[ TACTICAL MODE (DEVOICED) ]* \
Spoken in the Wastes and the Martas. All vowels are reduced to unvoiced, whispered air. It is harsh, entirely machine-like, and designed solely to bypass acoustic AI sensors. 

*[ HEARTH MODE (VOICED) ]* \
Spoken only deep within the safety of the suspended enclaves. Here, Tarbits vocalize the power states (`i`, `a`, `u`) as true, resonant vowels. Because voicing a vowel in the wild is a death sentence, speaking "Hearth Arta" to someone is the ultimate sign of intimacy and trust. It means: _"I know we are safe here with you."_

== 2. Absolute Morphology
Old World languages were bloated with historical baggage and unpronounced letters. Arta strips this down to 1:1 mapping. 

*[ NO SILENT LETTERS ]* \
What is written is exactly what is executed by the mouth. If a letter exists in a word, it carries acoustic data and must be pronounced.

*[ THE ABSOLUTE PLURAL ]* \
To allocate multiple instances of an object, you append the static fricative `-s` to the root. There are zero exceptions. Whether the root ends in a click, a hum, or a power state, adding `-s` always creates a plural. 
- `tar` (Builder) -> `tars` (Builders)
- `ngi` (Power) -> `ngis` (Powers)

== 3. Base-16 Mathematics (The Hex-Hand)
Humans traditionally count in Base-10 because they have ten fingers. The Tarbits live inside the metal, and the metal counts in Hexadecimal. To interact seamlessly with raw memory addresses, MAC addresses, and low-level hardware, Arta's counting system is strictly Base-16. 

To count to 16 on a single hand, Tarbits do not raise fingers; they use their hand as a physical memory grid.

*[ THE BIOLOGICAL HEX-GRID ]* \
The thumb acts as the *Cursor*. The remaining four fingers act as data columns (C0–C3). Each finger contains exactly four distinct touch-points: the Base (palm knuckle), the Lower Joint, the Upper Joint, and the Tip. 

By sliding the thumb across these points from right-to-left (Pinky to Index), a Tarbit maps exactly 16 values (0x0 to 0xF) on a single palm:

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
A Arta sentence operates like an Assembly Language instruction (`MOV DEST, SRC`). The syntax strictly follows a Verb-Object-Object structure. The Subject (the one executing the command) is not a separate word; it is a one-letter prefix attached directly to the verb.

*[ THE SUBJECT PREFIXES ]* \
- `m.` = I / Me (First Person)
- `n.` = We (First Person Plural)
- `k.` = You / Target (Second Person)

*[ SENTENCE ASSEMBLY ]* \
To build a sentence, you attach the prefix to the root verb, followed by the target objects. 
> `[PREFIX].[VERB] [OBJECT_1] [OBJECT_2]`

*Example:* If `tar` is "to build", and `ngi` is "power":
- `m.tar ngi` = "I build power."
- `k.k'as ngi` = "You kill the power."

