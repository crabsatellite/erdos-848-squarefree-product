import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0022 : List (List ℕ) :=
  [[3, 13, 109, 139],
     [3, 13, 109, 149],
     [3, 13, 113, 127],
     [3, 13, 113, 131],
     [3, 13, 113, 137],
     [3, 13, 113, 139],
     [3, 13, 127, 131],
     [3, 13, 127, 137],
     [3, 17, 19, 23],
     [3, 17, 19, 29],
     [3, 17, 19, 31],
     [3, 17, 19, 37],
     [3, 17, 19, 41],
     [3, 17, 19, 43],
     [3, 17, 19, 47],
     [3, 17, 19, 53],
     [3, 17, 19, 59],
     [3, 17, 19, 61],
     [3, 17, 19, 67],
     [3, 17, 19, 71],
     [3, 17, 19, 73],
     [3, 17, 19, 79],
     [3, 17, 19, 83],
     [3, 17, 19, 89],
     [3, 17, 19, 97],
     [3, 17, 19, 101],
     [3, 17, 19, 103],
     [3, 17, 19, 107],
     [3, 17, 19, 109],
     [3, 17, 19, 113],
     [3, 17, 19, 127],
     [3, 17, 19, 131],
     [3, 17, 19, 137],
     [3, 17, 19, 139],
     [3, 17, 19, 149],
     [3, 17, 19, 151],
     [3, 17, 19, 157],
     [3, 17, 19, 163],
     [3, 17, 19, 167],
     [3, 17, 19, 173],
     [3, 17, 19, 179],
     [3, 17, 19, 181],
     [3, 17, 19, 191],
     [3, 17, 19, 193],
     [3, 17, 19, 197],
     [3, 17, 19, 199],
     [3, 17, 19, 211],
     [3, 17, 19, 223],
     [3, 17, 19, 227],
     [3, 17, 19, 229],
     [3, 17, 19, 233],
     [3, 17, 19, 239],
     [3, 17, 19, 241],
     [3, 17, 19, 251],
     [3, 17, 19, 257],
     [3, 17, 19, 263],
     [3, 17, 19, 269],
     [3, 17, 19, 271],
     [3, 17, 19, 277],
     [3, 17, 19, 281],
     [3, 17, 19, 283],
     [3, 17, 19, 293],
     [3, 17, 19, 307],
     [3, 17, 19, 311],
     [3, 17, 19, 313],
     [3, 17, 23, 29],
     [3, 17, 23, 31],
     [3, 17, 23, 37],
     [3, 17, 23, 41],
     [3, 17, 23, 43],
     [3, 17, 23, 47],
     [3, 17, 23, 53],
     [3, 17, 23, 59],
     [3, 17, 23, 61],
     [3, 17, 23, 67],
     [3, 17, 23, 71],
     [3, 17, 23, 73],
     [3, 17, 23, 79],
     [3, 17, 23, 83],
     [3, 17, 23, 89],
     [3, 17, 23, 97],
     [3, 17, 23, 101],
     [3, 17, 23, 103],
     [3, 17, 23, 107],
     [3, 17, 23, 109],
     [3, 17, 23, 113],
     [3, 17, 23, 127],
     [3, 17, 23, 131],
     [3, 17, 23, 137],
     [3, 17, 23, 139],
     [3, 17, 23, 149],
     [3, 17, 23, 151],
     [3, 17, 23, 157],
     [3, 17, 23, 163],
     [3, 17, 23, 167],
     [3, 17, 23, 173],
     [3, 17, 23, 179],
     [3, 17, 23, 181],
     [3, 17, 23, 191],
     [3, 17, 23, 193],
     [3, 17, 23, 197],
     [3, 17, 23, 199],
     [3, 17, 23, 211],
     [3, 17, 23, 223],
     [3, 17, 23, 227],
     [3, 17, 23, 229],
     [3, 17, 23, 233],
     [3, 17, 23, 239],
     [3, 17, 23, 241],
     [3, 17, 23, 251],
     [3, 17, 23, 257],
     [3, 17, 23, 263],
     [3, 17, 23, 269],
     [3, 17, 23, 271],
     [3, 17, 23, 277],
     [3, 17, 23, 281],
     [3, 17, 29, 31],
     [3, 17, 29, 37],
     [3, 17, 29, 41],
     [3, 17, 29, 43],
     [3, 17, 29, 47],
     [3, 17, 29, 53],
     [3, 17, 29, 59],
     [3, 17, 29, 61],
     [3, 17, 29, 67],
     [3, 17, 29, 71],
     [3, 17, 29, 73],
     [3, 17, 29, 79]]

