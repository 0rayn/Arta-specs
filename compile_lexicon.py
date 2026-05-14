import json
import os

DB_FILE = "arta_sys_archive.json"
OUTPUT_FILE = "src/06-lexicon.typ"

# The absolute sorting hierarchy of the Arta machine logic (QWERTY Mapped)
ARTA_ALPHABET = [
    # Lowercase: Base Hardware
    "m", "n", "k",               # Base Forms / Grid Hums
    "t", "j", "q", "c",          # Opcodes: Switches & Relays (t', k', q', c)
    "s", "w", "x", "f", "h", "v",# Opcodes: Static & Vents (s, sh, x, f, h, gh)
    "r", "g",                    # Opcodes: Motors (r, ng)
    "i", "a", "u",               # Registers / Power States
    
    # Uppercase: Shift Boundary Modifiers
    "M", "N", "K", "W",          # Subject Contexts (Host, Cluster, Client, Ext)
    "C", "X", "V", "R", "Q",     # Gates & Queries (IF, NOT, AND, OR, Query)
    "T", "S", "F", "H", "G",     # Vector Offsets (At, Above, In, Out, Below)
    "I", "A", "U",               # Timeline Flags (Future, Present, Past)
    
    # System Keys
    "+", "-", "*", "/", "=",     # ALU Operators
    ".", ". ."                   # THEN Gate, EOF
]

# Hardware descriptions for the dictionary headers
SECTOR_METADATA = {
    "m": "Low Grid Hum", "n": "High Grid Whine", "k": "Base Bracket",
    "M": "Subject Register (Host)", "N": "Subject Register (Cluster)", "K": "Subject Register (Client)", "W": "Subject Register (External/It)",
    "C": "Logic Gate (Compare/If)", "X": "Logic Gate (Not/Invert)",
    "T": "Vector Offset (At/Pin)", "S": "Vector Offset (Above)", "F": "Vector Offset (Inside)", "H": "Vector Offset (Outside)", "G": "Vector Offset (Below)",
    "t": "Sharp Switch [t']", "j": "Cracking Relay [k']", "q": "Heavy Breaker [q']", "c": "Magnetic Relay",
    "s": "High Static", "w": "Mid Static [sh]", "x": "Friction Scrape", "f": "Pressure Vent", 
    "h": "Shared Exhaust", "v": "Platter Spin [gh]",
    "r": "Motor Trill", "g": "Electronic Drone [ng]",
    "i": "High Power State", "a": "Neutral Power State", "u": "Low Power State",
    "Q": "Logic Gate (Polling/Query)",
    "V": "Logic Gate (Boolean AND)",
    "R": "Logic Gate (Boolean OR)",
    "I": "Execution Queue (Future)", "A": "Execution Active (Present)", "U": "Execution Logged (Past)"
}

SORT_WEIGHT = {sound: index for index, sound in enumerate(ARTA_ALPHABET)}

# The Typst code for the Memory Map
MEMORY_MAP_TYPST = """
#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \\
  The Arta dictionary is mapped directly to standard QWERTY inputs. The logic system loads baseline acoustic signals first (Lowercase letters). Once the physical hardware is established, execution crosses the *Shift Boundary* to process syntax modifiers (Uppercase letters).

  #v(1em)
  #align(center)[
    #table(
      columns: (110pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*QWERTY MAP*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      // BASE HARDWARE
      text(font: "monospace")[Lowercase], [*Grid Hums*], [`m, n, k`],
      text(font: "monospace")[Lowercase], [*Relays/Switches*], [`t, j, q, c`],
      text(font: "monospace")[Lowercase], [*Static & Vents*], [`s, w, x, f, h, v`],
      text(font: "monospace")[Lowercase], [*Failing Motors*], [`r, g`],
      text(font: "monospace")[Lowercase], [*Power States*], [`i, a, u`],
      
      // THE SHIFT BOUNDARY
      table.cell(
        colspan: 3, 
        fill: rgb("#eeeeee"), 
        align: center, 
        inset: 0.8em
      )[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE SHIFT BOUNDARY (MODIFIERS) ---]
      ],
      
      // UPPERCASE / SYSTEM KEYS
      text(font: "monospace")[Uppercase], [*Subject Registers*], [`M, N, K, W`],
      text(font: "monospace")[Uppercase], [*Timeline Flags*], [`I, A, U`],
      text(font: "monospace")[Uppercase], [*Logic Gates*], [`C, X, R, V`],
      text(font: "monospace")[Uppercase], [*Vector Offsets*], [`T, S, F, H, G`],
      text(font: "monospace")[System Keys], [*Execution Triggers*], [`. , ..`]
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

    sorted_words = sorted(db.keys(), key=arta_sort_key)
    print("[*] Lexicon array sorted via hardware hierarchy.")

    with open(OUTPUT_FILE, "w") as f:
        f.write("#import \"../lib/tarbit-theme.typ\": arta\n")
        f.write("#import \"../lib/tarbit-theme.typ\": lexicon-entry\n\n")
        f.write("= The Scavenger's Lexicon: Compiled Archive\n")
        
        f.write(MEMORY_MAP_TYPST)

        current_sector = None

        for word in sorted_words:
            first_sound = word.split()[0]

            if first_sound != current_sector:
                current_sector = first_sound
                hardware_desc = SECTOR_METADATA.get(current_sector, "System Modifier")
                
                f.write(f"\n// {'=' * 40}\n")
                f.write(f"== SECTOR [ {current_sector} ] // {hardware_desc.upper()}\n\n")

            definition = db[word]
            safe_def = definition.replace('"', '\\"') 
            f.write(f'#lexicon-entry("{word}", "{safe_def}")\n')

    print(f"[+] Output compiled successfully to {OUTPUT_FILE}")

if __name__ == "__main__":
    compile_lexicon()
