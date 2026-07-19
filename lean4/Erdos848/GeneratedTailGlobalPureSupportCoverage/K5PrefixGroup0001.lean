import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 13, 83],
     [3, 7, 13, 89],
     [3, 7, 13, 97],
     [3, 7, 13, 101],
     [3, 7, 13, 103],
     [3, 7, 13, 107],
     [3, 7, 13, 109],
     [3, 7, 13, 113],
     [3, 7, 13, 127],
     [3, 7, 13, 131],
     [3, 7, 13, 137],
     [3, 7, 13, 139],
     [3, 7, 13, 149],
     [3, 7, 13, 151],
     [3, 7, 13, 157],
     [3, 7, 13, 163],
     [3, 7, 13, 167],
     [3, 7, 13, 173],
     [3, 7, 13, 179],
     [3, 7, 13, 181],
     [3, 7, 13, 191],
     [3, 7, 13, 193],
     [3, 7, 13, 197],
     [3, 7, 13, 199],
     [3, 7, 13, 211],
     [3, 7, 13, 223],
     [3, 7, 13, 227],
     [3, 7, 13, 229],
     [3, 7, 13, 233],
     [3, 7, 13, 239],
     [3, 7, 13, 241],
     [3, 7, 13, 251],
     [3, 7, 13, 257],
     [3, 7, 13, 263],
     [3, 7, 13, 269],
     [3, 7, 13, 271],
     [3, 7, 13, 277],
     [3, 7, 13, 281],
     [3, 7, 13, 283],
     [3, 7, 13, 293],
     [3, 7, 13, 307],
     [3, 7, 13, 311],
     [3, 7, 13, 313],
     [3, 7, 13, 317],
     [3, 7, 13, 331],
     [3, 7, 13, 337],
     [3, 7, 13, 347],
     [3, 7, 13, 349],
     [3, 7, 13, 353],
     [3, 7, 13, 359],
     [3, 7, 13, 367],
     [3, 7, 13, 373],
     [3, 7, 13, 379],
     [3, 7, 13, 383],
     [3, 7, 13, 389],
     [3, 7, 13, 397],
     [3, 7, 13, 401],
     [3, 7, 13, 409],
     [3, 7, 13, 419],
     [3, 7, 13, 421],
     [3, 7, 13, 431],
     [3, 7, 13, 433],
     [3, 7, 13, 439],
     [3, 7, 13, 443],
     [3, 7, 13, 449],
     [3, 7, 13, 457],
     [3, 7, 13, 461],
     [3, 7, 13, 463],
     [3, 7, 13, 467],
     [3, 7, 13, 479],
     [3, 7, 13, 487],
     [3, 7, 13, 491],
     [3, 7, 13, 499],
     [3, 7, 13, 503],
     [3, 7, 13, 509],
     [3, 7, 13, 521],
     [3, 7, 13, 523],
     [3, 7, 13, 541],
     [3, 7, 13, 547],
     [3, 7, 13, 557],
     [3, 7, 13, 563],
     [3, 7, 13, 569],
     [3, 7, 13, 571],
     [3, 7, 13, 577],
     [3, 7, 13, 587],
     [3, 7, 17, 19],
     [3, 7, 17, 23],
     [3, 7, 17, 29],
     [3, 7, 17, 31],
     [3, 7, 17, 37],
     [3, 7, 17, 41],
     [3, 7, 17, 43],
     [3, 7, 17, 47],
     [3, 7, 17, 53],
     [3, 7, 17, 59],
     [3, 7, 17, 61],
     [3, 7, 17, 67],
     [3, 7, 17, 71],
     [3, 7, 17, 73],
     [3, 7, 17, 79],
     [3, 7, 17, 83],
     [3, 7, 17, 89],
     [3, 7, 17, 97],
     [3, 7, 17, 101],
     [3, 7, 17, 103],
     [3, 7, 17, 107],
     [3, 7, 17, 109],
     [3, 7, 17, 113],
     [3, 7, 17, 127],
     [3, 7, 17, 131],
     [3, 7, 17, 137],
     [3, 7, 17, 139],
     [3, 7, 17, 149],
     [3, 7, 17, 151],
     [3, 7, 17, 157],
     [3, 7, 17, 163],
     [3, 7, 17, 167],
     [3, 7, 17, 173],
     [3, 7, 17, 179],
     [3, 7, 17, 181],
     [3, 7, 17, 191],
     [3, 7, 17, 193],
     [3, 7, 17, 197],
     [3, 7, 17, 199],
     [3, 7, 17, 211],
     [3, 7, 17, 223],
     [3, 7, 17, 227],
     [3, 7, 17, 229]]

