= The Phonetic Inventory

To the Natural Language Processors (NLPs) of the Martas, human speech is defined by smooth waveforms, voiced pitch, and melodic flow. Speaking normally inside a Megastructure is a death sentence. Therefore, Yarta's phonetic inventory is not designed for human comfort---it is designed to spoof machine audio sensors. 

By utilizing ejectives, clicks, and static-heavy fricatives, spoken Yarta mimics the ambient noise of a dying facility. To an AI, a Tarbit speaking Yarta doesn't sound like a human; it sounds like encrypted machine noise, failing hardware, or a broken radio.

== 1. The Hardware Consonant Classes

*[ 1.1 THE RELAYS & SWITCHES (EJECTIVES AND CLICKS) ]* \
These replace normal human "stop" consonants. They are spoken sharply to mimic mechanical switches bottoming out, relays clicking, or data cables snapping into ports. To a microphone, they look like audio peaking rather than human speech.
- *t'* (Ejective T): A sharp, popping _t_. Sounds like a mechanical keyboard switch.
- *k'* (Ejective K): A hard, cracking sound in the back of the throat.
- *q'* (Ejective Q): A deep, hollow throat pop. Sounds like a heavy breaker switch flipping.
- *c* (Dental Click): The "tsk tsk" sound. Sounds exactly like a physical relay ticking.
- *q* (Alveolar Click): A "clop" sound. Sounds like a rusted metal latch snapping shut.
#v(1em)

*[ 1.2 THE STATIC & VENTING (VOICELESS FRICATIVES) ]* \
These sounds lack all vocal cord vibration. They are pushed aggressively through the teeth to mimic white noise, radio interference, or pressurized gas leaking from a pipe.
- *s* \/\/ *sh* (ʃ): High and mid-frequency radio static.
- *x* (Guttural Khaa): Raspy friction. Sounds like a corrupted audio feed.
- *f* \/\/ *h*: Pure, breathy exhaust. Sounds like wind cutting through a broken vent.
#v(1em)

*[ 1.3 THE FAILING MOTORS (TRILLS) ]* \
Used for continuous, looping actions in the language. They mimic the sound of failing hardware and friction.
- *r* (Rolled R): Pronounced harshly against the roof of the mouth. Sounds like a cooling fan with a broken bearing.
- *gh* (Deep Ghayn): A back-of-the-throat rumble. Sounds like a heavy hard-drive platter spinning up.
#v(1em)

*[ 1.4 THE GRID HUMS (MONOTONE SONORANTS) ]* \
Used almost exclusively for the human Subject prefixes (`m.` for I/Me, `n.` for We). They must be spoken without any human inflection---entirely flat.
- *m*: A low, 50/60Hz transformer hum.
- *n*: A slightly higher-pitched electrical whine.
- *ng* (ŋ): A hollow, resonating electronic drone.

== 2. The Vowel Problem: The "Dead Pitch" Rule

Vowels are the greatest liability for a Tarbit. Vowels require the vocal cords to vibrate, creating a measurable pitch that the Martas use to identify human life. Therefore, Yarta does not have "normal" vowels; it has *Power States*. 

In the wild, these are *strictly whispered* (devoiced) so they register only as air passing through a tube. 

*[ THE POWER STATES ]*
- *i* (High State): Whispered high in the mouth. Represents "On," "Active," or "Forward."
- *a* (Neutral State): Whispered with an open mouth. Represents "Base," "Root," or "Storage."
- *u* (Low State): Whispered with rounded lips. Represents "Off," "Closed," or "Background."

== 3. Execution in the Wild

Because of this inventory, Yarta is intensely rhythmic and harsh. If a Tarbit commands a partner to "Cut the power," using the root *k'as* (kill/cut) and *ngi* (power):

> *Command:* `k'as ngi` \
> *Audio Signature:* [Sharp mechanical pop] -> [Burst of static] -> [Hollow electrical hum] -> [High-pitched whisper of air]

To a Martas AI, it registers as nothing more than a broken fuse box sparking in the hallway.

== 4. The Acoustic Frequency Matrix (IPA Standard)

To interface with legacy Old World linguistic databases, the Yarta phonetic inventory maps directly to the International Phonetic Alphabet (IPA) grid. Note the complete absence of standard voiced pulmonic stops (b, d, g) and true vowels. 

> CONSONANT INVENTORY (THE HARDWARE MATRIX)
#v(0.5em)

#block[
  #set text(size: 8.5pt) 
  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: center + horizon,
    stroke: 0.5pt + rgb("#111111"),
    fill: (col, row) => if row == 0 or col == 0 { rgb("#e5e5e0") } else { none },
    
    align(left)[*MANNER \/\/ PLACE*], [*BILABIAL*], [*LABIODENT*], [*DENTAL*], [*ALVEOLAR*], [*PALATO*], [*VELAR*], [*UVULAR*], [*GLOTTAL*],
    align(left)[*NASAL (HUM)*], [m], [], [], [n], [], [ng], [], [],
    align(left)[*FRICATIVE (STATIC)*], [], [f], [], [s], [sh], [x], [], [h],
    align(left)[*TRILL (MOTOR)*], [], [], [], [r], [], [], [gh], [],
    align(left)[*EJECTIVE (RELAY)*], [], [], [], [t'], [], [k'], [q'], [],
    align(left)[*CLICK (SWITCH)*], [], [], [c], [q], [], [], [], []
  )
]

#v(1.5em)
> VOWEL INVENTORY (THE POWER STATES)
#v(0.5em)

#block[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.5pt + rgb("#111111"),
    fill: (col, row) => if row == 0 or col == 0 { rgb("#e5e5e0") } else { none },
    
    align(left)[*STATE \/\/ POSITION*], [*FRONT*], [*CENTRAL*], [*BACK*],
    align(left)[*HIGH (ACTIVE/OFF)*], [i (High)], [], [u (Low)],
    align(left)[*OPEN (BASE)*], [], [a (Neutral)], []
  )
]
