import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0034 : List (List ℕ) :=
  [[3, 31, 47, 53],
     [3, 31, 47, 59],
     [3, 31, 47, 61],
     [3, 31, 47, 67],
     [3, 31, 47, 71],
     [3, 31, 47, 73],
     [3, 31, 47, 79],
     [3, 31, 47, 83],
     [3, 31, 47, 89],
     [3, 31, 47, 97],
     [3, 31, 47, 101],
     [3, 31, 47, 103],
     [3, 31, 47, 107],
     [3, 31, 47, 109],
     [3, 31, 47, 113],
     [3, 31, 47, 127],
     [3, 31, 47, 131],
     [3, 31, 47, 137],
     [3, 31, 47, 139],
     [3, 31, 53, 59],
     [3, 31, 53, 61],
     [3, 31, 53, 67],
     [3, 31, 53, 71],
     [3, 31, 53, 73],
     [3, 31, 53, 79],
     [3, 31, 53, 83],
     [3, 31, 53, 89],
     [3, 31, 53, 97],
     [3, 31, 53, 101],
     [3, 31, 53, 103],
     [3, 31, 53, 107],
     [3, 31, 53, 109],
     [3, 31, 53, 113],
     [3, 31, 53, 127],
     [3, 31, 53, 131],
     [3, 31, 53, 137],
     [3, 31, 59, 61],
     [3, 31, 59, 67],
     [3, 31, 59, 71],
     [3, 31, 59, 73],
     [3, 31, 59, 79],
     [3, 31, 59, 83],
     [3, 31, 59, 89],
     [3, 31, 59, 97],
     [3, 31, 59, 101],
     [3, 31, 59, 103],
     [3, 31, 59, 107],
     [3, 31, 59, 109],
     [3, 31, 59, 113],
     [3, 31, 59, 127],
     [3, 31, 61, 67],
     [3, 31, 61, 71],
     [3, 31, 61, 73],
     [3, 31, 61, 79],
     [3, 31, 61, 83],
     [3, 31, 61, 89],
     [3, 31, 61, 97],
     [3, 31, 61, 101],
     [3, 31, 61, 103],
     [3, 31, 61, 107],
     [3, 31, 61, 109],
     [3, 31, 61, 113],
     [3, 31, 61, 127],
     [3, 31, 67, 71],
     [3, 31, 67, 73],
     [3, 31, 67, 79],
     [3, 31, 67, 83],
     [3, 31, 67, 89],
     [3, 31, 67, 97],
     [3, 31, 67, 101],
     [3, 31, 67, 103],
     [3, 31, 67, 107],
     [3, 31, 67, 109],
     [3, 31, 67, 113],
     [3, 31, 71, 73],
     [3, 31, 71, 79],
     [3, 31, 71, 83],
     [3, 31, 71, 89],
     [3, 31, 71, 97],
     [3, 31, 71, 101],
     [3, 31, 71, 103],
     [3, 31, 71, 107],
     [3, 31, 71, 109],
     [3, 31, 71, 113],
     [3, 31, 73, 79],
     [3, 31, 73, 83],
     [3, 31, 73, 89],
     [3, 31, 73, 97],
     [3, 31, 73, 101],
     [3, 31, 73, 103],
     [3, 31, 73, 107],
     [3, 31, 73, 109],
     [3, 31, 79, 83],
     [3, 31, 79, 89],
     [3, 31, 79, 97],
     [3, 31, 79, 101],
     [3, 31, 79, 103],
     [3, 31, 79, 107],
     [3, 31, 79, 109],
     [3, 31, 83, 89],
     [3, 31, 83, 97],
     [3, 31, 83, 101],
     [3, 31, 83, 103],
     [3, 31, 83, 107],
     [3, 31, 83, 109],
     [3, 31, 89, 97],
     [3, 31, 89, 101],
     [3, 31, 89, 103],
     [3, 31, 89, 107],
     [3, 31, 97, 101],
     [3, 37, 41, 43],
     [3, 37, 41, 47],
     [3, 37, 41, 53],
     [3, 37, 41, 59],
     [3, 37, 41, 61],
     [3, 37, 41, 67],
     [3, 37, 41, 71],
     [3, 37, 41, 73],
     [3, 37, 41, 79],
     [3, 37, 41, 83],
     [3, 37, 41, 89],
     [3, 37, 41, 97],
     [3, 37, 41, 101],
     [3, 37, 41, 103],
     [3, 37, 41, 107],
     [3, 37, 41, 109],
     [3, 37, 41, 113],
     [3, 37, 41, 127]]

