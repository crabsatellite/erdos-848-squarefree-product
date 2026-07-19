import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0032 : List (List ℕ) :=
  [[3, 29, 37, 67],
     [3, 29, 37, 71],
     [3, 29, 37, 73],
     [3, 29, 37, 79],
     [3, 29, 37, 83],
     [3, 29, 37, 89],
     [3, 29, 37, 97],
     [3, 29, 37, 101],
     [3, 29, 37, 103],
     [3, 29, 37, 107],
     [3, 29, 37, 109],
     [3, 29, 37, 113],
     [3, 29, 37, 127],
     [3, 29, 37, 131],
     [3, 29, 37, 137],
     [3, 29, 37, 139],
     [3, 29, 37, 149],
     [3, 29, 37, 151],
     [3, 29, 37, 157],
     [3, 29, 37, 163],
     [3, 29, 37, 167],
     [3, 29, 41, 43],
     [3, 29, 41, 47],
     [3, 29, 41, 53],
     [3, 29, 41, 59],
     [3, 29, 41, 61],
     [3, 29, 41, 67],
     [3, 29, 41, 71],
     [3, 29, 41, 73],
     [3, 29, 41, 79],
     [3, 29, 41, 83],
     [3, 29, 41, 89],
     [3, 29, 41, 97],
     [3, 29, 41, 101],
     [3, 29, 41, 103],
     [3, 29, 41, 107],
     [3, 29, 41, 109],
     [3, 29, 41, 113],
     [3, 29, 41, 127],
     [3, 29, 41, 131],
     [3, 29, 41, 137],
     [3, 29, 41, 139],
     [3, 29, 41, 149],
     [3, 29, 41, 151],
     [3, 29, 41, 157],
     [3, 29, 43, 47],
     [3, 29, 43, 53],
     [3, 29, 43, 59],
     [3, 29, 43, 61],
     [3, 29, 43, 67],
     [3, 29, 43, 71],
     [3, 29, 43, 73],
     [3, 29, 43, 79],
     [3, 29, 43, 83],
     [3, 29, 43, 89],
     [3, 29, 43, 97],
     [3, 29, 43, 101],
     [3, 29, 43, 103],
     [3, 29, 43, 107],
     [3, 29, 43, 109],
     [3, 29, 43, 113],
     [3, 29, 43, 127],
     [3, 29, 43, 131],
     [3, 29, 43, 137],
     [3, 29, 43, 139],
     [3, 29, 43, 149],
     [3, 29, 43, 151],
     [3, 29, 43, 157],
     [3, 29, 47, 53],
     [3, 29, 47, 59],
     [3, 29, 47, 61],
     [3, 29, 47, 67],
     [3, 29, 47, 71],
     [3, 29, 47, 73],
     [3, 29, 47, 79],
     [3, 29, 47, 83],
     [3, 29, 47, 89],
     [3, 29, 47, 97],
     [3, 29, 47, 101],
     [3, 29, 47, 103],
     [3, 29, 47, 107],
     [3, 29, 47, 109],
     [3, 29, 47, 113],
     [3, 29, 47, 127],
     [3, 29, 47, 131],
     [3, 29, 47, 137],
     [3, 29, 47, 139],
     [3, 29, 47, 149],
     [3, 29, 53, 59],
     [3, 29, 53, 61],
     [3, 29, 53, 67],
     [3, 29, 53, 71],
     [3, 29, 53, 73],
     [3, 29, 53, 79],
     [3, 29, 53, 83],
     [3, 29, 53, 89],
     [3, 29, 53, 97],
     [3, 29, 53, 101],
     [3, 29, 53, 103],
     [3, 29, 53, 107],
     [3, 29, 53, 109],
     [3, 29, 53, 113],
     [3, 29, 53, 127],
     [3, 29, 53, 131],
     [3, 29, 53, 137],
     [3, 29, 53, 139],
     [3, 29, 59, 61],
     [3, 29, 59, 67],
     [3, 29, 59, 71],
     [3, 29, 59, 73],
     [3, 29, 59, 79],
     [3, 29, 59, 83],
     [3, 29, 59, 89],
     [3, 29, 59, 97],
     [3, 29, 59, 101],
     [3, 29, 59, 103],
     [3, 29, 59, 107],
     [3, 29, 59, 109],
     [3, 29, 59, 113],
     [3, 29, 59, 127],
     [3, 29, 59, 131],
     [3, 29, 61, 67],
     [3, 29, 61, 71],
     [3, 29, 61, 73],
     [3, 29, 61, 79],
     [3, 29, 61, 83],
     [3, 29, 61, 89],
     [3, 29, 61, 97]]