theorem k5PrefixGroup0022Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 113, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 113, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 113, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 113, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 113, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 113, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 113, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 113, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 127, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 127, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 127, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 127, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0022Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0022Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0022Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0022Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0022Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0022Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0022Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0022Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0022Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0022Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0022Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0022Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0022Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0022Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0022Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0022Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0022Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0022Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0022Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0022Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0022Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0022Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0022Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0022Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0022Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0022Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 163] = true := by
  decide

theorem k5PrefixGroup0022Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 163] = true := by
  decide

theorem k5PrefixGroup0022Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 167] = true := by
  decide

theorem k5PrefixGroup0022Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 167] = true := by
  decide

theorem k5PrefixGroup0022Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 173] = true := by
  decide

theorem k5PrefixGroup0022Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 173] = true := by
  decide

theorem k5PrefixGroup0022Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 179] = true := by
  decide

theorem k5PrefixGroup0022Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 179] = true := by
  decide

theorem k5PrefixGroup0022Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 181] = true := by
  decide

theorem k5PrefixGroup0022Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 181] = true := by
  decide

theorem k5PrefixGroup0022Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 191] = true := by
  decide

theorem k5PrefixGroup0022Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 191] = true := by
  decide

theorem k5PrefixGroup0022Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 193] = true := by
  decide

theorem k5PrefixGroup0022Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 193] = true := by
  decide

theorem k5PrefixGroup0022Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 197] = true := by
  decide

theorem k5PrefixGroup0022Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 197] = true := by
  decide

theorem k5PrefixGroup0022Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 199] = true := by
  decide

theorem k5PrefixGroup0022Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 199] = true := by
  decide

theorem k5PrefixGroup0022Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 211] = true := by
  decide

theorem k5PrefixGroup0022Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 211] = true := by
  decide

theorem k5PrefixGroup0022Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 223] = true := by
  decide

theorem k5PrefixGroup0022Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 223] = true := by
  decide

theorem k5PrefixGroup0022Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 227] = true := by
  decide

theorem k5PrefixGroup0022Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 227] = true := by
  decide

theorem k5PrefixGroup0022Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 229] = true := by
  decide

theorem k5PrefixGroup0022Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 229] = true := by
  decide

theorem k5PrefixGroup0022Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 233] = true := by
  decide

theorem k5PrefixGroup0022Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 233] = true := by
  decide

theorem k5PrefixGroup0022Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 239] = true := by
  decide

theorem k5PrefixGroup0022Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 239] = true := by
  decide

theorem k5PrefixGroup0022Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 241] = true := by
  decide

theorem k5PrefixGroup0022Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 241] = true := by
  decide

theorem k5PrefixGroup0022Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 251] = true := by
  decide

theorem k5PrefixGroup0022Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 251] = true := by
  decide

theorem k5PrefixGroup0022Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 257] = true := by
  decide

theorem k5PrefixGroup0022Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 257] = true := by
  decide

theorem k5PrefixGroup0022Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 263] = true := by
  decide

theorem k5PrefixGroup0022Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 263] = true := by
  decide

theorem k5PrefixGroup0022Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 269] = true := by
  decide

theorem k5PrefixGroup0022Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 269] = true := by
  decide

theorem k5PrefixGroup0022Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 271] = true := by
  decide

theorem k5PrefixGroup0022Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 271] = true := by
  decide

theorem k5PrefixGroup0022Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 277] = true := by
  decide

theorem k5PrefixGroup0022Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 277] = true := by
  decide

theorem k5PrefixGroup0022Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 281] = true := by
  decide

theorem k5PrefixGroup0022Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 281] = true := by
  decide

theorem k5PrefixGroup0022Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 283] = true := by
  decide

theorem k5PrefixGroup0022Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 283] = true := by
  decide

theorem k5PrefixGroup0022Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 293] = true := by
  decide