theorem k5PrefixGroup0001Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 83] = true := by
  decide

theorem k5PrefixGroup0001Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 83] = true := by
  decide

theorem k5PrefixGroup0001Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 89] = true := by
  decide

theorem k5PrefixGroup0001Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 89] = true := by
  decide

theorem k5PrefixGroup0001Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 97] = true := by
  decide

theorem k5PrefixGroup0001Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 97] = true := by
  decide

theorem k5PrefixGroup0001Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 101] = true := by
  decide

theorem k5PrefixGroup0001Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 101] = true := by
  decide

theorem k5PrefixGroup0001Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 103] = true := by
  decide

theorem k5PrefixGroup0001Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 103] = true := by
  decide

theorem k5PrefixGroup0001Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 107] = true := by
  decide

theorem k5PrefixGroup0001Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 107] = true := by
  decide

theorem k5PrefixGroup0001Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 109] = true := by
  decide

theorem k5PrefixGroup0001Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 109] = true := by
  decide

theorem k5PrefixGroup0001Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 113] = true := by
  decide

theorem k5PrefixGroup0001Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 113] = true := by
  decide

theorem k5PrefixGroup0001Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 127] = true := by
  decide

theorem k5PrefixGroup0001Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 127] = true := by
  decide

theorem k5PrefixGroup0001Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 131] = true := by
  decide

theorem k5PrefixGroup0001Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 131] = true := by
  decide

theorem k5PrefixGroup0001Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 137] = true := by
  decide

theorem k5PrefixGroup0001Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 137] = true := by
  decide

theorem k5PrefixGroup0001Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 139] = true := by
  decide

theorem k5PrefixGroup0001Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 139] = true := by
  decide

theorem k5PrefixGroup0001Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 149] = true := by
  decide

theorem k5PrefixGroup0001Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 149] = true := by
  decide

theorem k5PrefixGroup0001Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 151] = true := by
  decide

theorem k5PrefixGroup0001Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 151] = true := by
  decide

theorem k5PrefixGroup0001Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 157] = true := by
  decide

theorem k5PrefixGroup0001Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 157] = true := by
  decide

theorem k5PrefixGroup0001Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 163] = true := by
  decide

theorem k5PrefixGroup0001Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 163] = true := by
  decide

theorem k5PrefixGroup0001Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 167] = true := by
  decide

theorem k5PrefixGroup0001Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 167] = true := by
  decide

theorem k5PrefixGroup0001Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 173] = true := by
  decide

theorem k5PrefixGroup0001Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 173] = true := by
  decide

theorem k5PrefixGroup0001Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 179] = true := by
  decide

theorem k5PrefixGroup0001Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 179] = true := by
  decide

theorem k5PrefixGroup0001Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 181] = true := by
  decide

theorem k5PrefixGroup0001Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 181] = true := by
  decide

theorem k5PrefixGroup0001Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 191] = true := by
  decide

theorem k5PrefixGroup0001Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 191] = true := by
  decide

theorem k5PrefixGroup0001Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 193] = true := by
  decide

theorem k5PrefixGroup0001Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 193] = true := by
  decide

theorem k5PrefixGroup0001Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 197] = true := by
  decide

theorem k5PrefixGroup0001Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 197] = true := by
  decide

theorem k5PrefixGroup0001Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 199] = true := by
  decide

theorem k5PrefixGroup0001Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 199] = true := by
  decide

theorem k5PrefixGroup0001Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 211] = true := by
  decide

theorem k5PrefixGroup0001Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 211] = true := by
  decide

theorem k5PrefixGroup0001Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 223] = true := by
  decide

theorem k5PrefixGroup0001Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 223] = true := by
  decide

theorem k5PrefixGroup0001Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 227] = true := by
  decide

theorem k5PrefixGroup0001Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 227] = true := by
  decide

theorem k5PrefixGroup0001Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 229] = true := by
  decide

theorem k5PrefixGroup0001Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 229] = true := by
  decide

theorem k5PrefixGroup0001Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 233] = true := by
  decide

theorem k5PrefixGroup0001Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 233] = true := by
  decide

theorem k5PrefixGroup0001Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 239] = true := by
  decide

theorem k5PrefixGroup0001Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 239] = true := by
  decide

theorem k5PrefixGroup0001Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 241] = true := by
  decide

theorem k5PrefixGroup0001Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 241] = true := by
  decide

theorem k5PrefixGroup0001Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 251] = true := by
  decide

theorem k5PrefixGroup0001Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 251] = true := by
  decide

theorem k5PrefixGroup0001Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 257] = true := by
  decide

theorem k5PrefixGroup0001Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 257] = true := by
  decide

theorem k5PrefixGroup0001Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 263] = true := by
  decide