theorem k5PrefixGroup0032Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 163] = true := by
  decide

theorem k5PrefixGroup0032Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 163] = true := by
  decide

theorem k5PrefixGroup0032Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 37, 167] = true := by
  decide

theorem k5PrefixGroup0032Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 37, 167] = true := by
  decide

theorem k5PrefixGroup0032Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 43] = true := by
  decide

theorem k5PrefixGroup0032Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 43] = true := by
  decide

theorem k5PrefixGroup0032Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 47] = true := by
  decide

theorem k5PrefixGroup0032Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 47] = true := by
  decide

theorem k5PrefixGroup0032Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 41, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 41, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 47] = true := by
  decide

theorem k5PrefixGroup0032Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 47] = true := by
  decide

theorem k5PrefixGroup0032Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 151] = true := by
  decide

theorem k5PrefixGroup0032Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 43, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 43, 157] = true := by
  decide

theorem k5PrefixGroup0032Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0032Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 47, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 47, 149] = true := by
  decide

theorem k5PrefixGroup0032Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0032Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 137] = true := by
  decide

theorem k5PrefixGroup0032Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 53, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 53, 139] = true := by
  decide

theorem k5PrefixGroup0032Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0032Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 101] = true := by
  decide

theorem k5PrefixGroup0032Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 103] = true := by
  decide

theorem k5PrefixGroup0032Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 107] = true := by
  decide

theorem k5PrefixGroup0032Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 109] = true := by
  decide

theorem k5PrefixGroup0032Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 113] = true := by
  decide

theorem k5PrefixGroup0032Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 127] = true := by
  decide

theorem k5PrefixGroup0032Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 59, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 59, 131] = true := by
  decide

theorem k5PrefixGroup0032Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0032Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 71] = true := by
  decide

theorem k5PrefixGroup0032Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 73] = true := by
  decide

theorem k5PrefixGroup0032Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 79] = true := by
  decide

theorem k5PrefixGroup0032Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 83] = true := by
  decide

theorem k5PrefixGroup0032Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 89] = true := by
  decide

theorem k5PrefixGroup0032Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 97] = true := by
  decide

theorem k5PrefixGroup0032Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 97] = true := by
  decide

