import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0019 : List (List ℕ) :=
  [[3, 13, 37, 83],
     [3, 13, 37, 89],
     [3, 13, 37, 97],
     [3, 13, 37, 101],
     [3, 13, 37, 103],
     [3, 13, 37, 107],
     [3, 13, 37, 109],
     [3, 13, 37, 113],
     [3, 13, 37, 127],
     [3, 13, 37, 131],
     [3, 13, 37, 137],
     [3, 13, 37, 139],
     [3, 13, 37, 149],
     [3, 13, 37, 151],
     [3, 13, 37, 157],
     [3, 13, 37, 163],
     [3, 13, 37, 167],
     [3, 13, 37, 173],
     [3, 13, 37, 179],
     [3, 13, 37, 181],
     [3, 13, 37, 191],
     [3, 13, 37, 193],
     [3, 13, 37, 197],
     [3, 13, 37, 199],
     [3, 13, 37, 211],
     [3, 13, 37, 223],
     [3, 13, 37, 227],
     [3, 13, 37, 229],
     [3, 13, 37, 233],
     [3, 13, 37, 239],
     [3, 13, 37, 241],
     [3, 13, 37, 251],
     [3, 13, 41, 43],
     [3, 13, 41, 47],
     [3, 13, 41, 53],
     [3, 13, 41, 59],
     [3, 13, 41, 61],
     [3, 13, 41, 67],
     [3, 13, 41, 71],
     [3, 13, 41, 73],
     [3, 13, 41, 79],
     [3, 13, 41, 83],
     [3, 13, 41, 89],
     [3, 13, 41, 97],
     [3, 13, 41, 101],
     [3, 13, 41, 103],
     [3, 13, 41, 107],
     [3, 13, 41, 109],
     [3, 13, 41, 113],
     [3, 13, 41, 127],
     [3, 13, 41, 131],
     [3, 13, 41, 137],
     [3, 13, 41, 139],
     [3, 13, 41, 149],
     [3, 13, 41, 151],
     [3, 13, 41, 157],
     [3, 13, 41, 163],
     [3, 13, 41, 167],
     [3, 13, 41, 173],
     [3, 13, 41, 179],
     [3, 13, 41, 181],
     [3, 13, 41, 191],
     [3, 13, 41, 193],
     [3, 13, 41, 197],
     [3, 13, 41, 199],
     [3, 13, 41, 211],
     [3, 13, 41, 223],
     [3, 13, 41, 227],
     [3, 13, 41, 229],
     [3, 13, 41, 233],
     [3, 13, 41, 239],
     [3, 13, 43, 47],
     [3, 13, 43, 53],
     [3, 13, 43, 59],
     [3, 13, 43, 61],
     [3, 13, 43, 67],
     [3, 13, 43, 71],
     [3, 13, 43, 73],
     [3, 13, 43, 79],
     [3, 13, 43, 83],
     [3, 13, 43, 89],
     [3, 13, 43, 97],
     [3, 13, 43, 101],
     [3, 13, 43, 103],
     [3, 13, 43, 107],
     [3, 13, 43, 109],
     [3, 13, 43, 113],
     [3, 13, 43, 127],
     [3, 13, 43, 131],
     [3, 13, 43, 137],
     [3, 13, 43, 139],
     [3, 13, 43, 149],
     [3, 13, 43, 151],
     [3, 13, 43, 157],
     [3, 13, 43, 163],
     [3, 13, 43, 167],
     [3, 13, 43, 173],
     [3, 13, 43, 179],
     [3, 13, 43, 181],
     [3, 13, 43, 191],
     [3, 13, 43, 193],
     [3, 13, 43, 197],
     [3, 13, 43, 199],
     [3, 13, 43, 211],
     [3, 13, 43, 223],
     [3, 13, 43, 227],
     [3, 13, 43, 229],
     [3, 13, 43, 233],
     [3, 13, 43, 239],
     [3, 13, 47, 53],
     [3, 13, 47, 59],
     [3, 13, 47, 61],
     [3, 13, 47, 67],
     [3, 13, 47, 71],
     [3, 13, 47, 73],
     [3, 13, 47, 79],
     [3, 13, 47, 83],
     [3, 13, 47, 89],
     [3, 13, 47, 97],
     [3, 13, 47, 101],
     [3, 13, 47, 103],
     [3, 13, 47, 107],
     [3, 13, 47, 109],
     [3, 13, 47, 113],
     [3, 13, 47, 127],
     [3, 13, 47, 131],
     [3, 13, 47, 137],
     [3, 13, 47, 139]]

