import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13],
     [3, 7, 11, 17],
     [3, 7, 11, 19],
     [3, 7, 11, 23],
     [3, 7, 11, 29],
     [3, 7, 11, 31],
     [3, 7, 11, 37],
     [3, 7, 11, 41],
     [3, 7, 11, 43],
     [3, 7, 11, 47],
     [3, 7, 11, 53],
     [3, 7, 11, 59],
     [3, 7, 11, 61],
     [3, 7, 11, 67],
     [3, 7, 11, 71],
     [3, 7, 11, 73],
     [3, 7, 11, 79],
     [3, 7, 11, 83],
     [3, 7, 11, 89],
     [3, 7, 11, 97],
     [3, 7, 11, 101],
     [3, 7, 11, 103],
     [3, 7, 11, 107],
     [3, 7, 11, 109],
     [3, 7, 11, 113],
     [3, 7, 11, 127],
     [3, 7, 11, 131],
     [3, 7, 11, 137],
     [3, 7, 11, 139],
     [3, 7, 11, 149],
     [3, 7, 11, 151],
     [3, 7, 11, 157],
     [3, 7, 11, 163],
     [3, 7, 11, 167],
     [3, 7, 11, 173],
     [3, 7, 11, 179],
     [3, 7, 11, 181],
     [3, 7, 11, 191],
     [3, 7, 11, 193],
     [3, 7, 11, 197],
     [3, 7, 11, 199],
     [3, 7, 11, 211],
     [3, 7, 11, 223],
     [3, 7, 11, 227],
     [3, 7, 11, 229],
     [3, 7, 11, 233],
     [3, 7, 11, 239],
     [3, 7, 11, 241],
     [3, 7, 11, 251],
     [3, 7, 11, 257],
     [3, 7, 11, 263],
     [3, 7, 11, 269],
     [3, 7, 11, 271],
     [3, 7, 11, 277],
     [3, 7, 11, 281],
     [3, 7, 11, 283],
     [3, 7, 11, 293],
     [3, 7, 11, 307],
     [3, 7, 11, 311],
     [3, 7, 11, 313],
     [3, 7, 11, 317],
     [3, 7, 11, 331],
     [3, 7, 11, 337],
     [3, 7, 11, 347],
     [3, 7, 11, 349],
     [3, 7, 11, 353],
     [3, 7, 11, 359],
     [3, 7, 11, 367],
     [3, 7, 11, 373],
     [3, 7, 11, 379],
     [3, 7, 11, 383],
     [3, 7, 11, 389],
     [3, 7, 11, 397],
     [3, 7, 11, 401],
     [3, 7, 11, 409],
     [3, 7, 11, 419],
     [3, 7, 11, 421],
     [3, 7, 11, 431],
     [3, 7, 11, 433],
     [3, 7, 11, 439],
     [3, 7, 11, 443],
     [3, 7, 11, 449],
     [3, 7, 11, 457],
     [3, 7, 11, 461],
     [3, 7, 11, 463],
     [3, 7, 11, 467],
     [3, 7, 11, 479],
     [3, 7, 11, 487],
     [3, 7, 11, 491],
     [3, 7, 11, 499],
     [3, 7, 11, 503],
     [3, 7, 11, 509],
     [3, 7, 11, 521],
     [3, 7, 11, 523],
     [3, 7, 11, 541],
     [3, 7, 11, 547],
     [3, 7, 11, 557],
     [3, 7, 11, 563],
     [3, 7, 11, 569],
     [3, 7, 11, 571],
     [3, 7, 11, 577],
     [3, 7, 11, 587],
     [3, 7, 11, 593],
     [3, 7, 11, 599],
     [3, 7, 11, 601],
     [3, 7, 11, 607],
     [3, 7, 11, 613],
     [3, 7, 11, 617],
     [3, 7, 11, 619],
     [3, 7, 11, 631],
     [3, 7, 11, 641],
     [3, 7, 11, 643],
     [3, 7, 13, 17],
     [3, 7, 13, 19],
     [3, 7, 13, 23],
     [3, 7, 13, 29],
     [3, 7, 13, 31],
     [3, 7, 13, 37],
     [3, 7, 13, 41],
     [3, 7, 13, 43],
     [3, 7, 13, 47],
     [3, 7, 13, 53],
     [3, 7, 13, 59],
     [3, 7, 13, 61],
     [3, 7, 13, 67],
     [3, 7, 13, 71],
     [3, 7, 13, 73],
     [3, 7, 13, 79]]

theorem k5PrefixGroup0000Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 13] = true := by
  decide

