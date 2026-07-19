import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0007 : List (List ℕ) :=
  [[3, 7, 61, 67],
     [3, 7, 61, 71],
     [3, 7, 61, 73],
     [3, 7, 61, 79],
     [3, 7, 61, 83],
     [3, 7, 61, 89],
     [3, 7, 61, 97],
     [3, 7, 61, 101],
     [3, 7, 61, 103],
     [3, 7, 61, 107],
     [3, 7, 61, 109],
     [3, 7, 61, 113],
     [3, 7, 61, 127],
     [3, 7, 61, 131],
     [3, 7, 61, 137],
     [3, 7, 61, 139],
     [3, 7, 61, 149],
     [3, 7, 61, 151],
     [3, 7, 61, 157],
     [3, 7, 61, 163],
     [3, 7, 61, 167],
     [3, 7, 61, 173],
     [3, 7, 61, 179],
     [3, 7, 61, 181],
     [3, 7, 61, 191],
     [3, 7, 61, 193],
     [3, 7, 61, 197],
     [3, 7, 61, 199],
     [3, 7, 61, 211],
     [3, 7, 61, 223],
     [3, 7, 61, 227],
     [3, 7, 61, 229],
     [3, 7, 61, 233],
     [3, 7, 61, 239],
     [3, 7, 61, 241],
     [3, 7, 61, 251],
     [3, 7, 61, 257],
     [3, 7, 61, 263],
     [3, 7, 61, 269],
     [3, 7, 61, 271],
     [3, 7, 67, 71],
     [3, 7, 67, 73],
     [3, 7, 67, 79],
     [3, 7, 67, 83],
     [3, 7, 67, 89],
     [3, 7, 67, 97],
     [3, 7, 67, 101],
     [3, 7, 67, 103],
     [3, 7, 67, 107],
     [3, 7, 67, 109],
     [3, 7, 67, 113],
     [3, 7, 67, 127],
     [3, 7, 67, 131],
     [3, 7, 67, 137],
     [3, 7, 67, 139],
     [3, 7, 67, 149],
     [3, 7, 67, 151],
     [3, 7, 67, 157],
     [3, 7, 67, 163],
     [3, 7, 67, 167],
     [3, 7, 67, 173],
     [3, 7, 67, 179],
     [3, 7, 67, 181],
     [3, 7, 67, 191],
     [3, 7, 67, 193],
     [3, 7, 67, 197],
     [3, 7, 67, 199],
     [3, 7, 67, 211],
     [3, 7, 67, 223],
     [3, 7, 67, 227],
     [3, 7, 67, 229],
     [3, 7, 67, 233],
     [3, 7, 67, 239],
     [3, 7, 67, 241],
     [3, 7, 67, 251],
     [3, 7, 67, 257],
     [3, 7, 71, 73],
     [3, 7, 71, 79],
     [3, 7, 71, 83],
     [3, 7, 71, 89],
     [3, 7, 71, 97],
     [3, 7, 71, 101],
     [3, 7, 71, 103],
     [3, 7, 71, 107],
     [3, 7, 71, 109],
     [3, 7, 71, 113],
     [3, 7, 71, 127],
     [3, 7, 71, 131],
     [3, 7, 71, 137],
     [3, 7, 71, 139],
     [3, 7, 71, 149],
     [3, 7, 71, 151],
     [3, 7, 71, 157],
     [3, 7, 71, 163],
     [3, 7, 71, 167],
     [3, 7, 71, 173],
     [3, 7, 71, 179],
     [3, 7, 71, 181],
     [3, 7, 71, 191],
     [3, 7, 71, 193],
     [3, 7, 71, 197],
     [3, 7, 71, 199],
     [3, 7, 71, 211],
     [3, 7, 71, 223],
     [3, 7, 71, 227],
     [3, 7, 71, 229],
     [3, 7, 71, 233],
     [3, 7, 71, 239],
     [3, 7, 71, 241],
     [3, 7, 71, 251],
     [3, 7, 73, 79],
     [3, 7, 73, 83],
     [3, 7, 73, 89],
     [3, 7, 73, 97],
     [3, 7, 73, 101],
     [3, 7, 73, 103],
     [3, 7, 73, 107],
     [3, 7, 73, 109],
     [3, 7, 73, 113],
     [3, 7, 73, 127],
     [3, 7, 73, 131],
     [3, 7, 73, 137],
     [3, 7, 73, 139],
     [3, 7, 73, 149],
     [3, 7, 73, 151],
     [3, 7, 73, 157],
     [3, 7, 73, 163],
     [3, 7, 73, 167]]

