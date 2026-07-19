import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0046 : List (List ℕ) :=
  [[7, 17, 43, 107],
     [7, 17, 43, 109],
     [7, 17, 43, 113],
     [7, 17, 43, 127],
     [7, 17, 43, 131],
     [7, 17, 47, 53],
     [7, 17, 47, 59],
     [7, 17, 47, 61],
     [7, 17, 47, 67],
     [7, 17, 47, 71],
     [7, 17, 47, 73],
     [7, 17, 47, 79],
     [7, 17, 47, 83],
     [7, 17, 47, 89],
     [7, 17, 47, 97],
     [7, 17, 47, 101],
     [7, 17, 47, 103],
     [7, 17, 47, 107],
     [7, 17, 47, 109],
     [7, 17, 47, 113],
     [7, 17, 47, 127],
     [7, 17, 53, 59],
     [7, 17, 53, 61],
     [7, 17, 53, 67],
     [7, 17, 53, 71],
     [7, 17, 53, 73],
     [7, 17, 53, 79],
     [7, 17, 53, 83],
     [7, 17, 53, 89],
     [7, 17, 53, 97],
     [7, 17, 53, 101],
     [7, 17, 53, 103],
     [7, 17, 53, 107],
     [7, 17, 53, 109],
     [7, 17, 53, 113],
     [7, 17, 59, 61],
     [7, 17, 59, 67],
     [7, 17, 59, 71],
     [7, 17, 59, 73],
     [7, 17, 59, 79],
     [7, 17, 59, 83],
     [7, 17, 59, 89],
     [7, 17, 59, 97],
     [7, 17, 59, 101],
     [7, 17, 59, 103],
     [7, 17, 59, 107],
     [7, 17, 59, 109],
     [7, 17, 61, 67],
     [7, 17, 61, 71],
     [7, 17, 61, 73],
     [7, 17, 61, 79],
     [7, 17, 61, 83],
     [7, 17, 61, 89],
     [7, 17, 61, 97],
     [7, 17, 61, 101],
     [7, 17, 61, 103],
     [7, 17, 61, 107],
     [7, 17, 61, 109],
     [7, 17, 67, 71],
     [7, 17, 67, 73],
     [7, 17, 67, 79],
     [7, 17, 67, 83],
     [7, 17, 67, 89],
     [7, 17, 67, 97],
     [7, 17, 67, 101],
     [7, 17, 67, 103],
     [7, 17, 67, 107],
     [7, 17, 71, 73],
     [7, 17, 71, 79],
     [7, 17, 71, 83],
     [7, 17, 71, 89],
     [7, 17, 71, 97],
     [7, 17, 71, 101],
     [7, 17, 71, 103],
     [7, 17, 73, 79],
     [7, 17, 73, 83],
     [7, 17, 73, 89],
     [7, 17, 73, 97],
     [7, 17, 73, 101],
     [7, 17, 73, 103],
     [7, 17, 79, 83],
     [7, 17, 79, 89],
     [7, 17, 79, 97],
     [7, 17, 83, 89],
     [7, 19, 23, 29],
     [7, 19, 23, 31],
     [7, 19, 23, 37],
     [7, 19, 23, 41],
     [7, 19, 23, 43],
     [7, 19, 23, 47],
     [7, 19, 23, 53],
     [7, 19, 23, 59],
     [7, 19, 23, 61],
     [7, 19, 23, 67],
     [7, 19, 23, 71],
     [7, 19, 23, 73],
     [7, 19, 23, 79],
     [7, 19, 23, 83],
     [7, 19, 23, 89],
     [7, 19, 23, 97],
     [7, 19, 23, 101],
     [7, 19, 23, 103],
     [7, 19, 23, 107],
     [7, 19, 23, 109],
     [7, 19, 23, 113],
     [7, 19, 23, 127],
     [7, 19, 23, 131],
     [7, 19, 23, 137],
     [7, 19, 23, 139],
     [7, 19, 23, 149],
     [7, 19, 23, 151],
     [7, 19, 23, 157],
     [7, 19, 23, 163],
     [7, 19, 23, 167],
     [7, 19, 23, 173],
     [7, 19, 29, 31],
     [7, 19, 29, 37],
     [7, 19, 29, 41],
     [7, 19, 29, 43],
     [7, 19, 29, 47],
     [7, 19, 29, 53],
     [7, 19, 29, 59],
     [7, 19, 29, 61],
     [7, 19, 29, 67],
     [7, 19, 29, 71],
     [7, 19, 29, 73],
     [7, 19, 29, 79],
     [7, 19, 29, 83]]

