import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0020 : List (List ℕ) :=
  [[3, 13, 47, 149],
     [3, 13, 47, 151],
     [3, 13, 47, 157],
     [3, 13, 47, 163],
     [3, 13, 47, 167],
     [3, 13, 47, 173],
     [3, 13, 47, 179],
     [3, 13, 47, 181],
     [3, 13, 47, 191],
     [3, 13, 47, 193],
     [3, 13, 47, 197],
     [3, 13, 47, 199],
     [3, 13, 47, 211],
     [3, 13, 47, 223],
     [3, 13, 47, 227],
     [3, 13, 53, 59],
     [3, 13, 53, 61],
     [3, 13, 53, 67],
     [3, 13, 53, 71],
     [3, 13, 53, 73],
     [3, 13, 53, 79],
     [3, 13, 53, 83],
     [3, 13, 53, 89],
     [3, 13, 53, 97],
     [3, 13, 53, 101],
     [3, 13, 53, 103],
     [3, 13, 53, 107],
     [3, 13, 53, 109],
     [3, 13, 53, 113],
     [3, 13, 53, 127],
     [3, 13, 53, 131],
     [3, 13, 53, 137],
     [3, 13, 53, 139],
     [3, 13, 53, 149],
     [3, 13, 53, 151],
     [3, 13, 53, 157],
     [3, 13, 53, 163],
     [3, 13, 53, 167],
     [3, 13, 53, 173],
     [3, 13, 53, 179],
     [3, 13, 53, 181],
     [3, 13, 53, 191],
     [3, 13, 53, 193],
     [3, 13, 53, 197],
     [3, 13, 53, 199],
     [3, 13, 59, 61],
     [3, 13, 59, 67],
     [3, 13, 59, 71],
     [3, 13, 59, 73],
     [3, 13, 59, 79],
     [3, 13, 59, 83],
     [3, 13, 59, 89],
     [3, 13, 59, 97],
     [3, 13, 59, 101],
     [3, 13, 59, 103],
     [3, 13, 59, 107],
     [3, 13, 59, 109],
     [3, 13, 59, 113],
     [3, 13, 59, 127],
     [3, 13, 59, 131],
     [3, 13, 59, 137],
     [3, 13, 59, 139],
     [3, 13, 59, 149],
     [3, 13, 59, 151],
     [3, 13, 59, 157],
     [3, 13, 59, 163],
     [3, 13, 59, 167],
     [3, 13, 59, 173],
     [3, 13, 59, 179],
     [3, 13, 59, 181],
     [3, 13, 59, 191],
     [3, 13, 59, 193],
     [3, 13, 59, 197],
     [3, 13, 59, 199],
     [3, 13, 61, 67],
     [3, 13, 61, 71],
     [3, 13, 61, 73],
     [3, 13, 61, 79],
     [3, 13, 61, 83],
     [3, 13, 61, 89],
     [3, 13, 61, 97],
     [3, 13, 61, 101],
     [3, 13, 61, 103],
     [3, 13, 61, 107],
     [3, 13, 61, 109],
     [3, 13, 61, 113],
     [3, 13, 61, 127],
     [3, 13, 61, 131],
     [3, 13, 61, 137],
     [3, 13, 61, 139],
     [3, 13, 61, 149],
     [3, 13, 61, 151],
     [3, 13, 61, 157],
     [3, 13, 61, 163],
     [3, 13, 61, 167],
     [3, 13, 61, 173],
     [3, 13, 61, 179],
     [3, 13, 61, 181],
     [3, 13, 61, 191],
     [3, 13, 61, 193],
     [3, 13, 61, 197],
     [3, 13, 67, 71],
     [3, 13, 67, 73],
     [3, 13, 67, 79],
     [3, 13, 67, 83],
     [3, 13, 67, 89],
     [3, 13, 67, 97],
     [3, 13, 67, 101],
     [3, 13, 67, 103],
     [3, 13, 67, 107],
     [3, 13, 67, 109],
     [3, 13, 67, 113],
     [3, 13, 67, 127],
     [3, 13, 67, 131],
     [3, 13, 67, 137],
     [3, 13, 67, 139],
     [3, 13, 67, 149],
     [3, 13, 67, 151],
     [3, 13, 67, 157],
     [3, 13, 67, 163],
     [3, 13, 67, 167],
     [3, 13, 67, 173],
     [3, 13, 67, 179],
     [3, 13, 67, 181],
     [3, 13, 67, 191],
     [3, 13, 71, 73],
     [3, 13, 71, 79],
     [3, 13, 71, 83]]

