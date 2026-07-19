import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0053 : List (List ℕ) :=
  [[11, 13, 43, 103],
     [11, 13, 43, 107],
     [11, 13, 43, 109],
     [11, 13, 43, 113],
     [11, 13, 47, 53],
     [11, 13, 47, 59],
     [11, 13, 47, 61],
     [11, 13, 47, 67],
     [11, 13, 47, 71],
     [11, 13, 47, 73],
     [11, 13, 47, 79],
     [11, 13, 47, 83],
     [11, 13, 47, 89],
     [11, 13, 47, 97],
     [11, 13, 47, 101],
     [11, 13, 47, 103],
     [11, 13, 47, 107],
     [11, 13, 47, 109],
     [11, 13, 47, 113],
     [11, 13, 53, 59],
     [11, 13, 53, 61],
     [11, 13, 53, 67],
     [11, 13, 53, 71],
     [11, 13, 53, 73],
     [11, 13, 53, 79],
     [11, 13, 53, 83],
     [11, 13, 53, 89],
     [11, 13, 53, 97],
     [11, 13, 53, 101],
     [11, 13, 53, 103],
     [11, 13, 53, 107],
     [11, 13, 53, 109],
     [11, 13, 59, 61],
     [11, 13, 59, 67],
     [11, 13, 59, 71],
     [11, 13, 59, 73],
     [11, 13, 59, 79],
     [11, 13, 59, 83],
     [11, 13, 59, 89],
     [11, 13, 59, 97],
     [11, 13, 59, 101],
     [11, 13, 59, 103],
     [11, 13, 61, 67],
     [11, 13, 61, 71],
     [11, 13, 61, 73],
     [11, 13, 61, 79],
     [11, 13, 61, 83],
     [11, 13, 61, 89],
     [11, 13, 61, 97],
     [11, 13, 61, 101],
     [11, 13, 61, 103],
     [11, 13, 67, 71],
     [11, 13, 67, 73],
     [11, 13, 67, 79],
     [11, 13, 67, 83],
     [11, 13, 67, 89],
     [11, 13, 67, 97],
     [11, 13, 71, 73],
     [11, 13, 71, 79],
     [11, 13, 71, 83],
     [11, 13, 71, 89],
     [11, 13, 73, 79],
     [11, 13, 73, 83],
     [11, 13, 73, 89],
     [11, 13, 79, 83],
     [11, 17, 19, 23],
     [11, 17, 19, 29],
     [11, 17, 19, 31],
     [11, 17, 19, 37],
     [11, 17, 19, 41],
     [11, 17, 19, 43],
     [11, 17, 19, 47],
     [11, 17, 19, 53],
     [11, 17, 19, 59],
     [11, 17, 19, 61],
     [11, 17, 19, 67],
     [11, 17, 19, 71],
     [11, 17, 19, 73],
     [11, 17, 19, 79],
     [11, 17, 19, 83],
     [11, 17, 19, 89],
     [11, 17, 19, 97],
     [11, 17, 19, 101],
     [11, 17, 19, 103],
     [11, 17, 19, 107],
     [11, 17, 19, 109],
     [11, 17, 19, 113],
     [11, 17, 19, 127],
     [11, 17, 19, 131],
     [11, 17, 19, 137],
     [11, 17, 19, 139],
     [11, 17, 19, 149],
     [11, 17, 19, 151],
     [11, 17, 19, 157],
     [11, 17, 23, 29],
     [11, 17, 23, 31],
     [11, 17, 23, 37],
     [11, 17, 23, 41],
     [11, 17, 23, 43],
     [11, 17, 23, 47],
     [11, 17, 23, 53],
     [11, 17, 23, 59],
     [11, 17, 23, 61],
     [11, 17, 23, 67],
     [11, 17, 23, 71],
     [11, 17, 23, 73],
     [11, 17, 23, 79],
     [11, 17, 23, 83],
     [11, 17, 23, 89],
     [11, 17, 23, 97],
     [11, 17, 23, 101],
     [11, 17, 23, 103],
     [11, 17, 23, 107],
     [11, 17, 23, 109],
     [11, 17, 23, 113],
     [11, 17, 23, 127],
     [11, 17, 23, 131],
     [11, 17, 23, 137],
     [11, 17, 23, 139],
     [11, 17, 29, 31],
     [11, 17, 29, 37],
     [11, 17, 29, 41],
     [11, 17, 29, 43],
     [11, 17, 29, 47],
     [11, 17, 29, 53],
     [11, 17, 29, 59],
     [11, 17, 29, 61],
     [11, 17, 29, 67]]

