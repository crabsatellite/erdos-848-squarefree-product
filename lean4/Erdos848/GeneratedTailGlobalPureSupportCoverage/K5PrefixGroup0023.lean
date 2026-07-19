import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0023 : List (List ℕ) :=
  [[3, 17, 29, 83],
     [3, 17, 29, 89],
     [3, 17, 29, 97],
     [3, 17, 29, 101],
     [3, 17, 29, 103],
     [3, 17, 29, 107],
     [3, 17, 29, 109],
     [3, 17, 29, 113],
     [3, 17, 29, 127],
     [3, 17, 29, 131],
     [3, 17, 29, 137],
     [3, 17, 29, 139],
     [3, 17, 29, 149],
     [3, 17, 29, 151],
     [3, 17, 29, 157],
     [3, 17, 29, 163],
     [3, 17, 29, 167],
     [3, 17, 29, 173],
     [3, 17, 29, 179],
     [3, 17, 29, 181],
     [3, 17, 29, 191],
     [3, 17, 29, 193],
     [3, 17, 29, 197],
     [3, 17, 29, 199],
     [3, 17, 29, 211],
     [3, 17, 29, 223],
     [3, 17, 29, 227],
     [3, 17, 29, 229],
     [3, 17, 29, 233],
     [3, 17, 29, 239],
     [3, 17, 29, 241],
     [3, 17, 29, 251],
     [3, 17, 31, 37],
     [3, 17, 31, 41],
     [3, 17, 31, 43],
     [3, 17, 31, 47],
     [3, 17, 31, 53],
     [3, 17, 31, 59],
     [3, 17, 31, 61],
     [3, 17, 31, 67],
     [3, 17, 31, 71],
     [3, 17, 31, 73],
     [3, 17, 31, 79],
     [3, 17, 31, 83],
     [3, 17, 31, 89],
     [3, 17, 31, 97],
     [3, 17, 31, 101],
     [3, 17, 31, 103],
     [3, 17, 31, 107],
     [3, 17, 31, 109],
     [3, 17, 31, 113],
     [3, 17, 31, 127],
     [3, 17, 31, 131],
     [3, 17, 31, 137],
     [3, 17, 31, 139],
     [3, 17, 31, 149],
     [3, 17, 31, 151],
     [3, 17, 31, 157],
     [3, 17, 31, 163],
     [3, 17, 31, 167],
     [3, 17, 31, 173],
     [3, 17, 31, 179],
     [3, 17, 31, 181],
     [3, 17, 31, 191],
     [3, 17, 31, 193],
     [3, 17, 31, 197],
     [3, 17, 31, 199],
     [3, 17, 31, 211],
     [3, 17, 31, 223],
     [3, 17, 31, 227],
     [3, 17, 31, 229],
     [3, 17, 31, 233],
     [3, 17, 31, 239],
     [3, 17, 31, 241],
     [3, 17, 37, 41],
     [3, 17, 37, 43],
     [3, 17, 37, 47],
     [3, 17, 37, 53],
     [3, 17, 37, 59],
     [3, 17, 37, 61],
     [3, 17, 37, 67],
     [3, 17, 37, 71],
     [3, 17, 37, 73],
     [3, 17, 37, 79],
     [3, 17, 37, 83],
     [3, 17, 37, 89],
     [3, 17, 37, 97],
     [3, 17, 37, 101],
     [3, 17, 37, 103],
     [3, 17, 37, 107],
     [3, 17, 37, 109],
     [3, 17, 37, 113],
     [3, 17, 37, 127],
     [3, 17, 37, 131],
     [3, 17, 37, 137],
     [3, 17, 37, 139],
     [3, 17, 37, 149],
     [3, 17, 37, 151],
     [3, 17, 37, 157],
     [3, 17, 37, 163],
     [3, 17, 37, 167],
     [3, 17, 37, 173],
     [3, 17, 37, 179],
     [3, 17, 37, 181],
     [3, 17, 37, 191],
     [3, 17, 37, 193],
     [3, 17, 37, 197],
     [3, 17, 37, 199],
     [3, 17, 37, 211],
     [3, 17, 37, 223],
     [3, 17, 41, 43],
     [3, 17, 41, 47],
     [3, 17, 41, 53],
     [3, 17, 41, 59],
     [3, 17, 41, 61],
     [3, 17, 41, 67],
     [3, 17, 41, 71],
     [3, 17, 41, 73],
     [3, 17, 41, 79],
     [3, 17, 41, 83],
     [3, 17, 41, 89],
     [3, 17, 41, 97],
     [3, 17, 41, 101],
     [3, 17, 41, 103],
     [3, 17, 41, 107],
     [3, 17, 41, 109],
     [3, 17, 41, 113],
     [3, 17, 41, 127]]