theorem k5PrefixGroup0000Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13] = true := by
  decide

theorem k5PrefixGroup0000Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 17] = true := by
  decide

theorem k5PrefixGroup0000Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17] = true := by
  decide

theorem k5PrefixGroup0000Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 19] = true := by
  decide

theorem k5PrefixGroup0000Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19] = true := by
  decide

theorem k5PrefixGroup0000Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 23] = true := by
  decide

theorem k5PrefixGroup0000Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23] = true := by
  decide

theorem k5PrefixGroup0000Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 29] = true := by
  decide

theorem k5PrefixGroup0000Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29] = true := by
  decide

theorem k5PrefixGroup0000Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 31] = true := by
  decide

theorem k5PrefixGroup0000Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31] = true := by
  decide

theorem k5PrefixGroup0000Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 37] = true := by
  decide

theorem k5PrefixGroup0000Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37] = true := by
  decide

theorem k5PrefixGroup0000Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 41] = true := by
  decide

theorem k5PrefixGroup0000Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41] = true := by
  decide

theorem k5PrefixGroup0000Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 43] = true := by
  decide

theorem k5PrefixGroup0000Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43] = true := by
  decide

theorem k5PrefixGroup0000Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 47] = true := by
  decide

theorem k5PrefixGroup0000Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47] = true := by
  decide

theorem k5PrefixGroup0000Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 53] = true := by
  decide

theorem k5PrefixGroup0000Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53] = true := by
  decide

theorem k5PrefixGroup0000Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 59] = true := by
  decide

theorem k5PrefixGroup0000Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59] = true := by
  decide

theorem k5PrefixGroup0000Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 61] = true := by
  decide

theorem k5PrefixGroup0000Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61] = true := by
  decide

theorem k5PrefixGroup0000Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 67] = true := by
  decide

theorem k5PrefixGroup0000Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67] = true := by
  decide

theorem k5PrefixGroup0000Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 71] = true := by
  decide

theorem k5PrefixGroup0000Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71] = true := by
  decide

theorem k5PrefixGroup0000Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 73] = true := by
  decide

theorem k5PrefixGroup0000Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73] = true := by
  decide

theorem k5PrefixGroup0000Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 79] = true := by
  decide

theorem k5PrefixGroup0000Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 79] = true := by
  decide

theorem k5PrefixGroup0000Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 83] = true := by
  decide

theorem k5PrefixGroup0000Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 83] = true := by
  decide

theorem k5PrefixGroup0000Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 89] = true := by
  decide

theorem k5PrefixGroup0000Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 89] = true := by
  decide

theorem k5PrefixGroup0000Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 97] = true := by
  decide

theorem k5PrefixGroup0000Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 97] = true := by
  decide

theorem k5PrefixGroup0000Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 101] = true := by
  decide

theorem k5PrefixGroup0000Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 101] = true := by
  decide

theorem k5PrefixGroup0000Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 103] = true := by
  decide

theorem k5PrefixGroup0000Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 103] = true := by
  decide

theorem k5PrefixGroup0000Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 107] = true := by
  decide

theorem k5PrefixGroup0000Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 107] = true := by
  decide

theorem k5PrefixGroup0000Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 109] = true := by
  decide

theorem k5PrefixGroup0000Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 109] = true := by
  decide

theorem k5PrefixGroup0000Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 113] = true := by
  decide

theorem k5PrefixGroup0000Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 113] = true := by
  decide

theorem k5PrefixGroup0000Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 127] = true := by
  decide

theorem k5PrefixGroup0000Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 127] = true := by
  decide

theorem k5PrefixGroup0000Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 131] = true := by
  decide

theorem k5PrefixGroup0000Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 131] = true := by
  decide

theorem k5PrefixGroup0000Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 137] = true := by
  decide

theorem k5PrefixGroup0000Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 137] = true := by
  decide

theorem k5PrefixGroup0000Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 139] = true := by
  decide

theorem k5PrefixGroup0000Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 139] = true := by
  decide

theorem k5PrefixGroup0000Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 149] = true := by
  decide

theorem k5PrefixGroup0000Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 149] = true := by
  decide

theorem k5PrefixGroup0000Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 151] = true := by
  decide

theorem k5PrefixGroup0000Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 151] = true := by
  decide

theorem k5PrefixGroup0000Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 157] = true := by
  decide

theorem k5PrefixGroup0000Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 157] = true := by
  decide

theorem k5PrefixGroup0000Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 163] = true := by
  decide

theorem k5PrefixGroup0000Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 163] = true := by
  decide

theorem k5PrefixGroup0000Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 167] = true := by
  decide

theorem k5PrefixGroup0000Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 167] = true := by
  decide

theorem k5PrefixGroup0000Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 173] = true := by
  decide

