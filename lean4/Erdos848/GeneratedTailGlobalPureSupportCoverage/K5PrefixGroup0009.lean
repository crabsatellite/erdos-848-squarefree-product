import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0009 : List (List ℕ) :=
  [[3, 7, 101, 163],
     [3, 7, 101, 167],
     [3, 7, 101, 173],
     [3, 7, 101, 179],
     [3, 7, 101, 181],
     [3, 7, 101, 191],
     [3, 7, 101, 193],
     [3, 7, 101, 197],
     [3, 7, 101, 199],
     [3, 7, 103, 107],
     [3, 7, 103, 109],
     [3, 7, 103, 113],
     [3, 7, 103, 127],
     [3, 7, 103, 131],
     [3, 7, 103, 137],
     [3, 7, 103, 139],
     [3, 7, 103, 149],
     [3, 7, 103, 151],
     [3, 7, 103, 157],
     [3, 7, 103, 163],
     [3, 7, 103, 167],
     [3, 7, 103, 173],
     [3, 7, 103, 179],
     [3, 7, 103, 181],
     [3, 7, 103, 191],
     [3, 7, 103, 193],
     [3, 7, 103, 197],
     [3, 7, 103, 199],
     [3, 7, 107, 109],
     [3, 7, 107, 113],
     [3, 7, 107, 127],
     [3, 7, 107, 131],
     [3, 7, 107, 137],
     [3, 7, 107, 139],
     [3, 7, 107, 149],
     [3, 7, 107, 151],
     [3, 7, 107, 157],
     [3, 7, 107, 163],
     [3, 7, 107, 167],
     [3, 7, 107, 173],
     [3, 7, 107, 179],
     [3, 7, 107, 181],
     [3, 7, 107, 191],
     [3, 7, 107, 193],
     [3, 7, 107, 197],
     [3, 7, 107, 199],
     [3, 7, 109, 113],
     [3, 7, 109, 127],
     [3, 7, 109, 131],
     [3, 7, 109, 137],
     [3, 7, 109, 139],
     [3, 7, 109, 149],
     [3, 7, 109, 151],
     [3, 7, 109, 157],
     [3, 7, 109, 163],
     [3, 7, 109, 167],
     [3, 7, 109, 173],
     [3, 7, 109, 179],
     [3, 7, 109, 181],
     [3, 7, 109, 191],
     [3, 7, 109, 193],
     [3, 7, 109, 197],
     [3, 7, 109, 199],
     [3, 7, 113, 127],
     [3, 7, 113, 131],
     [3, 7, 113, 137],
     [3, 7, 113, 139],
     [3, 7, 113, 149],
     [3, 7, 113, 151],
     [3, 7, 113, 157],
     [3, 7, 113, 163],
     [3, 7, 113, 167],
     [3, 7, 113, 173],
     [3, 7, 113, 179],
     [3, 7, 113, 181],
     [3, 7, 113, 191],
     [3, 7, 113, 193],
     [3, 7, 113, 197],
     [3, 7, 127, 131],
     [3, 7, 127, 137],
     [3, 7, 127, 139],
     [3, 7, 127, 149],
     [3, 7, 127, 151],
     [3, 7, 127, 157],
     [3, 7, 127, 163],
     [3, 7, 127, 167],
     [3, 7, 127, 173],
     [3, 7, 127, 179],
     [3, 7, 127, 181],
     [3, 7, 131, 137],
     [3, 7, 131, 139],
     [3, 7, 131, 149],
     [3, 7, 131, 151],
     [3, 7, 131, 157],
     [3, 7, 131, 163],
     [3, 7, 131, 167],
     [3, 7, 131, 173],
     [3, 7, 131, 179],
     [3, 7, 131, 181],
     [3, 7, 137, 139],
     [3, 7, 137, 149],
     [3, 7, 137, 151],
     [3, 7, 137, 157],
     [3, 7, 137, 163],
     [3, 7, 137, 167],
     [3, 7, 137, 173],
     [3, 7, 137, 179],
     [3, 7, 139, 149],
     [3, 7, 139, 151],
     [3, 7, 139, 157],
     [3, 7, 139, 163],
     [3, 7, 139, 167],
     [3, 7, 139, 173],
     [3, 7, 139, 179],
     [3, 7, 149, 151],
     [3, 7, 149, 157],
     [3, 7, 149, 163],
     [3, 7, 149, 167],
     [3, 7, 151, 157],
     [3, 7, 151, 163],
     [3, 7, 151, 167],
     [3, 7, 157, 163],
     [3, 7, 157, 167],
     [3, 11, 13, 17],
     [3, 11, 13, 19],
     [3, 11, 13, 23],
     [3, 11, 13, 29],
     [3, 11, 13, 31]]