theorem k5PrefixGroup0020Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 211] = true := by
  decide

theorem k5PrefixGroup0020Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 211] = true := by
  decide

theorem k5PrefixGroup0020Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 223] = true := by
  decide

theorem k5PrefixGroup0020Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 223] = true := by
  decide

theorem k5PrefixGroup0020Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 47, 227] = true := by
  decide

theorem k5PrefixGroup0020Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 47, 227] = true := by
  decide

theorem k5PrefixGroup0020Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 59] = true := by
  decide

theorem k5PrefixGroup0020Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 59] = true := by
  decide

theorem k5PrefixGroup0020Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 61] = true := by
  decide

theorem k5PrefixGroup0020Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 61] = true := by
  decide

theorem k5PrefixGroup0020Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 53, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 53, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0020Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0020Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 59, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 59, 199] = true := by
  decide

theorem k5PrefixGroup0020Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0020Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 193] = true := by
  decide

theorem k5PrefixGroup0020Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 61, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 61, 197] = true := by
  decide

theorem k5PrefixGroup0020Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0020Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0020Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0020Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 101] = true := by
  decide

theorem k5PrefixGroup0020Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 103] = true := by
  decide

theorem k5PrefixGroup0020Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 107] = true := by
  decide

theorem k5PrefixGroup0020Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 109] = true := by
  decide

theorem k5PrefixGroup0020Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 113] = true := by
  decide

theorem k5PrefixGroup0020Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 127] = true := by
  decide

theorem k5PrefixGroup0020Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 131] = true := by
  decide

theorem k5PrefixGroup0020Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 137] = true := by
  decide

theorem k5PrefixGroup0020Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 139] = true := by
  decide

theorem k5PrefixGroup0020Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 149] = true := by
  decide

theorem k5PrefixGroup0020Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 151] = true := by
  decide

theorem k5PrefixGroup0020Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 157] = true := by
  decide

theorem k5PrefixGroup0020Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 163] = true := by
  decide

theorem k5PrefixGroup0020Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 167] = true := by
  decide

theorem k5PrefixGroup0020Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 173] = true := by
  decide

theorem k5PrefixGroup0020Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 179] = true := by
  decide

theorem k5PrefixGroup0020Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 181] = true := by
  decide

theorem k5PrefixGroup0020Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 67, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 67, 191] = true := by
  decide

