#import "../lib/tarbit-theme.typ": glyph

= APPENDIX A: Arta System Character Map

This appendix serves as the master register for field-scraping and terminal-emulation. It provides a 1:1 mapping between acoustic hardware signals and their physical 7-segment scrape patterns.

== 1. The Hardware Consonants (Opcodes)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *t'* (Sharp Switch) \ #glyph(b:true, c:true,f: true, e: true) \ _Segments: B, C, f, E_ ],
  [ *k'* (Cracking) \ #glyph(f: true, e: true, g: true) \ _Segments: F, G, E_ ],
  [ *q'* (Breaker) \ #glyph(b: true, c: true, g: true) \ _Segments: B, C, G_ ],
  
  [ *c* (Dental Click) \ #glyph(g: true, e: true, d: true) \ _Segments: G, E, D_ ],
  [ *q* (Alveolar Click) \ #glyph(g: true, c: true, d: true) \ _Segments: G, C, D_ ],
  [ *s / sh* (Static) \ #glyph(a: true, g: true, d: true) \ _Segments: A, G, D_ ],

  [ *x* (Friction) \ #glyph(e: true, g: true, b: true) \ _Segments: E, G, B_ ],
  [ *f / h* (Venting) \ #glyph(f: true, g: true, e: true, d: true) \ _Segments: F, G, E, D_ ],
  [ *r* (Motor Trill) \ #glyph(e: true, g: true, c: true) \ _Segments: E, G, C_ ],

  [ *gh* (Platter Spin) \ #glyph(f: true, a: true, b: true, g: true) \ _Segments: F, A, B, G_ ],
  [ *ng* (Drone) \ #glyph(f: true, a: true, b: true, c: true, e: true) \ _Segments: F, A, B, C, E_ ]
)

== 2. The Power States (Flags)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *i* (High / Active) \ #glyph(a: true) \ _Segment: A_ ],
  [ *a* (Neutral / Base) \ #glyph(g: true) \ _Segment: G_ ],
  [ *u* (Low / Background) \ #glyph(d: true) \ _Segment: D_ ]
)

== 3. The Subject Registers (Prefixes)

Note the inclusion of the Bottom-Right Syntax Modifier (DP) for all Subject Prefixes.

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1.5em,
  [ *m.* (I / Me) \ #glyph(e: true, d: true, c: true, dp: true) ],
  [ *n.* (We) \ #glyph(f: true, a: true, b: true, dp: true) ],
  [ *k.* (You / Target) \ #glyph(f: true, g: true, e: true, dp: true) ]
)

== 4. Hexadecimal Numbers (0x0 - 0xF)

Numbers follow standard 7-segment numeric mapping to ensure compatibility with Old World hardware displays.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 1.2em,
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
