import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0028 : List (List ℕ) :=
  [[3, 19, 47, 179],
     [3, 19, 47, 181],
     [3, 19, 53, 59],
     [3, 19, 53, 61],
     [3, 19, 53, 67],
     [3, 19, 53, 71],
     [3, 19, 53, 73],
     [3, 19, 53, 79],
     [3, 19, 53, 83],
     [3, 19, 53, 89],
     [3, 19, 53, 97],
     [3, 19, 53, 101],
     [3, 19, 53, 103],
     [3, 19, 53, 107],
     [3, 19, 53, 109],
     [3, 19, 53, 113],
     [3, 19, 53, 127],
     [3, 19, 53, 131],
     [3, 19, 53, 137],
     [3, 19, 53, 139],
     [3, 19, 53, 149],
     [3, 19, 53, 151],
     [3, 19, 53, 157],
     [3, 19, 53, 163],
     [3, 19, 53, 167],
     [3, 19, 53, 173],
     [3, 19, 59, 61],
     [3, 19, 59, 67],
     [3, 19, 59, 71],
     [3, 19, 59, 73],
     [3, 19, 59, 79],
     [3, 19, 59, 83],
     [3, 19, 59, 89],
     [3, 19, 59, 97],
     [3, 19, 59, 101],
     [3, 19, 59, 103],
     [3, 19, 59, 107],
     [3, 19, 59, 109],
     [3, 19, 59, 113],
     [3, 19, 59, 127],
     [3, 19, 59, 131],
     [3, 19, 59, 137],
     [3, 19, 59, 139],
     [3, 19, 59, 149],
     [3, 19, 59, 151],
     [3, 19, 59, 157],
     [3, 19, 59, 163],
     [3, 19, 61, 67],
     [3, 19, 61, 71],
     [3, 19, 61, 73],
     [3, 19, 61, 79],
     [3, 19, 61, 83],
     [3, 19, 61, 89],
     [3, 19, 61, 97],
     [3, 19, 61, 101],
     [3, 19, 61, 103],
     [3, 19, 61, 107],
     [3, 19, 61, 109],
     [3, 19, 61, 113],
     [3, 19, 61, 127],
     [3, 19, 61, 131],
     [3, 19, 61, 137],
     [3, 19, 61, 139],
     [3, 19, 61, 149],
     [3, 19, 61, 151],
     [3, 19, 61, 157],
     [3, 19, 61, 163],
     [3, 19, 67, 71],
     [3, 19, 67, 73],
     [3, 19, 67, 79],
     [3, 19, 67, 83],
     [3, 19, 67, 89],
     [3, 19, 67, 97],
     [3, 19, 67, 101],
     [3, 19, 67, 103],
     [3, 19, 67, 107],
     [3, 19, 67, 109],
     [3, 19, 67, 113],
     [3, 19, 67, 127],
     [3, 19, 67, 131],
     [3, 19, 67, 137],
     [3, 19, 67, 139],
     [3, 19, 67, 149],
     [3, 19, 67, 151],
     [3, 19, 71, 73],
     [3, 19, 71, 79],
     [3, 19, 71, 83],
     [3, 19, 71, 89],
     [3, 19, 71, 97],
     [3, 19, 71, 101],
     [3, 19, 71, 103],
     [3, 19, 71, 107],
     [3, 19, 71, 109],
     [3, 19, 71, 113],
     [3, 19, 71, 127],
     [3, 19, 71, 131],
     [3, 19, 71, 137],
     [3, 19, 71, 139],
     [3, 19, 71, 149],
     [3, 19, 71, 151],
     [3, 19, 73, 79],
     [3, 19, 73, 83],
     [3, 19, 73, 89],
     [3, 19, 73, 97],
     [3, 19, 73, 101],
     [3, 19, 73, 103],
     [3, 19, 73, 107],
     [3, 19, 73, 109],
     [3, 19, 73, 113],
     [3, 19, 73, 127],
     [3, 19, 73, 131],
     [3, 19, 73, 137],
     [3, 19, 73, 139],
     [3, 19, 73, 149],
     [3, 19, 79, 83],
     [3, 19, 79, 89],
     [3, 19, 79, 97],
     [3, 19, 79, 101],
     [3, 19, 79, 103],
     [3, 19, 79, 107],
     [3, 19, 79, 109],
     [3, 19, 79, 113],
     [3, 19, 79, 127],
     [3, 19, 79, 131],
     [3, 19, 79, 137],
     [3, 19, 79, 139],
     [3, 19, 83, 89],
     [3, 19, 83, 97]]