theorem k5PrefixGroup0032_passes :
    k5PrefixGroup0032.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0032, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0032Row0000_passes,
    k5PrefixGroup0032Row0001_passes,
    k5PrefixGroup0032Row0002_passes,
    k5PrefixGroup0032Row0003_passes,
    k5PrefixGroup0032Row0004_passes,
    k5PrefixGroup0032Row0005_passes,
    k5PrefixGroup0032Row0006_passes,
    k5PrefixGroup0032Row0007_passes,
    k5PrefixGroup0032Row0008_passes,
    k5PrefixGroup0032Row0009_passes,
    k5PrefixGroup0032Row0010_passes,
    k5PrefixGroup0032Row0011_passes,
    k5PrefixGroup0032Row0012_passes,
    k5PrefixGroup0032Row0013_passes,
    k5PrefixGroup0032Row0014_passes,
    k5PrefixGroup0032Row0015_passes,
    k5PrefixGroup0032Row0016_passes,
    k5PrefixGroup0032Row0017_passes,
    k5PrefixGroup0032Row0018_passes,
    k5PrefixGroup0032Row0019_passes,
    k5PrefixGroup0032Row0020_passes,
    k5PrefixGroup0032Row0021_passes,
    k5PrefixGroup0032Row0022_passes,
    k5PrefixGroup0032Row0023_passes,
    k5PrefixGroup0032Row0024_passes,
    k5PrefixGroup0032Row0025_passes,
    k5PrefixGroup0032Row0026_passes,
    k5PrefixGroup0032Row0027_passes,
    k5PrefixGroup0032Row0028_passes,
    k5PrefixGroup0032Row0029_passes,
    k5PrefixGroup0032Row0030_passes,
    k5PrefixGroup0032Row0031_passes,
    k5PrefixGroup0032Row0032_passes,
    k5PrefixGroup0032Row0033_passes,
    k5PrefixGroup0032Row0034_passes,
    k5PrefixGroup0032Row0035_passes,
    k5PrefixGroup0032Row0036_passes,
    k5PrefixGroup0032Row0037_passes,
    k5PrefixGroup0032Row0038_passes,
    k5PrefixGroup0032Row0039_passes,
    k5PrefixGroup0032Row0040_passes,
    k5PrefixGroup0032Row0041_passes,
    k5PrefixGroup0032Row0042_passes,
    k5PrefixGroup0032Row0043_passes,
    k5PrefixGroup0032Row0044_passes,
    k5PrefixGroup0032Row0045_passes,
    k5PrefixGroup0032Row0046_passes,
    k5PrefixGroup0032Row0047_passes,
    k5PrefixGroup0032Row0048_passes,
    k5PrefixGroup0032Row0049_passes,
    k5PrefixGroup0032Row0050_passes,
    k5PrefixGroup0032Row0051_passes,
    k5PrefixGroup0032Row0052_passes,
    k5PrefixGroup0032Row0053_passes,
    k5PrefixGroup0032Row0054_passes,
    k5PrefixGroup0032Row0055_passes,
    k5PrefixGroup0032Row0056_passes,
    k5PrefixGroup0032Row0057_passes,
    k5PrefixGroup0032Row0058_passes,
    k5PrefixGroup0032Row0059_passes,
    k5PrefixGroup0032Row0060_passes,
    k5PrefixGroup0032Row0061_passes,
    k5PrefixGroup0032Row0062_passes,
    k5PrefixGroup0032Row0063_passes,
    k5PrefixGroup0032Row0064_passes,
    k5PrefixGroup0032Row0065_passes,
    k5PrefixGroup0032Row0066_passes,
    k5PrefixGroup0032Row0067_passes,
    k5PrefixGroup0032Row0068_passes,
    k5PrefixGroup0032Row0069_passes,
    k5PrefixGroup0032Row0070_passes,
    k5PrefixGroup0032Row0071_passes,
    k5PrefixGroup0032Row0072_passes,
    k5PrefixGroup0032Row0073_passes,
    k5PrefixGroup0032Row0074_passes,
    k5PrefixGroup0032Row0075_passes,
    k5PrefixGroup0032Row0076_passes,
    k5PrefixGroup0032Row0077_passes,
    k5PrefixGroup0032Row0078_passes,
    k5PrefixGroup0032Row0079_passes,
    k5PrefixGroup0032Row0080_passes,
    k5PrefixGroup0032Row0081_passes,
    k5PrefixGroup0032Row0082_passes,
    k5PrefixGroup0032Row0083_passes,
    k5PrefixGroup0032Row0084_passes,
    k5PrefixGroup0032Row0085_passes,
    k5PrefixGroup0032Row0086_passes,
    k5PrefixGroup0032Row0087_passes,
    k5PrefixGroup0032Row0088_passes,
    k5PrefixGroup0032Row0089_passes,
    k5PrefixGroup0032Row0090_passes,
    k5PrefixGroup0032Row0091_passes,
    k5PrefixGroup0032Row0092_passes,
    k5PrefixGroup0032Row0093_passes,
    k5PrefixGroup0032Row0094_passes,
    k5PrefixGroup0032Row0095_passes,
    k5PrefixGroup0032Row0096_passes,
    k5PrefixGroup0032Row0097_passes,
    k5PrefixGroup0032Row0098_passes,
    k5PrefixGroup0032Row0099_passes,
    k5PrefixGroup0032Row0100_passes,
    k5PrefixGroup0032Row0101_passes,
    k5PrefixGroup0032Row0102_passes,
    k5PrefixGroup0032Row0103_passes,
    k5PrefixGroup0032Row0104_passes,
    k5PrefixGroup0032Row0105_passes,
    k5PrefixGroup0032Row0106_passes,
    k5PrefixGroup0032Row0107_passes,
    k5PrefixGroup0032Row0108_passes,
    k5PrefixGroup0032Row0109_passes,
    k5PrefixGroup0032Row0110_passes,
    k5PrefixGroup0032Row0111_passes,
    k5PrefixGroup0032Row0112_passes,
    k5PrefixGroup0032Row0113_passes,
    k5PrefixGroup0032Row0114_passes,
    k5PrefixGroup0032Row0115_passes,
    k5PrefixGroup0032Row0116_passes,
    k5PrefixGroup0032Row0117_passes,
    k5PrefixGroup0032Row0118_passes,
    k5PrefixGroup0032Row0119_passes,
    k5PrefixGroup0032Row0120_passes,
    k5PrefixGroup0032Row0121_passes,
    k5PrefixGroup0032Row0122_passes,
    k5PrefixGroup0032Row0123_passes,
    k5PrefixGroup0032Row0124_passes,
    k5PrefixGroup0032Row0125_passes,
    k5PrefixGroup0032Row0126_passes,
    k5PrefixGroup0032Row0127_passes]