theorem k5PrefixGroup0034Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0034Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0034Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 131] = true := by
  decide

theorem k5PrefixGroup0034Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 131] = true := by
  decide

theorem k5PrefixGroup0034Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 137] = true := by
  decide

theorem k5PrefixGroup0034Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 137] = true := by
  decide

theorem k5PrefixGroup0034Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 47, 139] = true := by
  decide

theorem k5PrefixGroup0034Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 47, 139] = true := by
  decide

theorem k5PrefixGroup0034Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 131] = true := by
  decide

theorem k5PrefixGroup0034Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 131] = true := by
  decide

theorem k5PrefixGroup0034Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 53, 137] = true := by
  decide

theorem k5PrefixGroup0034Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 53, 137] = true := by
  decide

theorem k5PrefixGroup0034Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 59, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 59, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 61, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 61, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 67, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 67, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 71, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 71, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 73, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 73, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 79, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 79, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 83, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 83, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 89, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 89, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 89, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 89, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 89, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 89, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 89, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 89, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 97, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 97, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0034Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0034Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0034Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0034Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0034Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0034Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0034Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0034Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0034Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0034Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0034Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 79] = true := by
  decide

theorem k5PrefixGroup0034Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 83] = true := by
  decide

theorem k5PrefixGroup0034Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 89] = true := by
  decide

theorem k5PrefixGroup0034Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 97] = true := by
  decide

theorem k5PrefixGroup0034Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 101] = true := by
  decide

theorem k5PrefixGroup0034Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 103] = true := by
  decide

theorem k5PrefixGroup0034Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 107] = true := by
  decide

theorem k5PrefixGroup0034Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 109] = true := by
  decide

theorem k5PrefixGroup0034Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 113] = true := by
  decide

theorem k5PrefixGroup0034Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 37, 41, 127] = true := by
  decide

theorem k5PrefixGroup0034Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 37, 41, 127] = true := by
  decide