theorem k5PrefixGroup0009Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 107] = true := by
  decide

theorem k5PrefixGroup0009Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 107] = true := by
  decide

theorem k5PrefixGroup0009Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 109] = true := by
  decide

theorem k5PrefixGroup0009Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 109] = true := by
  decide

theorem k5PrefixGroup0009Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 103, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 103, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 109] = true := by
  decide

theorem k5PrefixGroup0009Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 109] = true := by
  decide

theorem k5PrefixGroup0009Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 107, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 107, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 113] = true := by
  decide

theorem k5PrefixGroup0009Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 109, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 109, 199] = true := by
  decide

theorem k5PrefixGroup0009Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 127] = true := by
  decide

theorem k5PrefixGroup0009Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 191] = true := by
  decide

theorem k5PrefixGroup0009Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 193] = true := by
  decide

theorem k5PrefixGroup0009Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 113, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 113, 197] = true := by
  decide

theorem k5PrefixGroup0009Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 131] = true := by
  decide

theorem k5PrefixGroup0009Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 127, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 127, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 137] = true := by
  decide

theorem k5PrefixGroup0009Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 131, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 131, 181] = true := by
  decide

theorem k5PrefixGroup0009Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 139] = true := by
  decide

theorem k5PrefixGroup0009Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 137, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 137, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 149] = true := by
  decide

theorem k5PrefixGroup0009Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 173] = true := by
  decide

theorem k5PrefixGroup0009Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 139, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 139, 179] = true := by
  decide

theorem k5PrefixGroup0009Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 149, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 149, 151] = true := by
  decide

theorem k5PrefixGroup0009Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 149, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 149, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 149, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 149, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 149, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 149, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 151, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 151, 157] = true := by
  decide

theorem k5PrefixGroup0009Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 151, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 151, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 151, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 151, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 157, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 157, 163] = true := by
  decide

theorem k5PrefixGroup0009Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 157, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 157, 167] = true := by
  decide

theorem k5PrefixGroup0009Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 17] = true := by
  decide

theorem k5PrefixGroup0009Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 17] = true := by
  decide

theorem k5PrefixGroup0009Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 19] = true := by
  decide

theorem k5PrefixGroup0009Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 19] = true := by
  decide

theorem k5PrefixGroup0009Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 23] = true := by
  decide

theorem k5PrefixGroup0009Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23] = true := by
  decide

theorem k5PrefixGroup0009Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 29] = true := by
  decide

theorem k5PrefixGroup0009Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29] = true := by
  decide

theorem k5PrefixGroup0009Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 31] = true := by
  decide

theorem k5PrefixGroup0009Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31] = true := by
  decide