theorem k5PrefixGroup0032_mask_upper :
    k5PrefixGroup0032.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0032, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0032Row0000_mask_upper,
    k5PrefixGroup0032Row0001_mask_upper,
    k5PrefixGroup0032Row0002_mask_upper,
    k5PrefixGroup0032Row0003_mask_upper,
    k5PrefixGroup0032Row0004_mask_upper,
    k5PrefixGroup0032Row0005_mask_upper,
    k5PrefixGroup0032Row0006_mask_upper,
    k5PrefixGroup0032Row0007_mask_upper,
    k5PrefixGroup0032Row0008_mask_upper,
    k5PrefixGroup0032Row0009_mask_upper,
    k5PrefixGroup0032Row0010_mask_upper,
    k5PrefixGroup0032Row0011_mask_upper,
    k5PrefixGroup0032Row0012_mask_upper,
    k5PrefixGroup0032Row0013_mask_upper,
    k5PrefixGroup0032Row0014_mask_upper,
    k5PrefixGroup0032Row0015_mask_upper,
    k5PrefixGroup0032Row0016_mask_upper,
    k5PrefixGroup0032Row0017_mask_upper,
    k5PrefixGroup0032Row0018_mask_upper,
    k5PrefixGroup0032Row0019_mask_upper,
    k5PrefixGroup0032Row0020_mask_upper,
    k5PrefixGroup0032Row0021_mask_upper,
    k5PrefixGroup0032Row0022_mask_upper,
    k5PrefixGroup0032Row0023_mask_upper,
    k5PrefixGroup0032Row0024_mask_upper,
    k5PrefixGroup0032Row0025_mask_upper,
    k5PrefixGroup0032Row0026_mask_upper,
    k5PrefixGroup0032Row0027_mask_upper,
    k5PrefixGroup0032Row0028_mask_upper,
    k5PrefixGroup0032Row0029_mask_upper,
    k5PrefixGroup0032Row0030_mask_upper,
    k5PrefixGroup0032Row0031_mask_upper,
    k5PrefixGroup0032Row0032_mask_upper,
    k5PrefixGroup0032Row0033_mask_upper,
    k5PrefixGroup0032Row0034_mask_upper,
    k5PrefixGroup0032Row0035_mask_upper,
    k5PrefixGroup0032Row0036_mask_upper,
    k5PrefixGroup0032Row0037_mask_upper,
    k5PrefixGroup0032Row0038_mask_upper,
    k5PrefixGroup0032Row0039_mask_upper,
    k5PrefixGroup0032Row0040_mask_upper,
    k5PrefixGroup0032Row0041_mask_upper,
    k5PrefixGroup0032Row0042_mask_upper,
    k5PrefixGroup0032Row0043_mask_upper,
    k5PrefixGroup0032Row0044_mask_upper,
    k5PrefixGroup0032Row0045_mask_upper,
    k5PrefixGroup0032Row0046_mask_upper,
    k5PrefixGroup0032Row0047_mask_upper,
    k5PrefixGroup0032Row0048_mask_upper,
    k5PrefixGroup0032Row0049_mask_upper,
    k5PrefixGroup0032Row0050_mask_upper,
    k5PrefixGroup0032Row0051_mask_upper,
    k5PrefixGroup0032Row0052_mask_upper,
    k5PrefixGroup0032Row0053_mask_upper,
    k5PrefixGroup0032Row0054_mask_upper,
    k5PrefixGroup0032Row0055_mask_upper,
    k5PrefixGroup0032Row0056_mask_upper,
    k5PrefixGroup0032Row0057_mask_upper,
    k5PrefixGroup0032Row0058_mask_upper,
    k5PrefixGroup0032Row0059_mask_upper,
    k5PrefixGroup0032Row0060_mask_upper,
    k5PrefixGroup0032Row0061_mask_upper,
    k5PrefixGroup0032Row0062_mask_upper,
    k5PrefixGroup0032Row0063_mask_upper,
    k5PrefixGroup0032Row0064_mask_upper,
    k5PrefixGroup0032Row0065_mask_upper,
    k5PrefixGroup0032Row0066_mask_upper,
    k5PrefixGroup0032Row0067_mask_upper,
    k5PrefixGroup0032Row0068_mask_upper,
    k5PrefixGroup0032Row0069_mask_upper,
    k5PrefixGroup0032Row0070_mask_upper,
    k5PrefixGroup0032Row0071_mask_upper,
    k5PrefixGroup0032Row0072_mask_upper,
    k5PrefixGroup0032Row0073_mask_upper,
    k5PrefixGroup0032Row0074_mask_upper,
    k5PrefixGroup0032Row0075_mask_upper,
    k5PrefixGroup0032Row0076_mask_upper,
    k5PrefixGroup0032Row0077_mask_upper,
    k5PrefixGroup0032Row0078_mask_upper,
    k5PrefixGroup0032Row0079_mask_upper,
    k5PrefixGroup0032Row0080_mask_upper,
    k5PrefixGroup0032Row0081_mask_upper,
    k5PrefixGroup0032Row0082_mask_upper,
    k5PrefixGroup0032Row0083_mask_upper,
    k5PrefixGroup0032Row0084_mask_upper,
    k5PrefixGroup0032Row0085_mask_upper,
    k5PrefixGroup0032Row0086_mask_upper,
    k5PrefixGroup0032Row0087_mask_upper,
    k5PrefixGroup0032Row0088_mask_upper,
    k5PrefixGroup0032Row0089_mask_upper,
    k5PrefixGroup0032Row0090_mask_upper,
    k5PrefixGroup0032Row0091_mask_upper,
    k5PrefixGroup0032Row0092_mask_upper,
    k5PrefixGroup0032Row0093_mask_upper,
    k5PrefixGroup0032Row0094_mask_upper,
    k5PrefixGroup0032Row0095_mask_upper,
    k5PrefixGroup0032Row0096_mask_upper,
    k5PrefixGroup0032Row0097_mask_upper,
    k5PrefixGroup0032Row0098_mask_upper,
    k5PrefixGroup0032Row0099_mask_upper,
    k5PrefixGroup0032Row0100_mask_upper,
    k5PrefixGroup0032Row0101_mask_upper,
    k5PrefixGroup0032Row0102_mask_upper,
    k5PrefixGroup0032Row0103_mask_upper,
    k5PrefixGroup0032Row0104_mask_upper,
    k5PrefixGroup0032Row0105_mask_upper,
    k5PrefixGroup0032Row0106_mask_upper,
    k5PrefixGroup0032Row0107_mask_upper,
    k5PrefixGroup0032Row0108_mask_upper,
    k5PrefixGroup0032Row0109_mask_upper,
    k5PrefixGroup0032Row0110_mask_upper,
    k5PrefixGroup0032Row0111_mask_upper,
    k5PrefixGroup0032Row0112_mask_upper,
    k5PrefixGroup0032Row0113_mask_upper,
    k5PrefixGroup0032Row0114_mask_upper,
    k5PrefixGroup0032Row0115_mask_upper,
    k5PrefixGroup0032Row0116_mask_upper,
    k5PrefixGroup0032Row0117_mask_upper,
    k5PrefixGroup0032Row0118_mask_upper,
    k5PrefixGroup0032Row0119_mask_upper,
    k5PrefixGroup0032Row0120_mask_upper,
    k5PrefixGroup0032Row0121_mask_upper,
    k5PrefixGroup0032Row0122_mask_upper,
    k5PrefixGroup0032Row0123_mask_upper,
    k5PrefixGroup0032Row0124_mask_upper,
    k5PrefixGroup0032Row0125_mask_upper,
    k5PrefixGroup0032Row0126_mask_upper,
    k5PrefixGroup0032Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
