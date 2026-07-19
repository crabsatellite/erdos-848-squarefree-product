import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0021 : List (List ℕ) :=
  [[3, 13, 71, 89],
     [3, 13, 71, 97],
     [3, 13, 71, 101],
     [3, 13, 71, 103],
     [3, 13, 71, 107],
     [3, 13, 71, 109],
     [3, 13, 71, 113],
     [3, 13, 71, 127],
     [3, 13, 71, 131],
     [3, 13, 71, 137],
     [3, 13, 71, 139],
     [3, 13, 71, 149],
     [3, 13, 71, 151],
     [3, 13, 71, 157],
     [3, 13, 71, 163],
     [3, 13, 71, 167],
     [3, 13, 71, 173],
     [3, 13, 71, 179],
     [3, 13, 71, 181],
     [3, 13, 73, 79],
     [3, 13, 73, 83],
     [3, 13, 73, 89],
     [3, 13, 73, 97],
     [3, 13, 73, 101],
     [3, 13, 73, 103],
     [3, 13, 73, 107],
     [3, 13, 73, 109],
     [3, 13, 73, 113],
     [3, 13, 73, 127],
     [3, 13, 73, 131],
     [3, 13, 73, 137],
     [3, 13, 73, 139],
     [3, 13, 73, 149],
     [3, 13, 73, 151],
     [3, 13, 73, 157],
     [3, 13, 73, 163],
     [3, 13, 73, 167],
     [3, 13, 73, 173],
     [3, 13, 73, 179],
     [3, 13, 79, 83],
     [3, 13, 79, 89],
     [3, 13, 79, 97],
     [3, 13, 79, 101],
     [3, 13, 79, 103],
     [3, 13, 79, 107],
     [3, 13, 79, 109],
     [3, 13, 79, 113],
     [3, 13, 79, 127],
     [3, 13, 79, 131],
     [3, 13, 79, 137],
     [3, 13, 79, 139],
     [3, 13, 79, 149],
     [3, 13, 79, 151],
     [3, 13, 79, 157],
     [3, 13, 79, 163],
     [3, 13, 79, 167],
     [3, 13, 79, 173],
     [3, 13, 83, 89],
     [3, 13, 83, 97],
     [3, 13, 83, 101],
     [3, 13, 83, 103],
     [3, 13, 83, 107],
     [3, 13, 83, 109],
     [3, 13, 83, 113],
     [3, 13, 83, 127],
     [3, 13, 83, 131],
     [3, 13, 83, 137],
     [3, 13, 83, 139],
     [3, 13, 83, 149],
     [3, 13, 83, 151],
     [3, 13, 83, 157],
     [3, 13, 83, 163],
     [3, 13, 83, 167],
     [3, 13, 89, 97],
     [3, 13, 89, 101],
     [3, 13, 89, 103],
     [3, 13, 89, 107],
     [3, 13, 89, 109],
     [3, 13, 89, 113],
     [3, 13, 89, 127],
     [3, 13, 89, 131],
     [3, 13, 89, 137],
     [3, 13, 89, 139],
     [3, 13, 89, 149],
     [3, 13, 89, 151],
     [3, 13, 89, 157],
     [3, 13, 89, 163],
     [3, 13, 97, 101],
     [3, 13, 97, 103],
     [3, 13, 97, 107],
     [3, 13, 97, 109],
     [3, 13, 97, 113],
     [3, 13, 97, 127],
     [3, 13, 97, 131],
     [3, 13, 97, 137],
     [3, 13, 97, 139],
     [3, 13, 97, 149],
     [3, 13, 97, 151],
     [3, 13, 101, 103],
     [3, 13, 101, 107],
     [3, 13, 101, 109],
     [3, 13, 101, 113],
     [3, 13, 101, 127],
     [3, 13, 101, 131],
     [3, 13, 101, 137],
     [3, 13, 101, 139],
     [3, 13, 101, 149],
     [3, 13, 101, 151],
     [3, 13, 103, 107],
     [3, 13, 103, 109],
     [3, 13, 103, 113],
     [3, 13, 103, 127],
     [3, 13, 103, 131],
     [3, 13, 103, 137],
     [3, 13, 103, 139],
     [3, 13, 103, 149],
     [3, 13, 103, 151],
     [3, 13, 107, 109],
     [3, 13, 107, 113],
     [3, 13, 107, 127],
     [3, 13, 107, 131],
     [3, 13, 107, 137],
     [3, 13, 107, 139],
     [3, 13, 107, 149],
     [3, 13, 109, 113],
     [3, 13, 109, 127],
     [3, 13, 109, 131],
     [3, 13, 109, 137]]