theorem k5PrefixGroup0001Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 263] = true := by
  decide

theorem k5PrefixGroup0001Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 269] = true := by
  decide

theorem k5PrefixGroup0001Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 269] = true := by
  decide

theorem k5PrefixGroup0001Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 271] = true := by
  decide

theorem k5PrefixGroup0001Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 271] = true := by
  decide

theorem k5PrefixGroup0001Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 277] = true := by
  decide

theorem k5PrefixGroup0001Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 277] = true := by
  decide

theorem k5PrefixGroup0001Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 281] = true := by
  decide

theorem k5PrefixGroup0001Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 281] = true := by
  decide

theorem k5PrefixGroup0001Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 283] = true := by
  decide

theorem k5PrefixGroup0001Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 283] = true := by
  decide

theorem k5PrefixGroup0001Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 293] = true := by
  decide

theorem k5PrefixGroup0001Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 293] = true := by
  decide

theorem k5PrefixGroup0001Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 307] = true := by
  decide

theorem k5PrefixGroup0001Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 307] = true := by
  decide

theorem k5PrefixGroup0001Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 311] = true := by
  decide

theorem k5PrefixGroup0001Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 311] = true := by
  decide

theorem k5PrefixGroup0001Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 313] = true := by
  decide

theorem k5PrefixGroup0001Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 313] = true := by
  decide

theorem k5PrefixGroup0001Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 317] = true := by
  decide

theorem k5PrefixGroup0001Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 317] = true := by
  decide

theorem k5PrefixGroup0001Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 331] = true := by
  decide

theorem k5PrefixGroup0001Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 331] = true := by
  decide

theorem k5PrefixGroup0001Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 337] = true := by
  decide

theorem k5PrefixGroup0001Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 337] = true := by
  decide

theorem k5PrefixGroup0001Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 347] = true := by
  decide

theorem k5PrefixGroup0001Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 347] = true := by
  decide

theorem k5PrefixGroup0001Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 349] = true := by
  decide

theorem k5PrefixGroup0001Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 349] = true := by
  decide

theorem k5PrefixGroup0001Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 353] = true := by
  decide

theorem k5PrefixGroup0001Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 353] = true := by
  decide

theorem k5PrefixGroup0001Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 359] = true := by
  decide

theorem k5PrefixGroup0001Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 359] = true := by
  decide

theorem k5PrefixGroup0001Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 367] = true := by
  decide

theorem k5PrefixGroup0001Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 367] = true := by
  decide

theorem k5PrefixGroup0001Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 373] = true := by
  decide

theorem k5PrefixGroup0001Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 373] = true := by
  decide

theorem k5PrefixGroup0001Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 379] = true := by
  decide

theorem k5PrefixGroup0001Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 379] = true := by
  decide

theorem k5PrefixGroup0001Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 383] = true := by
  decide

theorem k5PrefixGroup0001Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 383] = true := by
  decide

theorem k5PrefixGroup0001Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 389] = true := by
  decide

theorem k5PrefixGroup0001Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 389] = true := by
  decide

theorem k5PrefixGroup0001Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 397] = true := by
  decide

theorem k5PrefixGroup0001Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 397] = true := by
  decide

theorem k5PrefixGroup0001Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 401] = true := by
  decide

theorem k5PrefixGroup0001Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 401] = true := by
  decide

theorem k5PrefixGroup0001Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 409] = true := by
  decide

theorem k5PrefixGroup0001Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 409] = true := by
  decide

theorem k5PrefixGroup0001Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 419] = true := by
  decide

theorem k5PrefixGroup0001Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 419] = true := by
  decide

theorem k5PrefixGroup0001Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 421] = true := by
  decide

theorem k5PrefixGroup0001Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 421] = true := by
  decide

theorem k5PrefixGroup0001Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 431] = true := by
  decide

theorem k5PrefixGroup0001Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 431] = true := by
  decide

theorem k5PrefixGroup0001Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 433] = true := by
  decide

theorem k5PrefixGroup0001Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 433] = true := by
  decide

theorem k5PrefixGroup0001Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 439] = true := by
  decide

theorem k5PrefixGroup0001Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 439] = true := by
  decide

theorem k5PrefixGroup0001Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 443] = true := by
  decide

theorem k5PrefixGroup0001Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 443] = true := by
  decide

theorem k5PrefixGroup0001Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 449] = true := by
  decide

theorem k5PrefixGroup0001Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 449] = true := by
  decide

theorem k5PrefixGroup0001Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 457] = true := by
  decide

theorem k5PrefixGroup0001Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 457] = true := by
  decide

theorem k5PrefixGroup0001Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 461] = true := by
  decide

theorem k5PrefixGroup0001Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 461] = true := by
  decide

