import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0040 : List (List ℕ) :=
  [[7, 11, 37, 41],
     [7, 11, 37, 43],
     [7, 11, 37, 47],
     [7, 11, 37, 53],
     [7, 11, 37, 59],
     [7, 11, 37, 61],
     [7, 11, 37, 67],
     [7, 11, 37, 71],
     [7, 11, 37, 73],
     [7, 11, 37, 79],
     [7, 11, 37, 83],
     [7, 11, 37, 89],
     [7, 11, 37, 97],
     [7, 11, 37, 101],
     [7, 11, 37, 103],
     [7, 11, 37, 107],
     [7, 11, 37, 109],
     [7, 11, 37, 113],
     [7, 11, 37, 127],
     [7, 11, 37, 131],
     [7, 11, 37, 137],
     [7, 11, 37, 139],
     [7, 11, 37, 149],
     [7, 11, 37, 151],
     [7, 11, 37, 157],
     [7, 11, 37, 163],
     [7, 11, 37, 167],
     [7, 11, 37, 173],
     [7, 11, 37, 179],
     [7, 11, 41, 43],
     [7, 11, 41, 47],
     [7, 11, 41, 53],
     [7, 11, 41, 59],
     [7, 11, 41, 61],
     [7, 11, 41, 67],
     [7, 11, 41, 71],
     [7, 11, 41, 73],
     [7, 11, 41, 79],
     [7, 11, 41, 83],
     [7, 11, 41, 89],
     [7, 11, 41, 97],
     [7, 11, 41, 101],
     [7, 11, 41, 103],
     [7, 11, 41, 107],
     [7, 11, 41, 109],
     [7, 11, 41, 113],
     [7, 11, 41, 127],
     [7, 11, 41, 131],
     [7, 11, 41, 137],
     [7, 11, 41, 139],
     [7, 11, 41, 149],
     [7, 11, 41, 151],
     [7, 11, 41, 157],
     [7, 11, 41, 163],
     [7, 11, 41, 167],
     [7, 11, 43, 47],
     [7, 11, 43, 53],
     [7, 11, 43, 59],
     [7, 11, 43, 61],
     [7, 11, 43, 67],
     [7, 11, 43, 71],
     [7, 11, 43, 73],
     [7, 11, 43, 79],
     [7, 11, 43, 83],
     [7, 11, 43, 89],
     [7, 11, 43, 97],
     [7, 11, 43, 101],
     [7, 11, 43, 103],
     [7, 11, 43, 107],
     [7, 11, 43, 109],
     [7, 11, 43, 113],
     [7, 11, 43, 127],
     [7, 11, 43, 131],
     [7, 11, 43, 137],
     [7, 11, 43, 139],
     [7, 11, 43, 149],
     [7, 11, 43, 151],
     [7, 11, 43, 157],
     [7, 11, 43, 163],
     [7, 11, 43, 167],
     [7, 11, 47, 53],
     [7, 11, 47, 59],
     [7, 11, 47, 61],
     [7, 11, 47, 67],
     [7, 11, 47, 71],
     [7, 11, 47, 73],
     [7, 11, 47, 79],
     [7, 11, 47, 83],
     [7, 11, 47, 89],
     [7, 11, 47, 97],
     [7, 11, 47, 101],
     [7, 11, 47, 103],
     [7, 11, 47, 107],
     [7, 11, 47, 109],
     [7, 11, 47, 113],
     [7, 11, 47, 127],
     [7, 11, 47, 131],
     [7, 11, 47, 137],
     [7, 11, 47, 139],
     [7, 11, 47, 149],
     [7, 11, 47, 151],
     [7, 11, 47, 157],
     [7, 11, 53, 59],
     [7, 11, 53, 61],
     [7, 11, 53, 67],
     [7, 11, 53, 71],
     [7, 11, 53, 73],
     [7, 11, 53, 79],
     [7, 11, 53, 83],
     [7, 11, 53, 89],
     [7, 11, 53, 97],
     [7, 11, 53, 101],
     [7, 11, 53, 103],
     [7, 11, 53, 107],
     [7, 11, 53, 109],
     [7, 11, 53, 113],
     [7, 11, 53, 127],
     [7, 11, 53, 131],
     [7, 11, 53, 137],
     [7, 11, 53, 139],
     [7, 11, 53, 149],
     [7, 11, 59, 61],
     [7, 11, 59, 67],
     [7, 11, 59, 71],
     [7, 11, 59, 73],
     [7, 11, 59, 79],
     [7, 11, 59, 83],
     [7, 11, 59, 89]]