theorem k5PrefixGroup0020Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0020Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0020Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0020Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0020_passes :
    k5PrefixGroup0020.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0020, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0020Row0000_passes,
    k5PrefixGroup0020Row0001_passes,
    k5PrefixGroup0020Row0002_passes,
    k5PrefixGroup0020Row0003_passes,
    k5PrefixGroup0020Row0004_passes,
    k5PrefixGroup0020Row0005_passes,
    k5PrefixGroup0020Row0006_passes,
    k5PrefixGroup0020Row0007_passes,
    k5PrefixGroup0020Row0008_passes,
    k5PrefixGroup0020Row0009_passes,
    k5PrefixGroup0020Row0010_passes,
    k5PrefixGroup0020Row0011_passes,
    k5PrefixGroup0020Row0012_passes,
    k5PrefixGroup0020Row0013_passes,
    k5PrefixGroup0020Row0014_passes,
    k5PrefixGroup0020Row0015_passes,
    k5PrefixGroup0020Row0016_passes,
    k5PrefixGroup0020Row0017_passes,
    k5PrefixGroup0020Row0018_passes,
    k5PrefixGroup0020Row0019_passes,
    k5PrefixGroup0020Row0020_passes,
    k5PrefixGroup0020Row0021_passes,
    k5PrefixGroup0020Row0022_passes,
    k5PrefixGroup0020Row0023_passes,
    k5PrefixGroup0020Row0024_passes,
    k5PrefixGroup0020Row0025_passes,
    k5PrefixGroup0020Row0026_passes,
    k5PrefixGroup0020Row0027_passes,
    k5PrefixGroup0020Row0028_passes,
    k5PrefixGroup0020Row0029_passes,
    k5PrefixGroup0020Row0030_passes,
    k5PrefixGroup0020Row0031_passes,
    k5PrefixGroup0020Row0032_passes,
    k5PrefixGroup0020Row0033_passes,
    k5PrefixGroup0020Row0034_passes,
    k5PrefixGroup0020Row0035_passes,
    k5PrefixGroup0020Row0036_passes,
    k5PrefixGroup0020Row0037_passes,
    k5PrefixGroup0020Row0038_passes,
    k5PrefixGroup0020Row0039_passes,
    k5PrefixGroup0020Row0040_passes,
    k5PrefixGroup0020Row0041_passes,
    k5PrefixGroup0020Row0042_passes,
    k5PrefixGroup0020Row0043_passes,
    k5PrefixGroup0020Row0044_passes,
    k5PrefixGroup0020Row0045_passes,
    k5PrefixGroup0020Row0046_passes,
    k5PrefixGroup0020Row0047_passes,
    k5PrefixGroup0020Row0048_passes,
    k5PrefixGroup0020Row0049_passes,
    k5PrefixGroup0020Row0050_passes,
    k5PrefixGroup0020Row0051_passes,
    k5PrefixGroup0020Row0052_passes,
    k5PrefixGroup0020Row0053_passes,
    k5PrefixGroup0020Row0054_passes,
    k5PrefixGroup0020Row0055_passes,
    k5PrefixGroup0020Row0056_passes,
    k5PrefixGroup0020Row0057_passes,
    k5PrefixGroup0020Row0058_passes,
    k5PrefixGroup0020Row0059_passes,
    k5PrefixGroup0020Row0060_passes,
    k5PrefixGroup0020Row0061_passes,
    k5PrefixGroup0020Row0062_passes,
    k5PrefixGroup0020Row0063_passes,
    k5PrefixGroup0020Row0064_passes,
    k5PrefixGroup0020Row0065_passes,
    k5PrefixGroup0020Row0066_passes,
    k5PrefixGroup0020Row0067_passes,
    k5PrefixGroup0020Row0068_passes,
    k5PrefixGroup0020Row0069_passes,
    k5PrefixGroup0020Row0070_passes,
    k5PrefixGroup0020Row0071_passes,
    k5PrefixGroup0020Row0072_passes,
    k5PrefixGroup0020Row0073_passes,
    k5PrefixGroup0020Row0074_passes,
    k5PrefixGroup0020Row0075_passes,
    k5PrefixGroup0020Row0076_passes,
    k5PrefixGroup0020Row0077_passes,
    k5PrefixGroup0020Row0078_passes,
    k5PrefixGroup0020Row0079_passes,
    k5PrefixGroup0020Row0080_passes,
    k5PrefixGroup0020Row0081_passes,
    k5PrefixGroup0020Row0082_passes,
    k5PrefixGroup0020Row0083_passes,
    k5PrefixGroup0020Row0084_passes,
    k5PrefixGroup0020Row0085_passes,
    k5PrefixGroup0020Row0086_passes,
    k5PrefixGroup0020Row0087_passes,
    k5PrefixGroup0020Row0088_passes,
    k5PrefixGroup0020Row0089_passes,
    k5PrefixGroup0020Row0090_passes,
    k5PrefixGroup0020Row0091_passes,
    k5PrefixGroup0020Row0092_passes,
    k5PrefixGroup0020Row0093_passes,
    k5PrefixGroup0020Row0094_passes,
    k5PrefixGroup0020Row0095_passes,
    k5PrefixGroup0020Row0096_passes,
    k5PrefixGroup0020Row0097_passes,
    k5PrefixGroup0020Row0098_passes,
    k5PrefixGroup0020Row0099_passes,
    k5PrefixGroup0020Row0100_passes,
    k5PrefixGroup0020Row0101_passes,
    k5PrefixGroup0020Row0102_passes,
    k5PrefixGroup0020Row0103_passes,
    k5PrefixGroup0020Row0104_passes,
    k5PrefixGroup0020Row0105_passes,
    k5PrefixGroup0020Row0106_passes,
    k5PrefixGroup0020Row0107_passes,
    k5PrefixGroup0020Row0108_passes,
    k5PrefixGroup0020Row0109_passes,
    k5PrefixGroup0020Row0110_passes,
    k5PrefixGroup0020Row0111_passes,
    k5PrefixGroup0020Row0112_passes,
    k5PrefixGroup0020Row0113_passes,
    k5PrefixGroup0020Row0114_passes,
    k5PrefixGroup0020Row0115_passes,
    k5PrefixGroup0020Row0116_passes,
    k5PrefixGroup0020Row0117_passes,
    k5PrefixGroup0020Row0118_passes,
    k5PrefixGroup0020Row0119_passes,
    k5PrefixGroup0020Row0120_passes,
    k5PrefixGroup0020Row0121_passes,
    k5PrefixGroup0020Row0122_passes,
    k5PrefixGroup0020Row0123_passes,
    k5PrefixGroup0020Row0124_passes,
    k5PrefixGroup0020Row0125_passes,
    k5PrefixGroup0020Row0126_passes,
    k5PrefixGroup0020Row0127_passes]