theorem k5PrefixGroup0001Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 463] = true := by
  decide

theorem k5PrefixGroup0001Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 463] = true := by
  decide

theorem k5PrefixGroup0001Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 467] = true := by
  decide

theorem k5PrefixGroup0001Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 467] = true := by
  decide

theorem k5PrefixGroup0001Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 479] = true := by
  decide

theorem k5PrefixGroup0001Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 479] = true := by
  decide

theorem k5PrefixGroup0001Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 487] = true := by
  decide

theorem k5PrefixGroup0001Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 487] = true := by
  decide

theorem k5PrefixGroup0001Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 491] = true := by
  decide

theorem k5PrefixGroup0001Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 491] = true := by
  decide

theorem k5PrefixGroup0001Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 499] = true := by
  decide

theorem k5PrefixGroup0001Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 499] = true := by
  decide

theorem k5PrefixGroup0001Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 503] = true := by
  decide

theorem k5PrefixGroup0001Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 503] = true := by
  decide

theorem k5PrefixGroup0001Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 509] = true := by
  decide

theorem k5PrefixGroup0001Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 509] = true := by
  decide

theorem k5PrefixGroup0001Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 521] = true := by
  decide

theorem k5PrefixGroup0001Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 521] = true := by
  decide

theorem k5PrefixGroup0001Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 523] = true := by
  decide

theorem k5PrefixGroup0001Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 523] = true := by
  decide

theorem k5PrefixGroup0001Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 541] = true := by
  decide

theorem k5PrefixGroup0001Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 541] = true := by
  decide

theorem k5PrefixGroup0001Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 547] = true := by
  decide

theorem k5PrefixGroup0001Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 547] = true := by
  decide

theorem k5PrefixGroup0001Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 557] = true := by
  decide

theorem k5PrefixGroup0001Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 557] = true := by
  decide

theorem k5PrefixGroup0001Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 563] = true := by
  decide

theorem k5PrefixGroup0001Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 563] = true := by
  decide

theorem k5PrefixGroup0001Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 569] = true := by
  decide

theorem k5PrefixGroup0001Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 569] = true := by
  decide

theorem k5PrefixGroup0001Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 571] = true := by
  decide

theorem k5PrefixGroup0001Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 571] = true := by
  decide

theorem k5PrefixGroup0001Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 577] = true := by
  decide

theorem k5PrefixGroup0001Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 577] = true := by
  decide

theorem k5PrefixGroup0001Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 587] = true := by
  decide

theorem k5PrefixGroup0001Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 587] = true := by
  decide

theorem k5PrefixGroup0001Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 19] = true := by
  decide

theorem k5PrefixGroup0001Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 19] = true := by
  decide

theorem k5PrefixGroup0001Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 23] = true := by
  decide

theorem k5PrefixGroup0001Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 23] = true := by
  decide

theorem k5PrefixGroup0001Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 29] = true := by
  decide

theorem k5PrefixGroup0001Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 29] = true := by
  decide

theorem k5PrefixGroup0001Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 31] = true := by
  decide

theorem k5PrefixGroup0001Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 31] = true := by
  decide

theorem k5PrefixGroup0001Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 37] = true := by
  decide

theorem k5PrefixGroup0001Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 37] = true := by
  decide

theorem k5PrefixGroup0001Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 41] = true := by
  decide

theorem k5PrefixGroup0001Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 41] = true := by
  decide

theorem k5PrefixGroup0001Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 43] = true := by
  decide

theorem k5PrefixGroup0001Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 43] = true := by
  decide

theorem k5PrefixGroup0001Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 47] = true := by
  decide

theorem k5PrefixGroup0001Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 47] = true := by
  decide

theorem k5PrefixGroup0001Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 53] = true := by
  decide

theorem k5PrefixGroup0001Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 53] = true := by
  decide

theorem k5PrefixGroup0001Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 59] = true := by
  decide

theorem k5PrefixGroup0001Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 59] = true := by
  decide

theorem k5PrefixGroup0001Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 61] = true := by
  decide

theorem k5PrefixGroup0001Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 61] = true := by
  decide

theorem k5PrefixGroup0001Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 67] = true := by
  decide

theorem k5PrefixGroup0001Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 67] = true := by
  decide

theorem k5PrefixGroup0001Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 71] = true := by
  decide

theorem k5PrefixGroup0001Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 71] = true := by
  decide

theorem k5PrefixGroup0001Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 73] = true := by
  decide

theorem k5PrefixGroup0001Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 73] = true := by
  decide

theorem k5PrefixGroup0001Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 79] = true := by
  decide

theorem k5PrefixGroup0001Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 79] = true := by
  decide

theorem k5PrefixGroup0001Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 83] = true := by
  decide

