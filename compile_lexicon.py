import json
import os

DB_FILE = "arta_sys_archive.json"
OUTPUT_FILE = "src/06-lexicon.typ"

# The absolute sorting hierarchy of the Arta machine logic (QWERTY Mapped)
ARTA_ALPHABET = [
    # Lowercase: Base Hardware (Contiguous string keys)
    "m", "n", "k", "w",          # Base Forms / Grid Hums
    "t", "q", "c", "p",          # Relays & Switches (Pneumatic pop added)
    "s", "x", "f", "v",          # Static & Vents
    "r", "g",                    # Motors
    "i", "a", "u",               # Power States
    
    # Uppercase: Control Modifiers
    "M", "N", "K", "W",          # Contexts
    "C", "X", "V", "R", "Q",     # Logic Gates
    "T", "S", "F", "P", "G",     # Vectors
    "I", "A", "U",               # Timelines
    
    # System Keys
    "+", "-", "*", "/", "=",     # ALU
    ".", ".."                    # Execute
]

SECTOR_METADATA = {
    "m": "Low Grid Hum", "n": "High Grid Whine", "k": "Base Bracket", "w": "Mid Static",
    "M": "Context (Host)", "N": "Context (Cluster)", "K": "Context (Client)", "W": "Context (External)",
    "C": "Logic Gate (IF)", "X": "Logic Gate (NOT)", "Q": "Logic Gate (Query)",
    "V": "Logic Gate (AND)", "R": "Logic Gate (OR)",
    "T": "Vector (At)", "S": "Vector (Above)", "F": "Vector (Inside)", "P": "Vector (Outside)", "G": "Vector (Below)",
    "t": "Sharp Switch", "q": "Heavy Breaker", "c": "Magnetic Relay", "p": "Pneumatic Pop",
    "s": "High Static", "x": "Friction Scrape", "f": "Pressure Vent", "v": "Platter Spin",
    "r": "Motor Trill", "g": "Electronic Drone",
    "i": "High Power State", "a": "Neutral Power State", "u": "Low Power State",
    "I": "Queue (Future)", "A": "Active (Present)", "U": "Logged (Past)"
}

SORT_WEIGHT = {char: index for index, char in enumerate(ARTA_ALPHABET)}

MEMORY_MAP_TYPST = """
#v(1em)
#box(width: 100%, stroke: 1pt + black, inset: 1.5em, fill: rgb("#fcfcfc"))[
  #set text(size: 9.5pt)
  *THE LEXICON MEMORY MAP* \\
  The Arta dictionary is mapped directly to standard QWERTY inputs. The logic system loads contiguous baseline acoustic signals first (Lowercase). Once the physical hardware is established, execution crosses the *Shift Boundary* to process syntax modifiers (Uppercase).

  #v(1em)
  #align(center)[
    #table(
      columns: (110pt, 1fr, 2fr),
      align: (center + horizon, left + horizon, left + horizon),
      stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else { (bottom: 0.5pt + luma(200)) },
      
      [*QWERTY MAP*], [*HARDWARE CLASS*], [*RAW INPUTS*],
      
      text(font: "monospace")[Lowercase], [*Grid Hums*], [`m, n, k, w`],
      text(font: "monospace")[Lowercase], [*Relays/Switches*], [`t, q, c, p`],
      text(font: "monospace")[Lowercase], [*Static & Vents*], [`s, x, f, v`],
      text(font: "monospace")[Lowercase], [*Failing Motors*], [`r, g`],
      text(font: "monospace")[Lowercase], [*Power States*], [`i, a, u`],
      
      table.cell(colspan: 3, fill: rgb("#eeeeee"), align: center, inset: 0.8em)[
        #text(weight: "bold", tracking: 0.2em, size: 8pt)[--- THE SHIFT BOUNDARY (MODIFIERS) ---]
      ],
      
      text(font: "monospace")[Uppercase], [*Context Pointers*], [`M, N, K, W`],
      text(font: "monospace")[Uppercase], [*Timeline Flags*], [`I, A, U`],
      text(font: "monospace")[Uppercase], [*Logic Gates*], [`C, X, R, V, Q`],
      text(font: "monospace")[Uppercase], [*Vector Offsets*], [`T, S, F, P, G`],
      text(font: "monospace")[System Keys], [*Execution Triggers*], [`. , ..`]
    )
  ]
]
#v(2em)
"""

def arta_sort_key(word):
    """Sorts word by translating each character into its hardware array index."""
    return [SORT_WEIGHT.get(char, 99) for char in word]

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
            # First character dictates the memory sector
            first_char = word[0]

            if first_char != current_sector:
                current_sector = first_char
                hardware_desc = SECTOR_METADATA.get(current_sector, "System Logic")
                
                f.write(f"\n// {'=' * 40}\n")
                f.write(f"== SECTOR [ {current_sector} ] // {hardware_desc.upper()}\n\n")

            definition = db[word]
            safe_def = definition.replace('"', '\\"') 
            f.write(f'#lexicon-entry("{word}", "{safe_def}")\n')

    print(f"[+] Output compiled successfully to {OUTPUT_FILE}")

if __name__ == "__main__":
    compile_lexicon()