theorem k5PrefixGroup0009_passes :
    k5PrefixGroup0009.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0009, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0009Row0000_passes,
    k5PrefixGroup0009Row0001_passes,
    k5PrefixGroup0009Row0002_passes,
    k5PrefixGroup0009Row0003_passes,
    k5PrefixGroup0009Row0004_passes,
    k5PrefixGroup0009Row0005_passes,
    k5PrefixGroup0009Row0006_passes,
    k5PrefixGroup0009Row0007_passes,
    k5PrefixGroup0009Row0008_passes,
    k5PrefixGroup0009Row0009_passes,
    k5PrefixGroup0009Row0010_passes,
    k5PrefixGroup0009Row0011_passes,
    k5PrefixGroup0009Row0012_passes,
    k5PrefixGroup0009Row0013_passes,
    k5PrefixGroup0009Row0014_passes,
    k5PrefixGroup0009Row0015_passes,
    k5PrefixGroup0009Row0016_passes,
    k5PrefixGroup0009Row0017_passes,
    k5PrefixGroup0009Row0018_passes,
    k5PrefixGroup0009Row0019_passes,
    k5PrefixGroup0009Row0020_passes,
    k5PrefixGroup0009Row0021_passes,
    k5PrefixGroup0009Row0022_passes,
    k5PrefixGroup0009Row0023_passes,
    k5PrefixGroup0009Row0024_passes,
    k5PrefixGroup0009Row0025_passes,
    k5PrefixGroup0009Row0026_passes,
    k5PrefixGroup0009Row0027_passes,
    k5PrefixGroup0009Row0028_passes,
    k5PrefixGroup0009Row0029_passes,
    k5PrefixGroup0009Row0030_passes,
    k5PrefixGroup0009Row0031_passes,
    k5PrefixGroup0009Row0032_passes,
    k5PrefixGroup0009Row0033_passes,
    k5PrefixGroup0009Row0034_passes,
    k5PrefixGroup0009Row0035_passes,
    k5PrefixGroup0009Row0036_passes,
    k5PrefixGroup0009Row0037_passes,
    k5PrefixGroup0009Row0038_passes,
    k5PrefixGroup0009Row0039_passes,
    k5PrefixGroup0009Row0040_passes,
    k5PrefixGroup0009Row0041_passes,
    k5PrefixGroup0009Row0042_passes,
    k5PrefixGroup0009Row0043_passes,
    k5PrefixGroup0009Row0044_passes,
    k5PrefixGroup0009Row0045_passes,
    k5PrefixGroup0009Row0046_passes,
    k5PrefixGroup0009Row0047_passes,
    k5PrefixGroup0009Row0048_passes,
    k5PrefixGroup0009Row0049_passes,
    k5PrefixGroup0009Row0050_passes,
    k5PrefixGroup0009Row0051_passes,
    k5PrefixGroup0009Row0052_passes,
    k5PrefixGroup0009Row0053_passes,
    k5PrefixGroup0009Row0054_passes,
    k5PrefixGroup0009Row0055_passes,
    k5PrefixGroup0009Row0056_passes,
    k5PrefixGroup0009Row0057_passes,
    k5PrefixGroup0009Row0058_passes,
    k5PrefixGroup0009Row0059_passes,
    k5PrefixGroup0009Row0060_passes,
    k5PrefixGroup0009Row0061_passes,
    k5PrefixGroup0009Row0062_passes,
    k5PrefixGroup0009Row0063_passes,
    k5PrefixGroup0009Row0064_passes,
    k5PrefixGroup0009Row0065_passes,
    k5PrefixGroup0009Row0066_passes,
    k5PrefixGroup0009Row0067_passes,
    k5PrefixGroup0009Row0068_passes,
    k5PrefixGroup0009Row0069_passes,
    k5PrefixGroup0009Row0070_passes,
    k5PrefixGroup0009Row0071_passes,
    k5PrefixGroup0009Row0072_passes,
    k5PrefixGroup0009Row0073_passes,
    k5PrefixGroup0009Row0074_passes,
    k5PrefixGroup0009Row0075_passes,
    k5PrefixGroup0009Row0076_passes,
    k5PrefixGroup0009Row0077_passes,
    k5PrefixGroup0009Row0078_passes,
    k5PrefixGroup0009Row0079_passes,
    k5PrefixGroup0009Row0080_passes,
    k5PrefixGroup0009Row0081_passes,
    k5PrefixGroup0009Row0082_passes,
    k5PrefixGroup0009Row0083_passes,
    k5PrefixGroup0009Row0084_passes,
    k5PrefixGroup0009Row0085_passes,
    k5PrefixGroup0009Row0086_passes,
    k5PrefixGroup0009Row0087_passes,
    k5PrefixGroup0009Row0088_passes,
    k5PrefixGroup0009Row0089_passes,
    k5PrefixGroup0009Row0090_passes,
    k5PrefixGroup0009Row0091_passes,
    k5PrefixGroup0009Row0092_passes,
    k5PrefixGroup0009Row0093_passes,
    k5PrefixGroup0009Row0094_passes,
    k5PrefixGroup0009Row0095_passes,
    k5PrefixGroup0009Row0096_passes,
    k5PrefixGroup0009Row0097_passes,
    k5PrefixGroup0009Row0098_passes,
    k5PrefixGroup0009Row0099_passes,
    k5PrefixGroup0009Row0100_passes,
    k5PrefixGroup0009Row0101_passes,
    k5PrefixGroup0009Row0102_passes,
    k5PrefixGroup0009Row0103_passes,
    k5PrefixGroup0009Row0104_passes,
    k5PrefixGroup0009Row0105_passes,
    k5PrefixGroup0009Row0106_passes,
    k5PrefixGroup0009Row0107_passes,
    k5PrefixGroup0009Row0108_passes,
    k5PrefixGroup0009Row0109_passes,
    k5PrefixGroup0009Row0110_passes,
    k5PrefixGroup0009Row0111_passes,
    k5PrefixGroup0009Row0112_passes,
    k5PrefixGroup0009Row0113_passes,
    k5PrefixGroup0009Row0114_passes,
    k5PrefixGroup0009Row0115_passes,
    k5PrefixGroup0009Row0116_passes,
    k5PrefixGroup0009Row0117_passes,
    k5PrefixGroup0009Row0118_passes,
    k5PrefixGroup0009Row0119_passes,
    k5PrefixGroup0009Row0120_passes,
    k5PrefixGroup0009Row0121_passes,
    k5PrefixGroup0009Row0122_passes,
    k5PrefixGroup0009Row0123_passes,
    k5PrefixGroup0009Row0124_passes,
    k5PrefixGroup0009Row0125_passes,
    k5PrefixGroup0009Row0126_passes,
    k5PrefixGroup0009Row0127_passes]

