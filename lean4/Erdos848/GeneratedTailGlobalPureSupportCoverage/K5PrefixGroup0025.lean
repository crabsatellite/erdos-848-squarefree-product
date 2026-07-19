import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0025 : List (List ℕ) :=
  [[3, 17, 61, 73],
     [3, 17, 61, 79],
     [3, 17, 61, 83],
     [3, 17, 61, 89],
     [3, 17, 61, 97],
     [3, 17, 61, 101],
     [3, 17, 61, 103],
     [3, 17, 61, 107],
     [3, 17, 61, 109],
     [3, 17, 61, 113],
     [3, 17, 61, 127],
     [3, 17, 61, 131],
     [3, 17, 61, 137],
     [3, 17, 61, 139],
     [3, 17, 61, 149],
     [3, 17, 61, 151],
     [3, 17, 61, 157],
     [3, 17, 61, 163],
     [3, 17, 61, 167],
     [3, 17, 61, 173],
     [3, 17, 67, 71],
     [3, 17, 67, 73],
     [3, 17, 67, 79],
     [3, 17, 67, 83],
     [3, 17, 67, 89],
     [3, 17, 67, 97],
     [3, 17, 67, 101],
     [3, 17, 67, 103],
     [3, 17, 67, 107],
     [3, 17, 67, 109],
     [3, 17, 67, 113],
     [3, 17, 67, 127],
     [3, 17, 67, 131],
     [3, 17, 67, 137],
     [3, 17, 67, 139],
     [3, 17, 67, 149],
     [3, 17, 67, 151],
     [3, 17, 67, 157],
     [3, 17, 67, 163],
     [3, 17, 71, 73],
     [3, 17, 71, 79],
     [3, 17, 71, 83],
     [3, 17, 71, 89],
     [3, 17, 71, 97],
     [3, 17, 71, 101],
     [3, 17, 71, 103],
     [3, 17, 71, 107],
     [3, 17, 71, 109],
     [3, 17, 71, 113],
     [3, 17, 71, 127],
     [3, 17, 71, 131],
     [3, 17, 71, 137],
     [3, 17, 71, 139],
     [3, 17, 71, 149],
     [3, 17, 71, 151],
     [3, 17, 71, 157],
     [3, 17, 73, 79],
     [3, 17, 73, 83],
     [3, 17, 73, 89],
     [3, 17, 73, 97],
     [3, 17, 73, 101],
     [3, 17, 73, 103],
     [3, 17, 73, 107],
     [3, 17, 73, 109],
     [3, 17, 73, 113],
     [3, 17, 73, 127],
     [3, 17, 73, 131],
     [3, 17, 73, 137],
     [3, 17, 73, 139],
     [3, 17, 73, 149],
     [3, 17, 73, 151],
     [3, 17, 73, 157],
     [3, 17, 79, 83],
     [3, 17, 79, 89],
     [3, 17, 79, 97],
     [3, 17, 79, 101],
     [3, 17, 79, 103],
     [3, 17, 79, 107],
     [3, 17, 79, 109],
     [3, 17, 79, 113],
     [3, 17, 79, 127],
     [3, 17, 79, 131],
     [3, 17, 79, 137],
     [3, 17, 79, 139],
     [3, 17, 79, 149],
     [3, 17, 79, 151],
     [3, 17, 83, 89],
     [3, 17, 83, 97],
     [3, 17, 83, 101],
     [3, 17, 83, 103],
     [3, 17, 83, 107],
     [3, 17, 83, 109],
     [3, 17, 83, 113],
     [3, 17, 83, 127],
     [3, 17, 83, 131],
     [3, 17, 83, 137],
     [3, 17, 83, 139],
     [3, 17, 83, 149],
     [3, 17, 89, 97],
     [3, 17, 89, 101],
     [3, 17, 89, 103],
     [3, 17, 89, 107],
     [3, 17, 89, 109],
     [3, 17, 89, 113],
     [3, 17, 89, 127],
     [3, 17, 89, 131],
     [3, 17, 89, 137],
     [3, 17, 89, 139],
     [3, 17, 97, 101],
     [3, 17, 97, 103],
     [3, 17, 97, 107],
     [3, 17, 97, 109],
     [3, 17, 97, 113],
     [3, 17, 97, 127],
     [3, 17, 97, 131],
     [3, 17, 97, 137],
     [3, 17, 101, 103],
     [3, 17, 101, 107],
     [3, 17, 101, 109],
     [3, 17, 101, 113],
     [3, 17, 101, 127],
     [3, 17, 101, 131],
     [3, 17, 103, 107],
     [3, 17, 103, 109],
     [3, 17, 103, 113],
     [3, 17, 103, 127],
     [3, 17, 103, 131],
     [3, 17, 107, 109]]