theorem k5PrefixGroup0022Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 293] = true := by
  decide

theorem k5PrefixGroup0022Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 307] = true := by
  decide

theorem k5PrefixGroup0022Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 307] = true := by
  decide

theorem k5PrefixGroup0022Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 311] = true := by
  decide

theorem k5PrefixGroup0022Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 311] = true := by
  decide

theorem k5PrefixGroup0022Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 19, 313] = true := by
  decide

theorem k5PrefixGroup0022Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 19, 313] = true := by
  decide

theorem k5PrefixGroup0022Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0022Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0022Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0022Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0022Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0022Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0022Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 89] = true := by
  decide

theorem k5PrefixGroup0022Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 89] = true := by
  decide

theorem k5PrefixGroup0022Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 97] = true := by
  decide

theorem k5PrefixGroup0022Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 97] = true := by
  decide

theorem k5PrefixGroup0022Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 101] = true := by
  decide

theorem k5PrefixGroup0022Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 101] = true := by
  decide

theorem k5PrefixGroup0022Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 103] = true := by
  decide

theorem k5PrefixGroup0022Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 103] = true := by
  decide

theorem k5PrefixGroup0022Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 107] = true := by
  decide

theorem k5PrefixGroup0022Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 107] = true := by
  decide

theorem k5PrefixGroup0022Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 109] = true := by
  decide

theorem k5PrefixGroup0022Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 109] = true := by
  decide

theorem k5PrefixGroup0022Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 113] = true := by
  decide

theorem k5PrefixGroup0022Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 113] = true := by
  decide

theorem k5PrefixGroup0022Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 127] = true := by
  decide

theorem k5PrefixGroup0022Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 131] = true := by
  decide

theorem k5PrefixGroup0022Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 137] = true := by
  decide

theorem k5PrefixGroup0022Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 139] = true := by
  decide

theorem k5PrefixGroup0022Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 149] = true := by
  decide

theorem k5PrefixGroup0022Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 151] = true := by
  decide

theorem k5PrefixGroup0022Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 151] = true := by
  decide

theorem k5PrefixGroup0022Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 157] = true := by
  decide

theorem k5PrefixGroup0022Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 157] = true := by
  decide

theorem k5PrefixGroup0022Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 163] = true := by
  decide

theorem k5PrefixGroup0022Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 163] = true := by
  decide

theorem k5PrefixGroup0022Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 167] = true := by
  decide

theorem k5PrefixGroup0022Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 167] = true := by
  decide

theorem k5PrefixGroup0022Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 173] = true := by
  decide

theorem k5PrefixGroup0022Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 173] = true := by
  decide

theorem k5PrefixGroup0022Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 179] = true := by
  decide

theorem k5PrefixGroup0022Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 179] = true := by
  decide

theorem k5PrefixGroup0022Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 181] = true := by
  decide

theorem k5PrefixGroup0022Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 181] = true := by
  decide

theorem k5PrefixGroup0022Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 191] = true := by
  decide

theorem k5PrefixGroup0022Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 191] = true := by
  decide

theorem k5PrefixGroup0022Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 193] = true := by
  decide

theorem k5PrefixGroup0022Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 193] = true := by
  decide

theorem k5PrefixGroup0022Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 197] = true := by
  decide

theorem k5PrefixGroup0022Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 197] = true := by
  decide

theorem k5PrefixGroup0022Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 199] = true := by
  decide

theorem k5PrefixGroup0022Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 199] = true := by
  decide

theorem k5PrefixGroup0022Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 211] = true := by
  decide

theorem k5PrefixGroup0022Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 211] = true := by
  decide

theorem k5PrefixGroup0022Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 223] = true := by
  decide

theorem k5PrefixGroup0022Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 223] = true := by
  decide

theorem k5PrefixGroup0022Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 227] = true := by
  decide

theorem k5PrefixGroup0022Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 227] = true := by
  decide

theorem k5PrefixGroup0022Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 229] = true := by
  decide

theorem k5PrefixGroup0022Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 229] = true := by
  decide

theorem k5PrefixGroup0022Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 233] = true := by
  decide

theorem k5PrefixGroup0022Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 233] = true := by
  decide

theorem k5PrefixGroup0022Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 239] = true := by
  decide

theorem k5PrefixGroup0022Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 239] = true := by
  decide

