import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0015 : List (List ℕ) :=
  [[3, 11, 61, 157],
     [3, 11, 61, 163],
     [3, 11, 61, 167],
     [3, 11, 61, 173],
     [3, 11, 61, 179],
     [3, 11, 61, 181],
     [3, 11, 61, 191],
     [3, 11, 61, 193],
     [3, 11, 61, 197],
     [3, 11, 61, 199],
     [3, 11, 61, 211],
     [3, 11, 67, 71],
     [3, 11, 67, 73],
     [3, 11, 67, 79],
     [3, 11, 67, 83],
     [3, 11, 67, 89],
     [3, 11, 67, 97],
     [3, 11, 67, 101],
     [3, 11, 67, 103],
     [3, 11, 67, 107],
     [3, 11, 67, 109],
     [3, 11, 67, 113],
     [3, 11, 67, 127],
     [3, 11, 67, 131],
     [3, 11, 67, 137],
     [3, 11, 67, 139],
     [3, 11, 67, 149],
     [3, 11, 67, 151],
     [3, 11, 67, 157],
     [3, 11, 67, 163],
     [3, 11, 67, 167],
     [3, 11, 67, 173],
     [3, 11, 67, 179],
     [3, 11, 67, 181],
     [3, 11, 67, 191],
     [3, 11, 67, 193],
     [3, 11, 67, 197],
     [3, 11, 67, 199],
     [3, 11, 71, 73],
     [3, 11, 71, 79],
     [3, 11, 71, 83],
     [3, 11, 71, 89],
     [3, 11, 71, 97],
     [3, 11, 71, 101],
     [3, 11, 71, 103],
     [3, 11, 71, 107],
     [3, 11, 71, 109],
     [3, 11, 71, 113],
     [3, 11, 71, 127],
     [3, 11, 71, 131],
     [3, 11, 71, 137],
     [3, 11, 71, 139],
     [3, 11, 71, 149],
     [3, 11, 71, 151],
     [3, 11, 71, 157],
     [3, 11, 71, 163],
     [3, 11, 71, 167],
     [3, 11, 71, 173],
     [3, 11, 71, 179],
     [3, 11, 71, 181],
     [3, 11, 71, 191],
     [3, 11, 71, 193],
     [3, 11, 71, 197],
     [3, 11, 73, 79],
     [3, 11, 73, 83],
     [3, 11, 73, 89],
     [3, 11, 73, 97],
     [3, 11, 73, 101],
     [3, 11, 73, 103],
     [3, 11, 73, 107],
     [3, 11, 73, 109],
     [3, 11, 73, 113],
     [3, 11, 73, 127],
     [3, 11, 73, 131],
     [3, 11, 73, 137],
     [3, 11, 73, 139],
     [3, 11, 73, 149],
     [3, 11, 73, 151],
     [3, 11, 73, 157],
     [3, 11, 73, 163],
     [3, 11, 73, 167],
     [3, 11, 73, 173],
     [3, 11, 73, 179],
     [3, 11, 73, 181],
     [3, 11, 73, 191],
     [3, 11, 73, 193],
     [3, 11, 73, 197],
     [3, 11, 79, 83],
     [3, 11, 79, 89],
     [3, 11, 79, 97],
     [3, 11, 79, 101],
     [3, 11, 79, 103],
     [3, 11, 79, 107],
     [3, 11, 79, 109],
     [3, 11, 79, 113],
     [3, 11, 79, 127],
     [3, 11, 79, 131],
     [3, 11, 79, 137],
     [3, 11, 79, 139],
     [3, 11, 79, 149],
     [3, 11, 79, 151],
     [3, 11, 79, 157],
     [3, 11, 79, 163],
     [3, 11, 79, 167],
     [3, 11, 79, 173],
     [3, 11, 79, 179],
     [3, 11, 79, 181],
     [3, 11, 79, 191],
     [3, 11, 83, 89],
     [3, 11, 83, 97],
     [3, 11, 83, 101],
     [3, 11, 83, 103],
     [3, 11, 83, 107],
     [3, 11, 83, 109],
     [3, 11, 83, 113],
     [3, 11, 83, 127],
     [3, 11, 83, 131],
     [3, 11, 83, 137],
     [3, 11, 83, 139],
     [3, 11, 83, 149],
     [3, 11, 83, 151],
     [3, 11, 83, 157],
     [3, 11, 83, 163],
     [3, 11, 83, 167],
     [3, 11, 83, 173],
     [3, 11, 83, 179],
     [3, 11, 83, 181],
     [3, 11, 89, 97]]

