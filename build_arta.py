import os

# ==========================================
# ARTA CORE COMPILER (THE GHOST HARDWARE PATCH)
# Draws solid blocks for active segments and hollow outlines for unlit ones.
# Forces absolute monospace and mimics physical LCD hardware.
# ==========================================

GHOST_THICKNESS = 5  # Thickness of the unlit hardware traces

# 1. THE NORMALIZED GEOMETRY (PURE POLYGONS)
SEGMENT_COORDS = {
    'a':  (140, 90, 720, 120),  # Top
    'b':  (790, 140, 120, 370), # Top-Right
    'c':  (790, 490, 120, 370), # Bottom-Right
    'd':  (140, 790, 720, 120), # Bottom
    'e':  (90, 490, 120, 370),  # Bottom-Left
    'f':  (90, 140, 120, 370),  # Top-Left
    'g':  (140, 440, 720, 120), # Middle
    'dp': (990, 790, 120, 120)  # Decimal Point
}

# 2. THE QWERTY HARDWARE MAP
ARTA_MAP = {
    # Lowercase: Base Hardware
    'm': ['e', 'd', 'c'],           'n': ['f', 'a', 'b'],           'k': ['f', 'g', 'e'],
    't': ['b', 'c', 'f', 'e'],      'j': ['f', 'g', 'e'],           'q': ['b', 'c', 'g'],           'c': ['g', 'e', 'd'],
    's': ['a', 'g', 'd'],           'w': ['a', 'g', 'd', 'f'],      'x': ['e', 'g', 'b'],           'f': ['f', 'g', 'e', 'd'],      'h': ['f', 'g', 'e', 'd'],      'v': ['f', 'a', 'b', 'g'],
    'r': ['e', 'g', 'c'],           'g': ['f', 'a', 'b', 'c', 'e'],
    'i': ['a'],                     'a': ['g'],                     'u': ['d'],
    
    # Uppercase: Shift Boundary Modifiers
    'M': ['e', 'd', 'c', 'dp'],     'N': ['f', 'a', 'b', 'dp'],     'K': ['f', 'g', 'e', 'dp'],     'W': ['a', 'g', 'd', 'f', 'dp'],
    'C': ['g', 'e', 'd', 'dp'],     'X': ['e', 'g', 'b', 'dp'],     'R': ['e', 'g', 'c', 'dp'],     'V': ['f', 'a', 'b', 'g', 'dp'], 'Q': ['b', 'c', 'g', 'dp'],
    'T': ['b', 'c', 'f', 'e', 'dp'],'S': ['a', 'f', 'g', 'c', 'd', 'dp'], 'F': ['f', 'g', 'e', 'd', 'dp'], 'H': ['f', 'g', 'e', 'd', 'dp'], 'G': ['f', 'a', 'b', 'c', 'e', 'dp'],
    'I': ['a', 'dp'],               'A': ['g', 'dp'],               'U': ['d', 'dp'],
    
    # System Keys
    'plus':   ['f', 'g'],           'minus':  ['e', 'g'],           'asterisk':['f', 'g', 'dp'],    'slash':  ['e', 'g', 'dp'],     'equal':  ['d', 'g'],
    'period': ['dp'],
    'space': [],
    
    # Hexadecimal Numbers
    '0': ['a', 'b', 'c', 'd', 'e', 'f'],
    '1': ['b', 'c'],                     'exclam':  ['a', 'b', 'c', 'e', 'f', 'g'], 
    '2': ['a', 'b', 'g', 'e', 'd'],      'at':      ['c', 'd', 'e', 'f', 'g'],      
    '3': ['a', 'b', 'g', 'c', 'd'],      'hash':    ['a', 'd', 'e', 'f'],           
    '4': ['f', 'g', 'b', 'c'],           'dollar':  ['b', 'c', 'd', 'e', 'g'],      
    '5': ['a', 'f', 'g', 'c', 'd'],      'percent': ['a', 'd', 'e', 'f', 'g'],      
    '6': ['a', 'f', 'e', 'd', 'c', 'g'], 'caret':   ['a', 'e', 'f', 'g'],           
    '7': ['a', 'b', 'c'],
    '8': ['a', 'b', 'c', 'd', 'e', 'f', 'g'],
    '9': ['g', 'f', 'a', 'b', 'c']
}

# 3. DRAWING LOGIC (NO STROKES, PURE RECTANGLES)
def draw_solid(x, y, w, h):
    """Draws a solid black block for an 'ON' segment."""
    return f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#111111" />'

def draw_ghost(x, y, w, h):
    """Draws a hollow 15px outline for an 'OFF' segment."""
    t = GHOST_THICKNESS
    top    = f'<rect x="{x}" y="{y}" width="{w}" height="{t}" fill="#111111" />'
    bottom = f'<rect x="{x}" y="{y+h-t}" width="{w}" height="{t}" fill="#111111" />'
    left   = f'<rect x="{x}" y="{y+t}" width="{t}" height="{h-2*t}" fill="#111111" />'
    right  = f'<rect x="{x+w-t}" y="{y+t}" width="{t}" height="{h-2*t}" fill="#111111" />'
    return f'{top}\n    {bottom}\n    {left}\n    {right}'

def generate_svg(active_segments):
    lines = ""
    # Loop through EVERY physical piece of the hardware array
    for seg_name, coords in SEGMENT_COORDS.items():
        x, y, w, h = coords
        if seg_name in active_segments:
            lines += f'    {draw_solid(x, y, w, h)}\n'
        else:
            lines += f'    {draw_ghost(x, y, w, h)}\n'

    return f"""<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 1000" width="100%" height="100%">\n{lines}</svg>"""

# 4. COMPILATION
def compile_system():
    dir_name = "yona_ortho_svgs"
    if not os.path.exists(dir_name):
        os.makedirs(dir_name)
    
    print("[INIT] Compiling Arta Ghost Hardware Vectors...")
    
    hits = 0
    for char_name, segs in ARTA_MAP.items():
        file_id = f"upper_{char_name}" if char_name.isupper() else char_name
        filename = f"{file_id}.svg"
        
        with open(os.path.join(dir_name, filename), "w") as f:
            f.write(generate_svg(segs))
        hits += 1

    print(f"[SUCCESS] {hits} glyphs compiled to /{dir_name}")
    print("-> Drag these into IcoMoon.io to generate your Monospaced .ttf!")

if __name__ == "__main__":
    compile_system()