theorem k5PrefixGroup0053Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 43, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 43, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 43, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 43, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 43, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 43, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 43, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 43, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 47, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 47, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 53, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 53, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0053Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0053Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0053Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0053Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0053Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0053Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0053Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0053Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0053Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0053Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0053Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0053Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0053Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0053Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0053Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0053Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0053Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0053Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0053Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0053Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0053Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0053Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0053Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0053Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 89] = true := by
  decide

theorem k5PrefixGroup0053Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 97] = true := by
  decide

theorem k5PrefixGroup0053Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 101] = true := by
  decide

theorem k5PrefixGroup0053Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 103] = true := by
  decide

theorem k5PrefixGroup0053Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 107] = true := by
  decide

theorem k5PrefixGroup0053Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 109] = true := by
  decide

theorem k5PrefixGroup0053Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 113] = true := by
  decide

theorem k5PrefixGroup0053Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 127] = true := by
  decide

theorem k5PrefixGroup0053Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 127] = true := by
  decide

theorem k5PrefixGroup0053Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 131] = true := by
  decide

theorem k5PrefixGroup0053Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 131] = true := by
  decide

theorem k5PrefixGroup0053Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 137] = true := by
  decide

theorem k5PrefixGroup0053Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 137] = true := by
  decide

theorem k5PrefixGroup0053Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 23, 139] = true := by
  decide

theorem k5PrefixGroup0053Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 23, 139] = true := by
  decide

theorem k5PrefixGroup0053Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 31] = true := by
  decide

theorem k5PrefixGroup0053Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 37] = true := by
  decide

theorem k5PrefixGroup0053Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 41] = true := by
  decide

theorem k5PrefixGroup0053Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 43] = true := by
  decide

theorem k5PrefixGroup0053Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 47] = true := by
  decide

theorem k5PrefixGroup0053Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 53] = true := by
  decide

theorem k5PrefixGroup0053Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 59] = true := by
  decide

theorem k5PrefixGroup0053Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 61] = true := by
  decide

theorem k5PrefixGroup0053Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 67] = true := by
  decide

theorem k5PrefixGroup0053Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 67] = true := by
  decide