theorem k5PrefixGroup0028Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 47, 179] = true := by
  decide

theorem k5PrefixGroup0028Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 47, 179] = true := by
  decide

theorem k5PrefixGroup0028Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 47, 181] = true := by
  decide

theorem k5PrefixGroup0028Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 47, 181] = true := by
  decide

theorem k5PrefixGroup0028Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 59] = true := by
  decide

theorem k5PrefixGroup0028Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 59] = true := by
  decide

theorem k5PrefixGroup0028Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 61] = true := by
  decide

theorem k5PrefixGroup0028Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 61] = true := by
  decide

theorem k5PrefixGroup0028Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 167] = true := by
  decide

theorem k5PrefixGroup0028Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 167] = true := by
  decide

theorem k5PrefixGroup0028Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 53, 173] = true := by
  decide

theorem k5PrefixGroup0028Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 53, 173] = true := by
  decide

theorem k5PrefixGroup0028Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 61] = true := by
  decide

theorem k5PrefixGroup0028Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 61] = true := by
  decide

theorem k5PrefixGroup0028Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 59, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 59, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 67] = true := by
  decide

theorem k5PrefixGroup0028Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 157] = true := by
  decide

theorem k5PrefixGroup0028Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 61, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 61, 163] = true := by
  decide

theorem k5PrefixGroup0028Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 71] = true := by
  decide

theorem k5PrefixGroup0028Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 67, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 67, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 73] = true := by
  decide

theorem k5PrefixGroup0028Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 71, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 71, 151] = true := by
  decide

theorem k5PrefixGroup0028Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 79] = true := by
  decide

theorem k5PrefixGroup0028Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 73, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 73, 149] = true := by
  decide

theorem k5PrefixGroup0028Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 83] = true := by
  decide

theorem k5PrefixGroup0028Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 101] = true := by
  decide

theorem k5PrefixGroup0028Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 103] = true := by
  decide

theorem k5PrefixGroup0028Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 107] = true := by
  decide

theorem k5PrefixGroup0028Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 109] = true := by
  decide

theorem k5PrefixGroup0028Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 113] = true := by
  decide

theorem k5PrefixGroup0028Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 127] = true := by
  decide

theorem k5PrefixGroup0028Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 131] = true := by
  decide

theorem k5PrefixGroup0028Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 137] = true := by
  decide

theorem k5PrefixGroup0028Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 79, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 79, 139] = true := by
  decide

theorem k5PrefixGroup0028Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 83, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 83, 89] = true := by
  decide

theorem k5PrefixGroup0028Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 19, 83, 97] = true := by
  decide

theorem k5PrefixGroup0028Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 19, 83, 97] = true := by
  decide