theorem k5PrefixGroup0019Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 241] = true := by
  decide

theorem k5PrefixGroup0019Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 241] = true := by
  decide

theorem k5PrefixGroup0019Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 251] = true := by
  decide

theorem k5PrefixGroup0019Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 251] = true := by
  decide

theorem k5PrefixGroup0019Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 43] = true := by
  decide

theorem k5PrefixGroup0019Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 43] = true := by
  decide

theorem k5PrefixGroup0019Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 47] = true := by
  decide

theorem k5PrefixGroup0019Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 47] = true := by
  decide

theorem k5PrefixGroup0019Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 41, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 41, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 47] = true := by
  decide

theorem k5PrefixGroup0019Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 47] = true := by
  decide

theorem k5PrefixGroup0019Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 149] = true := by
  decide

theorem k5PrefixGroup0019Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 151] = true := by
  decide

theorem k5PrefixGroup0019Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 157] = true := by
  decide

theorem k5PrefixGroup0019Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 163] = true := by
  decide

theorem k5PrefixGroup0019Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 167] = true := by
  decide

theorem k5PrefixGroup0019Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 173] = true := by
  decide

theorem k5PrefixGroup0019Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 179] = true := by
  decide

theorem k5PrefixGroup0019Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 181] = true := by
  decide

theorem k5PrefixGroup0019Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 191] = true := by
  decide

theorem k5PrefixGroup0019Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 193] = true := by
  decide

theorem k5PrefixGroup0019Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 197] = true := by
  decide

theorem k5PrefixGroup0019Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 199] = true := by
  decide

theorem k5PrefixGroup0019Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 211] = true := by
  decide

theorem k5PrefixGroup0019Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 223] = true := by
  decide

theorem k5PrefixGroup0019Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 227] = true := by
  decide

theorem k5PrefixGroup0019Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 229] = true := by
  decide

theorem k5PrefixGroup0019Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 233] = true := by
  decide

theorem k5PrefixGroup0019Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 43, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 43, 239] = true := by
  decide

theorem k5PrefixGroup0019Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 53] = true := by
  decide

theorem k5PrefixGroup0019Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 59] = true := by
  decide

theorem k5PrefixGroup0019Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 61] = true := by
  decide

theorem k5PrefixGroup0019Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 67] = true := by
  decide

theorem k5PrefixGroup0019Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 71] = true := by
  decide

theorem k5PrefixGroup0019Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 73] = true := by
  decide

theorem k5PrefixGroup0019Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 79] = true := by
  decide

theorem k5PrefixGroup0019Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 83] = true := by
  decide

theorem k5PrefixGroup0019Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 89] = true := by
  decide

theorem k5PrefixGroup0019Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 97] = true := by
  decide

theorem k5PrefixGroup0019Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 101] = true := by
  decide

theorem k5PrefixGroup0019Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 103] = true := by
  decide

theorem k5PrefixGroup0019Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 107] = true := by
  decide

theorem k5PrefixGroup0019Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 109] = true := by
  decide

theorem k5PrefixGroup0019Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 113] = true := by
  decide

theorem k5PrefixGroup0019Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 127] = true := by
  decide

theorem k5PrefixGroup0019Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 131] = true := by
  decide

theorem k5PrefixGroup0019Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 137] = true := by
  decide

theorem k5PrefixGroup0019Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 139] = true := by
  decide

theorem k5PrefixGroup0019Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 139] = true := by
  decide