theorem k5PrefixGroup0053_passes :
    k5PrefixGroup0053.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0053, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0053Row0000_passes,
    k5PrefixGroup0053Row0001_passes,
    k5PrefixGroup0053Row0002_passes,
    k5PrefixGroup0053Row0003_passes,
    k5PrefixGroup0053Row0004_passes,
    k5PrefixGroup0053Row0005_passes,
    k5PrefixGroup0053Row0006_passes,
    k5PrefixGroup0053Row0007_passes,
    k5PrefixGroup0053Row0008_passes,
    k5PrefixGroup0053Row0009_passes,
    k5PrefixGroup0053Row0010_passes,
    k5PrefixGroup0053Row0011_passes,
    k5PrefixGroup0053Row0012_passes,
    k5PrefixGroup0053Row0013_passes,
    k5PrefixGroup0053Row0014_passes,
    k5PrefixGroup0053Row0015_passes,
    k5PrefixGroup0053Row0016_passes,
    k5PrefixGroup0053Row0017_passes,
    k5PrefixGroup0053Row0018_passes,
    k5PrefixGroup0053Row0019_passes,
    k5PrefixGroup0053Row0020_passes,
    k5PrefixGroup0053Row0021_passes,
    k5PrefixGroup0053Row0022_passes,
    k5PrefixGroup0053Row0023_passes,
    k5PrefixGroup0053Row0024_passes,
    k5PrefixGroup0053Row0025_passes,
    k5PrefixGroup0053Row0026_passes,
    k5PrefixGroup0053Row0027_passes,
    k5PrefixGroup0053Row0028_passes,
    k5PrefixGroup0053Row0029_passes,
    k5PrefixGroup0053Row0030_passes,
    k5PrefixGroup0053Row0031_passes,
    k5PrefixGroup0053Row0032_passes,
    k5PrefixGroup0053Row0033_passes,
    k5PrefixGroup0053Row0034_passes,
    k5PrefixGroup0053Row0035_passes,
    k5PrefixGroup0053Row0036_passes,
    k5PrefixGroup0053Row0037_passes,
    k5PrefixGroup0053Row0038_passes,
    k5PrefixGroup0053Row0039_passes,
    k5PrefixGroup0053Row0040_passes,
    k5PrefixGroup0053Row0041_passes,
    k5PrefixGroup0053Row0042_passes,
    k5PrefixGroup0053Row0043_passes,
    k5PrefixGroup0053Row0044_passes,
    k5PrefixGroup0053Row0045_passes,
    k5PrefixGroup0053Row0046_passes,
    k5PrefixGroup0053Row0047_passes,
    k5PrefixGroup0053Row0048_passes,
    k5PrefixGroup0053Row0049_passes,
    k5PrefixGroup0053Row0050_passes,
    k5PrefixGroup0053Row0051_passes,
    k5PrefixGroup0053Row0052_passes,
    k5PrefixGroup0053Row0053_passes,
    k5PrefixGroup0053Row0054_passes,
    k5PrefixGroup0053Row0055_passes,
    k5PrefixGroup0053Row0056_passes,
    k5PrefixGroup0053Row0057_passes,
    k5PrefixGroup0053Row0058_passes,
    k5PrefixGroup0053Row0059_passes,
    k5PrefixGroup0053Row0060_passes,
    k5PrefixGroup0053Row0061_passes,
    k5PrefixGroup0053Row0062_passes,
    k5PrefixGroup0053Row0063_passes,
    k5PrefixGroup0053Row0064_passes,
    k5PrefixGroup0053Row0065_passes,
    k5PrefixGroup0053Row0066_passes,
    k5PrefixGroup0053Row0067_passes,
    k5PrefixGroup0053Row0068_passes,
    k5PrefixGroup0053Row0069_passes,
    k5PrefixGroup0053Row0070_passes,
    k5PrefixGroup0053Row0071_passes,
    k5PrefixGroup0053Row0072_passes,
    k5PrefixGroup0053Row0073_passes,
    k5PrefixGroup0053Row0074_passes,
    k5PrefixGroup0053Row0075_passes,
    k5PrefixGroup0053Row0076_passes,
    k5PrefixGroup0053Row0077_passes,
    k5PrefixGroup0053Row0078_passes,
    k5PrefixGroup0053Row0079_passes,
    k5PrefixGroup0053Row0080_passes,
    k5PrefixGroup0053Row0081_passes,
    k5PrefixGroup0053Row0082_passes,
    k5PrefixGroup0053Row0083_passes,
    k5PrefixGroup0053Row0084_passes,
    k5PrefixGroup0053Row0085_passes,
    k5PrefixGroup0053Row0086_passes,
    k5PrefixGroup0053Row0087_passes,
    k5PrefixGroup0053Row0088_passes,
    k5PrefixGroup0053Row0089_passes,
    k5PrefixGroup0053Row0090_passes,
    k5PrefixGroup0053Row0091_passes,
    k5PrefixGroup0053Row0092_passes,
    k5PrefixGroup0053Row0093_passes,
    k5PrefixGroup0053Row0094_passes,
    k5PrefixGroup0053Row0095_passes,
    k5PrefixGroup0053Row0096_passes,
    k5PrefixGroup0053Row0097_passes,
    k5PrefixGroup0053Row0098_passes,
    k5PrefixGroup0053Row0099_passes,
    k5PrefixGroup0053Row0100_passes,
    k5PrefixGroup0053Row0101_passes,
    k5PrefixGroup0053Row0102_passes,
    k5PrefixGroup0053Row0103_passes,
    k5PrefixGroup0053Row0104_passes,
    k5PrefixGroup0053Row0105_passes,
    k5PrefixGroup0053Row0106_passes,
    k5PrefixGroup0053Row0107_passes,
    k5PrefixGroup0053Row0108_passes,
    k5PrefixGroup0053Row0109_passes,
    k5PrefixGroup0053Row0110_passes,
    k5PrefixGroup0053Row0111_passes,
    k5PrefixGroup0053Row0112_passes,
    k5PrefixGroup0053Row0113_passes,
    k5PrefixGroup0053Row0114_passes,
    k5PrefixGroup0053Row0115_passes,
    k5PrefixGroup0053Row0116_passes,
    k5PrefixGroup0053Row0117_passes,
    k5PrefixGroup0053Row0118_passes,
    k5PrefixGroup0053Row0119_passes,
    k5PrefixGroup0053Row0120_passes,
    k5PrefixGroup0053Row0121_passes,
    k5PrefixGroup0053Row0122_passes,
    k5PrefixGroup0053Row0123_passes,
    k5PrefixGroup0053Row0124_passes,
    k5PrefixGroup0053Row0125_passes,
    k5PrefixGroup0053Row0126_passes,
    k5PrefixGroup0053Row0127_passes]

