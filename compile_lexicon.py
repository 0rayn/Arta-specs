import json
import os

DB_FILE = "arta_sys_archive.json"
OUTPUT_FILE = "src/06-lexicon.typ"

# The absolute sorting hierarchy of the Arta machine logic
ARTA_ALPHABET = [
    "t'", "k'", "q'", "c", 
    "s", "sh", "x", "f", "h", "gh", 
    "r", "ng", 
    "i", "a", "u", 
    "."
]

# Hardware descriptions for the dictionary headers
SECTOR_METADATA = {
    "t'": "Sharp Switch", "k'": "Cracking Relay", "q'": "Heavy Breaker", "c": "Magnetic Relay",
    "s": "High Static", "sh": "Mid Static", "x": "Friction Scrape", "f": "Pressure Vent", 
    "h": "Shared Exhaust", "gh": "Platter Spin",
    "r": "Motor Trill", "ng": "Electronic Drone",
    "i": "High Power State", "a": "Neutral Power State", "u": "Low Power State"
}

SORT_WEIGHT = {sound: index for index, sound in enumerate(ARTA_ALPHABET)}

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
