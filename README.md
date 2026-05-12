# ARTA: The Language of YonaOS
> **SYS_ARCHIVE // FRAGMENT-RESTORED // CHK: 88A9**

Arta is a bare-metal constructed language (conlang) and artistic world-building project designed for the **YonaOS** universe. It is a language built not from poetry, but compiled from sheer necessity. 

In the hyper-pragmatic world of the Silicon Wastes, hardware hackers and scavengers known as "Tarbits" must navigate the ruins of autonomous megastructures (the *Martas*). These Old World systems are governed by dormant, read-only AI that listens for the melodic, voiced pitch of human speech. To survive, the Tarbits engineered a language that sounds exactly like failing hardware.

This repository contains the complete, compilable technical specifications, grammar rules, phonetic constraints, and lexicon for Arta.

---

## ⚙️ The Mechanics of Arta

Arta bridges the gap between low-level hardware logic and human linguistics. Its core features include:

* **Acoustic Camouflage:** The phonetic inventory lacks standard vowels and voiced consonants. Spoken Arta relies entirely on hard ejectives (mechanical switches), clicks (relays), and voiceless fricatives (radio static) to spoof AI audio sensors.
* **Base-16 Mathematics:** Because the Tarbits interact with raw memory addresses and MAC addresses, they count strictly in Hexadecimal using a tactile method known as the *Biological Hex-Grid* (mapping `0x0` to `0xF` across the 16 joints of a single hand).
* **V-O-O Assembly Syntax:** Arta operates like an assembly language instruction. Sentences are built strictly using Verb-Object-Object architecture, with the subject (`m.`, `n.`, `k.`) attached directly to the opcode as a prefix.
* **The 7-Segment Scrape:** The physical orthography is entirely angular, repurposed from scavenged 7-segment LED displays. It is designed to be carved into rusted metal with a screwdriver in absolute darkness.

---

## 🗂️ Repository Structure

The documentation is written in [Typst](https://typst.app/), a lightning-fast markup-based typesetting system, designed to compile into a corrupted, terminal-style PDF artifact. 

```text
├── main.typ               # The primary compiler file and global layout settings
├── src/
│   ├── 00-prologue.typ           # Narrative scene / Context initialization
│   ├── 01-lore.typ               # The history of the Great Log-Off and the Martas
│   ├── 02-phonetics.typ          # Hardware consonant classes and the "Dead Pitch" rule
│   ├── 03-syntax.typ             # V-O-O grammar rules and the Hex-Hand counting system
│   ├── 04-script.typ             # The 7-Segment visual orthography (with custom Typst rendering)
│   ├── 05-character-map.typ      # detailed character map for all symbols of ARTA
│   └── 06-lexicon.typ            # The official dictionary (Opcodes, Registers, and Flags)
└── README.md