theorem k5PrefixGroup0000Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 173] = true := by
  decide

theorem k5PrefixGroup0000Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 179] = true := by
  decide

theorem k5PrefixGroup0000Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 179] = true := by
  decide

theorem k5PrefixGroup0000Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 181] = true := by
  decide

theorem k5PrefixGroup0000Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 181] = true := by
  decide

theorem k5PrefixGroup0000Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 191] = true := by
  decide

theorem k5PrefixGroup0000Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 191] = true := by
  decide

theorem k5PrefixGroup0000Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 193] = true := by
  decide

theorem k5PrefixGroup0000Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 193] = true := by
  decide

theorem k5PrefixGroup0000Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 197] = true := by
  decide

theorem k5PrefixGroup0000Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 197] = true := by
  decide

theorem k5PrefixGroup0000Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 199] = true := by
  decide

theorem k5PrefixGroup0000Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 199] = true := by
  decide

theorem k5PrefixGroup0000Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 211] = true := by
  decide

theorem k5PrefixGroup0000Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 211] = true := by
  decide

theorem k5PrefixGroup0000Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 223] = true := by
  decide

theorem k5PrefixGroup0000Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 223] = true := by
  decide

theorem k5PrefixGroup0000Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 227] = true := by
  decide

theorem k5PrefixGroup0000Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 227] = true := by
  decide

theorem k5PrefixGroup0000Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 229] = true := by
  decide

theorem k5PrefixGroup0000Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 229] = true := by
  decide

theorem k5PrefixGroup0000Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 233] = true := by
  decide

theorem k5PrefixGroup0000Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 233] = true := by
  decide

theorem k5PrefixGroup0000Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 239] = true := by
  decide

theorem k5PrefixGroup0000Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 239] = true := by
  decide

theorem k5PrefixGroup0000Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 241] = true := by
  decide

theorem k5PrefixGroup0000Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 241] = true := by
  decide

theorem k5PrefixGroup0000Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 251] = true := by
  decide

theorem k5PrefixGroup0000Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 251] = true := by
  decide

theorem k5PrefixGroup0000Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 257] = true := by
  decide

theorem k5PrefixGroup0000Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 257] = true := by
  decide

theorem k5PrefixGroup0000Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 263] = true := by
  decide

theorem k5PrefixGroup0000Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 263] = true := by
  decide

theorem k5PrefixGroup0000Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 269] = true := by
  decide

theorem k5PrefixGroup0000Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 269] = true := by
  decide

theorem k5PrefixGroup0000Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 271] = true := by
  decide

theorem k5PrefixGroup0000Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 271] = true := by
  decide

theorem k5PrefixGroup0000Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 277] = true := by
  decide

theorem k5PrefixGroup0000Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 277] = true := by
  decide

theorem k5PrefixGroup0000Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 281] = true := by
  decide

theorem k5PrefixGroup0000Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 281] = true := by
  decide

theorem k5PrefixGroup0000Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 283] = true := by
  decide

theorem k5PrefixGroup0000Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 283] = true := by
  decide

theorem k5PrefixGroup0000Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 293] = true := by
  decide

theorem k5PrefixGroup0000Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 293] = true := by
  decide

theorem k5PrefixGroup0000Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 307] = true := by
  decide

theorem k5PrefixGroup0000Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 307] = true := by
  decide

theorem k5PrefixGroup0000Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 311] = true := by
  decide

theorem k5PrefixGroup0000Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 311] = true := by
  decide

theorem k5PrefixGroup0000Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 313] = true := by
  decide

theorem k5PrefixGroup0000Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 313] = true := by
  decide

theorem k5PrefixGroup0000Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 317] = true := by
  decide

theorem k5PrefixGroup0000Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 317] = true := by
  decide

theorem k5PrefixGroup0000Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 331] = true := by
  decide

theorem k5PrefixGroup0000Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 331] = true := by
  decide

theorem k5PrefixGroup0000Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 337] = true := by
  decide

theorem k5PrefixGroup0000Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 337] = true := by
  decide

theorem k5PrefixGroup0000Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 347] = true := by
  decide

theorem k5PrefixGroup0000Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 347] = true := by
  decide

theorem k5PrefixGroup0000Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 349] = true := by
  decide

theorem k5PrefixGroup0000Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 349] = true := by
  decide

theorem k5PrefixGroup0000Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 353] = true := by
  decide

theorem k5PrefixGroup0000Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 353] = true := by
  decide

theorem k5PrefixGroup0000Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 359] = true := by
  decide

theorem k5PrefixGroup0000Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 359] = true := by
  decide

theorem k5PrefixGroup0000Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 367] = true := by
  decide

theorem k5PrefixGroup0000Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 367] = true := by
  decide