theorem k5PrefixGroup0046Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 43, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 43, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 43, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 43, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 43, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 43, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 43, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 43, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 43, 131] = true := by
  decide

theorem k5PrefixGroup0046Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 43, 131] = true := by
  decide

theorem k5PrefixGroup0046Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 47, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 47, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 53, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 53, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 59, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 59, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 61, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 61, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 67, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 67, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 71, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 71, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 73, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 73, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 79, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 79, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 79, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 79, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 79, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 79, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 83, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 83, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0046Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0046Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0046Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0046Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0046Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0046Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0046Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0046Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0046Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0046Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0046Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0046Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 89] = true := by
  decide

theorem k5PrefixGroup0046Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 97] = true := by
  decide

theorem k5PrefixGroup0046Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 101] = true := by
  decide

theorem k5PrefixGroup0046Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 103] = true := by
  decide

theorem k5PrefixGroup0046Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 107] = true := by
  decide

theorem k5PrefixGroup0046Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 109] = true := by
  decide

theorem k5PrefixGroup0046Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 113] = true := by
  decide

theorem k5PrefixGroup0046Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 127] = true := by
  decide

theorem k5PrefixGroup0046Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 131] = true := by
  decide

theorem k5PrefixGroup0046Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 131] = true := by
  decide

theorem k5PrefixGroup0046Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 137] = true := by
  decide

theorem k5PrefixGroup0046Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 137] = true := by
  decide

theorem k5PrefixGroup0046Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 139] = true := by
  decide

theorem k5PrefixGroup0046Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 139] = true := by
  decide

theorem k5PrefixGroup0046Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 149] = true := by
  decide

theorem k5PrefixGroup0046Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 149] = true := by
  decide

theorem k5PrefixGroup0046Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 151] = true := by
  decide

theorem k5PrefixGroup0046Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 151] = true := by
  decide

theorem k5PrefixGroup0046Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 157] = true := by
  decide

theorem k5PrefixGroup0046Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 157] = true := by
  decide

theorem k5PrefixGroup0046Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 163] = true := by
  decide

theorem k5PrefixGroup0046Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 163] = true := by
  decide

theorem k5PrefixGroup0046Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 167] = true := by
  decide

theorem k5PrefixGroup0046Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 167] = true := by
  decide

theorem k5PrefixGroup0046Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 23, 173] = true := by
  decide

theorem k5PrefixGroup0046Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 23, 173] = true := by
  decide

theorem k5PrefixGroup0046Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 31] = true := by
  decide

theorem k5PrefixGroup0046Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 31] = true := by
  decide

theorem k5PrefixGroup0046Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 37] = true := by
  decide

theorem k5PrefixGroup0046Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 37] = true := by
  decide

theorem k5PrefixGroup0046Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 41] = true := by
  decide

theorem k5PrefixGroup0046Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 41] = true := by
  decide

theorem k5PrefixGroup0046Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 43] = true := by
  decide

theorem k5PrefixGroup0046Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 43] = true := by
  decide

theorem k5PrefixGroup0046Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 47] = true := by
  decide

theorem k5PrefixGroup0046Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 47] = true := by
  decide

theorem k5PrefixGroup0046Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 53] = true := by
  decide

theorem k5PrefixGroup0046Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 59] = true := by
  decide

theorem k5PrefixGroup0046Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 61] = true := by
  decide

theorem k5PrefixGroup0046Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 67] = true := by
  decide

theorem k5PrefixGroup0046Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 71] = true := by
  decide

theorem k5PrefixGroup0046Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 73] = true := by
  decide

theorem k5PrefixGroup0046Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 79] = true := by
  decide

theorem k5PrefixGroup0046Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 29, 83] = true := by
  decide

theorem k5PrefixGroup0046Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 29, 83] = true := by
  decide

