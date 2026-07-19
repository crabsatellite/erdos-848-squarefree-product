import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0026 : List (List ℕ) :=
  [[3, 17, 107, 113],
     [3, 17, 107, 127],
     [3, 17, 109, 113],
     [3, 17, 109, 127],
     [3, 17, 113, 127],
     [3, 19, 23, 29],
     [3, 19, 23, 31],
     [3, 19, 23, 37],
     [3, 19, 23, 41],
     [3, 19, 23, 43],
     [3, 19, 23, 47],
     [3, 19, 23, 53],
     [3, 19, 23, 59],
     [3, 19, 23, 61],
     [3, 19, 23, 67],
     [3, 19, 23, 71],
     [3, 19, 23, 73],
     [3, 19, 23, 79],
     [3, 19, 23, 83],
     [3, 19, 23, 89],
     [3, 19, 23, 97],
     [3, 19, 23, 101],
     [3, 19, 23, 103],
     [3, 19, 23, 107],
     [3, 19, 23, 109],
     [3, 19, 23, 113],
     [3, 19, 23, 127],
     [3, 19, 23, 131],
     [3, 19, 23, 137],
     [3, 19, 23, 139],
     [3, 19, 23, 149],
     [3, 19, 23, 151],
     [3, 19, 23, 157],
     [3, 19, 23, 163],
     [3, 19, 23, 167],
     [3, 19, 23, 173],
     [3, 19, 23, 179],
     [3, 19, 23, 181],
     [3, 19, 23, 191],
     [3, 19, 23, 193],
     [3, 19, 23, 197],
     [3, 19, 23, 199],
     [3, 19, 23, 211],
     [3, 19, 23, 223],
     [3, 19, 23, 227],
     [3, 19, 23, 229],
     [3, 19, 23, 233],
     [3, 19, 23, 239],
     [3, 19, 23, 241],
     [3, 19, 23, 251],
     [3, 19, 23, 257],
     [3, 19, 23, 263],
     [3, 19, 23, 269],
     [3, 19, 29, 31],
     [3, 19, 29, 37],
     [3, 19, 29, 41],
     [3, 19, 29, 43],
     [3, 19, 29, 47],
     [3, 19, 29, 53],
     [3, 19, 29, 59],
     [3, 19, 29, 61],
     [3, 19, 29, 67],
     [3, 19, 29, 71],
     [3, 19, 29, 73],
     [3, 19, 29, 79],
     [3, 19, 29, 83],
     [3, 19, 29, 89],
     [3, 19, 29, 97],
     [3, 19, 29, 101],
     [3, 19, 29, 103],
     [3, 19, 29, 107],
     [3, 19, 29, 109],
     [3, 19, 29, 113],
     [3, 19, 29, 127],
     [3, 19, 29, 131],
     [3, 19, 29, 137],
     [3, 19, 29, 139],
     [3, 19, 29, 149],
     [3, 19, 29, 151],
     [3, 19, 29, 157],
     [3, 19, 29, 163],
     [3, 19, 29, 167],
     [3, 19, 29, 173],
     [3, 19, 29, 179],
     [3, 19, 29, 181],
     [3, 19, 29, 191],
     [3, 19, 29, 193],
     [3, 19, 29, 197],
     [3, 19, 29, 199],
     [3, 19, 29, 211],
     [3, 19, 29, 223],
     [3, 19, 29, 227],
     [3, 19, 29, 229],
     [3, 19, 29, 233],
     [3, 19, 29, 239],
     [3, 19, 31, 37],
     [3, 19, 31, 41],
     [3, 19, 31, 43],
     [3, 19, 31, 47],
     [3, 19, 31, 53],
     [3, 19, 31, 59],
     [3, 19, 31, 61],
     [3, 19, 31, 67],
     [3, 19, 31, 71],
     [3, 19, 31, 73],
     [3, 19, 31, 79],
     [3, 19, 31, 83],
     [3, 19, 31, 89],
     [3, 19, 31, 97],
     [3, 19, 31, 101],
     [3, 19, 31, 103],
     [3, 19, 31, 107],
     [3, 19, 31, 109],
     [3, 19, 31, 113],
     [3, 19, 31, 127],
     [3, 19, 31, 131],
     [3, 19, 31, 137],
     [3, 19, 31, 139],
     [3, 19, 31, 149],
     [3, 19, 31, 151],
     [3, 19, 31, 157],
     [3, 19, 31, 163],
     [3, 19, 31, 167],
     [3, 19, 31, 173],
     [3, 19, 31, 179],
     [3, 19, 31, 181],
     [3, 19, 31, 191],
     [3, 19, 31, 193]]