theorem k5PrefixGroup0000Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 373] = true := by
  decide

theorem k5PrefixGroup0000Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 373] = true := by
  decide

theorem k5PrefixGroup0000Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 379] = true := by
  decide

theorem k5PrefixGroup0000Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 379] = true := by
  decide

theorem k5PrefixGroup0000Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 383] = true := by
  decide

theorem k5PrefixGroup0000Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 383] = true := by
  decide

theorem k5PrefixGroup0000Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 389] = true := by
  decide

theorem k5PrefixGroup0000Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 389] = true := by
  decide

theorem k5PrefixGroup0000Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 397] = true := by
  decide

theorem k5PrefixGroup0000Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 397] = true := by
  decide

theorem k5PrefixGroup0000Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 401] = true := by
  decide

theorem k5PrefixGroup0000Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 401] = true := by
  decide

theorem k5PrefixGroup0000Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 409] = true := by
  decide

theorem k5PrefixGroup0000Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 409] = true := by
  decide

theorem k5PrefixGroup0000Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 419] = true := by
  decide

theorem k5PrefixGroup0000Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 419] = true := by
  decide

theorem k5PrefixGroup0000Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 421] = true := by
  decide

theorem k5PrefixGroup0000Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 421] = true := by
  decide

theorem k5PrefixGroup0000Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 431] = true := by
  decide

theorem k5PrefixGroup0000Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 431] = true := by
  decide

theorem k5PrefixGroup0000Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 433] = true := by
  decide

theorem k5PrefixGroup0000Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 433] = true := by
  decide

theorem k5PrefixGroup0000Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 439] = true := by
  decide

theorem k5PrefixGroup0000Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 439] = true := by
  decide

theorem k5PrefixGroup0000Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 443] = true := by
  decide

theorem k5PrefixGroup0000Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 443] = true := by
  decide

theorem k5PrefixGroup0000Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 449] = true := by
  decide

theorem k5PrefixGroup0000Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 449] = true := by
  decide

theorem k5PrefixGroup0000Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 457] = true := by
  decide

theorem k5PrefixGroup0000Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 457] = true := by
  decide

theorem k5PrefixGroup0000Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 461] = true := by
  decide

theorem k5PrefixGroup0000Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 461] = true := by
  decide

theorem k5PrefixGroup0000Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 463] = true := by
  decide

theorem k5PrefixGroup0000Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 463] = true := by
  decide

theorem k5PrefixGroup0000Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 467] = true := by
  decide

theorem k5PrefixGroup0000Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 467] = true := by
  decide

theorem k5PrefixGroup0000Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 479] = true := by
  decide

theorem k5PrefixGroup0000Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 479] = true := by
  decide

theorem k5PrefixGroup0000Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 487] = true := by
  decide

theorem k5PrefixGroup0000Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 487] = true := by
  decide

theorem k5PrefixGroup0000Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 491] = true := by
  decide

theorem k5PrefixGroup0000Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 491] = true := by
  decide

theorem k5PrefixGroup0000Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 499] = true := by
  decide

theorem k5PrefixGroup0000Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 499] = true := by
  decide

theorem k5PrefixGroup0000Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 503] = true := by
  decide

theorem k5PrefixGroup0000Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 503] = true := by
  decide

theorem k5PrefixGroup0000Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 509] = true := by
  decide

theorem k5PrefixGroup0000Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 509] = true := by
  decide

theorem k5PrefixGroup0000Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 521] = true := by
  decide

theorem k5PrefixGroup0000Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 521] = true := by
  decide

theorem k5PrefixGroup0000Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 523] = true := by
  decide

theorem k5PrefixGroup0000Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 523] = true := by
  decide

theorem k5PrefixGroup0000Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 541] = true := by
  decide

theorem k5PrefixGroup0000Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 541] = true := by
  decide

theorem k5PrefixGroup0000Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 547] = true := by
  decide

theorem k5PrefixGroup0000Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 547] = true := by
  decide

theorem k5PrefixGroup0000Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 557] = true := by
  decide

theorem k5PrefixGroup0000Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 557] = true := by
  decide

theorem k5PrefixGroup0000Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 563] = true := by
  decide

theorem k5PrefixGroup0000Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 563] = true := by
  decide

theorem k5PrefixGroup0000Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 569] = true := by
  decide

theorem k5PrefixGroup0000Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 569] = true := by
  decide

theorem k5PrefixGroup0000Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 571] = true := by
  decide

theorem k5PrefixGroup0000Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 571] = true := by
  decide

theorem k5PrefixGroup0000Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 577] = true := by
  decide

theorem k5PrefixGroup0000Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 577] = true := by
  decide

theorem k5PrefixGroup0000Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 587] = true := by
  decide