theorem k5PrefixGroup0015Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 199] = true := by
  decide

theorem k5PrefixGroup0015Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 199] = true := by
  decide

theorem k5PrefixGroup0015Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 61, 211] = true := by
  decide

theorem k5PrefixGroup0015Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 61, 211] = true := by
  decide

theorem k5PrefixGroup0015Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 71] = true := by
  decide

theorem k5PrefixGroup0015Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 71] = true := by
  decide

theorem k5PrefixGroup0015Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 73] = true := by
  decide

theorem k5PrefixGroup0015Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 73] = true := by
  decide

theorem k5PrefixGroup0015Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 67, 199] = true := by
  decide

theorem k5PrefixGroup0015Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 67, 199] = true := by
  decide

theorem k5PrefixGroup0015Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 73] = true := by
  decide

theorem k5PrefixGroup0015Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 73] = true := by
  decide

theorem k5PrefixGroup0015Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 71, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 71, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 79] = true := by
  decide

theorem k5PrefixGroup0015Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 193] = true := by
  decide

theorem k5PrefixGroup0015Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 73, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 73, 197] = true := by
  decide

theorem k5PrefixGroup0015Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 83] = true := by
  decide

theorem k5PrefixGroup0015Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 79, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 79, 191] = true := by
  decide

theorem k5PrefixGroup0015Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 89] = true := by
  decide

theorem k5PrefixGroup0015Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 101] = true := by
  decide

theorem k5PrefixGroup0015Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 103] = true := by
  decide

theorem k5PrefixGroup0015Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 107] = true := by
  decide

theorem k5PrefixGroup0015Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 109] = true := by
  decide

theorem k5PrefixGroup0015Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 113] = true := by
  decide

theorem k5PrefixGroup0015Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 127] = true := by
  decide

theorem k5PrefixGroup0015Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 131] = true := by
  decide

theorem k5PrefixGroup0015Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 137] = true := by
  decide

theorem k5PrefixGroup0015Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 139] = true := by
  decide

theorem k5PrefixGroup0015Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 149] = true := by
  decide

theorem k5PrefixGroup0015Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 151] = true := by
  decide

theorem k5PrefixGroup0015Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 157] = true := by
  decide

theorem k5PrefixGroup0015Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 163] = true := by
  decide

theorem k5PrefixGroup0015Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 167] = true := by
  decide

theorem k5PrefixGroup0015Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 173] = true := by
  decide

theorem k5PrefixGroup0015Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 179] = true := by
  decide

theorem k5PrefixGroup0015Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 83, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 83, 181] = true := by
  decide

theorem k5PrefixGroup0015Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 97] = true := by
  decide

theorem k5PrefixGroup0015Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 97] = true := by
  decide