theorem k5PrefixGroup0023Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 227] = true := by
  decide

theorem k5PrefixGroup0023Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 227] = true := by
  decide

theorem k5PrefixGroup0023Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 229] = true := by
  decide

theorem k5PrefixGroup0023Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 229] = true := by
  decide

theorem k5PrefixGroup0023Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 233] = true := by
  decide

theorem k5PrefixGroup0023Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 233] = true := by
  decide

theorem k5PrefixGroup0023Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 239] = true := by
  decide

theorem k5PrefixGroup0023Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 239] = true := by
  decide

theorem k5PrefixGroup0023Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 241] = true := by
  decide

theorem k5PrefixGroup0023Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 241] = true := by
  decide

theorem k5PrefixGroup0023Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 29, 251] = true := by
  decide

theorem k5PrefixGroup0023Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 29, 251] = true := by
  decide

theorem k5PrefixGroup0023Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 37] = true := by
  decide

theorem k5PrefixGroup0023Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 37] = true := by
  decide

theorem k5PrefixGroup0023Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 41] = true := by
  decide

theorem k5PrefixGroup0023Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 41] = true := by
  decide

theorem k5PrefixGroup0023Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 227] = true := by
  decide

theorem k5PrefixGroup0023Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 227] = true := by
  decide

theorem k5PrefixGroup0023Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 229] = true := by
  decide

theorem k5PrefixGroup0023Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 229] = true := by
  decide

theorem k5PrefixGroup0023Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 233] = true := by
  decide

theorem k5PrefixGroup0023Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 233] = true := by
  decide

theorem k5PrefixGroup0023Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 239] = true := by
  decide

theorem k5PrefixGroup0023Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 239] = true := by
  decide

theorem k5PrefixGroup0023Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 31, 241] = true := by
  decide

theorem k5PrefixGroup0023Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 31, 241] = true := by
  decide

theorem k5PrefixGroup0023Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 41] = true := by
  decide

theorem k5PrefixGroup0023Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 41] = true := by
  decide

theorem k5PrefixGroup0023Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 131] = true := by
  decide

theorem k5PrefixGroup0023Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 137] = true := by
  decide

theorem k5PrefixGroup0023Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 139] = true := by
  decide

theorem k5PrefixGroup0023Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 149] = true := by
  decide

theorem k5PrefixGroup0023Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 151] = true := by
  decide

theorem k5PrefixGroup0023Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 157] = true := by
  decide

theorem k5PrefixGroup0023Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 163] = true := by
  decide

theorem k5PrefixGroup0023Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 167] = true := by
  decide

theorem k5PrefixGroup0023Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 173] = true := by
  decide

theorem k5PrefixGroup0023Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 179] = true := by
  decide

theorem k5PrefixGroup0023Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 181] = true := by
  decide

theorem k5PrefixGroup0023Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 191] = true := by
  decide

theorem k5PrefixGroup0023Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 193] = true := by
  decide

theorem k5PrefixGroup0023Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 197] = true := by
  decide

theorem k5PrefixGroup0023Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 199] = true := by
  decide

theorem k5PrefixGroup0023Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 211] = true := by
  decide

theorem k5PrefixGroup0023Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 37, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 37, 223] = true := by
  decide

theorem k5PrefixGroup0023Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 43] = true := by
  decide