theorem k5PrefixGroup0001Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 83] = true := by
  decide

theorem k5PrefixGroup0001Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 89] = true := by
  decide

theorem k5PrefixGroup0001Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 89] = true := by
  decide

theorem k5PrefixGroup0001Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 97] = true := by
  decide

theorem k5PrefixGroup0001Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 97] = true := by
  decide

theorem k5PrefixGroup0001Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 101] = true := by
  decide

theorem k5PrefixGroup0001Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 101] = true := by
  decide

theorem k5PrefixGroup0001Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 103] = true := by
  decide

theorem k5PrefixGroup0001Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 103] = true := by
  decide

theorem k5PrefixGroup0001Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 107] = true := by
  decide

theorem k5PrefixGroup0001Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 107] = true := by
  decide

theorem k5PrefixGroup0001Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 109] = true := by
  decide

theorem k5PrefixGroup0001Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 109] = true := by
  decide

theorem k5PrefixGroup0001Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 113] = true := by
  decide

theorem k5PrefixGroup0001Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 113] = true := by
  decide

theorem k5PrefixGroup0001Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 127] = true := by
  decide

theorem k5PrefixGroup0001Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 127] = true := by
  decide

theorem k5PrefixGroup0001Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 131] = true := by
  decide

theorem k5PrefixGroup0001Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 131] = true := by
  decide

theorem k5PrefixGroup0001Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 137] = true := by
  decide

theorem k5PrefixGroup0001Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 137] = true := by
  decide

theorem k5PrefixGroup0001Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 139] = true := by
  decide

theorem k5PrefixGroup0001Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 139] = true := by
  decide

theorem k5PrefixGroup0001Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 149] = true := by
  decide

theorem k5PrefixGroup0001Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 149] = true := by
  decide

theorem k5PrefixGroup0001Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 151] = true := by
  decide

theorem k5PrefixGroup0001Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 151] = true := by
  decide

theorem k5PrefixGroup0001Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 157] = true := by
  decide

theorem k5PrefixGroup0001Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 157] = true := by
  decide

theorem k5PrefixGroup0001Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 163] = true := by
  decide

theorem k5PrefixGroup0001Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 163] = true := by
  decide

theorem k5PrefixGroup0001Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 167] = true := by
  decide

theorem k5PrefixGroup0001Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 167] = true := by
  decide

theorem k5PrefixGroup0001Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 173] = true := by
  decide

theorem k5PrefixGroup0001Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 173] = true := by
  decide

theorem k5PrefixGroup0001Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 179] = true := by
  decide

theorem k5PrefixGroup0001Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 179] = true := by
  decide

theorem k5PrefixGroup0001Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 181] = true := by
  decide

theorem k5PrefixGroup0001Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 181] = true := by
  decide

theorem k5PrefixGroup0001Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 191] = true := by
  decide

theorem k5PrefixGroup0001Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 191] = true := by
  decide

theorem k5PrefixGroup0001Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 193] = true := by
  decide

theorem k5PrefixGroup0001Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 193] = true := by
  decide

theorem k5PrefixGroup0001Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 197] = true := by
  decide

theorem k5PrefixGroup0001Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 197] = true := by
  decide

theorem k5PrefixGroup0001Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 199] = true := by
  decide

theorem k5PrefixGroup0001Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 199] = true := by
  decide

theorem k5PrefixGroup0001Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 211] = true := by
  decide

theorem k5PrefixGroup0001Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 211] = true := by
  decide

theorem k5PrefixGroup0001Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 223] = true := by
  decide

theorem k5PrefixGroup0001Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 223] = true := by
  decide

theorem k5PrefixGroup0001Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 227] = true := by
  decide

theorem k5PrefixGroup0001Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 227] = true := by
  decide

theorem k5PrefixGroup0001Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 17, 229] = true := by
  decide

theorem k5PrefixGroup0001Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 17, 229] = true := by
  decide