theorem k5PrefixGroup0015_passes :
    k5PrefixGroup0015.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0015, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0015Row0000_passes,
    k5PrefixGroup0015Row0001_passes,
    k5PrefixGroup0015Row0002_passes,
    k5PrefixGroup0015Row0003_passes,
    k5PrefixGroup0015Row0004_passes,
    k5PrefixGroup0015Row0005_passes,
    k5PrefixGroup0015Row0006_passes,
    k5PrefixGroup0015Row0007_passes,
    k5PrefixGroup0015Row0008_passes,
    k5PrefixGroup0015Row0009_passes,
    k5PrefixGroup0015Row0010_passes,
    k5PrefixGroup0015Row0011_passes,
    k5PrefixGroup0015Row0012_passes,
    k5PrefixGroup0015Row0013_passes,
    k5PrefixGroup0015Row0014_passes,
    k5PrefixGroup0015Row0015_passes,
    k5PrefixGroup0015Row0016_passes,
    k5PrefixGroup0015Row0017_passes,
    k5PrefixGroup0015Row0018_passes,
    k5PrefixGroup0015Row0019_passes,
    k5PrefixGroup0015Row0020_passes,
    k5PrefixGroup0015Row0021_passes,
    k5PrefixGroup0015Row0022_passes,
    k5PrefixGroup0015Row0023_passes,
    k5PrefixGroup0015Row0024_passes,
    k5PrefixGroup0015Row0025_passes,
    k5PrefixGroup0015Row0026_passes,
    k5PrefixGroup0015Row0027_passes,
    k5PrefixGroup0015Row0028_passes,
    k5PrefixGroup0015Row0029_passes,
    k5PrefixGroup0015Row0030_passes,
    k5PrefixGroup0015Row0031_passes,
    k5PrefixGroup0015Row0032_passes,
    k5PrefixGroup0015Row0033_passes,
    k5PrefixGroup0015Row0034_passes,
    k5PrefixGroup0015Row0035_passes,
    k5PrefixGroup0015Row0036_passes,
    k5PrefixGroup0015Row0037_passes,
    k5PrefixGroup0015Row0038_passes,
    k5PrefixGroup0015Row0039_passes,
    k5PrefixGroup0015Row0040_passes,
    k5PrefixGroup0015Row0041_passes,
    k5PrefixGroup0015Row0042_passes,
    k5PrefixGroup0015Row0043_passes,
    k5PrefixGroup0015Row0044_passes,
    k5PrefixGroup0015Row0045_passes,
    k5PrefixGroup0015Row0046_passes,
    k5PrefixGroup0015Row0047_passes,
    k5PrefixGroup0015Row0048_passes,
    k5PrefixGroup0015Row0049_passes,
    k5PrefixGroup0015Row0050_passes,
    k5PrefixGroup0015Row0051_passes,
    k5PrefixGroup0015Row0052_passes,
    k5PrefixGroup0015Row0053_passes,
    k5PrefixGroup0015Row0054_passes,
    k5PrefixGroup0015Row0055_passes,
    k5PrefixGroup0015Row0056_passes,
    k5PrefixGroup0015Row0057_passes,
    k5PrefixGroup0015Row0058_passes,
    k5PrefixGroup0015Row0059_passes,
    k5PrefixGroup0015Row0060_passes,
    k5PrefixGroup0015Row0061_passes,
    k5PrefixGroup0015Row0062_passes,
    k5PrefixGroup0015Row0063_passes,
    k5PrefixGroup0015Row0064_passes,
    k5PrefixGroup0015Row0065_passes,
    k5PrefixGroup0015Row0066_passes,
    k5PrefixGroup0015Row0067_passes,
    k5PrefixGroup0015Row0068_passes,
    k5PrefixGroup0015Row0069_passes,
    k5PrefixGroup0015Row0070_passes,
    k5PrefixGroup0015Row0071_passes,
    k5PrefixGroup0015Row0072_passes,
    k5PrefixGroup0015Row0073_passes,
    k5PrefixGroup0015Row0074_passes,
    k5PrefixGroup0015Row0075_passes,
    k5PrefixGroup0015Row0076_passes,
    k5PrefixGroup0015Row0077_passes,
    k5PrefixGroup0015Row0078_passes,
    k5PrefixGroup0015Row0079_passes,
    k5PrefixGroup0015Row0080_passes,
    k5PrefixGroup0015Row0081_passes,
    k5PrefixGroup0015Row0082_passes,
    k5PrefixGroup0015Row0083_passes,
    k5PrefixGroup0015Row0084_passes,
    k5PrefixGroup0015Row0085_passes,
    k5PrefixGroup0015Row0086_passes,
    k5PrefixGroup0015Row0087_passes,
    k5PrefixGroup0015Row0088_passes,
    k5PrefixGroup0015Row0089_passes,
    k5PrefixGroup0015Row0090_passes,
    k5PrefixGroup0015Row0091_passes,
    k5PrefixGroup0015Row0092_passes,
    k5PrefixGroup0015Row0093_passes,
    k5PrefixGroup0015Row0094_passes,
    k5PrefixGroup0015Row0095_passes,
    k5PrefixGroup0015Row0096_passes,
    k5PrefixGroup0015Row0097_passes,
    k5PrefixGroup0015Row0098_passes,
    k5PrefixGroup0015Row0099_passes,
    k5PrefixGroup0015Row0100_passes,
    k5PrefixGroup0015Row0101_passes,
    k5PrefixGroup0015Row0102_passes,
    k5PrefixGroup0015Row0103_passes,
    k5PrefixGroup0015Row0104_passes,
    k5PrefixGroup0015Row0105_passes,
    k5PrefixGroup0015Row0106_passes,
    k5PrefixGroup0015Row0107_passes,
    k5PrefixGroup0015Row0108_passes,
    k5PrefixGroup0015Row0109_passes,
    k5PrefixGroup0015Row0110_passes,
    k5PrefixGroup0015Row0111_passes,
    k5PrefixGroup0015Row0112_passes,
    k5PrefixGroup0015Row0113_passes,
    k5PrefixGroup0015Row0114_passes,
    k5PrefixGroup0015Row0115_passes,
    k5PrefixGroup0015Row0116_passes,
    k5PrefixGroup0015Row0117_passes,
    k5PrefixGroup0015Row0118_passes,
    k5PrefixGroup0015Row0119_passes,
    k5PrefixGroup0015Row0120_passes,
    k5PrefixGroup0015Row0121_passes,
    k5PrefixGroup0015Row0122_passes,
    k5PrefixGroup0015Row0123_passes,
    k5PrefixGroup0015Row0124_passes,
    k5PrefixGroup0015Row0125_passes,
    k5PrefixGroup0015Row0126_passes,
    k5PrefixGroup0015Row0127_passes]

