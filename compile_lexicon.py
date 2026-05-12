import json
import os

DB_FILE = "arta_sys_archive.json"
OUTPUT_FILE = "src/06-lexicon.typ"

# The absolute sorting hierarchy of the Arta machine logic
ARTA_ALPHABET = [
    "m", "n", "k",               # Base Forms / Grid Hums
    "t'", "k'", "q'", "c",       # Opcodes: Switches & Relays
    "s", "sh", "x", "f", "h", "gh", # Opcodes: Static & Vents
    "r", "ng",                   # Opcodes: Motors
    "i", "a", "u",               # Registers / Power States
    "m.", "n.", "k.",            # Subject Prefixes (Dotted)
    "c.", "x.",                  # Logic Gates (Dotted)
    "t'.", "s.", "f.", "h.", "ng.", # Vector Offsets (Dotted)
    "i.", "a.", "u.",            # Timeline Flags (Dotted)
    "."                          # The Bus
]

# Hardware descriptions for the dictionary headers
SECTOR_METADATA = {
    "m": "Low Grid Hum", "n": "High Grid Whine", "k": "Base Bracket",
    "m.": "Subject Register (I/Me)", "n.": "Subject Register (We)", "k.": "Subject Register (You)",
    "c.": "Logic Gate (Compare/If)", "x.": "Logic Gate (Not/Invert)",
    "t'.": "Vector Offset (At/Pin)", "s.": "Vector Offset (Above)", "f.": "Vector Offset (Inside)", "h.": "Vector Offset (Outside)", "ng.": "Vector Offset (Below)",
    "t'": "Sharp Switch", "k'": "Cracking Relay", "q'": "Heavy Breaker", "c": "Magnetic Relay",
    "s": "High Static", "sh": "Mid Static", "x": "Friction Scrape", "f": "Pressure Vent", 
    "h": "Shared Exhaust", "gh": "Platter Spin",
    "r": "Motor Trill", "ng": "Electronic Drone",
    "i": "High Power State", "a": "Neutral Power State", "u": "Low Power State",
    "i.": "Execution Queue (Future)", "a.": "Execution Active (Present)", "u.": "Execution Logged (Past)"
}

SORT_WEIGHT = {sound: index for index, sound in enumerate(ARTA_ALPHABET)}

# The Typst code for the Memory Map
MEMORY_MAP_TYPST = """
#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \\
  The Arta dictionary is not sorted alphabetically; it is sorted by hardware execution priority. The logic system loads baseline acoustic signals first (Opcodes and Power States). Once the physical hardware is established, execution crosses the *DP Boundary* to process syntax modifiers (The "Dotted" Registers and Flags).

  #v(1em)
  #align(center)[
    #table(
      columns: (60pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*SECTOR*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      // BASE HARDWARE
      text(font: "monospace")[0x0], [*Grid Hums*], [`m, n, k`],
      text(font: "monospace")[0x1], [*Relays & Switches*], [`t', k', q', c`],
      text(font: "monospace")[0x2], [*Static & Vents*], [`s, sh, x, f, h, gh`],
      text(font: "monospace")[0x3], [*Failing Motors*], [`r, ng`],
      text(font: "monospace")[0x4], [*Power States*], [`i, a, u`],
      
      // THE DP BOUNDARY
      table.cell(
        colspan: 3, 
        fill: rgb("#eeeeee"), 
        align: center, 
        inset: 0.8em
      )[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE DP BOUNDARY (MODIFIERS) ---]
      ],
      
      // DOTTED STUFF
      text(font: "monospace")[0x5], [*Subject Registers*], [`m., n., k.`],
      text(font: "monospace")[0x6], [*Timeline Flags*], [`i., a., u.`],
      text(font: "monospace")[0x7], [*Logic Gates*], [`c., x.`],
      text(font: "monospace")[0x8], [*Vector Offsets*], [`t'., s., f., h., ng.`],
      text(font: "monospace")[0x9], [*The Hardware Bus*], [`.`]
    )
  ]
]
#v(2em)
"""

def arta_sort_key(word):
    """Translates an Arta word into a list of numeric weights."""
    weights = []
    for sound in word.split():
        weights.append(SORT_WEIGHT.get(sound, 99))
    return weights

def compile_lexicon():
    if not os.path.exists(DB_FILE):
        print(f"[-] Fatal: {DB_FILE} not found. Boot aborted.")
        return

    with open(DB_FILE, "r") as f:
        db = json.load(f)

    print(f"[*] Loaded {len(db)} entries from archive.")

    # Sort the keys
    sorted_words = sorted(db.keys(), key=arta_sort_key)
    print("[*] Lexicon array sorted via hardware hierarchy.")

    with open(OUTPUT_FILE, "w") as f:
        # Write the Typst headers
        f.write("#import \"../lib/tarbit-theme.typ\": arta\n")
        f.write("#import \"../lib/tarbit-theme.typ\": lexicon-entry\n\n")
        f.write("= The Scavenger's Lexicon: Compiled Archive\n")
        
        # INJECT THE MEMORY MAP HERE
        f.write(MEMORY_MAP_TYPST)

        current_sector = None

        for word in sorted_words:
            # Extract the first sound of the word
            first_sound = word.split()[0]

            # If we cross into a new character territory, inject a header
            if first_sound != current_sector:
                current_sector = first_sound
                hardware_desc = SECTOR_METADATA.get(current_sector, "Unknown Hardware")
                
                # Write the territory divider
                f.write(f"\n// {'=' * 40}\n")
                f.write(f"== SECTOR [ {current_sector} ] // {hardware_desc.upper()}\n\n")

            definition = db[word]
            safe_def = definition.replace('"', '\\"') 
            f.write(f'#lexicon-entry("{word}", "{safe_def}")\n')

    print(f"[+] Output compiled successfully to {OUTPUT_FILE}")

if __name__ == "__main__":
    compile_lexicon()