theorem k5PrefixGroup0001_passes :
    k5PrefixGroup0001.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0001, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0001Row0000_passes,
    k5PrefixGroup0001Row0001_passes,
    k5PrefixGroup0001Row0002_passes,
    k5PrefixGroup0001Row0003_passes,
    k5PrefixGroup0001Row0004_passes,
    k5PrefixGroup0001Row0005_passes,
    k5PrefixGroup0001Row0006_passes,
    k5PrefixGroup0001Row0007_passes,
    k5PrefixGroup0001Row0008_passes,
    k5PrefixGroup0001Row0009_passes,
    k5PrefixGroup0001Row0010_passes,
    k5PrefixGroup0001Row0011_passes,
    k5PrefixGroup0001Row0012_passes,
    k5PrefixGroup0001Row0013_passes,
    k5PrefixGroup0001Row0014_passes,
    k5PrefixGroup0001Row0015_passes,
    k5PrefixGroup0001Row0016_passes,
    k5PrefixGroup0001Row0017_passes,
    k5PrefixGroup0001Row0018_passes,
    k5PrefixGroup0001Row0019_passes,
    k5PrefixGroup0001Row0020_passes,
    k5PrefixGroup0001Row0021_passes,
    k5PrefixGroup0001Row0022_passes,
    k5PrefixGroup0001Row0023_passes,
    k5PrefixGroup0001Row0024_passes,
    k5PrefixGroup0001Row0025_passes,
    k5PrefixGroup0001Row0026_passes,
    k5PrefixGroup0001Row0027_passes,
    k5PrefixGroup0001Row0028_passes,
    k5PrefixGroup0001Row0029_passes,
    k5PrefixGroup0001Row0030_passes,
    k5PrefixGroup0001Row0031_passes,
    k5PrefixGroup0001Row0032_passes,
    k5PrefixGroup0001Row0033_passes,
    k5PrefixGroup0001Row0034_passes,
    k5PrefixGroup0001Row0035_passes,
    k5PrefixGroup0001Row0036_passes,
    k5PrefixGroup0001Row0037_passes,
    k5PrefixGroup0001Row0038_passes,
    k5PrefixGroup0001Row0039_passes,
    k5PrefixGroup0001Row0040_passes,
    k5PrefixGroup0001Row0041_passes,
    k5PrefixGroup0001Row0042_passes,
    k5PrefixGroup0001Row0043_passes,
    k5PrefixGroup0001Row0044_passes,
    k5PrefixGroup0001Row0045_passes,
    k5PrefixGroup0001Row0046_passes,
    k5PrefixGroup0001Row0047_passes,
    k5PrefixGroup0001Row0048_passes,
    k5PrefixGroup0001Row0049_passes,
    k5PrefixGroup0001Row0050_passes,
    k5PrefixGroup0001Row0051_passes,
    k5PrefixGroup0001Row0052_passes,
    k5PrefixGroup0001Row0053_passes,
    k5PrefixGroup0001Row0054_passes,
    k5PrefixGroup0001Row0055_passes,
    k5PrefixGroup0001Row0056_passes,
    k5PrefixGroup0001Row0057_passes,
    k5PrefixGroup0001Row0058_passes,
    k5PrefixGroup0001Row0059_passes,
    k5PrefixGroup0001Row0060_passes,
    k5PrefixGroup0001Row0061_passes,
    k5PrefixGroup0001Row0062_passes,
    k5PrefixGroup0001Row0063_passes,
    k5PrefixGroup0001Row0064_passes,
    k5PrefixGroup0001Row0065_passes,
    k5PrefixGroup0001Row0066_passes,
    k5PrefixGroup0001Row0067_passes,
    k5PrefixGroup0001Row0068_passes,
    k5PrefixGroup0001Row0069_passes,
    k5PrefixGroup0001Row0070_passes,
    k5PrefixGroup0001Row0071_passes,
    k5PrefixGroup0001Row0072_passes,
    k5PrefixGroup0001Row0073_passes,
    k5PrefixGroup0001Row0074_passes,
    k5PrefixGroup0001Row0075_passes,
    k5PrefixGroup0001Row0076_passes,
    k5PrefixGroup0001Row0077_passes,
    k5PrefixGroup0001Row0078_passes,
    k5PrefixGroup0001Row0079_passes,
    k5PrefixGroup0001Row0080_passes,
    k5PrefixGroup0001Row0081_passes,
    k5PrefixGroup0001Row0082_passes,
    k5PrefixGroup0001Row0083_passes,
    k5PrefixGroup0001Row0084_passes,
    k5PrefixGroup0001Row0085_passes,
    k5PrefixGroup0001Row0086_passes,
    k5PrefixGroup0001Row0087_passes,
    k5PrefixGroup0001Row0088_passes,
    k5PrefixGroup0001Row0089_passes,
    k5PrefixGroup0001Row0090_passes,
    k5PrefixGroup0001Row0091_passes,
    k5PrefixGroup0001Row0092_passes,
    k5PrefixGroup0001Row0093_passes,
    k5PrefixGroup0001Row0094_passes,
    k5PrefixGroup0001Row0095_passes,
    k5PrefixGroup0001Row0096_passes,
    k5PrefixGroup0001Row0097_passes,
    k5PrefixGroup0001Row0098_passes,
    k5PrefixGroup0001Row0099_passes,
    k5PrefixGroup0001Row0100_passes,
    k5PrefixGroup0001Row0101_passes,
    k5PrefixGroup0001Row0102_passes,
    k5PrefixGroup0001Row0103_passes,
    k5PrefixGroup0001Row0104_passes,
    k5PrefixGroup0001Row0105_passes,
    k5PrefixGroup0001Row0106_passes,
    k5PrefixGroup0001Row0107_passes,
    k5PrefixGroup0001Row0108_passes,
    k5PrefixGroup0001Row0109_passes,
    k5PrefixGroup0001Row0110_passes,
    k5PrefixGroup0001Row0111_passes,
    k5PrefixGroup0001Row0112_passes,
    k5PrefixGroup0001Row0113_passes,
    k5PrefixGroup0001Row0114_passes,
    k5PrefixGroup0001Row0115_passes,
    k5PrefixGroup0001Row0116_passes,
    k5PrefixGroup0001Row0117_passes,
    k5PrefixGroup0001Row0118_passes,
    k5PrefixGroup0001Row0119_passes,
    k5PrefixGroup0001Row0120_passes,
    k5PrefixGroup0001Row0121_passes,
    k5PrefixGroup0001Row0122_passes,
    k5PrefixGroup0001Row0123_passes,
    k5PrefixGroup0001Row0124_passes,
    k5PrefixGroup0001Row0125_passes,
    k5PrefixGroup0001Row0126_passes,
    k5PrefixGroup0001Row0127_passes]