theorem k5PrefixGroup0007Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 67] = true := by
  decide

theorem k5PrefixGroup0007Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 67] = true := by
  decide

theorem k5PrefixGroup0007Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 71] = true := by
  decide

theorem k5PrefixGroup0007Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 71] = true := by
  decide

theorem k5PrefixGroup0007Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 257] = true := by
  decide

theorem k5PrefixGroup0007Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 257] = true := by
  decide

theorem k5PrefixGroup0007Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 263] = true := by
  decide

theorem k5PrefixGroup0007Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 263] = true := by
  decide

theorem k5PrefixGroup0007Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 269] = true := by
  decide

theorem k5PrefixGroup0007Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 269] = true := by
  decide

theorem k5PrefixGroup0007Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 61, 271] = true := by
  decide

theorem k5PrefixGroup0007Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 61, 271] = true := by
  decide

theorem k5PrefixGroup0007Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 71] = true := by
  decide

theorem k5PrefixGroup0007Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 71] = true := by
  decide

theorem k5PrefixGroup0007Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 67, 257] = true := by
  decide

theorem k5PrefixGroup0007Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 67, 257] = true := by
  decide

theorem k5PrefixGroup0007Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 73] = true := by
  decide

theorem k5PrefixGroup0007Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 173] = true := by
  decide

theorem k5PrefixGroup0007Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 179] = true := by
  decide

theorem k5PrefixGroup0007Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 181] = true := by
  decide

theorem k5PrefixGroup0007Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 191] = true := by
  decide

theorem k5PrefixGroup0007Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 193] = true := by
  decide

theorem k5PrefixGroup0007Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 197] = true := by
  decide

theorem k5PrefixGroup0007Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 199] = true := by
  decide

theorem k5PrefixGroup0007Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 211] = true := by
  decide

theorem k5PrefixGroup0007Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 223] = true := by
  decide

theorem k5PrefixGroup0007Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 227] = true := by
  decide

theorem k5PrefixGroup0007Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 229] = true := by
  decide

theorem k5PrefixGroup0007Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 233] = true := by
  decide

theorem k5PrefixGroup0007Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 239] = true := by
  decide

theorem k5PrefixGroup0007Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 241] = true := by
  decide

theorem k5PrefixGroup0007Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 71, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 71, 251] = true := by
  decide

theorem k5PrefixGroup0007Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 79] = true := by
  decide

theorem k5PrefixGroup0007Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 83] = true := by
  decide

theorem k5PrefixGroup0007Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 89] = true := by
  decide

theorem k5PrefixGroup0007Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 97] = true := by
  decide

theorem k5PrefixGroup0007Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 101] = true := by
  decide

theorem k5PrefixGroup0007Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 103] = true := by
  decide

theorem k5PrefixGroup0007Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 107] = true := by
  decide

theorem k5PrefixGroup0007Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 109] = true := by
  decide

theorem k5PrefixGroup0007Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 113] = true := by
  decide

theorem k5PrefixGroup0007Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 127] = true := by
  decide

theorem k5PrefixGroup0007Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 131] = true := by
  decide

theorem k5PrefixGroup0007Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 137] = true := by
  decide

theorem k5PrefixGroup0007Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 139] = true := by
  decide

theorem k5PrefixGroup0007Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 149] = true := by
  decide

theorem k5PrefixGroup0007Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 151] = true := by
  decide

theorem k5PrefixGroup0007Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 157] = true := by
  decide

theorem k5PrefixGroup0007Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 163] = true := by
  decide

theorem k5PrefixGroup0007Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 167] = true := by
  decide

theorem k5PrefixGroup0007Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 167] = true := by
  decide

