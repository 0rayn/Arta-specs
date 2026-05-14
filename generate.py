import json
import random
import argparse
import os
import sys

# --- Configuration ---
DB_FILE = "arta_sys_archive.json"

# Updated to use the 1:1 QWERTY Character Map
CONSONANTS = ["t", "j", "q", "c", "s", "w", "x", "f", "h", "v", "r", "g"]
VOWELS = ["i", "a", "u"]

def load_db():
    if os.path.exists(DB_FILE):
        with open(DB_FILE, "r") as f:
            return json.load(f)
    return {}

def save_db(db):
    with open(DB_FILE, "w") as f:
        json.dump(db, f, indent=4)

def generate_random_word(pattern):
    word_parts = []
    for char in pattern:
        if char.upper() == 'C':
            word_parts.append(random.choice(CONSONANTS))
        elif char.upper() == 'V':
            word_parts.append(random.choice(VOWELS))
        else:
            raise ValueError(f"Invalid pattern character: {char}. Use 'C' or 'V'.")
    return " ".join(word_parts)

def main():
    parser = argparse.ArgumentParser(description="Arta Lexicon Root Generator (Interactive Pipeline)")
    parser.add_argument("-p", "--pattern", type=str, default="CVC", help="Syllable pattern, e.g., CVC, CV, VC")
    parser.add_argument("-s", "--startswith", type=str, default=None, help="Filter: must start with this sound (e.g., t)")
    parser.add_argument("-l", "--limit", type=int, default=1, help="Number of new roots to successfully allocate")
    args = parser.parse_args()

    db = load_db()
    
    print(f"[*] Loaded {len(db)} existing words from {DB_FILE}")
    print(f"[*] Awaiting manual verification for pattern: {args.pattern.upper()}")
    print("-" * 40)
    
    new_roots = {}
    attempts = 0
    max_attempts = 1000  
    
    while len(new_roots) < args.limit and attempts < max_attempts:
        attempts += 1
        word = generate_random_word(args.pattern.upper())
        
        if args.startswith and not word.startswith(args.startswith + " "):
            continue
            
        if word not in db and word not in new_roots:
            print(f"\n[?] Candidate Root:  {word}")
            choice = input("    Allocate this to memory? (y/n/q to quit): ").strip().lower()
            
            if choice == 'y':
                definition = input(f"    [>] Enter definition for [{word}]: ").strip()
                if not definition:
                    definition = "PENDING_DEFINITION"
                    
                new_roots[word] = definition
                print(f"    [+] Allocated and defined. ({len(new_roots)}/{args.limit} secured)")
                
            elif choice == 'q':
                print("    [-] Manual abort initiated. Halting generation.")
                break
            else:
                print("    [-] Rejected. Flushing buffer and rolling again...")

    if not new_roots:
        print("\n[-] No new roots were allocated to the archive.")
        return

    print("\n" + "=" * 40)
    print(f"[+] SUMMARY: Generated and defined {len(new_roots)} new roots.")
    print("=" * 40)
    
    for word, definition in new_roots.items():
        db[word] = definition
        print(f'#lexicon-entry("{word}", "{definition}")')

    print("=" * 40)
    save_db(db)
    print(f"[*] Successfully saved {len(new_roots)} new entries to {DB_FILE}")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n[-] Process interrupted by user. Shutting down.")
        sys.exit(0)