theorem k5PrefixGroup0026Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 107, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 107, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 107, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 107, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 109, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 109, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 109, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 109, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 113, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 113, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0026Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0026Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0026Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0026Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 193] = true := by
  decide

theorem k5PrefixGroup0026Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 193] = true := by
  decide

theorem k5PrefixGroup0026Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 197] = true := by
  decide

theorem k5PrefixGroup0026Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 197] = true := by
  decide

theorem k5PrefixGroup0026Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 199] = true := by
  decide

theorem k5PrefixGroup0026Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 199] = true := by
  decide

theorem k5PrefixGroup0026Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 211] = true := by
  decide

theorem k5PrefixGroup0026Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 211] = true := by
  decide

theorem k5PrefixGroup0026Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 223] = true := by
  decide

theorem k5PrefixGroup0026Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 223] = true := by
  decide

theorem k5PrefixGroup0026Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 227] = true := by
  decide

theorem k5PrefixGroup0026Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 227] = true := by
  decide

theorem k5PrefixGroup0026Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 229] = true := by
  decide

theorem k5PrefixGroup0026Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 229] = true := by
  decide

theorem k5PrefixGroup0026Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 233] = true := by
  decide

theorem k5PrefixGroup0026Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 233] = true := by
  decide

theorem k5PrefixGroup0026Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 239] = true := by
  decide

theorem k5PrefixGroup0026Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 239] = true := by
  decide

theorem k5PrefixGroup0026Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 241] = true := by
  decide

theorem k5PrefixGroup0026Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 241] = true := by
  decide

theorem k5PrefixGroup0026Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 251] = true := by
  decide

theorem k5PrefixGroup0026Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 251] = true := by
  decide

theorem k5PrefixGroup0026Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 257] = true := by
  decide

theorem k5PrefixGroup0026Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 257] = true := by
  decide

theorem k5PrefixGroup0026Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 263] = true := by
  decide

theorem k5PrefixGroup0026Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 263] = true := by
  decide

theorem k5PrefixGroup0026Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 23, 269] = true := by
  decide

theorem k5PrefixGroup0026Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 23, 269] = true := by
  decide

theorem k5PrefixGroup0026Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 31] = true := by
  decide

theorem k5PrefixGroup0026Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 31] = true := by
  decide

theorem k5PrefixGroup0026Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 193] = true := by
  decide

theorem k5PrefixGroup0026Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 193] = true := by
  decide

theorem k5PrefixGroup0026Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 197] = true := by
  decide

theorem k5PrefixGroup0026Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 197] = true := by
  decide

theorem k5PrefixGroup0026Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 199] = true := by
  decide

theorem k5PrefixGroup0026Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 199] = true := by
  decide

theorem k5PrefixGroup0026Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 211] = true := by
  decide

theorem k5PrefixGroup0026Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 211] = true := by
  decide

theorem k5PrefixGroup0026Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 223] = true := by
  decide

theorem k5PrefixGroup0026Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 223] = true := by
  decide

theorem k5PrefixGroup0026Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 227] = true := by
  decide

theorem k5PrefixGroup0026Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 227] = true := by
  decide

theorem k5PrefixGroup0026Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 229] = true := by
  decide

theorem k5PrefixGroup0026Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 229] = true := by
  decide

theorem k5PrefixGroup0026Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 233] = true := by
  decide

theorem k5PrefixGroup0026Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 233] = true := by
  decide

theorem k5PrefixGroup0026Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 29, 239] = true := by
  decide

theorem k5PrefixGroup0026Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 29, 239] = true := by
  decide

theorem k5PrefixGroup0026Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 37] = true := by
  decide

theorem k5PrefixGroup0026Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 41] = true := by
  decide

theorem k5PrefixGroup0026Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 43] = true := by
  decide

theorem k5PrefixGroup0026Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 47] = true := by
  decide