theorem k5PrefixGroup0022Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 241] = true := by
  decide

theorem k5PrefixGroup0022Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 241] = true := by
  decide

theorem k5PrefixGroup0022Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 251] = true := by
  decide

theorem k5PrefixGroup0022Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 251] = true := by
  decide

theorem k5PrefixGroup0022Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 257] = true := by
  decide

theorem k5PrefixGroup0022Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 257] = true := by
  decide

theorem k5PrefixGroup0022Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 263] = true := by
  decide

theorem k5PrefixGroup0022Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 263] = true := by
  decide

theorem k5PrefixGroup0022Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 269] = true := by
  decide

theorem k5PrefixGroup0022Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 269] = true := by
  decide

theorem k5PrefixGroup0022Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 271] = true := by
  decide

theorem k5PrefixGroup0022Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 271] = true := by
  decide

theorem k5PrefixGroup0022Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 277] = true := by
  decide

theorem k5PrefixGroup0022Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 277] = true := by
  decide

theorem k5PrefixGroup0022Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 23, 281] = true := by
  decide

theorem k5PrefixGroup0022Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 23, 281] = true := by
  decide

theorem k5PrefixGroup0022Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 31] = true := by
  decide

theorem k5PrefixGroup0022Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 37] = true := by
  decide

theorem k5PrefixGroup0022Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 41] = true := by
  decide

theorem k5PrefixGroup0022Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 43] = true := by
  decide

theorem k5PrefixGroup0022Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 47] = true := by
  decide

theorem k5PrefixGroup0022Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 53] = true := by
  decide

theorem k5PrefixGroup0022Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 59] = true := by
  decide

theorem k5PrefixGroup0022Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 61] = true := by
  decide

theorem k5PrefixGroup0022Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 67] = true := by
  decide

theorem k5PrefixGroup0022Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 71] = true := by
  decide

theorem k5PrefixGroup0022Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 73] = true := by
  decide

theorem k5PrefixGroup0022Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 79] = true := by
  decide

theorem k5PrefixGroup0022Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 79] = true := by
  decide