theorem k5PrefixGroup0020_mask_upper :
    k5PrefixGroup0020.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0020, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0020Row0000_mask_upper,
    k5PrefixGroup0020Row0001_mask_upper,
    k5PrefixGroup0020Row0002_mask_upper,
    k5PrefixGroup0020Row0003_mask_upper,
    k5PrefixGroup0020Row0004_mask_upper,
    k5PrefixGroup0020Row0005_mask_upper,
    k5PrefixGroup0020Row0006_mask_upper,
    k5PrefixGroup0020Row0007_mask_upper,
    k5PrefixGroup0020Row0008_mask_upper,
    k5PrefixGroup0020Row0009_mask_upper,
    k5PrefixGroup0020Row0010_mask_upper,
    k5PrefixGroup0020Row0011_mask_upper,
    k5PrefixGroup0020Row0012_mask_upper,
    k5PrefixGroup0020Row0013_mask_upper,
    k5PrefixGroup0020Row0014_mask_upper,
    k5PrefixGroup0020Row0015_mask_upper,
    k5PrefixGroup0020Row0016_mask_upper,
    k5PrefixGroup0020Row0017_mask_upper,
    k5PrefixGroup0020Row0018_mask_upper,
    k5PrefixGroup0020Row0019_mask_upper,
    k5PrefixGroup0020Row0020_mask_upper,
    k5PrefixGroup0020Row0021_mask_upper,
    k5PrefixGroup0020Row0022_mask_upper,
    k5PrefixGroup0020Row0023_mask_upper,
    k5PrefixGroup0020Row0024_mask_upper,
    k5PrefixGroup0020Row0025_mask_upper,
    k5PrefixGroup0020Row0026_mask_upper,
    k5PrefixGroup0020Row0027_mask_upper,
    k5PrefixGroup0020Row0028_mask_upper,
    k5PrefixGroup0020Row0029_mask_upper,
    k5PrefixGroup0020Row0030_mask_upper,
    k5PrefixGroup0020Row0031_mask_upper,
    k5PrefixGroup0020Row0032_mask_upper,
    k5PrefixGroup0020Row0033_mask_upper,
    k5PrefixGroup0020Row0034_mask_upper,
    k5PrefixGroup0020Row0035_mask_upper,
    k5PrefixGroup0020Row0036_mask_upper,
    k5PrefixGroup0020Row0037_mask_upper,
    k5PrefixGroup0020Row0038_mask_upper,
    k5PrefixGroup0020Row0039_mask_upper,
    k5PrefixGroup0020Row0040_mask_upper,
    k5PrefixGroup0020Row0041_mask_upper,
    k5PrefixGroup0020Row0042_mask_upper,
    k5PrefixGroup0020Row0043_mask_upper,
    k5PrefixGroup0020Row0044_mask_upper,
    k5PrefixGroup0020Row0045_mask_upper,
    k5PrefixGroup0020Row0046_mask_upper,
    k5PrefixGroup0020Row0047_mask_upper,
    k5PrefixGroup0020Row0048_mask_upper,
    k5PrefixGroup0020Row0049_mask_upper,
    k5PrefixGroup0020Row0050_mask_upper,
    k5PrefixGroup0020Row0051_mask_upper,
    k5PrefixGroup0020Row0052_mask_upper,
    k5PrefixGroup0020Row0053_mask_upper,
    k5PrefixGroup0020Row0054_mask_upper,
    k5PrefixGroup0020Row0055_mask_upper,
    k5PrefixGroup0020Row0056_mask_upper,
    k5PrefixGroup0020Row0057_mask_upper,
    k5PrefixGroup0020Row0058_mask_upper,
    k5PrefixGroup0020Row0059_mask_upper,
    k5PrefixGroup0020Row0060_mask_upper,
    k5PrefixGroup0020Row0061_mask_upper,
    k5PrefixGroup0020Row0062_mask_upper,
    k5PrefixGroup0020Row0063_mask_upper,
    k5PrefixGroup0020Row0064_mask_upper,
    k5PrefixGroup0020Row0065_mask_upper,
    k5PrefixGroup0020Row0066_mask_upper,
    k5PrefixGroup0020Row0067_mask_upper,
    k5PrefixGroup0020Row0068_mask_upper,
    k5PrefixGroup0020Row0069_mask_upper,
    k5PrefixGroup0020Row0070_mask_upper,
    k5PrefixGroup0020Row0071_mask_upper,
    k5PrefixGroup0020Row0072_mask_upper,
    k5PrefixGroup0020Row0073_mask_upper,
    k5PrefixGroup0020Row0074_mask_upper,
    k5PrefixGroup0020Row0075_mask_upper,
    k5PrefixGroup0020Row0076_mask_upper,
    k5PrefixGroup0020Row0077_mask_upper,
    k5PrefixGroup0020Row0078_mask_upper,
    k5PrefixGroup0020Row0079_mask_upper,
    k5PrefixGroup0020Row0080_mask_upper,
    k5PrefixGroup0020Row0081_mask_upper,
    k5PrefixGroup0020Row0082_mask_upper,
    k5PrefixGroup0020Row0083_mask_upper,
    k5PrefixGroup0020Row0084_mask_upper,
    k5PrefixGroup0020Row0085_mask_upper,
    k5PrefixGroup0020Row0086_mask_upper,
    k5PrefixGroup0020Row0087_mask_upper,
    k5PrefixGroup0020Row0088_mask_upper,
    k5PrefixGroup0020Row0089_mask_upper,
    k5PrefixGroup0020Row0090_mask_upper,
    k5PrefixGroup0020Row0091_mask_upper,
    k5PrefixGroup0020Row0092_mask_upper,
    k5PrefixGroup0020Row0093_mask_upper,
    k5PrefixGroup0020Row0094_mask_upper,
    k5PrefixGroup0020Row0095_mask_upper,
    k5PrefixGroup0020Row0096_mask_upper,
    k5PrefixGroup0020Row0097_mask_upper,
    k5PrefixGroup0020Row0098_mask_upper,
    k5PrefixGroup0020Row0099_mask_upper,
    k5PrefixGroup0020Row0100_mask_upper,
    k5PrefixGroup0020Row0101_mask_upper,
    k5PrefixGroup0020Row0102_mask_upper,
    k5PrefixGroup0020Row0103_mask_upper,
    k5PrefixGroup0020Row0104_mask_upper,
    k5PrefixGroup0020Row0105_mask_upper,
    k5PrefixGroup0020Row0106_mask_upper,
    k5PrefixGroup0020Row0107_mask_upper,
    k5PrefixGroup0020Row0108_mask_upper,
    k5PrefixGroup0020Row0109_mask_upper,
    k5PrefixGroup0020Row0110_mask_upper,
    k5PrefixGroup0020Row0111_mask_upper,
    k5PrefixGroup0020Row0112_mask_upper,
    k5PrefixGroup0020Row0113_mask_upper,
    k5PrefixGroup0020Row0114_mask_upper,
    k5PrefixGroup0020Row0115_mask_upper,
    k5PrefixGroup0020Row0116_mask_upper,
    k5PrefixGroup0020Row0117_mask_upper,
    k5PrefixGroup0020Row0118_mask_upper,
    k5PrefixGroup0020Row0119_mask_upper,
    k5PrefixGroup0020Row0120_mask_upper,
    k5PrefixGroup0020Row0121_mask_upper,
    k5PrefixGroup0020Row0122_mask_upper,
    k5PrefixGroup0020Row0123_mask_upper,
    k5PrefixGroup0020Row0124_mask_upper,
    k5PrefixGroup0020Row0125_mask_upper,
    k5PrefixGroup0020Row0126_mask_upper,
    k5PrefixGroup0020Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