theorem k5PrefixGroup0046_passes :
    k5PrefixGroup0046.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0046, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0046Row0000_passes,
    k5PrefixGroup0046Row0001_passes,
    k5PrefixGroup0046Row0002_passes,
    k5PrefixGroup0046Row0003_passes,
    k5PrefixGroup0046Row0004_passes,
    k5PrefixGroup0046Row0005_passes,
    k5PrefixGroup0046Row0006_passes,
    k5PrefixGroup0046Row0007_passes,
    k5PrefixGroup0046Row0008_passes,
    k5PrefixGroup0046Row0009_passes,
    k5PrefixGroup0046Row0010_passes,
    k5PrefixGroup0046Row0011_passes,
    k5PrefixGroup0046Row0012_passes,
    k5PrefixGroup0046Row0013_passes,
    k5PrefixGroup0046Row0014_passes,
    k5PrefixGroup0046Row0015_passes,
    k5PrefixGroup0046Row0016_passes,
    k5PrefixGroup0046Row0017_passes,
    k5PrefixGroup0046Row0018_passes,
    k5PrefixGroup0046Row0019_passes,
    k5PrefixGroup0046Row0020_passes,
    k5PrefixGroup0046Row0021_passes,
    k5PrefixGroup0046Row0022_passes,
    k5PrefixGroup0046Row0023_passes,
    k5PrefixGroup0046Row0024_passes,
    k5PrefixGroup0046Row0025_passes,
    k5PrefixGroup0046Row0026_passes,
    k5PrefixGroup0046Row0027_passes,
    k5PrefixGroup0046Row0028_passes,
    k5PrefixGroup0046Row0029_passes,
    k5PrefixGroup0046Row0030_passes,
    k5PrefixGroup0046Row0031_passes,
    k5PrefixGroup0046Row0032_passes,
    k5PrefixGroup0046Row0033_passes,
    k5PrefixGroup0046Row0034_passes,
    k5PrefixGroup0046Row0035_passes,
    k5PrefixGroup0046Row0036_passes,
    k5PrefixGroup0046Row0037_passes,
    k5PrefixGroup0046Row0038_passes,
    k5PrefixGroup0046Row0039_passes,
    k5PrefixGroup0046Row0040_passes,
    k5PrefixGroup0046Row0041_passes,
    k5PrefixGroup0046Row0042_passes,
    k5PrefixGroup0046Row0043_passes,
    k5PrefixGroup0046Row0044_passes,
    k5PrefixGroup0046Row0045_passes,
    k5PrefixGroup0046Row0046_passes,
    k5PrefixGroup0046Row0047_passes,
    k5PrefixGroup0046Row0048_passes,
    k5PrefixGroup0046Row0049_passes,
    k5PrefixGroup0046Row0050_passes,
    k5PrefixGroup0046Row0051_passes,
    k5PrefixGroup0046Row0052_passes,
    k5PrefixGroup0046Row0053_passes,
    k5PrefixGroup0046Row0054_passes,
    k5PrefixGroup0046Row0055_passes,
    k5PrefixGroup0046Row0056_passes,
    k5PrefixGroup0046Row0057_passes,
    k5PrefixGroup0046Row0058_passes,
    k5PrefixGroup0046Row0059_passes,
    k5PrefixGroup0046Row0060_passes,
    k5PrefixGroup0046Row0061_passes,
    k5PrefixGroup0046Row0062_passes,
    k5PrefixGroup0046Row0063_passes,
    k5PrefixGroup0046Row0064_passes,
    k5PrefixGroup0046Row0065_passes,
    k5PrefixGroup0046Row0066_passes,
    k5PrefixGroup0046Row0067_passes,
    k5PrefixGroup0046Row0068_passes,
    k5PrefixGroup0046Row0069_passes,
    k5PrefixGroup0046Row0070_passes,
    k5PrefixGroup0046Row0071_passes,
    k5PrefixGroup0046Row0072_passes,
    k5PrefixGroup0046Row0073_passes,
    k5PrefixGroup0046Row0074_passes,
    k5PrefixGroup0046Row0075_passes,
    k5PrefixGroup0046Row0076_passes,
    k5PrefixGroup0046Row0077_passes,
    k5PrefixGroup0046Row0078_passes,
    k5PrefixGroup0046Row0079_passes,
    k5PrefixGroup0046Row0080_passes,
    k5PrefixGroup0046Row0081_passes,
    k5PrefixGroup0046Row0082_passes,
    k5PrefixGroup0046Row0083_passes,
    k5PrefixGroup0046Row0084_passes,
    k5PrefixGroup0046Row0085_passes,
    k5PrefixGroup0046Row0086_passes,
    k5PrefixGroup0046Row0087_passes,
    k5PrefixGroup0046Row0088_passes,
    k5PrefixGroup0046Row0089_passes,
    k5PrefixGroup0046Row0090_passes,
    k5PrefixGroup0046Row0091_passes,
    k5PrefixGroup0046Row0092_passes,
    k5PrefixGroup0046Row0093_passes,
    k5PrefixGroup0046Row0094_passes,
    k5PrefixGroup0046Row0095_passes,
    k5PrefixGroup0046Row0096_passes,
    k5PrefixGroup0046Row0097_passes,
    k5PrefixGroup0046Row0098_passes,
    k5PrefixGroup0046Row0099_passes,
    k5PrefixGroup0046Row0100_passes,
    k5PrefixGroup0046Row0101_passes,
    k5PrefixGroup0046Row0102_passes,
    k5PrefixGroup0046Row0103_passes,
    k5PrefixGroup0046Row0104_passes,
    k5PrefixGroup0046Row0105_passes,
    k5PrefixGroup0046Row0106_passes,
    k5PrefixGroup0046Row0107_passes,
    k5PrefixGroup0046Row0108_passes,
    k5PrefixGroup0046Row0109_passes,
    k5PrefixGroup0046Row0110_passes,
    k5PrefixGroup0046Row0111_passes,
    k5PrefixGroup0046Row0112_passes,
    k5PrefixGroup0046Row0113_passes,
    k5PrefixGroup0046Row0114_passes,
    k5PrefixGroup0046Row0115_passes,
    k5PrefixGroup0046Row0116_passes,
    k5PrefixGroup0046Row0117_passes,
    k5PrefixGroup0046Row0118_passes,
    k5PrefixGroup0046Row0119_passes,
    k5PrefixGroup0046Row0120_passes,
    k5PrefixGroup0046Row0121_passes,
    k5PrefixGroup0046Row0122_passes,
    k5PrefixGroup0046Row0123_passes,
    k5PrefixGroup0046Row0124_passes,
    k5PrefixGroup0046Row0125_passes,
    k5PrefixGroup0046Row0126_passes,
    k5PrefixGroup0046Row0127_passes]