theorem k5PrefixGroup0000Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 587] = true := by
  decide

theorem k5PrefixGroup0000Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 593] = true := by
  decide

theorem k5PrefixGroup0000Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 593] = true := by
  decide

theorem k5PrefixGroup0000Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 599] = true := by
  decide

theorem k5PrefixGroup0000Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 599] = true := by
  decide

theorem k5PrefixGroup0000Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 601] = true := by
  decide

theorem k5PrefixGroup0000Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 601] = true := by
  decide

theorem k5PrefixGroup0000Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 607] = true := by
  decide

theorem k5PrefixGroup0000Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 607] = true := by
  decide

theorem k5PrefixGroup0000Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 613] = true := by
  decide

theorem k5PrefixGroup0000Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 613] = true := by
  decide

theorem k5PrefixGroup0000Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 617] = true := by
  decide

theorem k5PrefixGroup0000Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 617] = true := by
  decide

theorem k5PrefixGroup0000Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 619] = true := by
  decide

theorem k5PrefixGroup0000Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 619] = true := by
  decide

theorem k5PrefixGroup0000Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 631] = true := by
  decide

theorem k5PrefixGroup0000Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 631] = true := by
  decide

theorem k5PrefixGroup0000Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 641] = true := by
  decide

theorem k5PrefixGroup0000Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 641] = true := by
  decide

theorem k5PrefixGroup0000Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 11, 643] = true := by
  decide

theorem k5PrefixGroup0000Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 643] = true := by
  decide

theorem k5PrefixGroup0000Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 17] = true := by
  decide

theorem k5PrefixGroup0000Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17] = true := by
  decide

theorem k5PrefixGroup0000Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 19] = true := by
  decide

theorem k5PrefixGroup0000Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 19] = true := by
  decide

theorem k5PrefixGroup0000Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 23] = true := by
  decide

theorem k5PrefixGroup0000Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 23] = true := by
  decide

theorem k5PrefixGroup0000Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 29] = true := by
  decide

theorem k5PrefixGroup0000Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 29] = true := by
  decide

theorem k5PrefixGroup0000Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 31] = true := by
  decide

theorem k5PrefixGroup0000Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 31] = true := by
  decide

theorem k5PrefixGroup0000Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 37] = true := by
  decide

theorem k5PrefixGroup0000Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 37] = true := by
  decide

theorem k5PrefixGroup0000Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 41] = true := by
  decide

theorem k5PrefixGroup0000Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 41] = true := by
  decide

theorem k5PrefixGroup0000Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 43] = true := by
  decide

theorem k5PrefixGroup0000Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 43] = true := by
  decide

theorem k5PrefixGroup0000Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 47] = true := by
  decide

theorem k5PrefixGroup0000Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 47] = true := by
  decide

theorem k5PrefixGroup0000Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 53] = true := by
  decide

theorem k5PrefixGroup0000Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 53] = true := by
  decide

theorem k5PrefixGroup0000Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 59] = true := by
  decide

theorem k5PrefixGroup0000Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 59] = true := by
  decide

theorem k5PrefixGroup0000Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 61] = true := by
  decide

theorem k5PrefixGroup0000Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 61] = true := by
  decide

theorem k5PrefixGroup0000Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 67] = true := by
  decide

theorem k5PrefixGroup0000Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 67] = true := by
  decide

theorem k5PrefixGroup0000Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 71] = true := by
  decide

theorem k5PrefixGroup0000Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 71] = true := by
  decide

theorem k5PrefixGroup0000Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 73] = true := by
  decide

theorem k5PrefixGroup0000Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 73] = true := by
  decide

theorem k5PrefixGroup0000Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 13, 79] = true := by
  decide

theorem k5PrefixGroup0000Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 79] = true := by
  decide