theorem k5PrefixGroup0026Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 53] = true := by
  decide

theorem k5PrefixGroup0026Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 59] = true := by
  decide

theorem k5PrefixGroup0026Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 61] = true := by
  decide

theorem k5PrefixGroup0026Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 67] = true := by
  decide

theorem k5PrefixGroup0026Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 71] = true := by
  decide

theorem k5PrefixGroup0026Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 73] = true := by
  decide

theorem k5PrefixGroup0026Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 79] = true := by
  decide

theorem k5PrefixGroup0026Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 83] = true := by
  decide

theorem k5PrefixGroup0026Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 89] = true := by
  decide

theorem k5PrefixGroup0026Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 97] = true := by
  decide

theorem k5PrefixGroup0026Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 101] = true := by
  decide

theorem k5PrefixGroup0026Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 103] = true := by
  decide

theorem k5PrefixGroup0026Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 107] = true := by
  decide

theorem k5PrefixGroup0026Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 109] = true := by
  decide

theorem k5PrefixGroup0026Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 113] = true := by
  decide

theorem k5PrefixGroup0026Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 127] = true := by
  decide

theorem k5PrefixGroup0026Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 131] = true := by
  decide

theorem k5PrefixGroup0026Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 137] = true := by
  decide

theorem k5PrefixGroup0026Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 139] = true := by
  decide

theorem k5PrefixGroup0026Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 149] = true := by
  decide

theorem k5PrefixGroup0026Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 151] = true := by
  decide

theorem k5PrefixGroup0026Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 157] = true := by
  decide

theorem k5PrefixGroup0026Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 163] = true := by
  decide

theorem k5PrefixGroup0026Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 167] = true := by
  decide

theorem k5PrefixGroup0026Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 173] = true := by
  decide

theorem k5PrefixGroup0026Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 179] = true := by
  decide

theorem k5PrefixGroup0026Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 181] = true := by
  decide

theorem k5PrefixGroup0026Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 191] = true := by
  decide

theorem k5PrefixGroup0026Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 31, 193] = true := by
  decide

theorem k5PrefixGroup0026Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 31, 193] = true := by
  decide

