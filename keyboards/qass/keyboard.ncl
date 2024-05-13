let { ColToRowKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552T,
  matrix = {
    cols = [10, 13, 35, 34, 15, 16, 32, 33],
    rows = [11, 12, 31, 17, 30],
  },
  usb_dev = {
    vendor_id = 43962, # 0xABBA
    product_id = 455,  # ASS
    product_ver = 256, # 0x0100
  },
  keys =
    let M = ColToRowKey in
    [
      M 0 0, M 1 0, M 2 0, M 3 0, M 4 0, M 5 0, M 6 0, M 7 0, M 5 4, M 6 4, M 7 4,
      M 0 1, M 1 1, M 2 1, M 3 1, M 4 1, M 5 1, M 6 1, M 7 1, M 4 4, M 2 4,
      M 0 2, M 1 2, M 2 2, M 3 2, M 4 2, M 5 2, M 6 2, M 7 2, M 3 4, M 1 4,
      M 0 3, M 1 3, M 2 3, M 3 3, M 4 3, M 5 3, M 6 3, M 7 3,
    ]
}