theorem k5PrefixGroup0000_passes :
    k5PrefixGroup0000.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0000Row0000_passes,
    k5PrefixGroup0000Row0001_passes,
    k5PrefixGroup0000Row0002_passes,
    k5PrefixGroup0000Row0003_passes,
    k5PrefixGroup0000Row0004_passes,
    k5PrefixGroup0000Row0005_passes,
    k5PrefixGroup0000Row0006_passes,
    k5PrefixGroup0000Row0007_passes,
    k5PrefixGroup0000Row0008_passes,
    k5PrefixGroup0000Row0009_passes,
    k5PrefixGroup0000Row0010_passes,
    k5PrefixGroup0000Row0011_passes,
    k5PrefixGroup0000Row0012_passes,
    k5PrefixGroup0000Row0013_passes,
    k5PrefixGroup0000Row0014_passes,
    k5PrefixGroup0000Row0015_passes,
    k5PrefixGroup0000Row0016_passes,
    k5PrefixGroup0000Row0017_passes,
    k5PrefixGroup0000Row0018_passes,
    k5PrefixGroup0000Row0019_passes,
    k5PrefixGroup0000Row0020_passes,
    k5PrefixGroup0000Row0021_passes,
    k5PrefixGroup0000Row0022_passes,
    k5PrefixGroup0000Row0023_passes,
    k5PrefixGroup0000Row0024_passes,
    k5PrefixGroup0000Row0025_passes,
    k5PrefixGroup0000Row0026_passes,
    k5PrefixGroup0000Row0027_passes,
    k5PrefixGroup0000Row0028_passes,
    k5PrefixGroup0000Row0029_passes,
    k5PrefixGroup0000Row0030_passes,
    k5PrefixGroup0000Row0031_passes,
    k5PrefixGroup0000Row0032_passes,
    k5PrefixGroup0000Row0033_passes,
    k5PrefixGroup0000Row0034_passes,
    k5PrefixGroup0000Row0035_passes,
    k5PrefixGroup0000Row0036_passes,
    k5PrefixGroup0000Row0037_passes,
    k5PrefixGroup0000Row0038_passes,
    k5PrefixGroup0000Row0039_passes,
    k5PrefixGroup0000Row0040_passes,
    k5PrefixGroup0000Row0041_passes,
    k5PrefixGroup0000Row0042_passes,
    k5PrefixGroup0000Row0043_passes,
    k5PrefixGroup0000Row0044_passes,
    k5PrefixGroup0000Row0045_passes,
    k5PrefixGroup0000Row0046_passes,
    k5PrefixGroup0000Row0047_passes,
    k5PrefixGroup0000Row0048_passes,
    k5PrefixGroup0000Row0049_passes,
    k5PrefixGroup0000Row0050_passes,
    k5PrefixGroup0000Row0051_passes,
    k5PrefixGroup0000Row0052_passes,
    k5PrefixGroup0000Row0053_passes,
    k5PrefixGroup0000Row0054_passes,
    k5PrefixGroup0000Row0055_passes,
    k5PrefixGroup0000Row0056_passes,
    k5PrefixGroup0000Row0057_passes,
    k5PrefixGroup0000Row0058_passes,
    k5PrefixGroup0000Row0059_passes,
    k5PrefixGroup0000Row0060_passes,
    k5PrefixGroup0000Row0061_passes,
    k5PrefixGroup0000Row0062_passes,
    k5PrefixGroup0000Row0063_passes,
    k5PrefixGroup0000Row0064_passes,
    k5PrefixGroup0000Row0065_passes,
    k5PrefixGroup0000Row0066_passes,
    k5PrefixGroup0000Row0067_passes,
    k5PrefixGroup0000Row0068_passes,
    k5PrefixGroup0000Row0069_passes,
    k5PrefixGroup0000Row0070_passes,
    k5PrefixGroup0000Row0071_passes,
    k5PrefixGroup0000Row0072_passes,
    k5PrefixGroup0000Row0073_passes,
    k5PrefixGroup0000Row0074_passes,
    k5PrefixGroup0000Row0075_passes,
    k5PrefixGroup0000Row0076_passes,
    k5PrefixGroup0000Row0077_passes,
    k5PrefixGroup0000Row0078_passes,
    k5PrefixGroup0000Row0079_passes,
    k5PrefixGroup0000Row0080_passes,
    k5PrefixGroup0000Row0081_passes,
    k5PrefixGroup0000Row0082_passes,
    k5PrefixGroup0000Row0083_passes,
    k5PrefixGroup0000Row0084_passes,
    k5PrefixGroup0000Row0085_passes,
    k5PrefixGroup0000Row0086_passes,
    k5PrefixGroup0000Row0087_passes,
    k5PrefixGroup0000Row0088_passes,
    k5PrefixGroup0000Row0089_passes,
    k5PrefixGroup0000Row0090_passes,
    k5PrefixGroup0000Row0091_passes,
    k5PrefixGroup0000Row0092_passes,
    k5PrefixGroup0000Row0093_passes,
    k5PrefixGroup0000Row0094_passes,
    k5PrefixGroup0000Row0095_passes,
    k5PrefixGroup0000Row0096_passes,
    k5PrefixGroup0000Row0097_passes,
    k5PrefixGroup0000Row0098_passes,
    k5PrefixGroup0000Row0099_passes,
    k5PrefixGroup0000Row0100_passes,
    k5PrefixGroup0000Row0101_passes,
    k5PrefixGroup0000Row0102_passes,
    k5PrefixGroup0000Row0103_passes,
    k5PrefixGroup0000Row0104_passes,
    k5PrefixGroup0000Row0105_passes,
    k5PrefixGroup0000Row0106_passes,
    k5PrefixGroup0000Row0107_passes,
    k5PrefixGroup0000Row0108_passes,
    k5PrefixGroup0000Row0109_passes,
    k5PrefixGroup0000Row0110_passes,
    k5PrefixGroup0000Row0111_passes,
    k5PrefixGroup0000Row0112_passes,
    k5PrefixGroup0000Row0113_passes,
    k5PrefixGroup0000Row0114_passes,
    k5PrefixGroup0000Row0115_passes,
    k5PrefixGroup0000Row0116_passes,
    k5PrefixGroup0000Row0117_passes,
    k5PrefixGroup0000Row0118_passes,
    k5PrefixGroup0000Row0119_passes,
    k5PrefixGroup0000Row0120_passes,
    k5PrefixGroup0000Row0121_passes,
    k5PrefixGroup0000Row0122_passes,
    k5PrefixGroup0000Row0123_passes,
    k5PrefixGroup0000Row0124_passes,
    k5PrefixGroup0000Row0125_passes,
    k5PrefixGroup0000Row0126_passes,
    k5PrefixGroup0000Row0127_passes]