theorem k5PrefixGroup0028_passes :
    k5PrefixGroup0028.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0028, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0028Row0000_passes,
    k5PrefixGroup0028Row0001_passes,
    k5PrefixGroup0028Row0002_passes,
    k5PrefixGroup0028Row0003_passes,
    k5PrefixGroup0028Row0004_passes,
    k5PrefixGroup0028Row0005_passes,
    k5PrefixGroup0028Row0006_passes,
    k5PrefixGroup0028Row0007_passes,
    k5PrefixGroup0028Row0008_passes,
    k5PrefixGroup0028Row0009_passes,
    k5PrefixGroup0028Row0010_passes,
    k5PrefixGroup0028Row0011_passes,
    k5PrefixGroup0028Row0012_passes,
    k5PrefixGroup0028Row0013_passes,
    k5PrefixGroup0028Row0014_passes,
    k5PrefixGroup0028Row0015_passes,
    k5PrefixGroup0028Row0016_passes,
    k5PrefixGroup0028Row0017_passes,
    k5PrefixGroup0028Row0018_passes,
    k5PrefixGroup0028Row0019_passes,
    k5PrefixGroup0028Row0020_passes,
    k5PrefixGroup0028Row0021_passes,
    k5PrefixGroup0028Row0022_passes,
    k5PrefixGroup0028Row0023_passes,
    k5PrefixGroup0028Row0024_passes,
    k5PrefixGroup0028Row0025_passes,
    k5PrefixGroup0028Row0026_passes,
    k5PrefixGroup0028Row0027_passes,
    k5PrefixGroup0028Row0028_passes,
    k5PrefixGroup0028Row0029_passes,
    k5PrefixGroup0028Row0030_passes,
    k5PrefixGroup0028Row0031_passes,
    k5PrefixGroup0028Row0032_passes,
    k5PrefixGroup0028Row0033_passes,
    k5PrefixGroup0028Row0034_passes,
    k5PrefixGroup0028Row0035_passes,
    k5PrefixGroup0028Row0036_passes,
    k5PrefixGroup0028Row0037_passes,
    k5PrefixGroup0028Row0038_passes,
    k5PrefixGroup0028Row0039_passes,
    k5PrefixGroup0028Row0040_passes,
    k5PrefixGroup0028Row0041_passes,
    k5PrefixGroup0028Row0042_passes,
    k5PrefixGroup0028Row0043_passes,
    k5PrefixGroup0028Row0044_passes,
    k5PrefixGroup0028Row0045_passes,
    k5PrefixGroup0028Row0046_passes,
    k5PrefixGroup0028Row0047_passes,
    k5PrefixGroup0028Row0048_passes,
    k5PrefixGroup0028Row0049_passes,
    k5PrefixGroup0028Row0050_passes,
    k5PrefixGroup0028Row0051_passes,
    k5PrefixGroup0028Row0052_passes,
    k5PrefixGroup0028Row0053_passes,
    k5PrefixGroup0028Row0054_passes,
    k5PrefixGroup0028Row0055_passes,
    k5PrefixGroup0028Row0056_passes,
    k5PrefixGroup0028Row0057_passes,
    k5PrefixGroup0028Row0058_passes,
    k5PrefixGroup0028Row0059_passes,
    k5PrefixGroup0028Row0060_passes,
    k5PrefixGroup0028Row0061_passes,
    k5PrefixGroup0028Row0062_passes,
    k5PrefixGroup0028Row0063_passes,
    k5PrefixGroup0028Row0064_passes,
    k5PrefixGroup0028Row0065_passes,
    k5PrefixGroup0028Row0066_passes,
    k5PrefixGroup0028Row0067_passes,
    k5PrefixGroup0028Row0068_passes,
    k5PrefixGroup0028Row0069_passes,
    k5PrefixGroup0028Row0070_passes,
    k5PrefixGroup0028Row0071_passes,
    k5PrefixGroup0028Row0072_passes,
    k5PrefixGroup0028Row0073_passes,
    k5PrefixGroup0028Row0074_passes,
    k5PrefixGroup0028Row0075_passes,
    k5PrefixGroup0028Row0076_passes,
    k5PrefixGroup0028Row0077_passes,
    k5PrefixGroup0028Row0078_passes,
    k5PrefixGroup0028Row0079_passes,
    k5PrefixGroup0028Row0080_passes,
    k5PrefixGroup0028Row0081_passes,
    k5PrefixGroup0028Row0082_passes,
    k5PrefixGroup0028Row0083_passes,
    k5PrefixGroup0028Row0084_passes,
    k5PrefixGroup0028Row0085_passes,
    k5PrefixGroup0028Row0086_passes,
    k5PrefixGroup0028Row0087_passes,
    k5PrefixGroup0028Row0088_passes,
    k5PrefixGroup0028Row0089_passes,
    k5PrefixGroup0028Row0090_passes,
    k5PrefixGroup0028Row0091_passes,
    k5PrefixGroup0028Row0092_passes,
    k5PrefixGroup0028Row0093_passes,
    k5PrefixGroup0028Row0094_passes,
    k5PrefixGroup0028Row0095_passes,
    k5PrefixGroup0028Row0096_passes,
    k5PrefixGroup0028Row0097_passes,
    k5PrefixGroup0028Row0098_passes,
    k5PrefixGroup0028Row0099_passes,
    k5PrefixGroup0028Row0100_passes,
    k5PrefixGroup0028Row0101_passes,
    k5PrefixGroup0028Row0102_passes,
    k5PrefixGroup0028Row0103_passes,
    k5PrefixGroup0028Row0104_passes,
    k5PrefixGroup0028Row0105_passes,
    k5PrefixGroup0028Row0106_passes,
    k5PrefixGroup0028Row0107_passes,
    k5PrefixGroup0028Row0108_passes,
    k5PrefixGroup0028Row0109_passes,
    k5PrefixGroup0028Row0110_passes,
    k5PrefixGroup0028Row0111_passes,
    k5PrefixGroup0028Row0112_passes,
    k5PrefixGroup0028Row0113_passes,
    k5PrefixGroup0028Row0114_passes,
    k5PrefixGroup0028Row0115_passes,
    k5PrefixGroup0028Row0116_passes,
    k5PrefixGroup0028Row0117_passes,
    k5PrefixGroup0028Row0118_passes,
    k5PrefixGroup0028Row0119_passes,
    k5PrefixGroup0028Row0120_passes,
    k5PrefixGroup0028Row0121_passes,
    k5PrefixGroup0028Row0122_passes,
    k5PrefixGroup0028Row0123_passes,
    k5PrefixGroup0028Row0124_passes,
    k5PrefixGroup0028Row0125_passes,
    k5PrefixGroup0028Row0126_passes,
    k5PrefixGroup0028Row0127_passes]