theorem k5PrefixGroup0022_passes :
    k5PrefixGroup0022.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0022, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0022Row0000_passes,
    k5PrefixGroup0022Row0001_passes,
    k5PrefixGroup0022Row0002_passes,
    k5PrefixGroup0022Row0003_passes,
    k5PrefixGroup0022Row0004_passes,
    k5PrefixGroup0022Row0005_passes,
    k5PrefixGroup0022Row0006_passes,
    k5PrefixGroup0022Row0007_passes,
    k5PrefixGroup0022Row0008_passes,
    k5PrefixGroup0022Row0009_passes,
    k5PrefixGroup0022Row0010_passes,
    k5PrefixGroup0022Row0011_passes,
    k5PrefixGroup0022Row0012_passes,
    k5PrefixGroup0022Row0013_passes,
    k5PrefixGroup0022Row0014_passes,
    k5PrefixGroup0022Row0015_passes,
    k5PrefixGroup0022Row0016_passes,
    k5PrefixGroup0022Row0017_passes,
    k5PrefixGroup0022Row0018_passes,
    k5PrefixGroup0022Row0019_passes,
    k5PrefixGroup0022Row0020_passes,
    k5PrefixGroup0022Row0021_passes,
    k5PrefixGroup0022Row0022_passes,
    k5PrefixGroup0022Row0023_passes,
    k5PrefixGroup0022Row0024_passes,
    k5PrefixGroup0022Row0025_passes,
    k5PrefixGroup0022Row0026_passes,
    k5PrefixGroup0022Row0027_passes,
    k5PrefixGroup0022Row0028_passes,
    k5PrefixGroup0022Row0029_passes,
    k5PrefixGroup0022Row0030_passes,
    k5PrefixGroup0022Row0031_passes,
    k5PrefixGroup0022Row0032_passes,
    k5PrefixGroup0022Row0033_passes,
    k5PrefixGroup0022Row0034_passes,
    k5PrefixGroup0022Row0035_passes,
    k5PrefixGroup0022Row0036_passes,
    k5PrefixGroup0022Row0037_passes,
    k5PrefixGroup0022Row0038_passes,
    k5PrefixGroup0022Row0039_passes,
    k5PrefixGroup0022Row0040_passes,
    k5PrefixGroup0022Row0041_passes,
    k5PrefixGroup0022Row0042_passes,
    k5PrefixGroup0022Row0043_passes,
    k5PrefixGroup0022Row0044_passes,
    k5PrefixGroup0022Row0045_passes,
    k5PrefixGroup0022Row0046_passes,
    k5PrefixGroup0022Row0047_passes,
    k5PrefixGroup0022Row0048_passes,
    k5PrefixGroup0022Row0049_passes,
    k5PrefixGroup0022Row0050_passes,
    k5PrefixGroup0022Row0051_passes,
    k5PrefixGroup0022Row0052_passes,
    k5PrefixGroup0022Row0053_passes,
    k5PrefixGroup0022Row0054_passes,
    k5PrefixGroup0022Row0055_passes,
    k5PrefixGroup0022Row0056_passes,
    k5PrefixGroup0022Row0057_passes,
    k5PrefixGroup0022Row0058_passes,
    k5PrefixGroup0022Row0059_passes,
    k5PrefixGroup0022Row0060_passes,
    k5PrefixGroup0022Row0061_passes,
    k5PrefixGroup0022Row0062_passes,
    k5PrefixGroup0022Row0063_passes,
    k5PrefixGroup0022Row0064_passes,
    k5PrefixGroup0022Row0065_passes,
    k5PrefixGroup0022Row0066_passes,
    k5PrefixGroup0022Row0067_passes,
    k5PrefixGroup0022Row0068_passes,
    k5PrefixGroup0022Row0069_passes,
    k5PrefixGroup0022Row0070_passes,
    k5PrefixGroup0022Row0071_passes,
    k5PrefixGroup0022Row0072_passes,
    k5PrefixGroup0022Row0073_passes,
    k5PrefixGroup0022Row0074_passes,
    k5PrefixGroup0022Row0075_passes,
    k5PrefixGroup0022Row0076_passes,
    k5PrefixGroup0022Row0077_passes,
    k5PrefixGroup0022Row0078_passes,
    k5PrefixGroup0022Row0079_passes,
    k5PrefixGroup0022Row0080_passes,
    k5PrefixGroup0022Row0081_passes,
    k5PrefixGroup0022Row0082_passes,
    k5PrefixGroup0022Row0083_passes,
    k5PrefixGroup0022Row0084_passes,
    k5PrefixGroup0022Row0085_passes,
    k5PrefixGroup0022Row0086_passes,
    k5PrefixGroup0022Row0087_passes,
    k5PrefixGroup0022Row0088_passes,
    k5PrefixGroup0022Row0089_passes,
    k5PrefixGroup0022Row0090_passes,
    k5PrefixGroup0022Row0091_passes,
    k5PrefixGroup0022Row0092_passes,
    k5PrefixGroup0022Row0093_passes,
    k5PrefixGroup0022Row0094_passes,
    k5PrefixGroup0022Row0095_passes,
    k5PrefixGroup0022Row0096_passes,
    k5PrefixGroup0022Row0097_passes,
    k5PrefixGroup0022Row0098_passes,
    k5PrefixGroup0022Row0099_passes,
    k5PrefixGroup0022Row0100_passes,
    k5PrefixGroup0022Row0101_passes,
    k5PrefixGroup0022Row0102_passes,
    k5PrefixGroup0022Row0103_passes,
    k5PrefixGroup0022Row0104_passes,
    k5PrefixGroup0022Row0105_passes,
    k5PrefixGroup0022Row0106_passes,
    k5PrefixGroup0022Row0107_passes,
    k5PrefixGroup0022Row0108_passes,
    k5PrefixGroup0022Row0109_passes,
    k5PrefixGroup0022Row0110_passes,
    k5PrefixGroup0022Row0111_passes,
    k5PrefixGroup0022Row0112_passes,
    k5PrefixGroup0022Row0113_passes,
    k5PrefixGroup0022Row0114_passes,
    k5PrefixGroup0022Row0115_passes,
    k5PrefixGroup0022Row0116_passes,
    k5PrefixGroup0022Row0117_passes,
    k5PrefixGroup0022Row0118_passes,
    k5PrefixGroup0022Row0119_passes,
    k5PrefixGroup0022Row0120_passes,
    k5PrefixGroup0022Row0121_passes,
    k5PrefixGroup0022Row0122_passes,
    k5PrefixGroup0022Row0123_passes,
    k5PrefixGroup0022Row0124_passes,
    k5PrefixGroup0022Row0125_passes,
    k5PrefixGroup0022Row0126_passes,
    k5PrefixGroup0022Row0127_passes]