theorem k5PrefixGroup0034_passes :
    k5PrefixGroup0034.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0034, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0034Row0000_passes,
    k5PrefixGroup0034Row0001_passes,
    k5PrefixGroup0034Row0002_passes,
    k5PrefixGroup0034Row0003_passes,
    k5PrefixGroup0034Row0004_passes,
    k5PrefixGroup0034Row0005_passes,
    k5PrefixGroup0034Row0006_passes,
    k5PrefixGroup0034Row0007_passes,
    k5PrefixGroup0034Row0008_passes,
    k5PrefixGroup0034Row0009_passes,
    k5PrefixGroup0034Row0010_passes,
    k5PrefixGroup0034Row0011_passes,
    k5PrefixGroup0034Row0012_passes,
    k5PrefixGroup0034Row0013_passes,
    k5PrefixGroup0034Row0014_passes,
    k5PrefixGroup0034Row0015_passes,
    k5PrefixGroup0034Row0016_passes,
    k5PrefixGroup0034Row0017_passes,
    k5PrefixGroup0034Row0018_passes,
    k5PrefixGroup0034Row0019_passes,
    k5PrefixGroup0034Row0020_passes,
    k5PrefixGroup0034Row0021_passes,
    k5PrefixGroup0034Row0022_passes,
    k5PrefixGroup0034Row0023_passes,
    k5PrefixGroup0034Row0024_passes,
    k5PrefixGroup0034Row0025_passes,
    k5PrefixGroup0034Row0026_passes,
    k5PrefixGroup0034Row0027_passes,
    k5PrefixGroup0034Row0028_passes,
    k5PrefixGroup0034Row0029_passes,
    k5PrefixGroup0034Row0030_passes,
    k5PrefixGroup0034Row0031_passes,
    k5PrefixGroup0034Row0032_passes,
    k5PrefixGroup0034Row0033_passes,
    k5PrefixGroup0034Row0034_passes,
    k5PrefixGroup0034Row0035_passes,
    k5PrefixGroup0034Row0036_passes,
    k5PrefixGroup0034Row0037_passes,
    k5PrefixGroup0034Row0038_passes,
    k5PrefixGroup0034Row0039_passes,
    k5PrefixGroup0034Row0040_passes,
    k5PrefixGroup0034Row0041_passes,
    k5PrefixGroup0034Row0042_passes,
    k5PrefixGroup0034Row0043_passes,
    k5PrefixGroup0034Row0044_passes,
    k5PrefixGroup0034Row0045_passes,
    k5PrefixGroup0034Row0046_passes,
    k5PrefixGroup0034Row0047_passes,
    k5PrefixGroup0034Row0048_passes,
    k5PrefixGroup0034Row0049_passes,
    k5PrefixGroup0034Row0050_passes,
    k5PrefixGroup0034Row0051_passes,
    k5PrefixGroup0034Row0052_passes,
    k5PrefixGroup0034Row0053_passes,
    k5PrefixGroup0034Row0054_passes,
    k5PrefixGroup0034Row0055_passes,
    k5PrefixGroup0034Row0056_passes,
    k5PrefixGroup0034Row0057_passes,
    k5PrefixGroup0034Row0058_passes,
    k5PrefixGroup0034Row0059_passes,
    k5PrefixGroup0034Row0060_passes,
    k5PrefixGroup0034Row0061_passes,
    k5PrefixGroup0034Row0062_passes,
    k5PrefixGroup0034Row0063_passes,
    k5PrefixGroup0034Row0064_passes,
    k5PrefixGroup0034Row0065_passes,
    k5PrefixGroup0034Row0066_passes,
    k5PrefixGroup0034Row0067_passes,
    k5PrefixGroup0034Row0068_passes,
    k5PrefixGroup0034Row0069_passes,
    k5PrefixGroup0034Row0070_passes,
    k5PrefixGroup0034Row0071_passes,
    k5PrefixGroup0034Row0072_passes,
    k5PrefixGroup0034Row0073_passes,
    k5PrefixGroup0034Row0074_passes,
    k5PrefixGroup0034Row0075_passes,
    k5PrefixGroup0034Row0076_passes,
    k5PrefixGroup0034Row0077_passes,
    k5PrefixGroup0034Row0078_passes,
    k5PrefixGroup0034Row0079_passes,
    k5PrefixGroup0034Row0080_passes,
    k5PrefixGroup0034Row0081_passes,
    k5PrefixGroup0034Row0082_passes,
    k5PrefixGroup0034Row0083_passes,
    k5PrefixGroup0034Row0084_passes,
    k5PrefixGroup0034Row0085_passes,
    k5PrefixGroup0034Row0086_passes,
    k5PrefixGroup0034Row0087_passes,
    k5PrefixGroup0034Row0088_passes,
    k5PrefixGroup0034Row0089_passes,
    k5PrefixGroup0034Row0090_passes,
    k5PrefixGroup0034Row0091_passes,
    k5PrefixGroup0034Row0092_passes,
    k5PrefixGroup0034Row0093_passes,
    k5PrefixGroup0034Row0094_passes,
    k5PrefixGroup0034Row0095_passes,
    k5PrefixGroup0034Row0096_passes,
    k5PrefixGroup0034Row0097_passes,
    k5PrefixGroup0034Row0098_passes,
    k5PrefixGroup0034Row0099_passes,
    k5PrefixGroup0034Row0100_passes,
    k5PrefixGroup0034Row0101_passes,
    k5PrefixGroup0034Row0102_passes,
    k5PrefixGroup0034Row0103_passes,
    k5PrefixGroup0034Row0104_passes,
    k5PrefixGroup0034Row0105_passes,
    k5PrefixGroup0034Row0106_passes,
    k5PrefixGroup0034Row0107_passes,
    k5PrefixGroup0034Row0108_passes,
    k5PrefixGroup0034Row0109_passes,
    k5PrefixGroup0034Row0110_passes,
    k5PrefixGroup0034Row0111_passes,
    k5PrefixGroup0034Row0112_passes,
    k5PrefixGroup0034Row0113_passes,
    k5PrefixGroup0034Row0114_passes,
    k5PrefixGroup0034Row0115_passes,
    k5PrefixGroup0034Row0116_passes,
    k5PrefixGroup0034Row0117_passes,
    k5PrefixGroup0034Row0118_passes,
    k5PrefixGroup0034Row0119_passes,
    k5PrefixGroup0034Row0120_passes,
    k5PrefixGroup0034Row0121_passes,
    k5PrefixGroup0034Row0122_passes,
    k5PrefixGroup0034Row0123_passes,
    k5PrefixGroup0034Row0124_passes,
    k5PrefixGroup0034Row0125_passes,
    k5PrefixGroup0034Row0126_passes,
    k5PrefixGroup0034Row0127_passes]