theorem k5PrefixGroup0015_mask_upper :
    k5PrefixGroup0015.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0015, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0015Row0000_mask_upper,
    k5PrefixGroup0015Row0001_mask_upper,
    k5PrefixGroup0015Row0002_mask_upper,
    k5PrefixGroup0015Row0003_mask_upper,
    k5PrefixGroup0015Row0004_mask_upper,
    k5PrefixGroup0015Row0005_mask_upper,
    k5PrefixGroup0015Row0006_mask_upper,
    k5PrefixGroup0015Row0007_mask_upper,
    k5PrefixGroup0015Row0008_mask_upper,
    k5PrefixGroup0015Row0009_mask_upper,
    k5PrefixGroup0015Row0010_mask_upper,
    k5PrefixGroup0015Row0011_mask_upper,
    k5PrefixGroup0015Row0012_mask_upper,
    k5PrefixGroup0015Row0013_mask_upper,
    k5PrefixGroup0015Row0014_mask_upper,
    k5PrefixGroup0015Row0015_mask_upper,
    k5PrefixGroup0015Row0016_mask_upper,
    k5PrefixGroup0015Row0017_mask_upper,
    k5PrefixGroup0015Row0018_mask_upper,
    k5PrefixGroup0015Row0019_mask_upper,
    k5PrefixGroup0015Row0020_mask_upper,
    k5PrefixGroup0015Row0021_mask_upper,
    k5PrefixGroup0015Row0022_mask_upper,
    k5PrefixGroup0015Row0023_mask_upper,
    k5PrefixGroup0015Row0024_mask_upper,
    k5PrefixGroup0015Row0025_mask_upper,
    k5PrefixGroup0015Row0026_mask_upper,
    k5PrefixGroup0015Row0027_mask_upper,
    k5PrefixGroup0015Row0028_mask_upper,
    k5PrefixGroup0015Row0029_mask_upper,
    k5PrefixGroup0015Row0030_mask_upper,
    k5PrefixGroup0015Row0031_mask_upper,
    k5PrefixGroup0015Row0032_mask_upper,
    k5PrefixGroup0015Row0033_mask_upper,
    k5PrefixGroup0015Row0034_mask_upper,
    k5PrefixGroup0015Row0035_mask_upper,
    k5PrefixGroup0015Row0036_mask_upper,
    k5PrefixGroup0015Row0037_mask_upper,
    k5PrefixGroup0015Row0038_mask_upper,
    k5PrefixGroup0015Row0039_mask_upper,
    k5PrefixGroup0015Row0040_mask_upper,
    k5PrefixGroup0015Row0041_mask_upper,
    k5PrefixGroup0015Row0042_mask_upper,
    k5PrefixGroup0015Row0043_mask_upper,
    k5PrefixGroup0015Row0044_mask_upper,
    k5PrefixGroup0015Row0045_mask_upper,
    k5PrefixGroup0015Row0046_mask_upper,
    k5PrefixGroup0015Row0047_mask_upper,
    k5PrefixGroup0015Row0048_mask_upper,
    k5PrefixGroup0015Row0049_mask_upper,
    k5PrefixGroup0015Row0050_mask_upper,
    k5PrefixGroup0015Row0051_mask_upper,
    k5PrefixGroup0015Row0052_mask_upper,
    k5PrefixGroup0015Row0053_mask_upper,
    k5PrefixGroup0015Row0054_mask_upper,
    k5PrefixGroup0015Row0055_mask_upper,
    k5PrefixGroup0015Row0056_mask_upper,
    k5PrefixGroup0015Row0057_mask_upper,
    k5PrefixGroup0015Row0058_mask_upper,
    k5PrefixGroup0015Row0059_mask_upper,
    k5PrefixGroup0015Row0060_mask_upper,
    k5PrefixGroup0015Row0061_mask_upper,
    k5PrefixGroup0015Row0062_mask_upper,
    k5PrefixGroup0015Row0063_mask_upper,
    k5PrefixGroup0015Row0064_mask_upper,
    k5PrefixGroup0015Row0065_mask_upper,
    k5PrefixGroup0015Row0066_mask_upper,
    k5PrefixGroup0015Row0067_mask_upper,
    k5PrefixGroup0015Row0068_mask_upper,
    k5PrefixGroup0015Row0069_mask_upper,
    k5PrefixGroup0015Row0070_mask_upper,
    k5PrefixGroup0015Row0071_mask_upper,
    k5PrefixGroup0015Row0072_mask_upper,
    k5PrefixGroup0015Row0073_mask_upper,
    k5PrefixGroup0015Row0074_mask_upper,
    k5PrefixGroup0015Row0075_mask_upper,
    k5PrefixGroup0015Row0076_mask_upper,
    k5PrefixGroup0015Row0077_mask_upper,
    k5PrefixGroup0015Row0078_mask_upper,
    k5PrefixGroup0015Row0079_mask_upper,
    k5PrefixGroup0015Row0080_mask_upper,
    k5PrefixGroup0015Row0081_mask_upper,
    k5PrefixGroup0015Row0082_mask_upper,
    k5PrefixGroup0015Row0083_mask_upper,
    k5PrefixGroup0015Row0084_mask_upper,
    k5PrefixGroup0015Row0085_mask_upper,
    k5PrefixGroup0015Row0086_mask_upper,
    k5PrefixGroup0015Row0087_mask_upper,
    k5PrefixGroup0015Row0088_mask_upper,
    k5PrefixGroup0015Row0089_mask_upper,
    k5PrefixGroup0015Row0090_mask_upper,
    k5PrefixGroup0015Row0091_mask_upper,
    k5PrefixGroup0015Row0092_mask_upper,
    k5PrefixGroup0015Row0093_mask_upper,
    k5PrefixGroup0015Row0094_mask_upper,
    k5PrefixGroup0015Row0095_mask_upper,
    k5PrefixGroup0015Row0096_mask_upper,
    k5PrefixGroup0015Row0097_mask_upper,
    k5PrefixGroup0015Row0098_mask_upper,
    k5PrefixGroup0015Row0099_mask_upper,
    k5PrefixGroup0015Row0100_mask_upper,
    k5PrefixGroup0015Row0101_mask_upper,
    k5PrefixGroup0015Row0102_mask_upper,
    k5PrefixGroup0015Row0103_mask_upper,
    k5PrefixGroup0015Row0104_mask_upper,
    k5PrefixGroup0015Row0105_mask_upper,
    k5PrefixGroup0015Row0106_mask_upper,
    k5PrefixGroup0015Row0107_mask_upper,
    k5PrefixGroup0015Row0108_mask_upper,
    k5PrefixGroup0015Row0109_mask_upper,
    k5PrefixGroup0015Row0110_mask_upper,
    k5PrefixGroup0015Row0111_mask_upper,
    k5PrefixGroup0015Row0112_mask_upper,
    k5PrefixGroup0015Row0113_mask_upper,
    k5PrefixGroup0015Row0114_mask_upper,
    k5PrefixGroup0015Row0115_mask_upper,
    k5PrefixGroup0015Row0116_mask_upper,
    k5PrefixGroup0015Row0117_mask_upper,
    k5PrefixGroup0015Row0118_mask_upper,
    k5PrefixGroup0015Row0119_mask_upper,
    k5PrefixGroup0015Row0120_mask_upper,
    k5PrefixGroup0015Row0121_mask_upper,
    k5PrefixGroup0015Row0122_mask_upper,
    k5PrefixGroup0015Row0123_mask_upper,
    k5PrefixGroup0015Row0124_mask_upper,
    k5PrefixGroup0015Row0125_mask_upper,
    k5PrefixGroup0015Row0126_mask_upper,
    k5PrefixGroup0015Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