theorem k5PrefixGroup0022_mask_upper :
    k5PrefixGroup0022.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0022, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0022Row0000_mask_upper,
    k5PrefixGroup0022Row0001_mask_upper,
    k5PrefixGroup0022Row0002_mask_upper,
    k5PrefixGroup0022Row0003_mask_upper,
    k5PrefixGroup0022Row0004_mask_upper,
    k5PrefixGroup0022Row0005_mask_upper,
    k5PrefixGroup0022Row0006_mask_upper,
    k5PrefixGroup0022Row0007_mask_upper,
    k5PrefixGroup0022Row0008_mask_upper,
    k5PrefixGroup0022Row0009_mask_upper,
    k5PrefixGroup0022Row0010_mask_upper,
    k5PrefixGroup0022Row0011_mask_upper,
    k5PrefixGroup0022Row0012_mask_upper,
    k5PrefixGroup0022Row0013_mask_upper,
    k5PrefixGroup0022Row0014_mask_upper,
    k5PrefixGroup0022Row0015_mask_upper,
    k5PrefixGroup0022Row0016_mask_upper,
    k5PrefixGroup0022Row0017_mask_upper,
    k5PrefixGroup0022Row0018_mask_upper,
    k5PrefixGroup0022Row0019_mask_upper,
    k5PrefixGroup0022Row0020_mask_upper,
    k5PrefixGroup0022Row0021_mask_upper,
    k5PrefixGroup0022Row0022_mask_upper,
    k5PrefixGroup0022Row0023_mask_upper,
    k5PrefixGroup0022Row0024_mask_upper,
    k5PrefixGroup0022Row0025_mask_upper,
    k5PrefixGroup0022Row0026_mask_upper,
    k5PrefixGroup0022Row0027_mask_upper,
    k5PrefixGroup0022Row0028_mask_upper,
    k5PrefixGroup0022Row0029_mask_upper,
    k5PrefixGroup0022Row0030_mask_upper,
    k5PrefixGroup0022Row0031_mask_upper,
    k5PrefixGroup0022Row0032_mask_upper,
    k5PrefixGroup0022Row0033_mask_upper,
    k5PrefixGroup0022Row0034_mask_upper,
    k5PrefixGroup0022Row0035_mask_upper,
    k5PrefixGroup0022Row0036_mask_upper,
    k5PrefixGroup0022Row0037_mask_upper,
    k5PrefixGroup0022Row0038_mask_upper,
    k5PrefixGroup0022Row0039_mask_upper,
    k5PrefixGroup0022Row0040_mask_upper,
    k5PrefixGroup0022Row0041_mask_upper,
    k5PrefixGroup0022Row0042_mask_upper,
    k5PrefixGroup0022Row0043_mask_upper,
    k5PrefixGroup0022Row0044_mask_upper,
    k5PrefixGroup0022Row0045_mask_upper,
    k5PrefixGroup0022Row0046_mask_upper,
    k5PrefixGroup0022Row0047_mask_upper,
    k5PrefixGroup0022Row0048_mask_upper,
    k5PrefixGroup0022Row0049_mask_upper,
    k5PrefixGroup0022Row0050_mask_upper,
    k5PrefixGroup0022Row0051_mask_upper,
    k5PrefixGroup0022Row0052_mask_upper,
    k5PrefixGroup0022Row0053_mask_upper,
    k5PrefixGroup0022Row0054_mask_upper,
    k5PrefixGroup0022Row0055_mask_upper,
    k5PrefixGroup0022Row0056_mask_upper,
    k5PrefixGroup0022Row0057_mask_upper,
    k5PrefixGroup0022Row0058_mask_upper,
    k5PrefixGroup0022Row0059_mask_upper,
    k5PrefixGroup0022Row0060_mask_upper,
    k5PrefixGroup0022Row0061_mask_upper,
    k5PrefixGroup0022Row0062_mask_upper,
    k5PrefixGroup0022Row0063_mask_upper,
    k5PrefixGroup0022Row0064_mask_upper,
    k5PrefixGroup0022Row0065_mask_upper,
    k5PrefixGroup0022Row0066_mask_upper,
    k5PrefixGroup0022Row0067_mask_upper,
    k5PrefixGroup0022Row0068_mask_upper,
    k5PrefixGroup0022Row0069_mask_upper,
    k5PrefixGroup0022Row0070_mask_upper,
    k5PrefixGroup0022Row0071_mask_upper,
    k5PrefixGroup0022Row0072_mask_upper,
    k5PrefixGroup0022Row0073_mask_upper,
    k5PrefixGroup0022Row0074_mask_upper,
    k5PrefixGroup0022Row0075_mask_upper,
    k5PrefixGroup0022Row0076_mask_upper,
    k5PrefixGroup0022Row0077_mask_upper,
    k5PrefixGroup0022Row0078_mask_upper,
    k5PrefixGroup0022Row0079_mask_upper,
    k5PrefixGroup0022Row0080_mask_upper,
    k5PrefixGroup0022Row0081_mask_upper,
    k5PrefixGroup0022Row0082_mask_upper,
    k5PrefixGroup0022Row0083_mask_upper,
    k5PrefixGroup0022Row0084_mask_upper,
    k5PrefixGroup0022Row0085_mask_upper,
    k5PrefixGroup0022Row0086_mask_upper,
    k5PrefixGroup0022Row0087_mask_upper,
    k5PrefixGroup0022Row0088_mask_upper,
    k5PrefixGroup0022Row0089_mask_upper,
    k5PrefixGroup0022Row0090_mask_upper,
    k5PrefixGroup0022Row0091_mask_upper,
    k5PrefixGroup0022Row0092_mask_upper,
    k5PrefixGroup0022Row0093_mask_upper,
    k5PrefixGroup0022Row0094_mask_upper,
    k5PrefixGroup0022Row0095_mask_upper,
    k5PrefixGroup0022Row0096_mask_upper,
    k5PrefixGroup0022Row0097_mask_upper,
    k5PrefixGroup0022Row0098_mask_upper,
    k5PrefixGroup0022Row0099_mask_upper,
    k5PrefixGroup0022Row0100_mask_upper,
    k5PrefixGroup0022Row0101_mask_upper,
    k5PrefixGroup0022Row0102_mask_upper,
    k5PrefixGroup0022Row0103_mask_upper,
    k5PrefixGroup0022Row0104_mask_upper,
    k5PrefixGroup0022Row0105_mask_upper,
    k5PrefixGroup0022Row0106_mask_upper,
    k5PrefixGroup0022Row0107_mask_upper,
    k5PrefixGroup0022Row0108_mask_upper,
    k5PrefixGroup0022Row0109_mask_upper,
    k5PrefixGroup0022Row0110_mask_upper,
    k5PrefixGroup0022Row0111_mask_upper,
    k5PrefixGroup0022Row0112_mask_upper,
    k5PrefixGroup0022Row0113_mask_upper,
    k5PrefixGroup0022Row0114_mask_upper,
    k5PrefixGroup0022Row0115_mask_upper,
    k5PrefixGroup0022Row0116_mask_upper,
    k5PrefixGroup0022Row0117_mask_upper,
    k5PrefixGroup0022Row0118_mask_upper,
    k5PrefixGroup0022Row0119_mask_upper,
    k5PrefixGroup0022Row0120_mask_upper,
    k5PrefixGroup0022Row0121_mask_upper,
    k5PrefixGroup0022Row0122_mask_upper,
    k5PrefixGroup0022Row0123_mask_upper,
    k5PrefixGroup0022Row0124_mask_upper,
    k5PrefixGroup0022Row0125_mask_upper,
    k5PrefixGroup0022Row0126_mask_upper,
    k5PrefixGroup0022Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