theorem k5PrefixGroup0025Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 163] = true := by
  decide

theorem k5PrefixGroup0025Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 163] = true := by
  decide

theorem k5PrefixGroup0025Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 167] = true := by
  decide

theorem k5PrefixGroup0025Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 167] = true := by
  decide

theorem k5PrefixGroup0025Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 61, 173] = true := by
  decide

theorem k5PrefixGroup0025Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 61, 173] = true := by
  decide

theorem k5PrefixGroup0025Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0025Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0025Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 67, 163] = true := by
  decide

theorem k5PrefixGroup0025Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 67, 163] = true := by
  decide

theorem k5PrefixGroup0025Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0025Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 71, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 71, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0025Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 73, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 73, 157] = true := by
  decide

theorem k5PrefixGroup0025Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 83] = true := by
  decide

theorem k5PrefixGroup0025Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 79, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 79, 151] = true := by
  decide

theorem k5PrefixGroup0025Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 89] = true := by
  decide

theorem k5PrefixGroup0025Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 83, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 83, 149] = true := by
  decide

theorem k5PrefixGroup0025Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 97] = true := by
  decide

theorem k5PrefixGroup0025Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 89, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 89, 139] = true := by
  decide

theorem k5PrefixGroup0025Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 101] = true := by
  decide

theorem k5PrefixGroup0025Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 97, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 97, 137] = true := by
  decide

theorem k5PrefixGroup0025Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 103] = true := by
  decide

theorem k5PrefixGroup0025Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 101, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 101, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 103, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 103, 107] = true := by
  decide

theorem k5PrefixGroup0025Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 103, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 103, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 103, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 103, 113] = true := by
  decide

theorem k5PrefixGroup0025Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 103, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 103, 127] = true := by
  decide

theorem k5PrefixGroup0025Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 103, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 103, 131] = true := by
  decide

theorem k5PrefixGroup0025Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 17, 107, 109] = true := by
  decide

theorem k5PrefixGroup0025Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 17, 107, 109] = true := by
  decide