theorem k5PrefixGroup0021Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 179] = true := by
  decide

theorem k5PrefixGroup0021Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 179] = true := by
  decide

theorem k5PrefixGroup0021Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 71, 181] = true := by
  decide

theorem k5PrefixGroup0021Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 71, 181] = true := by
  decide

theorem k5PrefixGroup0021Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0021Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0021Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0021Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0021Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 73, 179] = true := by
  decide

theorem k5PrefixGroup0021Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 73, 179] = true := by
  decide

theorem k5PrefixGroup0021Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0021Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0021Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 79, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 79, 173] = true := by
  decide

theorem k5PrefixGroup0021Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 89] = true := by
  decide

theorem k5PrefixGroup0021Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 83, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 83, 167] = true := by
  decide

theorem k5PrefixGroup0021Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 97] = true := by
  decide

theorem k5PrefixGroup0021Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 157] = true := by
  decide

theorem k5PrefixGroup0021Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 89, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 89, 163] = true := by
  decide

theorem k5PrefixGroup0021Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 101] = true := by
  decide

theorem k5PrefixGroup0021Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 97, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 97, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 103] = true := by
  decide

theorem k5PrefixGroup0021Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 101, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 101, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 107] = true := by
  decide

theorem k5PrefixGroup0021Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 103, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 103, 151] = true := by
  decide

theorem k5PrefixGroup0021Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 109] = true := by
  decide

theorem k5PrefixGroup0021Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 139] = true := by
  decide

theorem k5PrefixGroup0021Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 107, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 107, 149] = true := by
  decide

theorem k5PrefixGroup0021Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 113] = true := by
  decide

theorem k5PrefixGroup0021Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 127] = true := by
  decide

theorem k5PrefixGroup0021Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 131] = true := by
  decide

theorem k5PrefixGroup0021Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 109, 137] = true := by
  decide

theorem k5PrefixGroup0021Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 109, 137] = true := by
  decide