theorem k5PrefixGroup0026_passes :
    k5PrefixGroup0026.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0026, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0026Row0000_passes,
    k5PrefixGroup0026Row0001_passes,
    k5PrefixGroup0026Row0002_passes,
    k5PrefixGroup0026Row0003_passes,
    k5PrefixGroup0026Row0004_passes,
    k5PrefixGroup0026Row0005_passes,
    k5PrefixGroup0026Row0006_passes,
    k5PrefixGroup0026Row0007_passes,
    k5PrefixGroup0026Row0008_passes,
    k5PrefixGroup0026Row0009_passes,
    k5PrefixGroup0026Row0010_passes,
    k5PrefixGroup0026Row0011_passes,
    k5PrefixGroup0026Row0012_passes,
    k5PrefixGroup0026Row0013_passes,
    k5PrefixGroup0026Row0014_passes,
    k5PrefixGroup0026Row0015_passes,
    k5PrefixGroup0026Row0016_passes,
    k5PrefixGroup0026Row0017_passes,
    k5PrefixGroup0026Row0018_passes,
    k5PrefixGroup0026Row0019_passes,
    k5PrefixGroup0026Row0020_passes,
    k5PrefixGroup0026Row0021_passes,
    k5PrefixGroup0026Row0022_passes,
    k5PrefixGroup0026Row0023_passes,
    k5PrefixGroup0026Row0024_passes,
    k5PrefixGroup0026Row0025_passes,
    k5PrefixGroup0026Row0026_passes,
    k5PrefixGroup0026Row0027_passes,
    k5PrefixGroup0026Row0028_passes,
    k5PrefixGroup0026Row0029_passes,
    k5PrefixGroup0026Row0030_passes,
    k5PrefixGroup0026Row0031_passes,
    k5PrefixGroup0026Row0032_passes,
    k5PrefixGroup0026Row0033_passes,
    k5PrefixGroup0026Row0034_passes,
    k5PrefixGroup0026Row0035_passes,
    k5PrefixGroup0026Row0036_passes,
    k5PrefixGroup0026Row0037_passes,
    k5PrefixGroup0026Row0038_passes,
    k5PrefixGroup0026Row0039_passes,
    k5PrefixGroup0026Row0040_passes,
    k5PrefixGroup0026Row0041_passes,
    k5PrefixGroup0026Row0042_passes,
    k5PrefixGroup0026Row0043_passes,
    k5PrefixGroup0026Row0044_passes,
    k5PrefixGroup0026Row0045_passes,
    k5PrefixGroup0026Row0046_passes,
    k5PrefixGroup0026Row0047_passes,
    k5PrefixGroup0026Row0048_passes,
    k5PrefixGroup0026Row0049_passes,
    k5PrefixGroup0026Row0050_passes,
    k5PrefixGroup0026Row0051_passes,
    k5PrefixGroup0026Row0052_passes,
    k5PrefixGroup0026Row0053_passes,
    k5PrefixGroup0026Row0054_passes,
    k5PrefixGroup0026Row0055_passes,
    k5PrefixGroup0026Row0056_passes,
    k5PrefixGroup0026Row0057_passes,
    k5PrefixGroup0026Row0058_passes,
    k5PrefixGroup0026Row0059_passes,
    k5PrefixGroup0026Row0060_passes,
    k5PrefixGroup0026Row0061_passes,
    k5PrefixGroup0026Row0062_passes,
    k5PrefixGroup0026Row0063_passes,
    k5PrefixGroup0026Row0064_passes,
    k5PrefixGroup0026Row0065_passes,
    k5PrefixGroup0026Row0066_passes,
    k5PrefixGroup0026Row0067_passes,
    k5PrefixGroup0026Row0068_passes,
    k5PrefixGroup0026Row0069_passes,
    k5PrefixGroup0026Row0070_passes,
    k5PrefixGroup0026Row0071_passes,
    k5PrefixGroup0026Row0072_passes,
    k5PrefixGroup0026Row0073_passes,
    k5PrefixGroup0026Row0074_passes,
    k5PrefixGroup0026Row0075_passes,
    k5PrefixGroup0026Row0076_passes,
    k5PrefixGroup0026Row0077_passes,
    k5PrefixGroup0026Row0078_passes,
    k5PrefixGroup0026Row0079_passes,
    k5PrefixGroup0026Row0080_passes,
    k5PrefixGroup0026Row0081_passes,
    k5PrefixGroup0026Row0082_passes,
    k5PrefixGroup0026Row0083_passes,
    k5PrefixGroup0026Row0084_passes,
    k5PrefixGroup0026Row0085_passes,
    k5PrefixGroup0026Row0086_passes,
    k5PrefixGroup0026Row0087_passes,
    k5PrefixGroup0026Row0088_passes,
    k5PrefixGroup0026Row0089_passes,
    k5PrefixGroup0026Row0090_passes,
    k5PrefixGroup0026Row0091_passes,
    k5PrefixGroup0026Row0092_passes,
    k5PrefixGroup0026Row0093_passes,
    k5PrefixGroup0026Row0094_passes,
    k5PrefixGroup0026Row0095_passes,
    k5PrefixGroup0026Row0096_passes,
    k5PrefixGroup0026Row0097_passes,
    k5PrefixGroup0026Row0098_passes,
    k5PrefixGroup0026Row0099_passes,
    k5PrefixGroup0026Row0100_passes,
    k5PrefixGroup0026Row0101_passes,
    k5PrefixGroup0026Row0102_passes,
    k5PrefixGroup0026Row0103_passes,
    k5PrefixGroup0026Row0104_passes,
    k5PrefixGroup0026Row0105_passes,
    k5PrefixGroup0026Row0106_passes,
    k5PrefixGroup0026Row0107_passes,
    k5PrefixGroup0026Row0108_passes,
    k5PrefixGroup0026Row0109_passes,
    k5PrefixGroup0026Row0110_passes,
    k5PrefixGroup0026Row0111_passes,
    k5PrefixGroup0026Row0112_passes,
    k5PrefixGroup0026Row0113_passes,
    k5PrefixGroup0026Row0114_passes,
    k5PrefixGroup0026Row0115_passes,
    k5PrefixGroup0026Row0116_passes,
    k5PrefixGroup0026Row0117_passes,
    k5PrefixGroup0026Row0118_passes,
    k5PrefixGroup0026Row0119_passes,
    k5PrefixGroup0026Row0120_passes,
    k5PrefixGroup0026Row0121_passes,
    k5PrefixGroup0026Row0122_passes,
    k5PrefixGroup0026Row0123_passes,
    k5PrefixGroup0026Row0124_passes,
    k5PrefixGroup0026Row0125_passes,
    k5PrefixGroup0026Row0126_passes,
    k5PrefixGroup0026Row0127_passes]