theorem k5PrefixGroup0023Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 47] = true := by
  decide

theorem k5PrefixGroup0023Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 53] = true := by
  decide

theorem k5PrefixGroup0023Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 59] = true := by
  decide

theorem k5PrefixGroup0023Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 61] = true := by
  decide

theorem k5PrefixGroup0023Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 67] = true := by
  decide

theorem k5PrefixGroup0023Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 71] = true := by
  decide

theorem k5PrefixGroup0023Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 73] = true := by
  decide

theorem k5PrefixGroup0023Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 79] = true := by
  decide

theorem k5PrefixGroup0023Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 83] = true := by
  decide

theorem k5PrefixGroup0023Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 89] = true := by
  decide

theorem k5PrefixGroup0023Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 97] = true := by
  decide

theorem k5PrefixGroup0023Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 101] = true := by
  decide

theorem k5PrefixGroup0023Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 103] = true := by
  decide

theorem k5PrefixGroup0023Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 107] = true := by
  decide

theorem k5PrefixGroup0023Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 109] = true := by
  decide

theorem k5PrefixGroup0023Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 113] = true := by
  decide

theorem k5PrefixGroup0023Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 41, 127] = true := by
  decide

theorem k5PrefixGroup0023Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 41, 127] = true := by
  decide

theorem k5PrefixGroup0023_passes :
    k5PrefixGroup0023.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0023, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0023Row0000_passes,
    k5PrefixGroup0023Row0001_passes,
    k5PrefixGroup0023Row0002_passes,
    k5PrefixGroup0023Row0003_passes,
    k5PrefixGroup0023Row0004_passes,
    k5PrefixGroup0023Row0005_passes,
    k5PrefixGroup0023Row0006_passes,
    k5PrefixGroup0023Row0007_passes,
    k5PrefixGroup0023Row0008_passes,
    k5PrefixGroup0023Row0009_passes,
    k5PrefixGroup0023Row0010_passes,
    k5PrefixGroup0023Row0011_passes,
    k5PrefixGroup0023Row0012_passes,
    k5PrefixGroup0023Row0013_passes,
    k5PrefixGroup0023Row0014_passes,
    k5PrefixGroup0023Row0015_passes,
    k5PrefixGroup0023Row0016_passes,
    k5PrefixGroup0023Row0017_passes,
    k5PrefixGroup0023Row0018_passes,
    k5PrefixGroup0023Row0019_passes,
    k5PrefixGroup0023Row0020_passes,
    k5PrefixGroup0023Row0021_passes,
    k5PrefixGroup0023Row0022_passes,
    k5PrefixGroup0023Row0023_passes,
    k5PrefixGroup0023Row0024_passes,
    k5PrefixGroup0023Row0025_passes,
    k5PrefixGroup0023Row0026_passes,
    k5PrefixGroup0023Row0027_passes,
    k5PrefixGroup0023Row0028_passes,
    k5PrefixGroup0023Row0029_passes,
    k5PrefixGroup0023Row0030_passes,
    k5PrefixGroup0023Row0031_passes,
    k5PrefixGroup0023Row0032_passes,
    k5PrefixGroup0023Row0033_passes,
    k5PrefixGroup0023Row0034_passes,
    k5PrefixGroup0023Row0035_passes,
    k5PrefixGroup0023Row0036_passes,
    k5PrefixGroup0023Row0037_passes,
    k5PrefixGroup0023Row0038_passes,
    k5PrefixGroup0023Row0039_passes,
    k5PrefixGroup0023Row0040_passes,
    k5PrefixGroup0023Row0041_passes,
    k5PrefixGroup0023Row0042_passes,
    k5PrefixGroup0023Row0043_passes,
    k5PrefixGroup0023Row0044_passes,
    k5PrefixGroup0023Row0045_passes,
    k5PrefixGroup0023Row0046_passes,
    k5PrefixGroup0023Row0047_passes,
    k5PrefixGroup0023Row0048_passes,
    k5PrefixGroup0023Row0049_passes,
    k5PrefixGroup0023Row0050_passes,
    k5PrefixGroup0023Row0051_passes,
    k5PrefixGroup0023Row0052_passes,
    k5PrefixGroup0023Row0053_passes,
    k5PrefixGroup0023Row0054_passes,
    k5PrefixGroup0023Row0055_passes,
    k5PrefixGroup0023Row0056_passes,
    k5PrefixGroup0023Row0057_passes,
    k5PrefixGroup0023Row0058_passes,
    k5PrefixGroup0023Row0059_passes,
    k5PrefixGroup0023Row0060_passes,
    k5PrefixGroup0023Row0061_passes,
    k5PrefixGroup0023Row0062_passes,
    k5PrefixGroup0023Row0063_passes,
    k5PrefixGroup0023Row0064_passes,
    k5PrefixGroup0023Row0065_passes,
    k5PrefixGroup0023Row0066_passes,
    k5PrefixGroup0023Row0067_passes,
    k5PrefixGroup0023Row0068_passes,
    k5PrefixGroup0023Row0069_passes,
    k5PrefixGroup0023Row0070_passes,
    k5PrefixGroup0023Row0071_passes,
    k5PrefixGroup0023Row0072_passes,
    k5PrefixGroup0023Row0073_passes,
    k5PrefixGroup0023Row0074_passes,
    k5PrefixGroup0023Row0075_passes,
    k5PrefixGroup0023Row0076_passes,
    k5PrefixGroup0023Row0077_passes,
    k5PrefixGroup0023Row0078_passes,
    k5PrefixGroup0023Row0079_passes,
    k5PrefixGroup0023Row0080_passes,
    k5PrefixGroup0023Row0081_passes,
    k5PrefixGroup0023Row0082_passes,
    k5PrefixGroup0023Row0083_passes,
    k5PrefixGroup0023Row0084_passes,
    k5PrefixGroup0023Row0085_passes,
    k5PrefixGroup0023Row0086_passes,
    k5PrefixGroup0023Row0087_passes,
    k5PrefixGroup0023Row0088_passes,
    k5PrefixGroup0023Row0089_passes,
    k5PrefixGroup0023Row0090_passes,
    k5PrefixGroup0023Row0091_passes,
    k5PrefixGroup0023Row0092_passes,
    k5PrefixGroup0023Row0093_passes,
    k5PrefixGroup0023Row0094_passes,
    k5PrefixGroup0023Row0095_passes,
    k5PrefixGroup0023Row0096_passes,
    k5PrefixGroup0023Row0097_passes,
    k5PrefixGroup0023Row0098_passes,
    k5PrefixGroup0023Row0099_passes,
    k5PrefixGroup0023Row0100_passes,
    k5PrefixGroup0023Row0101_passes,
    k5PrefixGroup0023Row0102_passes,
    k5PrefixGroup0023Row0103_passes,
    k5PrefixGroup0023Row0104_passes,
    k5PrefixGroup0023Row0105_passes,
    k5PrefixGroup0023Row0106_passes,
    k5PrefixGroup0023Row0107_passes,
    k5PrefixGroup0023Row0108_passes,
    k5PrefixGroup0023Row0109_passes,
    k5PrefixGroup0023Row0110_passes,
    k5PrefixGroup0023Row0111_passes,
    k5PrefixGroup0023Row0112_passes,
    k5PrefixGroup0023Row0113_passes,
    k5PrefixGroup0023Row0114_passes,
    k5PrefixGroup0023Row0115_passes,
    k5PrefixGroup0023Row0116_passes,
    k5PrefixGroup0023Row0117_passes,
    k5PrefixGroup0023Row0118_passes,
    k5PrefixGroup0023Row0119_passes,
    k5PrefixGroup0023Row0120_passes,
    k5PrefixGroup0023Row0121_passes,
    k5PrefixGroup0023Row0122_passes,
    k5PrefixGroup0023Row0123_passes,
    k5PrefixGroup0023Row0124_passes,
    k5PrefixGroup0023Row0125_passes,
    k5PrefixGroup0023Row0126_passes,
    k5PrefixGroup0023Row0127_passes]