theorem k5PrefixGroup0001_mask_upper :
    k5PrefixGroup0001.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0001, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0001Row0000_mask_upper,
    k5PrefixGroup0001Row0001_mask_upper,
    k5PrefixGroup0001Row0002_mask_upper,
    k5PrefixGroup0001Row0003_mask_upper,
    k5PrefixGroup0001Row0004_mask_upper,
    k5PrefixGroup0001Row0005_mask_upper,
    k5PrefixGroup0001Row0006_mask_upper,
    k5PrefixGroup0001Row0007_mask_upper,
    k5PrefixGroup0001Row0008_mask_upper,
    k5PrefixGroup0001Row0009_mask_upper,
    k5PrefixGroup0001Row0010_mask_upper,
    k5PrefixGroup0001Row0011_mask_upper,
    k5PrefixGroup0001Row0012_mask_upper,
    k5PrefixGroup0001Row0013_mask_upper,
    k5PrefixGroup0001Row0014_mask_upper,
    k5PrefixGroup0001Row0015_mask_upper,
    k5PrefixGroup0001Row0016_mask_upper,
    k5PrefixGroup0001Row0017_mask_upper,
    k5PrefixGroup0001Row0018_mask_upper,
    k5PrefixGroup0001Row0019_mask_upper,
    k5PrefixGroup0001Row0020_mask_upper,
    k5PrefixGroup0001Row0021_mask_upper,
    k5PrefixGroup0001Row0022_mask_upper,
    k5PrefixGroup0001Row0023_mask_upper,
    k5PrefixGroup0001Row0024_mask_upper,
    k5PrefixGroup0001Row0025_mask_upper,
    k5PrefixGroup0001Row0026_mask_upper,
    k5PrefixGroup0001Row0027_mask_upper,
    k5PrefixGroup0001Row0028_mask_upper,
    k5PrefixGroup0001Row0029_mask_upper,
    k5PrefixGroup0001Row0030_mask_upper,
    k5PrefixGroup0001Row0031_mask_upper,
    k5PrefixGroup0001Row0032_mask_upper,
    k5PrefixGroup0001Row0033_mask_upper,
    k5PrefixGroup0001Row0034_mask_upper,
    k5PrefixGroup0001Row0035_mask_upper,
    k5PrefixGroup0001Row0036_mask_upper,
    k5PrefixGroup0001Row0037_mask_upper,
    k5PrefixGroup0001Row0038_mask_upper,
    k5PrefixGroup0001Row0039_mask_upper,
    k5PrefixGroup0001Row0040_mask_upper,
    k5PrefixGroup0001Row0041_mask_upper,
    k5PrefixGroup0001Row0042_mask_upper,
    k5PrefixGroup0001Row0043_mask_upper,
    k5PrefixGroup0001Row0044_mask_upper,
    k5PrefixGroup0001Row0045_mask_upper,
    k5PrefixGroup0001Row0046_mask_upper,
    k5PrefixGroup0001Row0047_mask_upper,
    k5PrefixGroup0001Row0048_mask_upper,
    k5PrefixGroup0001Row0049_mask_upper,
    k5PrefixGroup0001Row0050_mask_upper,
    k5PrefixGroup0001Row0051_mask_upper,
    k5PrefixGroup0001Row0052_mask_upper,
    k5PrefixGroup0001Row0053_mask_upper,
    k5PrefixGroup0001Row0054_mask_upper,
    k5PrefixGroup0001Row0055_mask_upper,
    k5PrefixGroup0001Row0056_mask_upper,
    k5PrefixGroup0001Row0057_mask_upper,
    k5PrefixGroup0001Row0058_mask_upper,
    k5PrefixGroup0001Row0059_mask_upper,
    k5PrefixGroup0001Row0060_mask_upper,
    k5PrefixGroup0001Row0061_mask_upper,
    k5PrefixGroup0001Row0062_mask_upper,
    k5PrefixGroup0001Row0063_mask_upper,
    k5PrefixGroup0001Row0064_mask_upper,
    k5PrefixGroup0001Row0065_mask_upper,
    k5PrefixGroup0001Row0066_mask_upper,
    k5PrefixGroup0001Row0067_mask_upper,
    k5PrefixGroup0001Row0068_mask_upper,
    k5PrefixGroup0001Row0069_mask_upper,
    k5PrefixGroup0001Row0070_mask_upper,
    k5PrefixGroup0001Row0071_mask_upper,
    k5PrefixGroup0001Row0072_mask_upper,
    k5PrefixGroup0001Row0073_mask_upper,
    k5PrefixGroup0001Row0074_mask_upper,
    k5PrefixGroup0001Row0075_mask_upper,
    k5PrefixGroup0001Row0076_mask_upper,
    k5PrefixGroup0001Row0077_mask_upper,
    k5PrefixGroup0001Row0078_mask_upper,
    k5PrefixGroup0001Row0079_mask_upper,
    k5PrefixGroup0001Row0080_mask_upper,
    k5PrefixGroup0001Row0081_mask_upper,
    k5PrefixGroup0001Row0082_mask_upper,
    k5PrefixGroup0001Row0083_mask_upper,
    k5PrefixGroup0001Row0084_mask_upper,
    k5PrefixGroup0001Row0085_mask_upper,
    k5PrefixGroup0001Row0086_mask_upper,
    k5PrefixGroup0001Row0087_mask_upper,
    k5PrefixGroup0001Row0088_mask_upper,
    k5PrefixGroup0001Row0089_mask_upper,
    k5PrefixGroup0001Row0090_mask_upper,
    k5PrefixGroup0001Row0091_mask_upper,
    k5PrefixGroup0001Row0092_mask_upper,
    k5PrefixGroup0001Row0093_mask_upper,
    k5PrefixGroup0001Row0094_mask_upper,
    k5PrefixGroup0001Row0095_mask_upper,
    k5PrefixGroup0001Row0096_mask_upper,
    k5PrefixGroup0001Row0097_mask_upper,
    k5PrefixGroup0001Row0098_mask_upper,
    k5PrefixGroup0001Row0099_mask_upper,
    k5PrefixGroup0001Row0100_mask_upper,
    k5PrefixGroup0001Row0101_mask_upper,
    k5PrefixGroup0001Row0102_mask_upper,
    k5PrefixGroup0001Row0103_mask_upper,
    k5PrefixGroup0001Row0104_mask_upper,
    k5PrefixGroup0001Row0105_mask_upper,
    k5PrefixGroup0001Row0106_mask_upper,
    k5PrefixGroup0001Row0107_mask_upper,
    k5PrefixGroup0001Row0108_mask_upper,
    k5PrefixGroup0001Row0109_mask_upper,
    k5PrefixGroup0001Row0110_mask_upper,
    k5PrefixGroup0001Row0111_mask_upper,
    k5PrefixGroup0001Row0112_mask_upper,
    k5PrefixGroup0001Row0113_mask_upper,
    k5PrefixGroup0001Row0114_mask_upper,
    k5PrefixGroup0001Row0115_mask_upper,
    k5PrefixGroup0001Row0116_mask_upper,
    k5PrefixGroup0001Row0117_mask_upper,
    k5PrefixGroup0001Row0118_mask_upper,
    k5PrefixGroup0001Row0119_mask_upper,
    k5PrefixGroup0001Row0120_mask_upper,
    k5PrefixGroup0001Row0121_mask_upper,
    k5PrefixGroup0001Row0122_mask_upper,
    k5PrefixGroup0001Row0123_mask_upper,
    k5PrefixGroup0001Row0124_mask_upper,
    k5PrefixGroup0001Row0125_mask_upper,
    k5PrefixGroup0001Row0126_mask_upper,
    k5PrefixGroup0001Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