theorem k5PrefixGroup0034_mask_upper :
    k5PrefixGroup0034.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0034, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0034Row0000_mask_upper,
    k5PrefixGroup0034Row0001_mask_upper,
    k5PrefixGroup0034Row0002_mask_upper,
    k5PrefixGroup0034Row0003_mask_upper,
    k5PrefixGroup0034Row0004_mask_upper,
    k5PrefixGroup0034Row0005_mask_upper,
    k5PrefixGroup0034Row0006_mask_upper,
    k5PrefixGroup0034Row0007_mask_upper,
    k5PrefixGroup0034Row0008_mask_upper,
    k5PrefixGroup0034Row0009_mask_upper,
    k5PrefixGroup0034Row0010_mask_upper,
    k5PrefixGroup0034Row0011_mask_upper,
    k5PrefixGroup0034Row0012_mask_upper,
    k5PrefixGroup0034Row0013_mask_upper,
    k5PrefixGroup0034Row0014_mask_upper,
    k5PrefixGroup0034Row0015_mask_upper,
    k5PrefixGroup0034Row0016_mask_upper,
    k5PrefixGroup0034Row0017_mask_upper,
    k5PrefixGroup0034Row0018_mask_upper,
    k5PrefixGroup0034Row0019_mask_upper,
    k5PrefixGroup0034Row0020_mask_upper,
    k5PrefixGroup0034Row0021_mask_upper,
    k5PrefixGroup0034Row0022_mask_upper,
    k5PrefixGroup0034Row0023_mask_upper,
    k5PrefixGroup0034Row0024_mask_upper,
    k5PrefixGroup0034Row0025_mask_upper,
    k5PrefixGroup0034Row0026_mask_upper,
    k5PrefixGroup0034Row0027_mask_upper,
    k5PrefixGroup0034Row0028_mask_upper,
    k5PrefixGroup0034Row0029_mask_upper,
    k5PrefixGroup0034Row0030_mask_upper,
    k5PrefixGroup0034Row0031_mask_upper,
    k5PrefixGroup0034Row0032_mask_upper,
    k5PrefixGroup0034Row0033_mask_upper,
    k5PrefixGroup0034Row0034_mask_upper,
    k5PrefixGroup0034Row0035_mask_upper,
    k5PrefixGroup0034Row0036_mask_upper,
    k5PrefixGroup0034Row0037_mask_upper,
    k5PrefixGroup0034Row0038_mask_upper,
    k5PrefixGroup0034Row0039_mask_upper,
    k5PrefixGroup0034Row0040_mask_upper,
    k5PrefixGroup0034Row0041_mask_upper,
    k5PrefixGroup0034Row0042_mask_upper,
    k5PrefixGroup0034Row0043_mask_upper,
    k5PrefixGroup0034Row0044_mask_upper,
    k5PrefixGroup0034Row0045_mask_upper,
    k5PrefixGroup0034Row0046_mask_upper,
    k5PrefixGroup0034Row0047_mask_upper,
    k5PrefixGroup0034Row0048_mask_upper,
    k5PrefixGroup0034Row0049_mask_upper,
    k5PrefixGroup0034Row0050_mask_upper,
    k5PrefixGroup0034Row0051_mask_upper,
    k5PrefixGroup0034Row0052_mask_upper,
    k5PrefixGroup0034Row0053_mask_upper,
    k5PrefixGroup0034Row0054_mask_upper,
    k5PrefixGroup0034Row0055_mask_upper,
    k5PrefixGroup0034Row0056_mask_upper,
    k5PrefixGroup0034Row0057_mask_upper,
    k5PrefixGroup0034Row0058_mask_upper,
    k5PrefixGroup0034Row0059_mask_upper,
    k5PrefixGroup0034Row0060_mask_upper,
    k5PrefixGroup0034Row0061_mask_upper,
    k5PrefixGroup0034Row0062_mask_upper,
    k5PrefixGroup0034Row0063_mask_upper,
    k5PrefixGroup0034Row0064_mask_upper,
    k5PrefixGroup0034Row0065_mask_upper,
    k5PrefixGroup0034Row0066_mask_upper,
    k5PrefixGroup0034Row0067_mask_upper,
    k5PrefixGroup0034Row0068_mask_upper,
    k5PrefixGroup0034Row0069_mask_upper,
    k5PrefixGroup0034Row0070_mask_upper,
    k5PrefixGroup0034Row0071_mask_upper,
    k5PrefixGroup0034Row0072_mask_upper,
    k5PrefixGroup0034Row0073_mask_upper,
    k5PrefixGroup0034Row0074_mask_upper,
    k5PrefixGroup0034Row0075_mask_upper,
    k5PrefixGroup0034Row0076_mask_upper,
    k5PrefixGroup0034Row0077_mask_upper,
    k5PrefixGroup0034Row0078_mask_upper,
    k5PrefixGroup0034Row0079_mask_upper,
    k5PrefixGroup0034Row0080_mask_upper,
    k5PrefixGroup0034Row0081_mask_upper,
    k5PrefixGroup0034Row0082_mask_upper,
    k5PrefixGroup0034Row0083_mask_upper,
    k5PrefixGroup0034Row0084_mask_upper,
    k5PrefixGroup0034Row0085_mask_upper,
    k5PrefixGroup0034Row0086_mask_upper,
    k5PrefixGroup0034Row0087_mask_upper,
    k5PrefixGroup0034Row0088_mask_upper,
    k5PrefixGroup0034Row0089_mask_upper,
    k5PrefixGroup0034Row0090_mask_upper,
    k5PrefixGroup0034Row0091_mask_upper,
    k5PrefixGroup0034Row0092_mask_upper,
    k5PrefixGroup0034Row0093_mask_upper,
    k5PrefixGroup0034Row0094_mask_upper,
    k5PrefixGroup0034Row0095_mask_upper,
    k5PrefixGroup0034Row0096_mask_upper,
    k5PrefixGroup0034Row0097_mask_upper,
    k5PrefixGroup0034Row0098_mask_upper,
    k5PrefixGroup0034Row0099_mask_upper,
    k5PrefixGroup0034Row0100_mask_upper,
    k5PrefixGroup0034Row0101_mask_upper,
    k5PrefixGroup0034Row0102_mask_upper,
    k5PrefixGroup0034Row0103_mask_upper,
    k5PrefixGroup0034Row0104_mask_upper,
    k5PrefixGroup0034Row0105_mask_upper,
    k5PrefixGroup0034Row0106_mask_upper,
    k5PrefixGroup0034Row0107_mask_upper,
    k5PrefixGroup0034Row0108_mask_upper,
    k5PrefixGroup0034Row0109_mask_upper,
    k5PrefixGroup0034Row0110_mask_upper,
    k5PrefixGroup0034Row0111_mask_upper,
    k5PrefixGroup0034Row0112_mask_upper,
    k5PrefixGroup0034Row0113_mask_upper,
    k5PrefixGroup0034Row0114_mask_upper,
    k5PrefixGroup0034Row0115_mask_upper,
    k5PrefixGroup0034Row0116_mask_upper,
    k5PrefixGroup0034Row0117_mask_upper,
    k5PrefixGroup0034Row0118_mask_upper,
    k5PrefixGroup0034Row0119_mask_upper,
    k5PrefixGroup0034Row0120_mask_upper,
    k5PrefixGroup0034Row0121_mask_upper,
    k5PrefixGroup0034Row0122_mask_upper,
    k5PrefixGroup0034Row0123_mask_upper,
    k5PrefixGroup0034Row0124_mask_upper,
    k5PrefixGroup0034Row0125_mask_upper,
    k5PrefixGroup0034Row0126_mask_upper,
    k5PrefixGroup0034Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
