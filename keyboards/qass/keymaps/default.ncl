let { tap, hold, combo, .. } = import "fak/keycode.ncl" in
let kc = tap.reg.kc in
let md = tap.reg.mod in
let tm = tap.reg.mod in
let MO = hold.reg.layer in
let BOOT = tap.custom.fak.BOOT in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

#A/Lctrl
let ACTRL = tap.reg.kc.A & hold.reg.mod.lctl& hold.reg.behavior {timeout_ms = 150} in

#L/Rctrl
let LRCTRL = tap.reg.kc.L & hold.reg.mod.rctl & hold.reg.behavior {timeout_ms = 150} in

#SPACE/MO1
let SPACE = tap.reg.kc.SPC & hold.reg.layer 1 & hold.reg.behavior {timeout_ms = 150} in

#Punc/MO2
let PUNC = tap.reg.kc."." & hold.reg.layer 2 & hold.reg.behavior {timeout_ms = 150} in

#Punc/MO2
let PUNC2 = tap.reg.kc."." & hold.reg.layer 3 & hold.reg.behavior {timeout_ms = 150} in

#N/Ralt
let Comalt = tap.reg.kc."," & hold.reg.mod.ralt & hold.reg.behavior {timeout_ms = 150} in

#C/Lalt
let Xalt = tap.reg.kc.X & hold.reg.mod.lalt & hold.reg.behavior {timeout_ms = 150} in

#Z/Lsft
let LZFT = tap.reg.kc.Z & hold.reg.mod.lsft & hold.reg.behavior {timeout_ms = 150} in

#?/Rsft
let RSFT = tap.reg.kc."/" & hold.reg.mod.rsft & hold.reg.behavior {timeout_ms = 150} in
  
# Keymap definition
{
# --- Combos ---
  virtual_keys = [
  # The first argument is the timeout_ms (up to 255)
  # The second argument is the key indices/positions (min 2, max 9 keys)
  combo.make 35 [17, 18], # Backspace
  combo.make 35 [17, 18, 19], # Backspace word
  combo.make 35 [0, 1], # TAB
  combo.make 35 [1, 2], # ESC
  combo.make 35 [6, 7], # [
  combo.make 35 [8, 9], # ]
  combo.make 35 [18, 19], # Quote
  combo.make 35 [16, 17], # Semicolon
  combo.make 35 [17, 18], # \ 
  ],
  layers = [
    [ # Layer 0
      kc.Q,    kc.W,    kc.E,    kc.R,    kc.T,    kc.Y,    kc.U,    kc.I,    kc.O,    kc.P,    XXXX,
      ACTRL,    kc.S,    kc.D,    kc.F,    kc.G,    kc.H,    kc.J,    kc.K,    LRCTRL,    kc.ENTER,
      LZFT,    Xalt,    kc.C,    kc.V,    kc.B,    kc.N,    kc.M,    Comalt,  PUNC,  RSFT,
      md.lctl, md.lgui, md.lalt, kc.S,    SPACE,  md.ralt, md.rgui, md.rctl,
    
     # Combos start here in the same order we defined them above
      kc.BSPC, #JK
      tm.lalt & kc.BSPC, #JKL
      kc.TAB,
      kc.ESC,
      kc."[",
      kc."]",
      kc.QUOT,
      kc.SEMICOLON,
      kc.PIPE,
    ],
    [ # Layer 1
      kc.TAB,    kc.ESC,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,   XXXX,   XXXX,   XXXX,    XXXX,
      kc.N1,     kc.N2,    kc.N3,    kc.N4,   kc.N5,    kc.N6,    kc.N7,    kc.N8,    kc.N9,    kc.N0,
      md.lsft,    XXXX,    XXXX,    XXXX,    XXXX,    kc."-",    kc."=",   kc.",",  PUNC2,   RSFT,
      XXXX,    XXXX,    XXXX,    TTTT,    XXXX,    XXXX,    XXXX,   XXXX,

      kc.BSPC, #JK
      tm.lalt & kc.BSPC, #JKL
      kc.TAB,
      kc.ESC,
      kc."[",
      kc."]",
      kc.QUOT,
      kc.SEMICOLON,
      kc.PIPE,
    ],
    [ # Layer 2
      kc.END,    kc.PGDN,    kc.UP,    kc.PGUP,    kc.HOME,    XXXX,    XXXX,   XXXX,   XXXX,   kc.PRINT_SCREEN,    XXXX,
      md.lctl, kc.LEFT, kc.DOWN, kc.RIGHT, kc.DEL,    kc.INS,    XXXX,   XXXX,   XXXX,   kc.ENTER,
      md.lsft,    md.ralt,    XXXX,    XXXX,    XXXX,    XXXX,   XXXX,   XXXX,   XXXX,   RSFT,
      XXXX,    XXXX,    XXXX,    TTTT,    XXXX,    XXXX,    XXXX,    XXXX,

      kc.BSPC, #JK
      tm.lalt & kc.BSPC, #JKL
      kc.TAB,
      kc.ESC,
      kc."[",
      kc."]",
      kc.QUOT,
      kc.SEMICOLON,
      kc.PIPE,
    ],
    [ # Layer 3
      XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,    XXXX,   XXXX,   XXXX,   XXXX,    XXXX,
      kc.F1,     kc.F2,    kc.F3,    kc.F4,   kc.F5,    kc.F6,    kc.F7,    kc.F8,    kc.F9,    kc.F10,
      md.lsft,    md.lctl,    md.lalt,    XXXX,    XXXX,    kc.F11,    kc.F12,   XXXX,  XXXX,   RSFT,
      XXXX,    XXXX,    XXXX,    TTTT,    XXXX,    XXXX,    XXXX,   XXXX,

      kc.BSPC, #JK
      tm.lalt & kc.BSPC, #JKL
      kc.TAB,
      kc.ESC,
      kc."[",
      kc."]",
      kc.QUOT,
      kc.SEMICOLON,
      kc.PIPE,
    ],
  ],
}