theorem k5PrefixGroup0046_mask_upper :
    k5PrefixGroup0046.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0046, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0046Row0000_mask_upper,
    k5PrefixGroup0046Row0001_mask_upper,
    k5PrefixGroup0046Row0002_mask_upper,
    k5PrefixGroup0046Row0003_mask_upper,
    k5PrefixGroup0046Row0004_mask_upper,
    k5PrefixGroup0046Row0005_mask_upper,
    k5PrefixGroup0046Row0006_mask_upper,
    k5PrefixGroup0046Row0007_mask_upper,
    k5PrefixGroup0046Row0008_mask_upper,
    k5PrefixGroup0046Row0009_mask_upper,
    k5PrefixGroup0046Row0010_mask_upper,
    k5PrefixGroup0046Row0011_mask_upper,
    k5PrefixGroup0046Row0012_mask_upper,
    k5PrefixGroup0046Row0013_mask_upper,
    k5PrefixGroup0046Row0014_mask_upper,
    k5PrefixGroup0046Row0015_mask_upper,
    k5PrefixGroup0046Row0016_mask_upper,
    k5PrefixGroup0046Row0017_mask_upper,
    k5PrefixGroup0046Row0018_mask_upper,
    k5PrefixGroup0046Row0019_mask_upper,
    k5PrefixGroup0046Row0020_mask_upper,
    k5PrefixGroup0046Row0021_mask_upper,
    k5PrefixGroup0046Row0022_mask_upper,
    k5PrefixGroup0046Row0023_mask_upper,
    k5PrefixGroup0046Row0024_mask_upper,
    k5PrefixGroup0046Row0025_mask_upper,
    k5PrefixGroup0046Row0026_mask_upper,
    k5PrefixGroup0046Row0027_mask_upper,
    k5PrefixGroup0046Row0028_mask_upper,
    k5PrefixGroup0046Row0029_mask_upper,
    k5PrefixGroup0046Row0030_mask_upper,
    k5PrefixGroup0046Row0031_mask_upper,
    k5PrefixGroup0046Row0032_mask_upper,
    k5PrefixGroup0046Row0033_mask_upper,
    k5PrefixGroup0046Row0034_mask_upper,
    k5PrefixGroup0046Row0035_mask_upper,
    k5PrefixGroup0046Row0036_mask_upper,
    k5PrefixGroup0046Row0037_mask_upper,
    k5PrefixGroup0046Row0038_mask_upper,
    k5PrefixGroup0046Row0039_mask_upper,
    k5PrefixGroup0046Row0040_mask_upper,
    k5PrefixGroup0046Row0041_mask_upper,
    k5PrefixGroup0046Row0042_mask_upper,
    k5PrefixGroup0046Row0043_mask_upper,
    k5PrefixGroup0046Row0044_mask_upper,
    k5PrefixGroup0046Row0045_mask_upper,
    k5PrefixGroup0046Row0046_mask_upper,
    k5PrefixGroup0046Row0047_mask_upper,
    k5PrefixGroup0046Row0048_mask_upper,
    k5PrefixGroup0046Row0049_mask_upper,
    k5PrefixGroup0046Row0050_mask_upper,
    k5PrefixGroup0046Row0051_mask_upper,
    k5PrefixGroup0046Row0052_mask_upper,
    k5PrefixGroup0046Row0053_mask_upper,
    k5PrefixGroup0046Row0054_mask_upper,
    k5PrefixGroup0046Row0055_mask_upper,
    k5PrefixGroup0046Row0056_mask_upper,
    k5PrefixGroup0046Row0057_mask_upper,
    k5PrefixGroup0046Row0058_mask_upper,
    k5PrefixGroup0046Row0059_mask_upper,
    k5PrefixGroup0046Row0060_mask_upper,
    k5PrefixGroup0046Row0061_mask_upper,
    k5PrefixGroup0046Row0062_mask_upper,
    k5PrefixGroup0046Row0063_mask_upper,
    k5PrefixGroup0046Row0064_mask_upper,
    k5PrefixGroup0046Row0065_mask_upper,
    k5PrefixGroup0046Row0066_mask_upper,
    k5PrefixGroup0046Row0067_mask_upper,
    k5PrefixGroup0046Row0068_mask_upper,
    k5PrefixGroup0046Row0069_mask_upper,
    k5PrefixGroup0046Row0070_mask_upper,
    k5PrefixGroup0046Row0071_mask_upper,
    k5PrefixGroup0046Row0072_mask_upper,
    k5PrefixGroup0046Row0073_mask_upper,
    k5PrefixGroup0046Row0074_mask_upper,
    k5PrefixGroup0046Row0075_mask_upper,
    k5PrefixGroup0046Row0076_mask_upper,
    k5PrefixGroup0046Row0077_mask_upper,
    k5PrefixGroup0046Row0078_mask_upper,
    k5PrefixGroup0046Row0079_mask_upper,
    k5PrefixGroup0046Row0080_mask_upper,
    k5PrefixGroup0046Row0081_mask_upper,
    k5PrefixGroup0046Row0082_mask_upper,
    k5PrefixGroup0046Row0083_mask_upper,
    k5PrefixGroup0046Row0084_mask_upper,
    k5PrefixGroup0046Row0085_mask_upper,
    k5PrefixGroup0046Row0086_mask_upper,
    k5PrefixGroup0046Row0087_mask_upper,
    k5PrefixGroup0046Row0088_mask_upper,
    k5PrefixGroup0046Row0089_mask_upper,
    k5PrefixGroup0046Row0090_mask_upper,
    k5PrefixGroup0046Row0091_mask_upper,
    k5PrefixGroup0046Row0092_mask_upper,
    k5PrefixGroup0046Row0093_mask_upper,
    k5PrefixGroup0046Row0094_mask_upper,
    k5PrefixGroup0046Row0095_mask_upper,
    k5PrefixGroup0046Row0096_mask_upper,
    k5PrefixGroup0046Row0097_mask_upper,
    k5PrefixGroup0046Row0098_mask_upper,
    k5PrefixGroup0046Row0099_mask_upper,
    k5PrefixGroup0046Row0100_mask_upper,
    k5PrefixGroup0046Row0101_mask_upper,
    k5PrefixGroup0046Row0102_mask_upper,
    k5PrefixGroup0046Row0103_mask_upper,
    k5PrefixGroup0046Row0104_mask_upper,
    k5PrefixGroup0046Row0105_mask_upper,
    k5PrefixGroup0046Row0106_mask_upper,
    k5PrefixGroup0046Row0107_mask_upper,
    k5PrefixGroup0046Row0108_mask_upper,
    k5PrefixGroup0046Row0109_mask_upper,
    k5PrefixGroup0046Row0110_mask_upper,
    k5PrefixGroup0046Row0111_mask_upper,
    k5PrefixGroup0046Row0112_mask_upper,
    k5PrefixGroup0046Row0113_mask_upper,
    k5PrefixGroup0046Row0114_mask_upper,
    k5PrefixGroup0046Row0115_mask_upper,
    k5PrefixGroup0046Row0116_mask_upper,
    k5PrefixGroup0046Row0117_mask_upper,
    k5PrefixGroup0046Row0118_mask_upper,
    k5PrefixGroup0046Row0119_mask_upper,
    k5PrefixGroup0046Row0120_mask_upper,
    k5PrefixGroup0046Row0121_mask_upper,
    k5PrefixGroup0046Row0122_mask_upper,
    k5PrefixGroup0046Row0123_mask_upper,
    k5PrefixGroup0046Row0124_mask_upper,
    k5PrefixGroup0046Row0125_mask_upper,
    k5PrefixGroup0046Row0126_mask_upper,
    k5PrefixGroup0046Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