theorem k5PrefixGroup0028_mask_upper :
    k5PrefixGroup0028.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0028, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0028Row0000_mask_upper,
    k5PrefixGroup0028Row0001_mask_upper,
    k5PrefixGroup0028Row0002_mask_upper,
    k5PrefixGroup0028Row0003_mask_upper,
    k5PrefixGroup0028Row0004_mask_upper,
    k5PrefixGroup0028Row0005_mask_upper,
    k5PrefixGroup0028Row0006_mask_upper,
    k5PrefixGroup0028Row0007_mask_upper,
    k5PrefixGroup0028Row0008_mask_upper,
    k5PrefixGroup0028Row0009_mask_upper,
    k5PrefixGroup0028Row0010_mask_upper,
    k5PrefixGroup0028Row0011_mask_upper,
    k5PrefixGroup0028Row0012_mask_upper,
    k5PrefixGroup0028Row0013_mask_upper,
    k5PrefixGroup0028Row0014_mask_upper,
    k5PrefixGroup0028Row0015_mask_upper,
    k5PrefixGroup0028Row0016_mask_upper,
    k5PrefixGroup0028Row0017_mask_upper,
    k5PrefixGroup0028Row0018_mask_upper,
    k5PrefixGroup0028Row0019_mask_upper,
    k5PrefixGroup0028Row0020_mask_upper,
    k5PrefixGroup0028Row0021_mask_upper,
    k5PrefixGroup0028Row0022_mask_upper,
    k5PrefixGroup0028Row0023_mask_upper,
    k5PrefixGroup0028Row0024_mask_upper,
    k5PrefixGroup0028Row0025_mask_upper,
    k5PrefixGroup0028Row0026_mask_upper,
    k5PrefixGroup0028Row0027_mask_upper,
    k5PrefixGroup0028Row0028_mask_upper,
    k5PrefixGroup0028Row0029_mask_upper,
    k5PrefixGroup0028Row0030_mask_upper,
    k5PrefixGroup0028Row0031_mask_upper,
    k5PrefixGroup0028Row0032_mask_upper,
    k5PrefixGroup0028Row0033_mask_upper,
    k5PrefixGroup0028Row0034_mask_upper,
    k5PrefixGroup0028Row0035_mask_upper,
    k5PrefixGroup0028Row0036_mask_upper,
    k5PrefixGroup0028Row0037_mask_upper,
    k5PrefixGroup0028Row0038_mask_upper,
    k5PrefixGroup0028Row0039_mask_upper,
    k5PrefixGroup0028Row0040_mask_upper,
    k5PrefixGroup0028Row0041_mask_upper,
    k5PrefixGroup0028Row0042_mask_upper,
    k5PrefixGroup0028Row0043_mask_upper,
    k5PrefixGroup0028Row0044_mask_upper,
    k5PrefixGroup0028Row0045_mask_upper,
    k5PrefixGroup0028Row0046_mask_upper,
    k5PrefixGroup0028Row0047_mask_upper,
    k5PrefixGroup0028Row0048_mask_upper,
    k5PrefixGroup0028Row0049_mask_upper,
    k5PrefixGroup0028Row0050_mask_upper,
    k5PrefixGroup0028Row0051_mask_upper,
    k5PrefixGroup0028Row0052_mask_upper,
    k5PrefixGroup0028Row0053_mask_upper,
    k5PrefixGroup0028Row0054_mask_upper,
    k5PrefixGroup0028Row0055_mask_upper,
    k5PrefixGroup0028Row0056_mask_upper,
    k5PrefixGroup0028Row0057_mask_upper,
    k5PrefixGroup0028Row0058_mask_upper,
    k5PrefixGroup0028Row0059_mask_upper,
    k5PrefixGroup0028Row0060_mask_upper,
    k5PrefixGroup0028Row0061_mask_upper,
    k5PrefixGroup0028Row0062_mask_upper,
    k5PrefixGroup0028Row0063_mask_upper,
    k5PrefixGroup0028Row0064_mask_upper,
    k5PrefixGroup0028Row0065_mask_upper,
    k5PrefixGroup0028Row0066_mask_upper,
    k5PrefixGroup0028Row0067_mask_upper,
    k5PrefixGroup0028Row0068_mask_upper,
    k5PrefixGroup0028Row0069_mask_upper,
    k5PrefixGroup0028Row0070_mask_upper,
    k5PrefixGroup0028Row0071_mask_upper,
    k5PrefixGroup0028Row0072_mask_upper,
    k5PrefixGroup0028Row0073_mask_upper,
    k5PrefixGroup0028Row0074_mask_upper,
    k5PrefixGroup0028Row0075_mask_upper,
    k5PrefixGroup0028Row0076_mask_upper,
    k5PrefixGroup0028Row0077_mask_upper,
    k5PrefixGroup0028Row0078_mask_upper,
    k5PrefixGroup0028Row0079_mask_upper,
    k5PrefixGroup0028Row0080_mask_upper,
    k5PrefixGroup0028Row0081_mask_upper,
    k5PrefixGroup0028Row0082_mask_upper,
    k5PrefixGroup0028Row0083_mask_upper,
    k5PrefixGroup0028Row0084_mask_upper,
    k5PrefixGroup0028Row0085_mask_upper,
    k5PrefixGroup0028Row0086_mask_upper,
    k5PrefixGroup0028Row0087_mask_upper,
    k5PrefixGroup0028Row0088_mask_upper,
    k5PrefixGroup0028Row0089_mask_upper,
    k5PrefixGroup0028Row0090_mask_upper,
    k5PrefixGroup0028Row0091_mask_upper,
    k5PrefixGroup0028Row0092_mask_upper,
    k5PrefixGroup0028Row0093_mask_upper,
    k5PrefixGroup0028Row0094_mask_upper,
    k5PrefixGroup0028Row0095_mask_upper,
    k5PrefixGroup0028Row0096_mask_upper,
    k5PrefixGroup0028Row0097_mask_upper,
    k5PrefixGroup0028Row0098_mask_upper,
    k5PrefixGroup0028Row0099_mask_upper,
    k5PrefixGroup0028Row0100_mask_upper,
    k5PrefixGroup0028Row0101_mask_upper,
    k5PrefixGroup0028Row0102_mask_upper,
    k5PrefixGroup0028Row0103_mask_upper,
    k5PrefixGroup0028Row0104_mask_upper,
    k5PrefixGroup0028Row0105_mask_upper,
    k5PrefixGroup0028Row0106_mask_upper,
    k5PrefixGroup0028Row0107_mask_upper,
    k5PrefixGroup0028Row0108_mask_upper,
    k5PrefixGroup0028Row0109_mask_upper,
    k5PrefixGroup0028Row0110_mask_upper,
    k5PrefixGroup0028Row0111_mask_upper,
    k5PrefixGroup0028Row0112_mask_upper,
    k5PrefixGroup0028Row0113_mask_upper,
    k5PrefixGroup0028Row0114_mask_upper,
    k5PrefixGroup0028Row0115_mask_upper,
    k5PrefixGroup0028Row0116_mask_upper,
    k5PrefixGroup0028Row0117_mask_upper,
    k5PrefixGroup0028Row0118_mask_upper,
    k5PrefixGroup0028Row0119_mask_upper,
    k5PrefixGroup0028Row0120_mask_upper,
    k5PrefixGroup0028Row0121_mask_upper,
    k5PrefixGroup0028Row0122_mask_upper,
    k5PrefixGroup0028Row0123_mask_upper,
    k5PrefixGroup0028Row0124_mask_upper,
    k5PrefixGroup0028Row0125_mask_upper,
    k5PrefixGroup0028Row0126_mask_upper,
    k5PrefixGroup0028Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