theorem k5PrefixGroup0021_passes :
    k5PrefixGroup0021.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0021, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0021Row0000_passes,
    k5PrefixGroup0021Row0001_passes,
    k5PrefixGroup0021Row0002_passes,
    k5PrefixGroup0021Row0003_passes,
    k5PrefixGroup0021Row0004_passes,
    k5PrefixGroup0021Row0005_passes,
    k5PrefixGroup0021Row0006_passes,
    k5PrefixGroup0021Row0007_passes,
    k5PrefixGroup0021Row0008_passes,
    k5PrefixGroup0021Row0009_passes,
    k5PrefixGroup0021Row0010_passes,
    k5PrefixGroup0021Row0011_passes,
    k5PrefixGroup0021Row0012_passes,
    k5PrefixGroup0021Row0013_passes,
    k5PrefixGroup0021Row0014_passes,
    k5PrefixGroup0021Row0015_passes,
    k5PrefixGroup0021Row0016_passes,
    k5PrefixGroup0021Row0017_passes,
    k5PrefixGroup0021Row0018_passes,
    k5PrefixGroup0021Row0019_passes,
    k5PrefixGroup0021Row0020_passes,
    k5PrefixGroup0021Row0021_passes,
    k5PrefixGroup0021Row0022_passes,
    k5PrefixGroup0021Row0023_passes,
    k5PrefixGroup0021Row0024_passes,
    k5PrefixGroup0021Row0025_passes,
    k5PrefixGroup0021Row0026_passes,
    k5PrefixGroup0021Row0027_passes,
    k5PrefixGroup0021Row0028_passes,
    k5PrefixGroup0021Row0029_passes,
    k5PrefixGroup0021Row0030_passes,
    k5PrefixGroup0021Row0031_passes,
    k5PrefixGroup0021Row0032_passes,
    k5PrefixGroup0021Row0033_passes,
    k5PrefixGroup0021Row0034_passes,
    k5PrefixGroup0021Row0035_passes,
    k5PrefixGroup0021Row0036_passes,
    k5PrefixGroup0021Row0037_passes,
    k5PrefixGroup0021Row0038_passes,
    k5PrefixGroup0021Row0039_passes,
    k5PrefixGroup0021Row0040_passes,
    k5PrefixGroup0021Row0041_passes,
    k5PrefixGroup0021Row0042_passes,
    k5PrefixGroup0021Row0043_passes,
    k5PrefixGroup0021Row0044_passes,
    k5PrefixGroup0021Row0045_passes,
    k5PrefixGroup0021Row0046_passes,
    k5PrefixGroup0021Row0047_passes,
    k5PrefixGroup0021Row0048_passes,
    k5PrefixGroup0021Row0049_passes,
    k5PrefixGroup0021Row0050_passes,
    k5PrefixGroup0021Row0051_passes,
    k5PrefixGroup0021Row0052_passes,
    k5PrefixGroup0021Row0053_passes,
    k5PrefixGroup0021Row0054_passes,
    k5PrefixGroup0021Row0055_passes,
    k5PrefixGroup0021Row0056_passes,
    k5PrefixGroup0021Row0057_passes,
    k5PrefixGroup0021Row0058_passes,
    k5PrefixGroup0021Row0059_passes,
    k5PrefixGroup0021Row0060_passes,
    k5PrefixGroup0021Row0061_passes,
    k5PrefixGroup0021Row0062_passes,
    k5PrefixGroup0021Row0063_passes,
    k5PrefixGroup0021Row0064_passes,
    k5PrefixGroup0021Row0065_passes,
    k5PrefixGroup0021Row0066_passes,
    k5PrefixGroup0021Row0067_passes,
    k5PrefixGroup0021Row0068_passes,
    k5PrefixGroup0021Row0069_passes,
    k5PrefixGroup0021Row0070_passes,
    k5PrefixGroup0021Row0071_passes,
    k5PrefixGroup0021Row0072_passes,
    k5PrefixGroup0021Row0073_passes,
    k5PrefixGroup0021Row0074_passes,
    k5PrefixGroup0021Row0075_passes,
    k5PrefixGroup0021Row0076_passes,
    k5PrefixGroup0021Row0077_passes,
    k5PrefixGroup0021Row0078_passes,
    k5PrefixGroup0021Row0079_passes,
    k5PrefixGroup0021Row0080_passes,
    k5PrefixGroup0021Row0081_passes,
    k5PrefixGroup0021Row0082_passes,
    k5PrefixGroup0021Row0083_passes,
    k5PrefixGroup0021Row0084_passes,
    k5PrefixGroup0021Row0085_passes,
    k5PrefixGroup0021Row0086_passes,
    k5PrefixGroup0021Row0087_passes,
    k5PrefixGroup0021Row0088_passes,
    k5PrefixGroup0021Row0089_passes,
    k5PrefixGroup0021Row0090_passes,
    k5PrefixGroup0021Row0091_passes,
    k5PrefixGroup0021Row0092_passes,
    k5PrefixGroup0021Row0093_passes,
    k5PrefixGroup0021Row0094_passes,
    k5PrefixGroup0021Row0095_passes,
    k5PrefixGroup0021Row0096_passes,
    k5PrefixGroup0021Row0097_passes,
    k5PrefixGroup0021Row0098_passes,
    k5PrefixGroup0021Row0099_passes,
    k5PrefixGroup0021Row0100_passes,
    k5PrefixGroup0021Row0101_passes,
    k5PrefixGroup0021Row0102_passes,
    k5PrefixGroup0021Row0103_passes,
    k5PrefixGroup0021Row0104_passes,
    k5PrefixGroup0021Row0105_passes,
    k5PrefixGroup0021Row0106_passes,
    k5PrefixGroup0021Row0107_passes,
    k5PrefixGroup0021Row0108_passes,
    k5PrefixGroup0021Row0109_passes,
    k5PrefixGroup0021Row0110_passes,
    k5PrefixGroup0021Row0111_passes,
    k5PrefixGroup0021Row0112_passes,
    k5PrefixGroup0021Row0113_passes,
    k5PrefixGroup0021Row0114_passes,
    k5PrefixGroup0021Row0115_passes,
    k5PrefixGroup0021Row0116_passes,
    k5PrefixGroup0021Row0117_passes,
    k5PrefixGroup0021Row0118_passes,
    k5PrefixGroup0021Row0119_passes,
    k5PrefixGroup0021Row0120_passes,
    k5PrefixGroup0021Row0121_passes,
    k5PrefixGroup0021Row0122_passes,
    k5PrefixGroup0021Row0123_passes,
    k5PrefixGroup0021Row0124_passes,
    k5PrefixGroup0021Row0125_passes,
    k5PrefixGroup0021Row0126_passes,
    k5PrefixGroup0021Row0127_passes]