theorem k5PrefixGroup0019_passes :
    k5PrefixGroup0019.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0019, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0019Row0000_passes,
    k5PrefixGroup0019Row0001_passes,
    k5PrefixGroup0019Row0002_passes,
    k5PrefixGroup0019Row0003_passes,
    k5PrefixGroup0019Row0004_passes,
    k5PrefixGroup0019Row0005_passes,
    k5PrefixGroup0019Row0006_passes,
    k5PrefixGroup0019Row0007_passes,
    k5PrefixGroup0019Row0008_passes,
    k5PrefixGroup0019Row0009_passes,
    k5PrefixGroup0019Row0010_passes,
    k5PrefixGroup0019Row0011_passes,
    k5PrefixGroup0019Row0012_passes,
    k5PrefixGroup0019Row0013_passes,
    k5PrefixGroup0019Row0014_passes,
    k5PrefixGroup0019Row0015_passes,
    k5PrefixGroup0019Row0016_passes,
    k5PrefixGroup0019Row0017_passes,
    k5PrefixGroup0019Row0018_passes,
    k5PrefixGroup0019Row0019_passes,
    k5PrefixGroup0019Row0020_passes,
    k5PrefixGroup0019Row0021_passes,
    k5PrefixGroup0019Row0022_passes,
    k5PrefixGroup0019Row0023_passes,
    k5PrefixGroup0019Row0024_passes,
    k5PrefixGroup0019Row0025_passes,
    k5PrefixGroup0019Row0026_passes,
    k5PrefixGroup0019Row0027_passes,
    k5PrefixGroup0019Row0028_passes,
    k5PrefixGroup0019Row0029_passes,
    k5PrefixGroup0019Row0030_passes,
    k5PrefixGroup0019Row0031_passes,
    k5PrefixGroup0019Row0032_passes,
    k5PrefixGroup0019Row0033_passes,
    k5PrefixGroup0019Row0034_passes,
    k5PrefixGroup0019Row0035_passes,
    k5PrefixGroup0019Row0036_passes,
    k5PrefixGroup0019Row0037_passes,
    k5PrefixGroup0019Row0038_passes,
    k5PrefixGroup0019Row0039_passes,
    k5PrefixGroup0019Row0040_passes,
    k5PrefixGroup0019Row0041_passes,
    k5PrefixGroup0019Row0042_passes,
    k5PrefixGroup0019Row0043_passes,
    k5PrefixGroup0019Row0044_passes,
    k5PrefixGroup0019Row0045_passes,
    k5PrefixGroup0019Row0046_passes,
    k5PrefixGroup0019Row0047_passes,
    k5PrefixGroup0019Row0048_passes,
    k5PrefixGroup0019Row0049_passes,
    k5PrefixGroup0019Row0050_passes,
    k5PrefixGroup0019Row0051_passes,
    k5PrefixGroup0019Row0052_passes,
    k5PrefixGroup0019Row0053_passes,
    k5PrefixGroup0019Row0054_passes,
    k5PrefixGroup0019Row0055_passes,
    k5PrefixGroup0019Row0056_passes,
    k5PrefixGroup0019Row0057_passes,
    k5PrefixGroup0019Row0058_passes,
    k5PrefixGroup0019Row0059_passes,
    k5PrefixGroup0019Row0060_passes,
    k5PrefixGroup0019Row0061_passes,
    k5PrefixGroup0019Row0062_passes,
    k5PrefixGroup0019Row0063_passes,
    k5PrefixGroup0019Row0064_passes,
    k5PrefixGroup0019Row0065_passes,
    k5PrefixGroup0019Row0066_passes,
    k5PrefixGroup0019Row0067_passes,
    k5PrefixGroup0019Row0068_passes,
    k5PrefixGroup0019Row0069_passes,
    k5PrefixGroup0019Row0070_passes,
    k5PrefixGroup0019Row0071_passes,
    k5PrefixGroup0019Row0072_passes,
    k5PrefixGroup0019Row0073_passes,
    k5PrefixGroup0019Row0074_passes,
    k5PrefixGroup0019Row0075_passes,
    k5PrefixGroup0019Row0076_passes,
    k5PrefixGroup0019Row0077_passes,
    k5PrefixGroup0019Row0078_passes,
    k5PrefixGroup0019Row0079_passes,
    k5PrefixGroup0019Row0080_passes,
    k5PrefixGroup0019Row0081_passes,
    k5PrefixGroup0019Row0082_passes,
    k5PrefixGroup0019Row0083_passes,
    k5PrefixGroup0019Row0084_passes,
    k5PrefixGroup0019Row0085_passes,
    k5PrefixGroup0019Row0086_passes,
    k5PrefixGroup0019Row0087_passes,
    k5PrefixGroup0019Row0088_passes,
    k5PrefixGroup0019Row0089_passes,
    k5PrefixGroup0019Row0090_passes,
    k5PrefixGroup0019Row0091_passes,
    k5PrefixGroup0019Row0092_passes,
    k5PrefixGroup0019Row0093_passes,
    k5PrefixGroup0019Row0094_passes,
    k5PrefixGroup0019Row0095_passes,
    k5PrefixGroup0019Row0096_passes,
    k5PrefixGroup0019Row0097_passes,
    k5PrefixGroup0019Row0098_passes,
    k5PrefixGroup0019Row0099_passes,
    k5PrefixGroup0019Row0100_passes,
    k5PrefixGroup0019Row0101_passes,
    k5PrefixGroup0019Row0102_passes,
    k5PrefixGroup0019Row0103_passes,
    k5PrefixGroup0019Row0104_passes,
    k5PrefixGroup0019Row0105_passes,
    k5PrefixGroup0019Row0106_passes,
    k5PrefixGroup0019Row0107_passes,
    k5PrefixGroup0019Row0108_passes,
    k5PrefixGroup0019Row0109_passes,
    k5PrefixGroup0019Row0110_passes,
    k5PrefixGroup0019Row0111_passes,
    k5PrefixGroup0019Row0112_passes,
    k5PrefixGroup0019Row0113_passes,
    k5PrefixGroup0019Row0114_passes,
    k5PrefixGroup0019Row0115_passes,
    k5PrefixGroup0019Row0116_passes,
    k5PrefixGroup0019Row0117_passes,
    k5PrefixGroup0019Row0118_passes,
    k5PrefixGroup0019Row0119_passes,
    k5PrefixGroup0019Row0120_passes,
    k5PrefixGroup0019Row0121_passes,
    k5PrefixGroup0019Row0122_passes,
    k5PrefixGroup0019Row0123_passes,
    k5PrefixGroup0019Row0124_passes,
    k5PrefixGroup0019Row0125_passes,
    k5PrefixGroup0019Row0126_passes,
    k5PrefixGroup0019Row0127_passes]

