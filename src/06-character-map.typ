#import "../lib/tarbit-theme.typ": glyph

= APPENDIX A: Arta System Character Map

This appendix serves as the master register for field-scraping and terminal-emulation. It provides a 1:1 mapping between acoustic hardware signals and their physical 7-segment scrape patterns.

== 1. The Acoustic Opcodes (Consonants)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[tʼ]* \ #glyph(b:true, c:true, f: true, e: true) ],
  [ *[kʼ]* \ #glyph(f: true, g: true, e: true) ],
  [ *[qʼ]* \ #glyph(b: true, c: true, g: true) ],
  
  [ *[ǀ]* \ #glyph(g: true, e: true, d: true) ],
  [ *[s] / [ʃ]* \ #glyph(a: true, g: true, d: true) ],
  [ *[x]* \ #glyph(e: true, g: true, b: true) ],

  [ *[f] / [h]* \ #glyph(f: true, g: true, e: true, d: true) ],
  [ *[ʁ]* \ #glyph(f: true, a: true, b: true, g: true) ],
  [ *[r]* \ #glyph(e: true, g: true, c: true) ],

  [ *[ŋ]* \ #glyph(f: true, a: true, b: true, c: true, e: true) ]
)

== 2. The Voltage Flags (Vowels)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[i]* (High) \ #glyph(a: true) ],
  [ *[ə]* (Neutral) \ #glyph(g: true) ],
  [ *[u]* (Low) \ #glyph(d: true) ]
)

== 3. The Subject Registers (Prefixes)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *[m]* + DP \ #glyph(e: true, d: true, c: true, dp: true) ],
  [ *[n]* + DP \ #glyph(f: true, a: true, b: true, dp: true) ],
  [ *[k]* + DP \ #glyph(f: true, g: true, e: true, dp: true) ]
)

== 4. Hexadecimal Numbers (0x0 - 0xF)

Numbers follow standard 7-segment numeric mapping to ensure compatibility with Old World hardware displays.
#grid(
  columns: (22%, 22%, 22%, 22%),
  gutter: 4%,
  [ *0x0* \ #glyph(a:true, b:true, c:true, d:true, e:true, f:true) ],
  [ *0x1* \ #glyph(b:true, c:true) ],
  [ *0x2* \ #glyph(a:true, b:true, g:true, e:true, d:true) ],
  [ *0x3* \ #glyph(a:true, b:true, g:true, c:true, d:true) ],
  
  [ *0x4* \ #glyph(f:true, g:true, b:true, c:true) ],
  [ *0x5* \ #glyph(a:true, f:true, g:true, c:true, d:true) ],
  [ *0x6* \ #glyph(a:true, f:true, e:true, d:true, c:true, g:true) ],
  [ *0x7* \ #glyph(a:true, b:true, c:true) ],
  
  [ *0x8* \ #glyph(a:true, b:true, c:true, d:true, e:true, f:true, g:true) ],
  [ *0x9* \ #glyph(g:true, f:true, a:true, b:true, c:true) ],
  [ *0xA* \ #glyph(e:true, f:true, a:true, b:true, c:true, g:true) ],
  [ *0xB* \ #glyph(f:true, e:true, d:true, c:true, g:true) ],
  
  [ *0xC* \ #glyph(a:true, f:true, e:true, d:true) ],
  [ *0xD* \ #glyph(b:true, c:true, d:true, e:true, g:true) ],
  [ *0xE* \ #glyph(a:true, f:true, e:true, d:true, g:true) ],
  [ *0xF* \ #glyph(a:true, f:true, e:true, g:true) ]
)