theorem k5PrefixGroup0040Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 41] = true := by
  decide

theorem k5PrefixGroup0040Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 41] = true := by
  decide

theorem k5PrefixGroup0040Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 43] = true := by
  decide

theorem k5PrefixGroup0040Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 43] = true := by
  decide

theorem k5PrefixGroup0040Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 173] = true := by
  decide

theorem k5PrefixGroup0040Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 173] = true := by
  decide

theorem k5PrefixGroup0040Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 37, 179] = true := by
  decide

theorem k5PrefixGroup0040Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 37, 179] = true := by
  decide

theorem k5PrefixGroup0040Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 43] = true := by
  decide

theorem k5PrefixGroup0040Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 43] = true := by
  decide

theorem k5PrefixGroup0040Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 41, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 41, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 47] = true := by
  decide

theorem k5PrefixGroup0040Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 163] = true := by
  decide

theorem k5PrefixGroup0040Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 43, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 43, 167] = true := by
  decide

theorem k5PrefixGroup0040Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 53] = true := by
  decide

theorem k5PrefixGroup0040Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 151] = true := by
  decide

theorem k5PrefixGroup0040Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 47, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 47, 157] = true := by
  decide

theorem k5PrefixGroup0040Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 59] = true := by
  decide

theorem k5PrefixGroup0040Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 97] = true := by
  decide

theorem k5PrefixGroup0040Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 101] = true := by
  decide

theorem k5PrefixGroup0040Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 103] = true := by
  decide

theorem k5PrefixGroup0040Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 107] = true := by
  decide

theorem k5PrefixGroup0040Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 109] = true := by
  decide

theorem k5PrefixGroup0040Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 113] = true := by
  decide

theorem k5PrefixGroup0040Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 127] = true := by
  decide

theorem k5PrefixGroup0040Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 131] = true := by
  decide

theorem k5PrefixGroup0040Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 137] = true := by
  decide

theorem k5PrefixGroup0040Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 139] = true := by
  decide

theorem k5PrefixGroup0040Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 53, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 53, 149] = true := by
  decide

theorem k5PrefixGroup0040Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 61] = true := by
  decide

theorem k5PrefixGroup0040Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 67] = true := by
  decide

theorem k5PrefixGroup0040Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 71] = true := by
  decide

theorem k5PrefixGroup0040Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 73] = true := by
  decide

theorem k5PrefixGroup0040Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 79] = true := by
  decide

theorem k5PrefixGroup0040Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 83] = true := by
  decide

theorem k5PrefixGroup0040Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 89] = true := by
  decide

theorem k5PrefixGroup0040Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 89] = true := by
  decide