theorem k5PrefixGroup0009_mask_upper :
    k5PrefixGroup0009.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0009, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0009Row0000_mask_upper,
    k5PrefixGroup0009Row0001_mask_upper,
    k5PrefixGroup0009Row0002_mask_upper,
    k5PrefixGroup0009Row0003_mask_upper,
    k5PrefixGroup0009Row0004_mask_upper,
    k5PrefixGroup0009Row0005_mask_upper,
    k5PrefixGroup0009Row0006_mask_upper,
    k5PrefixGroup0009Row0007_mask_upper,
    k5PrefixGroup0009Row0008_mask_upper,
    k5PrefixGroup0009Row0009_mask_upper,
    k5PrefixGroup0009Row0010_mask_upper,
    k5PrefixGroup0009Row0011_mask_upper,
    k5PrefixGroup0009Row0012_mask_upper,
    k5PrefixGroup0009Row0013_mask_upper,
    k5PrefixGroup0009Row0014_mask_upper,
    k5PrefixGroup0009Row0015_mask_upper,
    k5PrefixGroup0009Row0016_mask_upper,
    k5PrefixGroup0009Row0017_mask_upper,
    k5PrefixGroup0009Row0018_mask_upper,
    k5PrefixGroup0009Row0019_mask_upper,
    k5PrefixGroup0009Row0020_mask_upper,
    k5PrefixGroup0009Row0021_mask_upper,
    k5PrefixGroup0009Row0022_mask_upper,
    k5PrefixGroup0009Row0023_mask_upper,
    k5PrefixGroup0009Row0024_mask_upper,
    k5PrefixGroup0009Row0025_mask_upper,
    k5PrefixGroup0009Row0026_mask_upper,
    k5PrefixGroup0009Row0027_mask_upper,
    k5PrefixGroup0009Row0028_mask_upper,
    k5PrefixGroup0009Row0029_mask_upper,
    k5PrefixGroup0009Row0030_mask_upper,
    k5PrefixGroup0009Row0031_mask_upper,
    k5PrefixGroup0009Row0032_mask_upper,
    k5PrefixGroup0009Row0033_mask_upper,
    k5PrefixGroup0009Row0034_mask_upper,
    k5PrefixGroup0009Row0035_mask_upper,
    k5PrefixGroup0009Row0036_mask_upper,
    k5PrefixGroup0009Row0037_mask_upper,
    k5PrefixGroup0009Row0038_mask_upper,
    k5PrefixGroup0009Row0039_mask_upper,
    k5PrefixGroup0009Row0040_mask_upper,
    k5PrefixGroup0009Row0041_mask_upper,
    k5PrefixGroup0009Row0042_mask_upper,
    k5PrefixGroup0009Row0043_mask_upper,
    k5PrefixGroup0009Row0044_mask_upper,
    k5PrefixGroup0009Row0045_mask_upper,
    k5PrefixGroup0009Row0046_mask_upper,
    k5PrefixGroup0009Row0047_mask_upper,
    k5PrefixGroup0009Row0048_mask_upper,
    k5PrefixGroup0009Row0049_mask_upper,
    k5PrefixGroup0009Row0050_mask_upper,
    k5PrefixGroup0009Row0051_mask_upper,
    k5PrefixGroup0009Row0052_mask_upper,
    k5PrefixGroup0009Row0053_mask_upper,
    k5PrefixGroup0009Row0054_mask_upper,
    k5PrefixGroup0009Row0055_mask_upper,
    k5PrefixGroup0009Row0056_mask_upper,
    k5PrefixGroup0009Row0057_mask_upper,
    k5PrefixGroup0009Row0058_mask_upper,
    k5PrefixGroup0009Row0059_mask_upper,
    k5PrefixGroup0009Row0060_mask_upper,
    k5PrefixGroup0009Row0061_mask_upper,
    k5PrefixGroup0009Row0062_mask_upper,
    k5PrefixGroup0009Row0063_mask_upper,
    k5PrefixGroup0009Row0064_mask_upper,
    k5PrefixGroup0009Row0065_mask_upper,
    k5PrefixGroup0009Row0066_mask_upper,
    k5PrefixGroup0009Row0067_mask_upper,
    k5PrefixGroup0009Row0068_mask_upper,
    k5PrefixGroup0009Row0069_mask_upper,
    k5PrefixGroup0009Row0070_mask_upper,
    k5PrefixGroup0009Row0071_mask_upper,
    k5PrefixGroup0009Row0072_mask_upper,
    k5PrefixGroup0009Row0073_mask_upper,
    k5PrefixGroup0009Row0074_mask_upper,
    k5PrefixGroup0009Row0075_mask_upper,
    k5PrefixGroup0009Row0076_mask_upper,
    k5PrefixGroup0009Row0077_mask_upper,
    k5PrefixGroup0009Row0078_mask_upper,
    k5PrefixGroup0009Row0079_mask_upper,
    k5PrefixGroup0009Row0080_mask_upper,
    k5PrefixGroup0009Row0081_mask_upper,
    k5PrefixGroup0009Row0082_mask_upper,
    k5PrefixGroup0009Row0083_mask_upper,
    k5PrefixGroup0009Row0084_mask_upper,
    k5PrefixGroup0009Row0085_mask_upper,
    k5PrefixGroup0009Row0086_mask_upper,
    k5PrefixGroup0009Row0087_mask_upper,
    k5PrefixGroup0009Row0088_mask_upper,
    k5PrefixGroup0009Row0089_mask_upper,
    k5PrefixGroup0009Row0090_mask_upper,
    k5PrefixGroup0009Row0091_mask_upper,
    k5PrefixGroup0009Row0092_mask_upper,
    k5PrefixGroup0009Row0093_mask_upper,
    k5PrefixGroup0009Row0094_mask_upper,
    k5PrefixGroup0009Row0095_mask_upper,
    k5PrefixGroup0009Row0096_mask_upper,
    k5PrefixGroup0009Row0097_mask_upper,
    k5PrefixGroup0009Row0098_mask_upper,
    k5PrefixGroup0009Row0099_mask_upper,
    k5PrefixGroup0009Row0100_mask_upper,
    k5PrefixGroup0009Row0101_mask_upper,
    k5PrefixGroup0009Row0102_mask_upper,
    k5PrefixGroup0009Row0103_mask_upper,
    k5PrefixGroup0009Row0104_mask_upper,
    k5PrefixGroup0009Row0105_mask_upper,
    k5PrefixGroup0009Row0106_mask_upper,
    k5PrefixGroup0009Row0107_mask_upper,
    k5PrefixGroup0009Row0108_mask_upper,
    k5PrefixGroup0009Row0109_mask_upper,
    k5PrefixGroup0009Row0110_mask_upper,
    k5PrefixGroup0009Row0111_mask_upper,
    k5PrefixGroup0009Row0112_mask_upper,
    k5PrefixGroup0009Row0113_mask_upper,
    k5PrefixGroup0009Row0114_mask_upper,
    k5PrefixGroup0009Row0115_mask_upper,
    k5PrefixGroup0009Row0116_mask_upper,
    k5PrefixGroup0009Row0117_mask_upper,
    k5PrefixGroup0009Row0118_mask_upper,
    k5PrefixGroup0009Row0119_mask_upper,
    k5PrefixGroup0009Row0120_mask_upper,
    k5PrefixGroup0009Row0121_mask_upper,
    k5PrefixGroup0009Row0122_mask_upper,
    k5PrefixGroup0009Row0123_mask_upper,
    k5PrefixGroup0009Row0124_mask_upper,
    k5PrefixGroup0009Row0125_mask_upper,
    k5PrefixGroup0009Row0126_mask_upper,
    k5PrefixGroup0009Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