theorem k5PrefixGroup0025_passes :
    k5PrefixGroup0025.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0025, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0025Row0000_passes,
    k5PrefixGroup0025Row0001_passes,
    k5PrefixGroup0025Row0002_passes,
    k5PrefixGroup0025Row0003_passes,
    k5PrefixGroup0025Row0004_passes,
    k5PrefixGroup0025Row0005_passes,
    k5PrefixGroup0025Row0006_passes,
    k5PrefixGroup0025Row0007_passes,
    k5PrefixGroup0025Row0008_passes,
    k5PrefixGroup0025Row0009_passes,
    k5PrefixGroup0025Row0010_passes,
    k5PrefixGroup0025Row0011_passes,
    k5PrefixGroup0025Row0012_passes,
    k5PrefixGroup0025Row0013_passes,
    k5PrefixGroup0025Row0014_passes,
    k5PrefixGroup0025Row0015_passes,
    k5PrefixGroup0025Row0016_passes,
    k5PrefixGroup0025Row0017_passes,
    k5PrefixGroup0025Row0018_passes,
    k5PrefixGroup0025Row0019_passes,
    k5PrefixGroup0025Row0020_passes,
    k5PrefixGroup0025Row0021_passes,
    k5PrefixGroup0025Row0022_passes,
    k5PrefixGroup0025Row0023_passes,
    k5PrefixGroup0025Row0024_passes,
    k5PrefixGroup0025Row0025_passes,
    k5PrefixGroup0025Row0026_passes,
    k5PrefixGroup0025Row0027_passes,
    k5PrefixGroup0025Row0028_passes,
    k5PrefixGroup0025Row0029_passes,
    k5PrefixGroup0025Row0030_passes,
    k5PrefixGroup0025Row0031_passes,
    k5PrefixGroup0025Row0032_passes,
    k5PrefixGroup0025Row0033_passes,
    k5PrefixGroup0025Row0034_passes,
    k5PrefixGroup0025Row0035_passes,
    k5PrefixGroup0025Row0036_passes,
    k5PrefixGroup0025Row0037_passes,
    k5PrefixGroup0025Row0038_passes,
    k5PrefixGroup0025Row0039_passes,
    k5PrefixGroup0025Row0040_passes,
    k5PrefixGroup0025Row0041_passes,
    k5PrefixGroup0025Row0042_passes,
    k5PrefixGroup0025Row0043_passes,
    k5PrefixGroup0025Row0044_passes,
    k5PrefixGroup0025Row0045_passes,
    k5PrefixGroup0025Row0046_passes,
    k5PrefixGroup0025Row0047_passes,
    k5PrefixGroup0025Row0048_passes,
    k5PrefixGroup0025Row0049_passes,
    k5PrefixGroup0025Row0050_passes,
    k5PrefixGroup0025Row0051_passes,
    k5PrefixGroup0025Row0052_passes,
    k5PrefixGroup0025Row0053_passes,
    k5PrefixGroup0025Row0054_passes,
    k5PrefixGroup0025Row0055_passes,
    k5PrefixGroup0025Row0056_passes,
    k5PrefixGroup0025Row0057_passes,
    k5PrefixGroup0025Row0058_passes,
    k5PrefixGroup0025Row0059_passes,
    k5PrefixGroup0025Row0060_passes,
    k5PrefixGroup0025Row0061_passes,
    k5PrefixGroup0025Row0062_passes,
    k5PrefixGroup0025Row0063_passes,
    k5PrefixGroup0025Row0064_passes,
    k5PrefixGroup0025Row0065_passes,
    k5PrefixGroup0025Row0066_passes,
    k5PrefixGroup0025Row0067_passes,
    k5PrefixGroup0025Row0068_passes,
    k5PrefixGroup0025Row0069_passes,
    k5PrefixGroup0025Row0070_passes,
    k5PrefixGroup0025Row0071_passes,
    k5PrefixGroup0025Row0072_passes,
    k5PrefixGroup0025Row0073_passes,
    k5PrefixGroup0025Row0074_passes,
    k5PrefixGroup0025Row0075_passes,
    k5PrefixGroup0025Row0076_passes,
    k5PrefixGroup0025Row0077_passes,
    k5PrefixGroup0025Row0078_passes,
    k5PrefixGroup0025Row0079_passes,
    k5PrefixGroup0025Row0080_passes,
    k5PrefixGroup0025Row0081_passes,
    k5PrefixGroup0025Row0082_passes,
    k5PrefixGroup0025Row0083_passes,
    k5PrefixGroup0025Row0084_passes,
    k5PrefixGroup0025Row0085_passes,
    k5PrefixGroup0025Row0086_passes,
    k5PrefixGroup0025Row0087_passes,
    k5PrefixGroup0025Row0088_passes,
    k5PrefixGroup0025Row0089_passes,
    k5PrefixGroup0025Row0090_passes,
    k5PrefixGroup0025Row0091_passes,
    k5PrefixGroup0025Row0092_passes,
    k5PrefixGroup0025Row0093_passes,
    k5PrefixGroup0025Row0094_passes,
    k5PrefixGroup0025Row0095_passes,
    k5PrefixGroup0025Row0096_passes,
    k5PrefixGroup0025Row0097_passes,
    k5PrefixGroup0025Row0098_passes,
    k5PrefixGroup0025Row0099_passes,
    k5PrefixGroup0025Row0100_passes,
    k5PrefixGroup0025Row0101_passes,
    k5PrefixGroup0025Row0102_passes,
    k5PrefixGroup0025Row0103_passes,
    k5PrefixGroup0025Row0104_passes,
    k5PrefixGroup0025Row0105_passes,
    k5PrefixGroup0025Row0106_passes,
    k5PrefixGroup0025Row0107_passes,
    k5PrefixGroup0025Row0108_passes,
    k5PrefixGroup0025Row0109_passes,
    k5PrefixGroup0025Row0110_passes,
    k5PrefixGroup0025Row0111_passes,
    k5PrefixGroup0025Row0112_passes,
    k5PrefixGroup0025Row0113_passes,
    k5PrefixGroup0025Row0114_passes,
    k5PrefixGroup0025Row0115_passes,
    k5PrefixGroup0025Row0116_passes,
    k5PrefixGroup0025Row0117_passes,
    k5PrefixGroup0025Row0118_passes,
    k5PrefixGroup0025Row0119_passes,
    k5PrefixGroup0025Row0120_passes,
    k5PrefixGroup0025Row0121_passes,
    k5PrefixGroup0025Row0122_passes,
    k5PrefixGroup0025Row0123_passes,
    k5PrefixGroup0025Row0124_passes,
    k5PrefixGroup0025Row0125_passes,
    k5PrefixGroup0025Row0126_passes,
    k5PrefixGroup0025Row0127_passes]