theorem k5PrefixGroup0040_passes :
    k5PrefixGroup0040.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0040, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0040Row0000_passes,
    k5PrefixGroup0040Row0001_passes,
    k5PrefixGroup0040Row0002_passes,
    k5PrefixGroup0040Row0003_passes,
    k5PrefixGroup0040Row0004_passes,
    k5PrefixGroup0040Row0005_passes,
    k5PrefixGroup0040Row0006_passes,
    k5PrefixGroup0040Row0007_passes,
    k5PrefixGroup0040Row0008_passes,
    k5PrefixGroup0040Row0009_passes,
    k5PrefixGroup0040Row0010_passes,
    k5PrefixGroup0040Row0011_passes,
    k5PrefixGroup0040Row0012_passes,
    k5PrefixGroup0040Row0013_passes,
    k5PrefixGroup0040Row0014_passes,
    k5PrefixGroup0040Row0015_passes,
    k5PrefixGroup0040Row0016_passes,
    k5PrefixGroup0040Row0017_passes,
    k5PrefixGroup0040Row0018_passes,
    k5PrefixGroup0040Row0019_passes,
    k5PrefixGroup0040Row0020_passes,
    k5PrefixGroup0040Row0021_passes,
    k5PrefixGroup0040Row0022_passes,
    k5PrefixGroup0040Row0023_passes,
    k5PrefixGroup0040Row0024_passes,
    k5PrefixGroup0040Row0025_passes,
    k5PrefixGroup0040Row0026_passes,
    k5PrefixGroup0040Row0027_passes,
    k5PrefixGroup0040Row0028_passes,
    k5PrefixGroup0040Row0029_passes,
    k5PrefixGroup0040Row0030_passes,
    k5PrefixGroup0040Row0031_passes,
    k5PrefixGroup0040Row0032_passes,
    k5PrefixGroup0040Row0033_passes,
    k5PrefixGroup0040Row0034_passes,
    k5PrefixGroup0040Row0035_passes,
    k5PrefixGroup0040Row0036_passes,
    k5PrefixGroup0040Row0037_passes,
    k5PrefixGroup0040Row0038_passes,
    k5PrefixGroup0040Row0039_passes,
    k5PrefixGroup0040Row0040_passes,
    k5PrefixGroup0040Row0041_passes,
    k5PrefixGroup0040Row0042_passes,
    k5PrefixGroup0040Row0043_passes,
    k5PrefixGroup0040Row0044_passes,
    k5PrefixGroup0040Row0045_passes,
    k5PrefixGroup0040Row0046_passes,
    k5PrefixGroup0040Row0047_passes,
    k5PrefixGroup0040Row0048_passes,
    k5PrefixGroup0040Row0049_passes,
    k5PrefixGroup0040Row0050_passes,
    k5PrefixGroup0040Row0051_passes,
    k5PrefixGroup0040Row0052_passes,
    k5PrefixGroup0040Row0053_passes,
    k5PrefixGroup0040Row0054_passes,
    k5PrefixGroup0040Row0055_passes,
    k5PrefixGroup0040Row0056_passes,
    k5PrefixGroup0040Row0057_passes,
    k5PrefixGroup0040Row0058_passes,
    k5PrefixGroup0040Row0059_passes,
    k5PrefixGroup0040Row0060_passes,
    k5PrefixGroup0040Row0061_passes,
    k5PrefixGroup0040Row0062_passes,
    k5PrefixGroup0040Row0063_passes,
    k5PrefixGroup0040Row0064_passes,
    k5PrefixGroup0040Row0065_passes,
    k5PrefixGroup0040Row0066_passes,
    k5PrefixGroup0040Row0067_passes,
    k5PrefixGroup0040Row0068_passes,
    k5PrefixGroup0040Row0069_passes,
    k5PrefixGroup0040Row0070_passes,
    k5PrefixGroup0040Row0071_passes,
    k5PrefixGroup0040Row0072_passes,
    k5PrefixGroup0040Row0073_passes,
    k5PrefixGroup0040Row0074_passes,
    k5PrefixGroup0040Row0075_passes,
    k5PrefixGroup0040Row0076_passes,
    k5PrefixGroup0040Row0077_passes,
    k5PrefixGroup0040Row0078_passes,
    k5PrefixGroup0040Row0079_passes,
    k5PrefixGroup0040Row0080_passes,
    k5PrefixGroup0040Row0081_passes,
    k5PrefixGroup0040Row0082_passes,
    k5PrefixGroup0040Row0083_passes,
    k5PrefixGroup0040Row0084_passes,
    k5PrefixGroup0040Row0085_passes,
    k5PrefixGroup0040Row0086_passes,
    k5PrefixGroup0040Row0087_passes,
    k5PrefixGroup0040Row0088_passes,
    k5PrefixGroup0040Row0089_passes,
    k5PrefixGroup0040Row0090_passes,
    k5PrefixGroup0040Row0091_passes,
    k5PrefixGroup0040Row0092_passes,
    k5PrefixGroup0040Row0093_passes,
    k5PrefixGroup0040Row0094_passes,
    k5PrefixGroup0040Row0095_passes,
    k5PrefixGroup0040Row0096_passes,
    k5PrefixGroup0040Row0097_passes,
    k5PrefixGroup0040Row0098_passes,
    k5PrefixGroup0040Row0099_passes,
    k5PrefixGroup0040Row0100_passes,
    k5PrefixGroup0040Row0101_passes,
    k5PrefixGroup0040Row0102_passes,
    k5PrefixGroup0040Row0103_passes,
    k5PrefixGroup0040Row0104_passes,
    k5PrefixGroup0040Row0105_passes,
    k5PrefixGroup0040Row0106_passes,
    k5PrefixGroup0040Row0107_passes,
    k5PrefixGroup0040Row0108_passes,
    k5PrefixGroup0040Row0109_passes,
    k5PrefixGroup0040Row0110_passes,
    k5PrefixGroup0040Row0111_passes,
    k5PrefixGroup0040Row0112_passes,
    k5PrefixGroup0040Row0113_passes,
    k5PrefixGroup0040Row0114_passes,
    k5PrefixGroup0040Row0115_passes,
    k5PrefixGroup0040Row0116_passes,
    k5PrefixGroup0040Row0117_passes,
    k5PrefixGroup0040Row0118_passes,
    k5PrefixGroup0040Row0119_passes,
    k5PrefixGroup0040Row0120_passes,
    k5PrefixGroup0040Row0121_passes,
    k5PrefixGroup0040Row0122_passes,
    k5PrefixGroup0040Row0123_passes,
    k5PrefixGroup0040Row0124_passes,
    k5PrefixGroup0040Row0125_passes,
    k5PrefixGroup0040Row0126_passes,
    k5PrefixGroup0040Row0127_passes]