theorem k5PrefixGroup0000_mask_upper :
    k5PrefixGroup0000.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0000Row0000_mask_upper,
    k5PrefixGroup0000Row0001_mask_upper,
    k5PrefixGroup0000Row0002_mask_upper,
    k5PrefixGroup0000Row0003_mask_upper,
    k5PrefixGroup0000Row0004_mask_upper,
    k5PrefixGroup0000Row0005_mask_upper,
    k5PrefixGroup0000Row0006_mask_upper,
    k5PrefixGroup0000Row0007_mask_upper,
    k5PrefixGroup0000Row0008_mask_upper,
    k5PrefixGroup0000Row0009_mask_upper,
    k5PrefixGroup0000Row0010_mask_upper,
    k5PrefixGroup0000Row0011_mask_upper,
    k5PrefixGroup0000Row0012_mask_upper,
    k5PrefixGroup0000Row0013_mask_upper,
    k5PrefixGroup0000Row0014_mask_upper,
    k5PrefixGroup0000Row0015_mask_upper,
    k5PrefixGroup0000Row0016_mask_upper,
    k5PrefixGroup0000Row0017_mask_upper,
    k5PrefixGroup0000Row0018_mask_upper,
    k5PrefixGroup0000Row0019_mask_upper,
    k5PrefixGroup0000Row0020_mask_upper,
    k5PrefixGroup0000Row0021_mask_upper,
    k5PrefixGroup0000Row0022_mask_upper,
    k5PrefixGroup0000Row0023_mask_upper,
    k5PrefixGroup0000Row0024_mask_upper,
    k5PrefixGroup0000Row0025_mask_upper,
    k5PrefixGroup0000Row0026_mask_upper,
    k5PrefixGroup0000Row0027_mask_upper,
    k5PrefixGroup0000Row0028_mask_upper,
    k5PrefixGroup0000Row0029_mask_upper,
    k5PrefixGroup0000Row0030_mask_upper,
    k5PrefixGroup0000Row0031_mask_upper,
    k5PrefixGroup0000Row0032_mask_upper,
    k5PrefixGroup0000Row0033_mask_upper,
    k5PrefixGroup0000Row0034_mask_upper,
    k5PrefixGroup0000Row0035_mask_upper,
    k5PrefixGroup0000Row0036_mask_upper,
    k5PrefixGroup0000Row0037_mask_upper,
    k5PrefixGroup0000Row0038_mask_upper,
    k5PrefixGroup0000Row0039_mask_upper,
    k5PrefixGroup0000Row0040_mask_upper,
    k5PrefixGroup0000Row0041_mask_upper,
    k5PrefixGroup0000Row0042_mask_upper,
    k5PrefixGroup0000Row0043_mask_upper,
    k5PrefixGroup0000Row0044_mask_upper,
    k5PrefixGroup0000Row0045_mask_upper,
    k5PrefixGroup0000Row0046_mask_upper,
    k5PrefixGroup0000Row0047_mask_upper,
    k5PrefixGroup0000Row0048_mask_upper,
    k5PrefixGroup0000Row0049_mask_upper,
    k5PrefixGroup0000Row0050_mask_upper,
    k5PrefixGroup0000Row0051_mask_upper,
    k5PrefixGroup0000Row0052_mask_upper,
    k5PrefixGroup0000Row0053_mask_upper,
    k5PrefixGroup0000Row0054_mask_upper,
    k5PrefixGroup0000Row0055_mask_upper,
    k5PrefixGroup0000Row0056_mask_upper,
    k5PrefixGroup0000Row0057_mask_upper,
    k5PrefixGroup0000Row0058_mask_upper,
    k5PrefixGroup0000Row0059_mask_upper,
    k5PrefixGroup0000Row0060_mask_upper,
    k5PrefixGroup0000Row0061_mask_upper,
    k5PrefixGroup0000Row0062_mask_upper,
    k5PrefixGroup0000Row0063_mask_upper,
    k5PrefixGroup0000Row0064_mask_upper,
    k5PrefixGroup0000Row0065_mask_upper,
    k5PrefixGroup0000Row0066_mask_upper,
    k5PrefixGroup0000Row0067_mask_upper,
    k5PrefixGroup0000Row0068_mask_upper,
    k5PrefixGroup0000Row0069_mask_upper,
    k5PrefixGroup0000Row0070_mask_upper,
    k5PrefixGroup0000Row0071_mask_upper,
    k5PrefixGroup0000Row0072_mask_upper,
    k5PrefixGroup0000Row0073_mask_upper,
    k5PrefixGroup0000Row0074_mask_upper,
    k5PrefixGroup0000Row0075_mask_upper,
    k5PrefixGroup0000Row0076_mask_upper,
    k5PrefixGroup0000Row0077_mask_upper,
    k5PrefixGroup0000Row0078_mask_upper,
    k5PrefixGroup0000Row0079_mask_upper,
    k5PrefixGroup0000Row0080_mask_upper,
    k5PrefixGroup0000Row0081_mask_upper,
    k5PrefixGroup0000Row0082_mask_upper,
    k5PrefixGroup0000Row0083_mask_upper,
    k5PrefixGroup0000Row0084_mask_upper,
    k5PrefixGroup0000Row0085_mask_upper,
    k5PrefixGroup0000Row0086_mask_upper,
    k5PrefixGroup0000Row0087_mask_upper,
    k5PrefixGroup0000Row0088_mask_upper,
    k5PrefixGroup0000Row0089_mask_upper,
    k5PrefixGroup0000Row0090_mask_upper,
    k5PrefixGroup0000Row0091_mask_upper,
    k5PrefixGroup0000Row0092_mask_upper,
    k5PrefixGroup0000Row0093_mask_upper,
    k5PrefixGroup0000Row0094_mask_upper,
    k5PrefixGroup0000Row0095_mask_upper,
    k5PrefixGroup0000Row0096_mask_upper,
    k5PrefixGroup0000Row0097_mask_upper,
    k5PrefixGroup0000Row0098_mask_upper,
    k5PrefixGroup0000Row0099_mask_upper,
    k5PrefixGroup0000Row0100_mask_upper,
    k5PrefixGroup0000Row0101_mask_upper,
    k5PrefixGroup0000Row0102_mask_upper,
    k5PrefixGroup0000Row0103_mask_upper,
    k5PrefixGroup0000Row0104_mask_upper,
    k5PrefixGroup0000Row0105_mask_upper,
    k5PrefixGroup0000Row0106_mask_upper,
    k5PrefixGroup0000Row0107_mask_upper,
    k5PrefixGroup0000Row0108_mask_upper,
    k5PrefixGroup0000Row0109_mask_upper,
    k5PrefixGroup0000Row0110_mask_upper,
    k5PrefixGroup0000Row0111_mask_upper,
    k5PrefixGroup0000Row0112_mask_upper,
    k5PrefixGroup0000Row0113_mask_upper,
    k5PrefixGroup0000Row0114_mask_upper,
    k5PrefixGroup0000Row0115_mask_upper,
    k5PrefixGroup0000Row0116_mask_upper,
    k5PrefixGroup0000Row0117_mask_upper,
    k5PrefixGroup0000Row0118_mask_upper,
    k5PrefixGroup0000Row0119_mask_upper,
    k5PrefixGroup0000Row0120_mask_upper,
    k5PrefixGroup0000Row0121_mask_upper,
    k5PrefixGroup0000Row0122_mask_upper,
    k5PrefixGroup0000Row0123_mask_upper,
    k5PrefixGroup0000Row0124_mask_upper,
    k5PrefixGroup0000Row0125_mask_upper,
    k5PrefixGroup0000Row0126_mask_upper,
    k5PrefixGroup0000Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