theorem k5PrefixGroup0007_passes :
    k5PrefixGroup0007.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0007, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0007Row0000_passes,
    k5PrefixGroup0007Row0001_passes,
    k5PrefixGroup0007Row0002_passes,
    k5PrefixGroup0007Row0003_passes,
    k5PrefixGroup0007Row0004_passes,
    k5PrefixGroup0007Row0005_passes,
    k5PrefixGroup0007Row0006_passes,
    k5PrefixGroup0007Row0007_passes,
    k5PrefixGroup0007Row0008_passes,
    k5PrefixGroup0007Row0009_passes,
    k5PrefixGroup0007Row0010_passes,
    k5PrefixGroup0007Row0011_passes,
    k5PrefixGroup0007Row0012_passes,
    k5PrefixGroup0007Row0013_passes,
    k5PrefixGroup0007Row0014_passes,
    k5PrefixGroup0007Row0015_passes,
    k5PrefixGroup0007Row0016_passes,
    k5PrefixGroup0007Row0017_passes,
    k5PrefixGroup0007Row0018_passes,
    k5PrefixGroup0007Row0019_passes,
    k5PrefixGroup0007Row0020_passes,
    k5PrefixGroup0007Row0021_passes,
    k5PrefixGroup0007Row0022_passes,
    k5PrefixGroup0007Row0023_passes,
    k5PrefixGroup0007Row0024_passes,
    k5PrefixGroup0007Row0025_passes,
    k5PrefixGroup0007Row0026_passes,
    k5PrefixGroup0007Row0027_passes,
    k5PrefixGroup0007Row0028_passes,
    k5PrefixGroup0007Row0029_passes,
    k5PrefixGroup0007Row0030_passes,
    k5PrefixGroup0007Row0031_passes,
    k5PrefixGroup0007Row0032_passes,
    k5PrefixGroup0007Row0033_passes,
    k5PrefixGroup0007Row0034_passes,
    k5PrefixGroup0007Row0035_passes,
    k5PrefixGroup0007Row0036_passes,
    k5PrefixGroup0007Row0037_passes,
    k5PrefixGroup0007Row0038_passes,
    k5PrefixGroup0007Row0039_passes,
    k5PrefixGroup0007Row0040_passes,
    k5PrefixGroup0007Row0041_passes,
    k5PrefixGroup0007Row0042_passes,
    k5PrefixGroup0007Row0043_passes,
    k5PrefixGroup0007Row0044_passes,
    k5PrefixGroup0007Row0045_passes,
    k5PrefixGroup0007Row0046_passes,
    k5PrefixGroup0007Row0047_passes,
    k5PrefixGroup0007Row0048_passes,
    k5PrefixGroup0007Row0049_passes,
    k5PrefixGroup0007Row0050_passes,
    k5PrefixGroup0007Row0051_passes,
    k5PrefixGroup0007Row0052_passes,
    k5PrefixGroup0007Row0053_passes,
    k5PrefixGroup0007Row0054_passes,
    k5PrefixGroup0007Row0055_passes,
    k5PrefixGroup0007Row0056_passes,
    k5PrefixGroup0007Row0057_passes,
    k5PrefixGroup0007Row0058_passes,
    k5PrefixGroup0007Row0059_passes,
    k5PrefixGroup0007Row0060_passes,
    k5PrefixGroup0007Row0061_passes,
    k5PrefixGroup0007Row0062_passes,
    k5PrefixGroup0007Row0063_passes,
    k5PrefixGroup0007Row0064_passes,
    k5PrefixGroup0007Row0065_passes,
    k5PrefixGroup0007Row0066_passes,
    k5PrefixGroup0007Row0067_passes,
    k5PrefixGroup0007Row0068_passes,
    k5PrefixGroup0007Row0069_passes,
    k5PrefixGroup0007Row0070_passes,
    k5PrefixGroup0007Row0071_passes,
    k5PrefixGroup0007Row0072_passes,
    k5PrefixGroup0007Row0073_passes,
    k5PrefixGroup0007Row0074_passes,
    k5PrefixGroup0007Row0075_passes,
    k5PrefixGroup0007Row0076_passes,
    k5PrefixGroup0007Row0077_passes,
    k5PrefixGroup0007Row0078_passes,
    k5PrefixGroup0007Row0079_passes,
    k5PrefixGroup0007Row0080_passes,
    k5PrefixGroup0007Row0081_passes,
    k5PrefixGroup0007Row0082_passes,
    k5PrefixGroup0007Row0083_passes,
    k5PrefixGroup0007Row0084_passes,
    k5PrefixGroup0007Row0085_passes,
    k5PrefixGroup0007Row0086_passes,
    k5PrefixGroup0007Row0087_passes,
    k5PrefixGroup0007Row0088_passes,
    k5PrefixGroup0007Row0089_passes,
    k5PrefixGroup0007Row0090_passes,
    k5PrefixGroup0007Row0091_passes,
    k5PrefixGroup0007Row0092_passes,
    k5PrefixGroup0007Row0093_passes,
    k5PrefixGroup0007Row0094_passes,
    k5PrefixGroup0007Row0095_passes,
    k5PrefixGroup0007Row0096_passes,
    k5PrefixGroup0007Row0097_passes,
    k5PrefixGroup0007Row0098_passes,
    k5PrefixGroup0007Row0099_passes,
    k5PrefixGroup0007Row0100_passes,
    k5PrefixGroup0007Row0101_passes,
    k5PrefixGroup0007Row0102_passes,
    k5PrefixGroup0007Row0103_passes,
    k5PrefixGroup0007Row0104_passes,
    k5PrefixGroup0007Row0105_passes,
    k5PrefixGroup0007Row0106_passes,
    k5PrefixGroup0007Row0107_passes,
    k5PrefixGroup0007Row0108_passes,
    k5PrefixGroup0007Row0109_passes,
    k5PrefixGroup0007Row0110_passes,
    k5PrefixGroup0007Row0111_passes,
    k5PrefixGroup0007Row0112_passes,
    k5PrefixGroup0007Row0113_passes,
    k5PrefixGroup0007Row0114_passes,
    k5PrefixGroup0007Row0115_passes,
    k5PrefixGroup0007Row0116_passes,
    k5PrefixGroup0007Row0117_passes,
    k5PrefixGroup0007Row0118_passes,
    k5PrefixGroup0007Row0119_passes,
    k5PrefixGroup0007Row0120_passes,
    k5PrefixGroup0007Row0121_passes,
    k5PrefixGroup0007Row0122_passes,
    k5PrefixGroup0007Row0123_passes,
    k5PrefixGroup0007Row0124_passes,
    k5PrefixGroup0007Row0125_passes,
    k5PrefixGroup0007Row0126_passes,
    k5PrefixGroup0007Row0127_passes]