theorem k5PrefixGroup0053_mask_upper :
    k5PrefixGroup0053.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0053, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0053Row0000_mask_upper,
    k5PrefixGroup0053Row0001_mask_upper,
    k5PrefixGroup0053Row0002_mask_upper,
    k5PrefixGroup0053Row0003_mask_upper,
    k5PrefixGroup0053Row0004_mask_upper,
    k5PrefixGroup0053Row0005_mask_upper,
    k5PrefixGroup0053Row0006_mask_upper,
    k5PrefixGroup0053Row0007_mask_upper,
    k5PrefixGroup0053Row0008_mask_upper,
    k5PrefixGroup0053Row0009_mask_upper,
    k5PrefixGroup0053Row0010_mask_upper,
    k5PrefixGroup0053Row0011_mask_upper,
    k5PrefixGroup0053Row0012_mask_upper,
    k5PrefixGroup0053Row0013_mask_upper,
    k5PrefixGroup0053Row0014_mask_upper,
    k5PrefixGroup0053Row0015_mask_upper,
    k5PrefixGroup0053Row0016_mask_upper,
    k5PrefixGroup0053Row0017_mask_upper,
    k5PrefixGroup0053Row0018_mask_upper,
    k5PrefixGroup0053Row0019_mask_upper,
    k5PrefixGroup0053Row0020_mask_upper,
    k5PrefixGroup0053Row0021_mask_upper,
    k5PrefixGroup0053Row0022_mask_upper,
    k5PrefixGroup0053Row0023_mask_upper,
    k5PrefixGroup0053Row0024_mask_upper,
    k5PrefixGroup0053Row0025_mask_upper,
    k5PrefixGroup0053Row0026_mask_upper,
    k5PrefixGroup0053Row0027_mask_upper,
    k5PrefixGroup0053Row0028_mask_upper,
    k5PrefixGroup0053Row0029_mask_upper,
    k5PrefixGroup0053Row0030_mask_upper,
    k5PrefixGroup0053Row0031_mask_upper,
    k5PrefixGroup0053Row0032_mask_upper,
    k5PrefixGroup0053Row0033_mask_upper,
    k5PrefixGroup0053Row0034_mask_upper,
    k5PrefixGroup0053Row0035_mask_upper,
    k5PrefixGroup0053Row0036_mask_upper,
    k5PrefixGroup0053Row0037_mask_upper,
    k5PrefixGroup0053Row0038_mask_upper,
    k5PrefixGroup0053Row0039_mask_upper,
    k5PrefixGroup0053Row0040_mask_upper,
    k5PrefixGroup0053Row0041_mask_upper,
    k5PrefixGroup0053Row0042_mask_upper,
    k5PrefixGroup0053Row0043_mask_upper,
    k5PrefixGroup0053Row0044_mask_upper,
    k5PrefixGroup0053Row0045_mask_upper,
    k5PrefixGroup0053Row0046_mask_upper,
    k5PrefixGroup0053Row0047_mask_upper,
    k5PrefixGroup0053Row0048_mask_upper,
    k5PrefixGroup0053Row0049_mask_upper,
    k5PrefixGroup0053Row0050_mask_upper,
    k5PrefixGroup0053Row0051_mask_upper,
    k5PrefixGroup0053Row0052_mask_upper,
    k5PrefixGroup0053Row0053_mask_upper,
    k5PrefixGroup0053Row0054_mask_upper,
    k5PrefixGroup0053Row0055_mask_upper,
    k5PrefixGroup0053Row0056_mask_upper,
    k5PrefixGroup0053Row0057_mask_upper,
    k5PrefixGroup0053Row0058_mask_upper,
    k5PrefixGroup0053Row0059_mask_upper,
    k5PrefixGroup0053Row0060_mask_upper,
    k5PrefixGroup0053Row0061_mask_upper,
    k5PrefixGroup0053Row0062_mask_upper,
    k5PrefixGroup0053Row0063_mask_upper,
    k5PrefixGroup0053Row0064_mask_upper,
    k5PrefixGroup0053Row0065_mask_upper,
    k5PrefixGroup0053Row0066_mask_upper,
    k5PrefixGroup0053Row0067_mask_upper,
    k5PrefixGroup0053Row0068_mask_upper,
    k5PrefixGroup0053Row0069_mask_upper,
    k5PrefixGroup0053Row0070_mask_upper,
    k5PrefixGroup0053Row0071_mask_upper,
    k5PrefixGroup0053Row0072_mask_upper,
    k5PrefixGroup0053Row0073_mask_upper,
    k5PrefixGroup0053Row0074_mask_upper,
    k5PrefixGroup0053Row0075_mask_upper,
    k5PrefixGroup0053Row0076_mask_upper,
    k5PrefixGroup0053Row0077_mask_upper,
    k5PrefixGroup0053Row0078_mask_upper,
    k5PrefixGroup0053Row0079_mask_upper,
    k5PrefixGroup0053Row0080_mask_upper,
    k5PrefixGroup0053Row0081_mask_upper,
    k5PrefixGroup0053Row0082_mask_upper,
    k5PrefixGroup0053Row0083_mask_upper,
    k5PrefixGroup0053Row0084_mask_upper,
    k5PrefixGroup0053Row0085_mask_upper,
    k5PrefixGroup0053Row0086_mask_upper,
    k5PrefixGroup0053Row0087_mask_upper,
    k5PrefixGroup0053Row0088_mask_upper,
    k5PrefixGroup0053Row0089_mask_upper,
    k5PrefixGroup0053Row0090_mask_upper,
    k5PrefixGroup0053Row0091_mask_upper,
    k5PrefixGroup0053Row0092_mask_upper,
    k5PrefixGroup0053Row0093_mask_upper,
    k5PrefixGroup0053Row0094_mask_upper,
    k5PrefixGroup0053Row0095_mask_upper,
    k5PrefixGroup0053Row0096_mask_upper,
    k5PrefixGroup0053Row0097_mask_upper,
    k5PrefixGroup0053Row0098_mask_upper,
    k5PrefixGroup0053Row0099_mask_upper,
    k5PrefixGroup0053Row0100_mask_upper,
    k5PrefixGroup0053Row0101_mask_upper,
    k5PrefixGroup0053Row0102_mask_upper,
    k5PrefixGroup0053Row0103_mask_upper,
    k5PrefixGroup0053Row0104_mask_upper,
    k5PrefixGroup0053Row0105_mask_upper,
    k5PrefixGroup0053Row0106_mask_upper,
    k5PrefixGroup0053Row0107_mask_upper,
    k5PrefixGroup0053Row0108_mask_upper,
    k5PrefixGroup0053Row0109_mask_upper,
    k5PrefixGroup0053Row0110_mask_upper,
    k5PrefixGroup0053Row0111_mask_upper,
    k5PrefixGroup0053Row0112_mask_upper,
    k5PrefixGroup0053Row0113_mask_upper,
    k5PrefixGroup0053Row0114_mask_upper,
    k5PrefixGroup0053Row0115_mask_upper,
    k5PrefixGroup0053Row0116_mask_upper,
    k5PrefixGroup0053Row0117_mask_upper,
    k5PrefixGroup0053Row0118_mask_upper,
    k5PrefixGroup0053Row0119_mask_upper,
    k5PrefixGroup0053Row0120_mask_upper,
    k5PrefixGroup0053Row0121_mask_upper,
    k5PrefixGroup0053Row0122_mask_upper,
    k5PrefixGroup0053Row0123_mask_upper,
    k5PrefixGroup0053Row0124_mask_upper,
    k5PrefixGroup0053Row0125_mask_upper,
    k5PrefixGroup0053Row0126_mask_upper,
    k5PrefixGroup0053Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