theorem k5PrefixGroup0023_mask_upper :
    k5PrefixGroup0023.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0023, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0023Row0000_mask_upper,
    k5PrefixGroup0023Row0001_mask_upper,
    k5PrefixGroup0023Row0002_mask_upper,
    k5PrefixGroup0023Row0003_mask_upper,
    k5PrefixGroup0023Row0004_mask_upper,
    k5PrefixGroup0023Row0005_mask_upper,
    k5PrefixGroup0023Row0006_mask_upper,
    k5PrefixGroup0023Row0007_mask_upper,
    k5PrefixGroup0023Row0008_mask_upper,
    k5PrefixGroup0023Row0009_mask_upper,
    k5PrefixGroup0023Row0010_mask_upper,
    k5PrefixGroup0023Row0011_mask_upper,
    k5PrefixGroup0023Row0012_mask_upper,
    k5PrefixGroup0023Row0013_mask_upper,
    k5PrefixGroup0023Row0014_mask_upper,
    k5PrefixGroup0023Row0015_mask_upper,
    k5PrefixGroup0023Row0016_mask_upper,
    k5PrefixGroup0023Row0017_mask_upper,
    k5PrefixGroup0023Row0018_mask_upper,
    k5PrefixGroup0023Row0019_mask_upper,
    k5PrefixGroup0023Row0020_mask_upper,
    k5PrefixGroup0023Row0021_mask_upper,
    k5PrefixGroup0023Row0022_mask_upper,
    k5PrefixGroup0023Row0023_mask_upper,
    k5PrefixGroup0023Row0024_mask_upper,
    k5PrefixGroup0023Row0025_mask_upper,
    k5PrefixGroup0023Row0026_mask_upper,
    k5PrefixGroup0023Row0027_mask_upper,
    k5PrefixGroup0023Row0028_mask_upper,
    k5PrefixGroup0023Row0029_mask_upper,
    k5PrefixGroup0023Row0030_mask_upper,
    k5PrefixGroup0023Row0031_mask_upper,
    k5PrefixGroup0023Row0032_mask_upper,
    k5PrefixGroup0023Row0033_mask_upper,
    k5PrefixGroup0023Row0034_mask_upper,
    k5PrefixGroup0023Row0035_mask_upper,
    k5PrefixGroup0023Row0036_mask_upper,
    k5PrefixGroup0023Row0037_mask_upper,
    k5PrefixGroup0023Row0038_mask_upper,
    k5PrefixGroup0023Row0039_mask_upper,
    k5PrefixGroup0023Row0040_mask_upper,
    k5PrefixGroup0023Row0041_mask_upper,
    k5PrefixGroup0023Row0042_mask_upper,
    k5PrefixGroup0023Row0043_mask_upper,
    k5PrefixGroup0023Row0044_mask_upper,
    k5PrefixGroup0023Row0045_mask_upper,
    k5PrefixGroup0023Row0046_mask_upper,
    k5PrefixGroup0023Row0047_mask_upper,
    k5PrefixGroup0023Row0048_mask_upper,
    k5PrefixGroup0023Row0049_mask_upper,
    k5PrefixGroup0023Row0050_mask_upper,
    k5PrefixGroup0023Row0051_mask_upper,
    k5PrefixGroup0023Row0052_mask_upper,
    k5PrefixGroup0023Row0053_mask_upper,
    k5PrefixGroup0023Row0054_mask_upper,
    k5PrefixGroup0023Row0055_mask_upper,
    k5PrefixGroup0023Row0056_mask_upper,
    k5PrefixGroup0023Row0057_mask_upper,
    k5PrefixGroup0023Row0058_mask_upper,
    k5PrefixGroup0023Row0059_mask_upper,
    k5PrefixGroup0023Row0060_mask_upper,
    k5PrefixGroup0023Row0061_mask_upper,
    k5PrefixGroup0023Row0062_mask_upper,
    k5PrefixGroup0023Row0063_mask_upper,
    k5PrefixGroup0023Row0064_mask_upper,
    k5PrefixGroup0023Row0065_mask_upper,
    k5PrefixGroup0023Row0066_mask_upper,
    k5PrefixGroup0023Row0067_mask_upper,
    k5PrefixGroup0023Row0068_mask_upper,
    k5PrefixGroup0023Row0069_mask_upper,
    k5PrefixGroup0023Row0070_mask_upper,
    k5PrefixGroup0023Row0071_mask_upper,
    k5PrefixGroup0023Row0072_mask_upper,
    k5PrefixGroup0023Row0073_mask_upper,
    k5PrefixGroup0023Row0074_mask_upper,
    k5PrefixGroup0023Row0075_mask_upper,
    k5PrefixGroup0023Row0076_mask_upper,
    k5PrefixGroup0023Row0077_mask_upper,
    k5PrefixGroup0023Row0078_mask_upper,
    k5PrefixGroup0023Row0079_mask_upper,
    k5PrefixGroup0023Row0080_mask_upper,
    k5PrefixGroup0023Row0081_mask_upper,
    k5PrefixGroup0023Row0082_mask_upper,
    k5PrefixGroup0023Row0083_mask_upper,
    k5PrefixGroup0023Row0084_mask_upper,
    k5PrefixGroup0023Row0085_mask_upper,
    k5PrefixGroup0023Row0086_mask_upper,
    k5PrefixGroup0023Row0087_mask_upper,
    k5PrefixGroup0023Row0088_mask_upper,
    k5PrefixGroup0023Row0089_mask_upper,
    k5PrefixGroup0023Row0090_mask_upper,
    k5PrefixGroup0023Row0091_mask_upper,
    k5PrefixGroup0023Row0092_mask_upper,
    k5PrefixGroup0023Row0093_mask_upper,
    k5PrefixGroup0023Row0094_mask_upper,
    k5PrefixGroup0023Row0095_mask_upper,
    k5PrefixGroup0023Row0096_mask_upper,
    k5PrefixGroup0023Row0097_mask_upper,
    k5PrefixGroup0023Row0098_mask_upper,
    k5PrefixGroup0023Row0099_mask_upper,
    k5PrefixGroup0023Row0100_mask_upper,
    k5PrefixGroup0023Row0101_mask_upper,
    k5PrefixGroup0023Row0102_mask_upper,
    k5PrefixGroup0023Row0103_mask_upper,
    k5PrefixGroup0023Row0104_mask_upper,
    k5PrefixGroup0023Row0105_mask_upper,
    k5PrefixGroup0023Row0106_mask_upper,
    k5PrefixGroup0023Row0107_mask_upper,
    k5PrefixGroup0023Row0108_mask_upper,
    k5PrefixGroup0023Row0109_mask_upper,
    k5PrefixGroup0023Row0110_mask_upper,
    k5PrefixGroup0023Row0111_mask_upper,
    k5PrefixGroup0023Row0112_mask_upper,
    k5PrefixGroup0023Row0113_mask_upper,
    k5PrefixGroup0023Row0114_mask_upper,
    k5PrefixGroup0023Row0115_mask_upper,
    k5PrefixGroup0023Row0116_mask_upper,
    k5PrefixGroup0023Row0117_mask_upper,
    k5PrefixGroup0023Row0118_mask_upper,
    k5PrefixGroup0023Row0119_mask_upper,
    k5PrefixGroup0023Row0120_mask_upper,
    k5PrefixGroup0023Row0121_mask_upper,
    k5PrefixGroup0023Row0122_mask_upper,
    k5PrefixGroup0023Row0123_mask_upper,
    k5PrefixGroup0023Row0124_mask_upper,
    k5PrefixGroup0023Row0125_mask_upper,
    k5PrefixGroup0023Row0126_mask_upper,
    k5PrefixGroup0023Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