theorem k5PrefixGroup0021_mask_upper :
    k5PrefixGroup0021.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0021, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0021Row0000_mask_upper,
    k5PrefixGroup0021Row0001_mask_upper,
    k5PrefixGroup0021Row0002_mask_upper,
    k5PrefixGroup0021Row0003_mask_upper,
    k5PrefixGroup0021Row0004_mask_upper,
    k5PrefixGroup0021Row0005_mask_upper,
    k5PrefixGroup0021Row0006_mask_upper,
    k5PrefixGroup0021Row0007_mask_upper,
    k5PrefixGroup0021Row0008_mask_upper,
    k5PrefixGroup0021Row0009_mask_upper,
    k5PrefixGroup0021Row0010_mask_upper,
    k5PrefixGroup0021Row0011_mask_upper,
    k5PrefixGroup0021Row0012_mask_upper,
    k5PrefixGroup0021Row0013_mask_upper,
    k5PrefixGroup0021Row0014_mask_upper,
    k5PrefixGroup0021Row0015_mask_upper,
    k5PrefixGroup0021Row0016_mask_upper,
    k5PrefixGroup0021Row0017_mask_upper,
    k5PrefixGroup0021Row0018_mask_upper,
    k5PrefixGroup0021Row0019_mask_upper,
    k5PrefixGroup0021Row0020_mask_upper,
    k5PrefixGroup0021Row0021_mask_upper,
    k5PrefixGroup0021Row0022_mask_upper,
    k5PrefixGroup0021Row0023_mask_upper,
    k5PrefixGroup0021Row0024_mask_upper,
    k5PrefixGroup0021Row0025_mask_upper,
    k5PrefixGroup0021Row0026_mask_upper,
    k5PrefixGroup0021Row0027_mask_upper,
    k5PrefixGroup0021Row0028_mask_upper,
    k5PrefixGroup0021Row0029_mask_upper,
    k5PrefixGroup0021Row0030_mask_upper,
    k5PrefixGroup0021Row0031_mask_upper,
    k5PrefixGroup0021Row0032_mask_upper,
    k5PrefixGroup0021Row0033_mask_upper,
    k5PrefixGroup0021Row0034_mask_upper,
    k5PrefixGroup0021Row0035_mask_upper,
    k5PrefixGroup0021Row0036_mask_upper,
    k5PrefixGroup0021Row0037_mask_upper,
    k5PrefixGroup0021Row0038_mask_upper,
    k5PrefixGroup0021Row0039_mask_upper,
    k5PrefixGroup0021Row0040_mask_upper,
    k5PrefixGroup0021Row0041_mask_upper,
    k5PrefixGroup0021Row0042_mask_upper,
    k5PrefixGroup0021Row0043_mask_upper,
    k5PrefixGroup0021Row0044_mask_upper,
    k5PrefixGroup0021Row0045_mask_upper,
    k5PrefixGroup0021Row0046_mask_upper,
    k5PrefixGroup0021Row0047_mask_upper,
    k5PrefixGroup0021Row0048_mask_upper,
    k5PrefixGroup0021Row0049_mask_upper,
    k5PrefixGroup0021Row0050_mask_upper,
    k5PrefixGroup0021Row0051_mask_upper,
    k5PrefixGroup0021Row0052_mask_upper,
    k5PrefixGroup0021Row0053_mask_upper,
    k5PrefixGroup0021Row0054_mask_upper,
    k5PrefixGroup0021Row0055_mask_upper,
    k5PrefixGroup0021Row0056_mask_upper,
    k5PrefixGroup0021Row0057_mask_upper,
    k5PrefixGroup0021Row0058_mask_upper,
    k5PrefixGroup0021Row0059_mask_upper,
    k5PrefixGroup0021Row0060_mask_upper,
    k5PrefixGroup0021Row0061_mask_upper,
    k5PrefixGroup0021Row0062_mask_upper,
    k5PrefixGroup0021Row0063_mask_upper,
    k5PrefixGroup0021Row0064_mask_upper,
    k5PrefixGroup0021Row0065_mask_upper,
    k5PrefixGroup0021Row0066_mask_upper,
    k5PrefixGroup0021Row0067_mask_upper,
    k5PrefixGroup0021Row0068_mask_upper,
    k5PrefixGroup0021Row0069_mask_upper,
    k5PrefixGroup0021Row0070_mask_upper,
    k5PrefixGroup0021Row0071_mask_upper,
    k5PrefixGroup0021Row0072_mask_upper,
    k5PrefixGroup0021Row0073_mask_upper,
    k5PrefixGroup0021Row0074_mask_upper,
    k5PrefixGroup0021Row0075_mask_upper,
    k5PrefixGroup0021Row0076_mask_upper,
    k5PrefixGroup0021Row0077_mask_upper,
    k5PrefixGroup0021Row0078_mask_upper,
    k5PrefixGroup0021Row0079_mask_upper,
    k5PrefixGroup0021Row0080_mask_upper,
    k5PrefixGroup0021Row0081_mask_upper,
    k5PrefixGroup0021Row0082_mask_upper,
    k5PrefixGroup0021Row0083_mask_upper,
    k5PrefixGroup0021Row0084_mask_upper,
    k5PrefixGroup0021Row0085_mask_upper,
    k5PrefixGroup0021Row0086_mask_upper,
    k5PrefixGroup0021Row0087_mask_upper,
    k5PrefixGroup0021Row0088_mask_upper,
    k5PrefixGroup0021Row0089_mask_upper,
    k5PrefixGroup0021Row0090_mask_upper,
    k5PrefixGroup0021Row0091_mask_upper,
    k5PrefixGroup0021Row0092_mask_upper,
    k5PrefixGroup0021Row0093_mask_upper,
    k5PrefixGroup0021Row0094_mask_upper,
    k5PrefixGroup0021Row0095_mask_upper,
    k5PrefixGroup0021Row0096_mask_upper,
    k5PrefixGroup0021Row0097_mask_upper,
    k5PrefixGroup0021Row0098_mask_upper,
    k5PrefixGroup0021Row0099_mask_upper,
    k5PrefixGroup0021Row0100_mask_upper,
    k5PrefixGroup0021Row0101_mask_upper,
    k5PrefixGroup0021Row0102_mask_upper,
    k5PrefixGroup0021Row0103_mask_upper,
    k5PrefixGroup0021Row0104_mask_upper,
    k5PrefixGroup0021Row0105_mask_upper,
    k5PrefixGroup0021Row0106_mask_upper,
    k5PrefixGroup0021Row0107_mask_upper,
    k5PrefixGroup0021Row0108_mask_upper,
    k5PrefixGroup0021Row0109_mask_upper,
    k5PrefixGroup0021Row0110_mask_upper,
    k5PrefixGroup0021Row0111_mask_upper,
    k5PrefixGroup0021Row0112_mask_upper,
    k5PrefixGroup0021Row0113_mask_upper,
    k5PrefixGroup0021Row0114_mask_upper,
    k5PrefixGroup0021Row0115_mask_upper,
    k5PrefixGroup0021Row0116_mask_upper,
    k5PrefixGroup0021Row0117_mask_upper,
    k5PrefixGroup0021Row0118_mask_upper,
    k5PrefixGroup0021Row0119_mask_upper,
    k5PrefixGroup0021Row0120_mask_upper,
    k5PrefixGroup0021Row0121_mask_upper,
    k5PrefixGroup0021Row0122_mask_upper,
    k5PrefixGroup0021Row0123_mask_upper,
    k5PrefixGroup0021Row0124_mask_upper,
    k5PrefixGroup0021Row0125_mask_upper,
    k5PrefixGroup0021Row0126_mask_upper,
    k5PrefixGroup0021Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