theorem k5PrefixGroup0026_mask_upper :
    k5PrefixGroup0026.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0026, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0026Row0000_mask_upper,
    k5PrefixGroup0026Row0001_mask_upper,
    k5PrefixGroup0026Row0002_mask_upper,
    k5PrefixGroup0026Row0003_mask_upper,
    k5PrefixGroup0026Row0004_mask_upper,
    k5PrefixGroup0026Row0005_mask_upper,
    k5PrefixGroup0026Row0006_mask_upper,
    k5PrefixGroup0026Row0007_mask_upper,
    k5PrefixGroup0026Row0008_mask_upper,
    k5PrefixGroup0026Row0009_mask_upper,
    k5PrefixGroup0026Row0010_mask_upper,
    k5PrefixGroup0026Row0011_mask_upper,
    k5PrefixGroup0026Row0012_mask_upper,
    k5PrefixGroup0026Row0013_mask_upper,
    k5PrefixGroup0026Row0014_mask_upper,
    k5PrefixGroup0026Row0015_mask_upper,
    k5PrefixGroup0026Row0016_mask_upper,
    k5PrefixGroup0026Row0017_mask_upper,
    k5PrefixGroup0026Row0018_mask_upper,
    k5PrefixGroup0026Row0019_mask_upper,
    k5PrefixGroup0026Row0020_mask_upper,
    k5PrefixGroup0026Row0021_mask_upper,
    k5PrefixGroup0026Row0022_mask_upper,
    k5PrefixGroup0026Row0023_mask_upper,
    k5PrefixGroup0026Row0024_mask_upper,
    k5PrefixGroup0026Row0025_mask_upper,
    k5PrefixGroup0026Row0026_mask_upper,
    k5PrefixGroup0026Row0027_mask_upper,
    k5PrefixGroup0026Row0028_mask_upper,
    k5PrefixGroup0026Row0029_mask_upper,
    k5PrefixGroup0026Row0030_mask_upper,
    k5PrefixGroup0026Row0031_mask_upper,
    k5PrefixGroup0026Row0032_mask_upper,
    k5PrefixGroup0026Row0033_mask_upper,
    k5PrefixGroup0026Row0034_mask_upper,
    k5PrefixGroup0026Row0035_mask_upper,
    k5PrefixGroup0026Row0036_mask_upper,
    k5PrefixGroup0026Row0037_mask_upper,
    k5PrefixGroup0026Row0038_mask_upper,
    k5PrefixGroup0026Row0039_mask_upper,
    k5PrefixGroup0026Row0040_mask_upper,
    k5PrefixGroup0026Row0041_mask_upper,
    k5PrefixGroup0026Row0042_mask_upper,
    k5PrefixGroup0026Row0043_mask_upper,
    k5PrefixGroup0026Row0044_mask_upper,
    k5PrefixGroup0026Row0045_mask_upper,
    k5PrefixGroup0026Row0046_mask_upper,
    k5PrefixGroup0026Row0047_mask_upper,
    k5PrefixGroup0026Row0048_mask_upper,
    k5PrefixGroup0026Row0049_mask_upper,
    k5PrefixGroup0026Row0050_mask_upper,
    k5PrefixGroup0026Row0051_mask_upper,
    k5PrefixGroup0026Row0052_mask_upper,
    k5PrefixGroup0026Row0053_mask_upper,
    k5PrefixGroup0026Row0054_mask_upper,
    k5PrefixGroup0026Row0055_mask_upper,
    k5PrefixGroup0026Row0056_mask_upper,
    k5PrefixGroup0026Row0057_mask_upper,
    k5PrefixGroup0026Row0058_mask_upper,
    k5PrefixGroup0026Row0059_mask_upper,
    k5PrefixGroup0026Row0060_mask_upper,
    k5PrefixGroup0026Row0061_mask_upper,
    k5PrefixGroup0026Row0062_mask_upper,
    k5PrefixGroup0026Row0063_mask_upper,
    k5PrefixGroup0026Row0064_mask_upper,
    k5PrefixGroup0026Row0065_mask_upper,
    k5PrefixGroup0026Row0066_mask_upper,
    k5PrefixGroup0026Row0067_mask_upper,
    k5PrefixGroup0026Row0068_mask_upper,
    k5PrefixGroup0026Row0069_mask_upper,
    k5PrefixGroup0026Row0070_mask_upper,
    k5PrefixGroup0026Row0071_mask_upper,
    k5PrefixGroup0026Row0072_mask_upper,
    k5PrefixGroup0026Row0073_mask_upper,
    k5PrefixGroup0026Row0074_mask_upper,
    k5PrefixGroup0026Row0075_mask_upper,
    k5PrefixGroup0026Row0076_mask_upper,
    k5PrefixGroup0026Row0077_mask_upper,
    k5PrefixGroup0026Row0078_mask_upper,
    k5PrefixGroup0026Row0079_mask_upper,
    k5PrefixGroup0026Row0080_mask_upper,
    k5PrefixGroup0026Row0081_mask_upper,
    k5PrefixGroup0026Row0082_mask_upper,
    k5PrefixGroup0026Row0083_mask_upper,
    k5PrefixGroup0026Row0084_mask_upper,
    k5PrefixGroup0026Row0085_mask_upper,
    k5PrefixGroup0026Row0086_mask_upper,
    k5PrefixGroup0026Row0087_mask_upper,
    k5PrefixGroup0026Row0088_mask_upper,
    k5PrefixGroup0026Row0089_mask_upper,
    k5PrefixGroup0026Row0090_mask_upper,
    k5PrefixGroup0026Row0091_mask_upper,
    k5PrefixGroup0026Row0092_mask_upper,
    k5PrefixGroup0026Row0093_mask_upper,
    k5PrefixGroup0026Row0094_mask_upper,
    k5PrefixGroup0026Row0095_mask_upper,
    k5PrefixGroup0026Row0096_mask_upper,
    k5PrefixGroup0026Row0097_mask_upper,
    k5PrefixGroup0026Row0098_mask_upper,
    k5PrefixGroup0026Row0099_mask_upper,
    k5PrefixGroup0026Row0100_mask_upper,
    k5PrefixGroup0026Row0101_mask_upper,
    k5PrefixGroup0026Row0102_mask_upper,
    k5PrefixGroup0026Row0103_mask_upper,
    k5PrefixGroup0026Row0104_mask_upper,
    k5PrefixGroup0026Row0105_mask_upper,
    k5PrefixGroup0026Row0106_mask_upper,
    k5PrefixGroup0026Row0107_mask_upper,
    k5PrefixGroup0026Row0108_mask_upper,
    k5PrefixGroup0026Row0109_mask_upper,
    k5PrefixGroup0026Row0110_mask_upper,
    k5PrefixGroup0026Row0111_mask_upper,
    k5PrefixGroup0026Row0112_mask_upper,
    k5PrefixGroup0026Row0113_mask_upper,
    k5PrefixGroup0026Row0114_mask_upper,
    k5PrefixGroup0026Row0115_mask_upper,
    k5PrefixGroup0026Row0116_mask_upper,
    k5PrefixGroup0026Row0117_mask_upper,
    k5PrefixGroup0026Row0118_mask_upper,
    k5PrefixGroup0026Row0119_mask_upper,
    k5PrefixGroup0026Row0120_mask_upper,
    k5PrefixGroup0026Row0121_mask_upper,
    k5PrefixGroup0026Row0122_mask_upper,
    k5PrefixGroup0026Row0123_mask_upper,
    k5PrefixGroup0026Row0124_mask_upper,
    k5PrefixGroup0026Row0125_mask_upper,
    k5PrefixGroup0026Row0126_mask_upper,
    k5PrefixGroup0026Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