theorem k5PrefixGroup0007_mask_upper :
    k5PrefixGroup0007.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0007, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0007Row0000_mask_upper,
    k5PrefixGroup0007Row0001_mask_upper,
    k5PrefixGroup0007Row0002_mask_upper,
    k5PrefixGroup0007Row0003_mask_upper,
    k5PrefixGroup0007Row0004_mask_upper,
    k5PrefixGroup0007Row0005_mask_upper,
    k5PrefixGroup0007Row0006_mask_upper,
    k5PrefixGroup0007Row0007_mask_upper,
    k5PrefixGroup0007Row0008_mask_upper,
    k5PrefixGroup0007Row0009_mask_upper,
    k5PrefixGroup0007Row0010_mask_upper,
    k5PrefixGroup0007Row0011_mask_upper,
    k5PrefixGroup0007Row0012_mask_upper,
    k5PrefixGroup0007Row0013_mask_upper,
    k5PrefixGroup0007Row0014_mask_upper,
    k5PrefixGroup0007Row0015_mask_upper,
    k5PrefixGroup0007Row0016_mask_upper,
    k5PrefixGroup0007Row0017_mask_upper,
    k5PrefixGroup0007Row0018_mask_upper,
    k5PrefixGroup0007Row0019_mask_upper,
    k5PrefixGroup0007Row0020_mask_upper,
    k5PrefixGroup0007Row0021_mask_upper,
    k5PrefixGroup0007Row0022_mask_upper,
    k5PrefixGroup0007Row0023_mask_upper,
    k5PrefixGroup0007Row0024_mask_upper,
    k5PrefixGroup0007Row0025_mask_upper,
    k5PrefixGroup0007Row0026_mask_upper,
    k5PrefixGroup0007Row0027_mask_upper,
    k5PrefixGroup0007Row0028_mask_upper,
    k5PrefixGroup0007Row0029_mask_upper,
    k5PrefixGroup0007Row0030_mask_upper,
    k5PrefixGroup0007Row0031_mask_upper,
    k5PrefixGroup0007Row0032_mask_upper,
    k5PrefixGroup0007Row0033_mask_upper,
    k5PrefixGroup0007Row0034_mask_upper,
    k5PrefixGroup0007Row0035_mask_upper,
    k5PrefixGroup0007Row0036_mask_upper,
    k5PrefixGroup0007Row0037_mask_upper,
    k5PrefixGroup0007Row0038_mask_upper,
    k5PrefixGroup0007Row0039_mask_upper,
    k5PrefixGroup0007Row0040_mask_upper,
    k5PrefixGroup0007Row0041_mask_upper,
    k5PrefixGroup0007Row0042_mask_upper,
    k5PrefixGroup0007Row0043_mask_upper,
    k5PrefixGroup0007Row0044_mask_upper,
    k5PrefixGroup0007Row0045_mask_upper,
    k5PrefixGroup0007Row0046_mask_upper,
    k5PrefixGroup0007Row0047_mask_upper,
    k5PrefixGroup0007Row0048_mask_upper,
    k5PrefixGroup0007Row0049_mask_upper,
    k5PrefixGroup0007Row0050_mask_upper,
    k5PrefixGroup0007Row0051_mask_upper,
    k5PrefixGroup0007Row0052_mask_upper,
    k5PrefixGroup0007Row0053_mask_upper,
    k5PrefixGroup0007Row0054_mask_upper,
    k5PrefixGroup0007Row0055_mask_upper,
    k5PrefixGroup0007Row0056_mask_upper,
    k5PrefixGroup0007Row0057_mask_upper,
    k5PrefixGroup0007Row0058_mask_upper,
    k5PrefixGroup0007Row0059_mask_upper,
    k5PrefixGroup0007Row0060_mask_upper,
    k5PrefixGroup0007Row0061_mask_upper,
    k5PrefixGroup0007Row0062_mask_upper,
    k5PrefixGroup0007Row0063_mask_upper,
    k5PrefixGroup0007Row0064_mask_upper,
    k5PrefixGroup0007Row0065_mask_upper,
    k5PrefixGroup0007Row0066_mask_upper,
    k5PrefixGroup0007Row0067_mask_upper,
    k5PrefixGroup0007Row0068_mask_upper,
    k5PrefixGroup0007Row0069_mask_upper,
    k5PrefixGroup0007Row0070_mask_upper,
    k5PrefixGroup0007Row0071_mask_upper,
    k5PrefixGroup0007Row0072_mask_upper,
    k5PrefixGroup0007Row0073_mask_upper,
    k5PrefixGroup0007Row0074_mask_upper,
    k5PrefixGroup0007Row0075_mask_upper,
    k5PrefixGroup0007Row0076_mask_upper,
    k5PrefixGroup0007Row0077_mask_upper,
    k5PrefixGroup0007Row0078_mask_upper,
    k5PrefixGroup0007Row0079_mask_upper,
    k5PrefixGroup0007Row0080_mask_upper,
    k5PrefixGroup0007Row0081_mask_upper,
    k5PrefixGroup0007Row0082_mask_upper,
    k5PrefixGroup0007Row0083_mask_upper,
    k5PrefixGroup0007Row0084_mask_upper,
    k5PrefixGroup0007Row0085_mask_upper,
    k5PrefixGroup0007Row0086_mask_upper,
    k5PrefixGroup0007Row0087_mask_upper,
    k5PrefixGroup0007Row0088_mask_upper,
    k5PrefixGroup0007Row0089_mask_upper,
    k5PrefixGroup0007Row0090_mask_upper,
    k5PrefixGroup0007Row0091_mask_upper,
    k5PrefixGroup0007Row0092_mask_upper,
    k5PrefixGroup0007Row0093_mask_upper,
    k5PrefixGroup0007Row0094_mask_upper,
    k5PrefixGroup0007Row0095_mask_upper,
    k5PrefixGroup0007Row0096_mask_upper,
    k5PrefixGroup0007Row0097_mask_upper,
    k5PrefixGroup0007Row0098_mask_upper,
    k5PrefixGroup0007Row0099_mask_upper,
    k5PrefixGroup0007Row0100_mask_upper,
    k5PrefixGroup0007Row0101_mask_upper,
    k5PrefixGroup0007Row0102_mask_upper,
    k5PrefixGroup0007Row0103_mask_upper,
    k5PrefixGroup0007Row0104_mask_upper,
    k5PrefixGroup0007Row0105_mask_upper,
    k5PrefixGroup0007Row0106_mask_upper,
    k5PrefixGroup0007Row0107_mask_upper,
    k5PrefixGroup0007Row0108_mask_upper,
    k5PrefixGroup0007Row0109_mask_upper,
    k5PrefixGroup0007Row0110_mask_upper,
    k5PrefixGroup0007Row0111_mask_upper,
    k5PrefixGroup0007Row0112_mask_upper,
    k5PrefixGroup0007Row0113_mask_upper,
    k5PrefixGroup0007Row0114_mask_upper,
    k5PrefixGroup0007Row0115_mask_upper,
    k5PrefixGroup0007Row0116_mask_upper,
    k5PrefixGroup0007Row0117_mask_upper,
    k5PrefixGroup0007Row0118_mask_upper,
    k5PrefixGroup0007Row0119_mask_upper,
    k5PrefixGroup0007Row0120_mask_upper,
    k5PrefixGroup0007Row0121_mask_upper,
    k5PrefixGroup0007Row0122_mask_upper,
    k5PrefixGroup0007Row0123_mask_upper,
    k5PrefixGroup0007Row0124_mask_upper,
    k5PrefixGroup0007Row0125_mask_upper,
    k5PrefixGroup0007Row0126_mask_upper,
    k5PrefixGroup0007Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