theorem k5PrefixGroup0040_mask_upper :
    k5PrefixGroup0040.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0040, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0040Row0000_mask_upper,
    k5PrefixGroup0040Row0001_mask_upper,
    k5PrefixGroup0040Row0002_mask_upper,
    k5PrefixGroup0040Row0003_mask_upper,
    k5PrefixGroup0040Row0004_mask_upper,
    k5PrefixGroup0040Row0005_mask_upper,
    k5PrefixGroup0040Row0006_mask_upper,
    k5PrefixGroup0040Row0007_mask_upper,
    k5PrefixGroup0040Row0008_mask_upper,
    k5PrefixGroup0040Row0009_mask_upper,
    k5PrefixGroup0040Row0010_mask_upper,
    k5PrefixGroup0040Row0011_mask_upper,
    k5PrefixGroup0040Row0012_mask_upper,
    k5PrefixGroup0040Row0013_mask_upper,
    k5PrefixGroup0040Row0014_mask_upper,
    k5PrefixGroup0040Row0015_mask_upper,
    k5PrefixGroup0040Row0016_mask_upper,
    k5PrefixGroup0040Row0017_mask_upper,
    k5PrefixGroup0040Row0018_mask_upper,
    k5PrefixGroup0040Row0019_mask_upper,
    k5PrefixGroup0040Row0020_mask_upper,
    k5PrefixGroup0040Row0021_mask_upper,
    k5PrefixGroup0040Row0022_mask_upper,
    k5PrefixGroup0040Row0023_mask_upper,
    k5PrefixGroup0040Row0024_mask_upper,
    k5PrefixGroup0040Row0025_mask_upper,
    k5PrefixGroup0040Row0026_mask_upper,
    k5PrefixGroup0040Row0027_mask_upper,
    k5PrefixGroup0040Row0028_mask_upper,
    k5PrefixGroup0040Row0029_mask_upper,
    k5PrefixGroup0040Row0030_mask_upper,
    k5PrefixGroup0040Row0031_mask_upper,
    k5PrefixGroup0040Row0032_mask_upper,
    k5PrefixGroup0040Row0033_mask_upper,
    k5PrefixGroup0040Row0034_mask_upper,
    k5PrefixGroup0040Row0035_mask_upper,
    k5PrefixGroup0040Row0036_mask_upper,
    k5PrefixGroup0040Row0037_mask_upper,
    k5PrefixGroup0040Row0038_mask_upper,
    k5PrefixGroup0040Row0039_mask_upper,
    k5PrefixGroup0040Row0040_mask_upper,
    k5PrefixGroup0040Row0041_mask_upper,
    k5PrefixGroup0040Row0042_mask_upper,
    k5PrefixGroup0040Row0043_mask_upper,
    k5PrefixGroup0040Row0044_mask_upper,
    k5PrefixGroup0040Row0045_mask_upper,
    k5PrefixGroup0040Row0046_mask_upper,
    k5PrefixGroup0040Row0047_mask_upper,
    k5PrefixGroup0040Row0048_mask_upper,
    k5PrefixGroup0040Row0049_mask_upper,
    k5PrefixGroup0040Row0050_mask_upper,
    k5PrefixGroup0040Row0051_mask_upper,
    k5PrefixGroup0040Row0052_mask_upper,
    k5PrefixGroup0040Row0053_mask_upper,
    k5PrefixGroup0040Row0054_mask_upper,
    k5PrefixGroup0040Row0055_mask_upper,
    k5PrefixGroup0040Row0056_mask_upper,
    k5PrefixGroup0040Row0057_mask_upper,
    k5PrefixGroup0040Row0058_mask_upper,
    k5PrefixGroup0040Row0059_mask_upper,
    k5PrefixGroup0040Row0060_mask_upper,
    k5PrefixGroup0040Row0061_mask_upper,
    k5PrefixGroup0040Row0062_mask_upper,
    k5PrefixGroup0040Row0063_mask_upper,
    k5PrefixGroup0040Row0064_mask_upper,
    k5PrefixGroup0040Row0065_mask_upper,
    k5PrefixGroup0040Row0066_mask_upper,
    k5PrefixGroup0040Row0067_mask_upper,
    k5PrefixGroup0040Row0068_mask_upper,
    k5PrefixGroup0040Row0069_mask_upper,
    k5PrefixGroup0040Row0070_mask_upper,
    k5PrefixGroup0040Row0071_mask_upper,
    k5PrefixGroup0040Row0072_mask_upper,
    k5PrefixGroup0040Row0073_mask_upper,
    k5PrefixGroup0040Row0074_mask_upper,
    k5PrefixGroup0040Row0075_mask_upper,
    k5PrefixGroup0040Row0076_mask_upper,
    k5PrefixGroup0040Row0077_mask_upper,
    k5PrefixGroup0040Row0078_mask_upper,
    k5PrefixGroup0040Row0079_mask_upper,
    k5PrefixGroup0040Row0080_mask_upper,
    k5PrefixGroup0040Row0081_mask_upper,
    k5PrefixGroup0040Row0082_mask_upper,
    k5PrefixGroup0040Row0083_mask_upper,
    k5PrefixGroup0040Row0084_mask_upper,
    k5PrefixGroup0040Row0085_mask_upper,
    k5PrefixGroup0040Row0086_mask_upper,
    k5PrefixGroup0040Row0087_mask_upper,
    k5PrefixGroup0040Row0088_mask_upper,
    k5PrefixGroup0040Row0089_mask_upper,
    k5PrefixGroup0040Row0090_mask_upper,
    k5PrefixGroup0040Row0091_mask_upper,
    k5PrefixGroup0040Row0092_mask_upper,
    k5PrefixGroup0040Row0093_mask_upper,
    k5PrefixGroup0040Row0094_mask_upper,
    k5PrefixGroup0040Row0095_mask_upper,
    k5PrefixGroup0040Row0096_mask_upper,
    k5PrefixGroup0040Row0097_mask_upper,
    k5PrefixGroup0040Row0098_mask_upper,
    k5PrefixGroup0040Row0099_mask_upper,
    k5PrefixGroup0040Row0100_mask_upper,
    k5PrefixGroup0040Row0101_mask_upper,
    k5PrefixGroup0040Row0102_mask_upper,
    k5PrefixGroup0040Row0103_mask_upper,
    k5PrefixGroup0040Row0104_mask_upper,
    k5PrefixGroup0040Row0105_mask_upper,
    k5PrefixGroup0040Row0106_mask_upper,
    k5PrefixGroup0040Row0107_mask_upper,
    k5PrefixGroup0040Row0108_mask_upper,
    k5PrefixGroup0040Row0109_mask_upper,
    k5PrefixGroup0040Row0110_mask_upper,
    k5PrefixGroup0040Row0111_mask_upper,
    k5PrefixGroup0040Row0112_mask_upper,
    k5PrefixGroup0040Row0113_mask_upper,
    k5PrefixGroup0040Row0114_mask_upper,
    k5PrefixGroup0040Row0115_mask_upper,
    k5PrefixGroup0040Row0116_mask_upper,
    k5PrefixGroup0040Row0117_mask_upper,
    k5PrefixGroup0040Row0118_mask_upper,
    k5PrefixGroup0040Row0119_mask_upper,
    k5PrefixGroup0040Row0120_mask_upper,
    k5PrefixGroup0040Row0121_mask_upper,
    k5PrefixGroup0040Row0122_mask_upper,
    k5PrefixGroup0040Row0123_mask_upper,
    k5PrefixGroup0040Row0124_mask_upper,
    k5PrefixGroup0040Row0125_mask_upper,
    k5PrefixGroup0040Row0126_mask_upper,
    k5PrefixGroup0040Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