theorem k5PrefixGroup0025_mask_upper :
    k5PrefixGroup0025.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0025, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0025Row0000_mask_upper,
    k5PrefixGroup0025Row0001_mask_upper,
    k5PrefixGroup0025Row0002_mask_upper,
    k5PrefixGroup0025Row0003_mask_upper,
    k5PrefixGroup0025Row0004_mask_upper,
    k5PrefixGroup0025Row0005_mask_upper,
    k5PrefixGroup0025Row0006_mask_upper,
    k5PrefixGroup0025Row0007_mask_upper,
    k5PrefixGroup0025Row0008_mask_upper,
    k5PrefixGroup0025Row0009_mask_upper,
    k5PrefixGroup0025Row0010_mask_upper,
    k5PrefixGroup0025Row0011_mask_upper,
    k5PrefixGroup0025Row0012_mask_upper,
    k5PrefixGroup0025Row0013_mask_upper,
    k5PrefixGroup0025Row0014_mask_upper,
    k5PrefixGroup0025Row0015_mask_upper,
    k5PrefixGroup0025Row0016_mask_upper,
    k5PrefixGroup0025Row0017_mask_upper,
    k5PrefixGroup0025Row0018_mask_upper,
    k5PrefixGroup0025Row0019_mask_upper,
    k5PrefixGroup0025Row0020_mask_upper,
    k5PrefixGroup0025Row0021_mask_upper,
    k5PrefixGroup0025Row0022_mask_upper,
    k5PrefixGroup0025Row0023_mask_upper,
    k5PrefixGroup0025Row0024_mask_upper,
    k5PrefixGroup0025Row0025_mask_upper,
    k5PrefixGroup0025Row0026_mask_upper,
    k5PrefixGroup0025Row0027_mask_upper,
    k5PrefixGroup0025Row0028_mask_upper,
    k5PrefixGroup0025Row0029_mask_upper,
    k5PrefixGroup0025Row0030_mask_upper,
    k5PrefixGroup0025Row0031_mask_upper,
    k5PrefixGroup0025Row0032_mask_upper,
    k5PrefixGroup0025Row0033_mask_upper,
    k5PrefixGroup0025Row0034_mask_upper,
    k5PrefixGroup0025Row0035_mask_upper,
    k5PrefixGroup0025Row0036_mask_upper,
    k5PrefixGroup0025Row0037_mask_upper,
    k5PrefixGroup0025Row0038_mask_upper,
    k5PrefixGroup0025Row0039_mask_upper,
    k5PrefixGroup0025Row0040_mask_upper,
    k5PrefixGroup0025Row0041_mask_upper,
    k5PrefixGroup0025Row0042_mask_upper,
    k5PrefixGroup0025Row0043_mask_upper,
    k5PrefixGroup0025Row0044_mask_upper,
    k5PrefixGroup0025Row0045_mask_upper,
    k5PrefixGroup0025Row0046_mask_upper,
    k5PrefixGroup0025Row0047_mask_upper,
    k5PrefixGroup0025Row0048_mask_upper,
    k5PrefixGroup0025Row0049_mask_upper,
    k5PrefixGroup0025Row0050_mask_upper,
    k5PrefixGroup0025Row0051_mask_upper,
    k5PrefixGroup0025Row0052_mask_upper,
    k5PrefixGroup0025Row0053_mask_upper,
    k5PrefixGroup0025Row0054_mask_upper,
    k5PrefixGroup0025Row0055_mask_upper,
    k5PrefixGroup0025Row0056_mask_upper,
    k5PrefixGroup0025Row0057_mask_upper,
    k5PrefixGroup0025Row0058_mask_upper,
    k5PrefixGroup0025Row0059_mask_upper,
    k5PrefixGroup0025Row0060_mask_upper,
    k5PrefixGroup0025Row0061_mask_upper,
    k5PrefixGroup0025Row0062_mask_upper,
    k5PrefixGroup0025Row0063_mask_upper,
    k5PrefixGroup0025Row0064_mask_upper,
    k5PrefixGroup0025Row0065_mask_upper,
    k5PrefixGroup0025Row0066_mask_upper,
    k5PrefixGroup0025Row0067_mask_upper,
    k5PrefixGroup0025Row0068_mask_upper,
    k5PrefixGroup0025Row0069_mask_upper,
    k5PrefixGroup0025Row0070_mask_upper,
    k5PrefixGroup0025Row0071_mask_upper,
    k5PrefixGroup0025Row0072_mask_upper,
    k5PrefixGroup0025Row0073_mask_upper,
    k5PrefixGroup0025Row0074_mask_upper,
    k5PrefixGroup0025Row0075_mask_upper,
    k5PrefixGroup0025Row0076_mask_upper,
    k5PrefixGroup0025Row0077_mask_upper,
    k5PrefixGroup0025Row0078_mask_upper,
    k5PrefixGroup0025Row0079_mask_upper,
    k5PrefixGroup0025Row0080_mask_upper,
    k5PrefixGroup0025Row0081_mask_upper,
    k5PrefixGroup0025Row0082_mask_upper,
    k5PrefixGroup0025Row0083_mask_upper,
    k5PrefixGroup0025Row0084_mask_upper,
    k5PrefixGroup0025Row0085_mask_upper,
    k5PrefixGroup0025Row0086_mask_upper,
    k5PrefixGroup0025Row0087_mask_upper,
    k5PrefixGroup0025Row0088_mask_upper,
    k5PrefixGroup0025Row0089_mask_upper,
    k5PrefixGroup0025Row0090_mask_upper,
    k5PrefixGroup0025Row0091_mask_upper,
    k5PrefixGroup0025Row0092_mask_upper,
    k5PrefixGroup0025Row0093_mask_upper,
    k5PrefixGroup0025Row0094_mask_upper,
    k5PrefixGroup0025Row0095_mask_upper,
    k5PrefixGroup0025Row0096_mask_upper,
    k5PrefixGroup0025Row0097_mask_upper,
    k5PrefixGroup0025Row0098_mask_upper,
    k5PrefixGroup0025Row0099_mask_upper,
    k5PrefixGroup0025Row0100_mask_upper,
    k5PrefixGroup0025Row0101_mask_upper,
    k5PrefixGroup0025Row0102_mask_upper,
    k5PrefixGroup0025Row0103_mask_upper,
    k5PrefixGroup0025Row0104_mask_upper,
    k5PrefixGroup0025Row0105_mask_upper,
    k5PrefixGroup0025Row0106_mask_upper,
    k5PrefixGroup0025Row0107_mask_upper,
    k5PrefixGroup0025Row0108_mask_upper,
    k5PrefixGroup0025Row0109_mask_upper,
    k5PrefixGroup0025Row0110_mask_upper,
    k5PrefixGroup0025Row0111_mask_upper,
    k5PrefixGroup0025Row0112_mask_upper,
    k5PrefixGroup0025Row0113_mask_upper,
    k5PrefixGroup0025Row0114_mask_upper,
    k5PrefixGroup0025Row0115_mask_upper,
    k5PrefixGroup0025Row0116_mask_upper,
    k5PrefixGroup0025Row0117_mask_upper,
    k5PrefixGroup0025Row0118_mask_upper,
    k5PrefixGroup0025Row0119_mask_upper,
    k5PrefixGroup0025Row0120_mask_upper,
    k5PrefixGroup0025Row0121_mask_upper,
    k5PrefixGroup0025Row0122_mask_upper,
    k5PrefixGroup0025Row0123_mask_upper,
    k5PrefixGroup0025Row0124_mask_upper,
    k5PrefixGroup0025Row0125_mask_upper,
    k5PrefixGroup0025Row0126_mask_upper,
    k5PrefixGroup0025Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