theorem k5PrefixGroup0019_mask_upper :
    k5PrefixGroup0019.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0019, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0019Row0000_mask_upper,
    k5PrefixGroup0019Row0001_mask_upper,
    k5PrefixGroup0019Row0002_mask_upper,
    k5PrefixGroup0019Row0003_mask_upper,
    k5PrefixGroup0019Row0004_mask_upper,
    k5PrefixGroup0019Row0005_mask_upper,
    k5PrefixGroup0019Row0006_mask_upper,
    k5PrefixGroup0019Row0007_mask_upper,
    k5PrefixGroup0019Row0008_mask_upper,
    k5PrefixGroup0019Row0009_mask_upper,
    k5PrefixGroup0019Row0010_mask_upper,
    k5PrefixGroup0019Row0011_mask_upper,
    k5PrefixGroup0019Row0012_mask_upper,
    k5PrefixGroup0019Row0013_mask_upper,
    k5PrefixGroup0019Row0014_mask_upper,
    k5PrefixGroup0019Row0015_mask_upper,
    k5PrefixGroup0019Row0016_mask_upper,
    k5PrefixGroup0019Row0017_mask_upper,
    k5PrefixGroup0019Row0018_mask_upper,
    k5PrefixGroup0019Row0019_mask_upper,
    k5PrefixGroup0019Row0020_mask_upper,
    k5PrefixGroup0019Row0021_mask_upper,
    k5PrefixGroup0019Row0022_mask_upper,
    k5PrefixGroup0019Row0023_mask_upper,
    k5PrefixGroup0019Row0024_mask_upper,
    k5PrefixGroup0019Row0025_mask_upper,
    k5PrefixGroup0019Row0026_mask_upper,
    k5PrefixGroup0019Row0027_mask_upper,
    k5PrefixGroup0019Row0028_mask_upper,
    k5PrefixGroup0019Row0029_mask_upper,
    k5PrefixGroup0019Row0030_mask_upper,
    k5PrefixGroup0019Row0031_mask_upper,
    k5PrefixGroup0019Row0032_mask_upper,
    k5PrefixGroup0019Row0033_mask_upper,
    k5PrefixGroup0019Row0034_mask_upper,
    k5PrefixGroup0019Row0035_mask_upper,
    k5PrefixGroup0019Row0036_mask_upper,
    k5PrefixGroup0019Row0037_mask_upper,
    k5PrefixGroup0019Row0038_mask_upper,
    k5PrefixGroup0019Row0039_mask_upper,
    k5PrefixGroup0019Row0040_mask_upper,
    k5PrefixGroup0019Row0041_mask_upper,
    k5PrefixGroup0019Row0042_mask_upper,
    k5PrefixGroup0019Row0043_mask_upper,
    k5PrefixGroup0019Row0044_mask_upper,
    k5PrefixGroup0019Row0045_mask_upper,
    k5PrefixGroup0019Row0046_mask_upper,
    k5PrefixGroup0019Row0047_mask_upper,
    k5PrefixGroup0019Row0048_mask_upper,
    k5PrefixGroup0019Row0049_mask_upper,
    k5PrefixGroup0019Row0050_mask_upper,
    k5PrefixGroup0019Row0051_mask_upper,
    k5PrefixGroup0019Row0052_mask_upper,
    k5PrefixGroup0019Row0053_mask_upper,
    k5PrefixGroup0019Row0054_mask_upper,
    k5PrefixGroup0019Row0055_mask_upper,
    k5PrefixGroup0019Row0056_mask_upper,
    k5PrefixGroup0019Row0057_mask_upper,
    k5PrefixGroup0019Row0058_mask_upper,
    k5PrefixGroup0019Row0059_mask_upper,
    k5PrefixGroup0019Row0060_mask_upper,
    k5PrefixGroup0019Row0061_mask_upper,
    k5PrefixGroup0019Row0062_mask_upper,
    k5PrefixGroup0019Row0063_mask_upper,
    k5PrefixGroup0019Row0064_mask_upper,
    k5PrefixGroup0019Row0065_mask_upper,
    k5PrefixGroup0019Row0066_mask_upper,
    k5PrefixGroup0019Row0067_mask_upper,
    k5PrefixGroup0019Row0068_mask_upper,
    k5PrefixGroup0019Row0069_mask_upper,
    k5PrefixGroup0019Row0070_mask_upper,
    k5PrefixGroup0019Row0071_mask_upper,
    k5PrefixGroup0019Row0072_mask_upper,
    k5PrefixGroup0019Row0073_mask_upper,
    k5PrefixGroup0019Row0074_mask_upper,
    k5PrefixGroup0019Row0075_mask_upper,
    k5PrefixGroup0019Row0076_mask_upper,
    k5PrefixGroup0019Row0077_mask_upper,
    k5PrefixGroup0019Row0078_mask_upper,
    k5PrefixGroup0019Row0079_mask_upper,
    k5PrefixGroup0019Row0080_mask_upper,
    k5PrefixGroup0019Row0081_mask_upper,
    k5PrefixGroup0019Row0082_mask_upper,
    k5PrefixGroup0019Row0083_mask_upper,
    k5PrefixGroup0019Row0084_mask_upper,
    k5PrefixGroup0019Row0085_mask_upper,
    k5PrefixGroup0019Row0086_mask_upper,
    k5PrefixGroup0019Row0087_mask_upper,
    k5PrefixGroup0019Row0088_mask_upper,
    k5PrefixGroup0019Row0089_mask_upper,
    k5PrefixGroup0019Row0090_mask_upper,
    k5PrefixGroup0019Row0091_mask_upper,
    k5PrefixGroup0019Row0092_mask_upper,
    k5PrefixGroup0019Row0093_mask_upper,
    k5PrefixGroup0019Row0094_mask_upper,
    k5PrefixGroup0019Row0095_mask_upper,
    k5PrefixGroup0019Row0096_mask_upper,
    k5PrefixGroup0019Row0097_mask_upper,
    k5PrefixGroup0019Row0098_mask_upper,
    k5PrefixGroup0019Row0099_mask_upper,
    k5PrefixGroup0019Row0100_mask_upper,
    k5PrefixGroup0019Row0101_mask_upper,
    k5PrefixGroup0019Row0102_mask_upper,
    k5PrefixGroup0019Row0103_mask_upper,
    k5PrefixGroup0019Row0104_mask_upper,
    k5PrefixGroup0019Row0105_mask_upper,
    k5PrefixGroup0019Row0106_mask_upper,
    k5PrefixGroup0019Row0107_mask_upper,
    k5PrefixGroup0019Row0108_mask_upper,
    k5PrefixGroup0019Row0109_mask_upper,
    k5PrefixGroup0019Row0110_mask_upper,
    k5PrefixGroup0019Row0111_mask_upper,
    k5PrefixGroup0019Row0112_mask_upper,
    k5PrefixGroup0019Row0113_mask_upper,
    k5PrefixGroup0019Row0114_mask_upper,
    k5PrefixGroup0019Row0115_mask_upper,
    k5PrefixGroup0019Row0116_mask_upper,
    k5PrefixGroup0019Row0117_mask_upper,
    k5PrefixGroup0019Row0118_mask_upper,
    k5PrefixGroup0019Row0119_mask_upper,
    k5PrefixGroup0019Row0120_mask_upper,
    k5PrefixGroup0019Row0121_mask_upper,
    k5PrefixGroup0019Row0122_mask_upper,
    k5PrefixGroup0019Row0123_mask_upper,
    k5PrefixGroup0019Row0124_mask_upper,
    k5PrefixGroup0019Row0125_mask_upper,
    k5PrefixGroup0019Row0126_mask_upper,
    k5PrefixGroup0019Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
