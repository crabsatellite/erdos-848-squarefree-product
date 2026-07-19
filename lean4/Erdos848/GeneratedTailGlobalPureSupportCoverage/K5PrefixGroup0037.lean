import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0037 : List (List ℕ) :=
  [[3, 43, 67, 71],
     [3, 43, 67, 73],
     [3, 43, 67, 79],
     [3, 43, 67, 83],
     [3, 43, 67, 89],
     [3, 43, 67, 97],
     [3, 43, 67, 101],
     [3, 43, 67, 103],
     [3, 43, 71, 73],
     [3, 43, 71, 79],
     [3, 43, 71, 83],
     [3, 43, 71, 89],
     [3, 43, 71, 97],
     [3, 43, 71, 101],
     [3, 43, 73, 79],
     [3, 43, 73, 83],
     [3, 43, 73, 89],
     [3, 43, 73, 97],
     [3, 43, 79, 83],
     [3, 43, 79, 89],
     [3, 43, 83, 89],
     [3, 47, 53, 59],
     [3, 47, 53, 61],
     [3, 47, 53, 67],
     [3, 47, 53, 71],
     [3, 47, 53, 73],
     [3, 47, 53, 79],
     [3, 47, 53, 83],
     [3, 47, 53, 89],
     [3, 47, 53, 97],
     [3, 47, 53, 101],
     [3, 47, 53, 103],
     [3, 47, 53, 107],
     [3, 47, 53, 109],
     [3, 47, 59, 61],
     [3, 47, 59, 67],
     [3, 47, 59, 71],
     [3, 47, 59, 73],
     [3, 47, 59, 79],
     [3, 47, 59, 83],
     [3, 47, 59, 89],
     [3, 47, 59, 97],
     [3, 47, 59, 101],
     [3, 47, 59, 103],
     [3, 47, 61, 67],
     [3, 47, 61, 71],
     [3, 47, 61, 73],
     [3, 47, 61, 79],
     [3, 47, 61, 83],
     [3, 47, 61, 89],
     [3, 47, 61, 97],
     [3, 47, 61, 101],
     [3, 47, 61, 103],
     [3, 47, 67, 71],
     [3, 47, 67, 73],
     [3, 47, 67, 79],
     [3, 47, 67, 83],
     [3, 47, 67, 89],
     [3, 47, 67, 97],
     [3, 47, 71, 73],
     [3, 47, 71, 79],
     [3, 47, 71, 83],
     [3, 47, 71, 89],
     [3, 47, 73, 79],
     [3, 47, 73, 83],
     [3, 47, 73, 89],
     [3, 47, 79, 83],
     [3, 47, 79, 89],
     [3, 53, 59, 61],
     [3, 53, 59, 67],
     [3, 53, 59, 71],
     [3, 53, 59, 73],
     [3, 53, 59, 79],
     [3, 53, 59, 83],
     [3, 53, 59, 89],
     [3, 53, 59, 97],
     [3, 53, 61, 67],
     [3, 53, 61, 71],
     [3, 53, 61, 73],
     [3, 53, 61, 79],
     [3, 53, 61, 83],
     [3, 53, 61, 89],
     [3, 53, 61, 97],
     [3, 53, 67, 71],
     [3, 53, 67, 73],
     [3, 53, 67, 79],
     [3, 53, 67, 83],
     [3, 53, 67, 89],
     [3, 53, 71, 73],
     [3, 53, 71, 79],
     [3, 53, 71, 83],
     [3, 53, 73, 79],
     [3, 53, 73, 83],
     [3, 53, 79, 83],
     [3, 59, 61, 67],
     [3, 59, 61, 71],
     [3, 59, 61, 73],
     [3, 59, 61, 79],
     [3, 59, 61, 83],
     [3, 59, 61, 89],
     [3, 59, 67, 71],
     [3, 59, 67, 73],
     [3, 59, 67, 79],
     [3, 59, 67, 83],
     [3, 59, 71, 73],
     [3, 59, 71, 79],
     [3, 59, 71, 83],
     [3, 59, 73, 79],
     [3, 59, 73, 83],
     [3, 61, 67, 71],
     [3, 61, 67, 73],
     [3, 61, 67, 79],
     [3, 61, 67, 83],
     [3, 61, 71, 73],
     [3, 61, 71, 79],
     [3, 61, 71, 83],
     [3, 61, 73, 79],
     [3, 67, 71, 73],
     [3, 67, 71, 79],
     [3, 67, 73, 79],
     [7, 11, 13, 17],
     [7, 11, 13, 19],
     [7, 11, 13, 23],
     [7, 11, 13, 29],
     [7, 11, 13, 31],
     [7, 11, 13, 37],
     [7, 11, 13, 41],
     [7, 11, 13, 43]]

theorem k5PrefixGroup0037Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 67, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 67, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 71, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 71, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 73, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 73, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 73, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 73, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 79, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 79, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 43, 83, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 43, 83, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 59] = true := by
  decide

theorem k5PrefixGroup0037Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 59] = true := by
  decide

theorem k5PrefixGroup0037Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 107] = true := by
  decide

theorem k5PrefixGroup0037Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 107] = true := by
  decide

theorem k5PrefixGroup0037Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 53, 109] = true := by
  decide

theorem k5PrefixGroup0037Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 53, 109] = true := by
  decide

theorem k5PrefixGroup0037Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 59, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 59, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 101] = true := by
  decide

theorem k5PrefixGroup0037Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 61, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 61, 103] = true := by
  decide

theorem k5PrefixGroup0037Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 67, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 67, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 71, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 71, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 73, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 73, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 47, 79, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 47, 79, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 61] = true := by
  decide

theorem k5PrefixGroup0037Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 59, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 59, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 61, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 61, 97] = true := by
  decide

theorem k5PrefixGroup0037Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 67, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 53, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 53, 79, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 67] = true := by
  decide

theorem k5PrefixGroup0037Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 61, 89] = true := by
  decide

theorem k5PrefixGroup0037Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 59, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 59, 73, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 67, 71] = true := by
  decide

theorem k5PrefixGroup0037Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 67, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 67, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 67, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 71, 83] = true := by
  decide

theorem k5PrefixGroup0037Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 61, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 61, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 67, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 67, 71, 73] = true := by
  decide

theorem k5PrefixGroup0037Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 67, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 67, 71, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 67, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 67, 73, 79] = true := by
  decide

theorem k5PrefixGroup0037Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 17] = true := by
  decide

theorem k5PrefixGroup0037Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 17] = true := by
  decide

theorem k5PrefixGroup0037Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 19] = true := by
  decide

theorem k5PrefixGroup0037Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 19] = true := by
  decide

theorem k5PrefixGroup0037Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 23] = true := by
  decide

theorem k5PrefixGroup0037Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 23] = true := by
  decide

theorem k5PrefixGroup0037Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 29] = true := by
  decide

theorem k5PrefixGroup0037Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 29] = true := by
  decide

theorem k5PrefixGroup0037Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 31] = true := by
  decide

theorem k5PrefixGroup0037Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 31] = true := by
  decide

theorem k5PrefixGroup0037Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 37] = true := by
  decide

theorem k5PrefixGroup0037Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 37] = true := by
  decide

theorem k5PrefixGroup0037Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 41] = true := by
  decide

theorem k5PrefixGroup0037Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 41] = true := by
  decide

theorem k5PrefixGroup0037Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 13, 43] = true := by
  decide

theorem k5PrefixGroup0037Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 13, 43] = true := by
  decide

theorem k5PrefixGroup0037_passes :
    k5PrefixGroup0037.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0037, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0037Row0000_passes,
    k5PrefixGroup0037Row0001_passes,
    k5PrefixGroup0037Row0002_passes,
    k5PrefixGroup0037Row0003_passes,
    k5PrefixGroup0037Row0004_passes,
    k5PrefixGroup0037Row0005_passes,
    k5PrefixGroup0037Row0006_passes,
    k5PrefixGroup0037Row0007_passes,
    k5PrefixGroup0037Row0008_passes,
    k5PrefixGroup0037Row0009_passes,
    k5PrefixGroup0037Row0010_passes,
    k5PrefixGroup0037Row0011_passes,
    k5PrefixGroup0037Row0012_passes,
    k5PrefixGroup0037Row0013_passes,
    k5PrefixGroup0037Row0014_passes,
    k5PrefixGroup0037Row0015_passes,
    k5PrefixGroup0037Row0016_passes,
    k5PrefixGroup0037Row0017_passes,
    k5PrefixGroup0037Row0018_passes,
    k5PrefixGroup0037Row0019_passes,
    k5PrefixGroup0037Row0020_passes,
    k5PrefixGroup0037Row0021_passes,
    k5PrefixGroup0037Row0022_passes,
    k5PrefixGroup0037Row0023_passes,
    k5PrefixGroup0037Row0024_passes,
    k5PrefixGroup0037Row0025_passes,
    k5PrefixGroup0037Row0026_passes,
    k5PrefixGroup0037Row0027_passes,
    k5PrefixGroup0037Row0028_passes,
    k5PrefixGroup0037Row0029_passes,
    k5PrefixGroup0037Row0030_passes,
    k5PrefixGroup0037Row0031_passes,
    k5PrefixGroup0037Row0032_passes,
    k5PrefixGroup0037Row0033_passes,
    k5PrefixGroup0037Row0034_passes,
    k5PrefixGroup0037Row0035_passes,
    k5PrefixGroup0037Row0036_passes,
    k5PrefixGroup0037Row0037_passes,
    k5PrefixGroup0037Row0038_passes,
    k5PrefixGroup0037Row0039_passes,
    k5PrefixGroup0037Row0040_passes,
    k5PrefixGroup0037Row0041_passes,
    k5PrefixGroup0037Row0042_passes,
    k5PrefixGroup0037Row0043_passes,
    k5PrefixGroup0037Row0044_passes,
    k5PrefixGroup0037Row0045_passes,
    k5PrefixGroup0037Row0046_passes,
    k5PrefixGroup0037Row0047_passes,
    k5PrefixGroup0037Row0048_passes,
    k5PrefixGroup0037Row0049_passes,
    k5PrefixGroup0037Row0050_passes,
    k5PrefixGroup0037Row0051_passes,
    k5PrefixGroup0037Row0052_passes,
    k5PrefixGroup0037Row0053_passes,
    k5PrefixGroup0037Row0054_passes,
    k5PrefixGroup0037Row0055_passes,
    k5PrefixGroup0037Row0056_passes,
    k5PrefixGroup0037Row0057_passes,
    k5PrefixGroup0037Row0058_passes,
    k5PrefixGroup0037Row0059_passes,
    k5PrefixGroup0037Row0060_passes,
    k5PrefixGroup0037Row0061_passes,
    k5PrefixGroup0037Row0062_passes,
    k5PrefixGroup0037Row0063_passes,
    k5PrefixGroup0037Row0064_passes,
    k5PrefixGroup0037Row0065_passes,
    k5PrefixGroup0037Row0066_passes,
    k5PrefixGroup0037Row0067_passes,
    k5PrefixGroup0037Row0068_passes,
    k5PrefixGroup0037Row0069_passes,
    k5PrefixGroup0037Row0070_passes,
    k5PrefixGroup0037Row0071_passes,
    k5PrefixGroup0037Row0072_passes,
    k5PrefixGroup0037Row0073_passes,
    k5PrefixGroup0037Row0074_passes,
    k5PrefixGroup0037Row0075_passes,
    k5PrefixGroup0037Row0076_passes,
    k5PrefixGroup0037Row0077_passes,
    k5PrefixGroup0037Row0078_passes,
    k5PrefixGroup0037Row0079_passes,
    k5PrefixGroup0037Row0080_passes,
    k5PrefixGroup0037Row0081_passes,
    k5PrefixGroup0037Row0082_passes,
    k5PrefixGroup0037Row0083_passes,
    k5PrefixGroup0037Row0084_passes,
    k5PrefixGroup0037Row0085_passes,
    k5PrefixGroup0037Row0086_passes,
    k5PrefixGroup0037Row0087_passes,
    k5PrefixGroup0037Row0088_passes,
    k5PrefixGroup0037Row0089_passes,
    k5PrefixGroup0037Row0090_passes,
    k5PrefixGroup0037Row0091_passes,
    k5PrefixGroup0037Row0092_passes,
    k5PrefixGroup0037Row0093_passes,
    k5PrefixGroup0037Row0094_passes,
    k5PrefixGroup0037Row0095_passes,
    k5PrefixGroup0037Row0096_passes,
    k5PrefixGroup0037Row0097_passes,
    k5PrefixGroup0037Row0098_passes,
    k5PrefixGroup0037Row0099_passes,
    k5PrefixGroup0037Row0100_passes,
    k5PrefixGroup0037Row0101_passes,
    k5PrefixGroup0037Row0102_passes,
    k5PrefixGroup0037Row0103_passes,
    k5PrefixGroup0037Row0104_passes,
    k5PrefixGroup0037Row0105_passes,
    k5PrefixGroup0037Row0106_passes,
    k5PrefixGroup0037Row0107_passes,
    k5PrefixGroup0037Row0108_passes,
    k5PrefixGroup0037Row0109_passes,
    k5PrefixGroup0037Row0110_passes,
    k5PrefixGroup0037Row0111_passes,
    k5PrefixGroup0037Row0112_passes,
    k5PrefixGroup0037Row0113_passes,
    k5PrefixGroup0037Row0114_passes,
    k5PrefixGroup0037Row0115_passes,
    k5PrefixGroup0037Row0116_passes,
    k5PrefixGroup0037Row0117_passes,
    k5PrefixGroup0037Row0118_passes,
    k5PrefixGroup0037Row0119_passes,
    k5PrefixGroup0037Row0120_passes,
    k5PrefixGroup0037Row0121_passes,
    k5PrefixGroup0037Row0122_passes,
    k5PrefixGroup0037Row0123_passes,
    k5PrefixGroup0037Row0124_passes,
    k5PrefixGroup0037Row0125_passes,
    k5PrefixGroup0037Row0126_passes,
    k5PrefixGroup0037Row0127_passes]

theorem k5PrefixGroup0037_mask_upper :
    k5PrefixGroup0037.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0037, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0037Row0000_mask_upper,
    k5PrefixGroup0037Row0001_mask_upper,
    k5PrefixGroup0037Row0002_mask_upper,
    k5PrefixGroup0037Row0003_mask_upper,
    k5PrefixGroup0037Row0004_mask_upper,
    k5PrefixGroup0037Row0005_mask_upper,
    k5PrefixGroup0037Row0006_mask_upper,
    k5PrefixGroup0037Row0007_mask_upper,
    k5PrefixGroup0037Row0008_mask_upper,
    k5PrefixGroup0037Row0009_mask_upper,
    k5PrefixGroup0037Row0010_mask_upper,
    k5PrefixGroup0037Row0011_mask_upper,
    k5PrefixGroup0037Row0012_mask_upper,
    k5PrefixGroup0037Row0013_mask_upper,
    k5PrefixGroup0037Row0014_mask_upper,
    k5PrefixGroup0037Row0015_mask_upper,
    k5PrefixGroup0037Row0016_mask_upper,
    k5PrefixGroup0037Row0017_mask_upper,
    k5PrefixGroup0037Row0018_mask_upper,
    k5PrefixGroup0037Row0019_mask_upper,
    k5PrefixGroup0037Row0020_mask_upper,
    k5PrefixGroup0037Row0021_mask_upper,
    k5PrefixGroup0037Row0022_mask_upper,
    k5PrefixGroup0037Row0023_mask_upper,
    k5PrefixGroup0037Row0024_mask_upper,
    k5PrefixGroup0037Row0025_mask_upper,
    k5PrefixGroup0037Row0026_mask_upper,
    k5PrefixGroup0037Row0027_mask_upper,
    k5PrefixGroup0037Row0028_mask_upper,
    k5PrefixGroup0037Row0029_mask_upper,
    k5PrefixGroup0037Row0030_mask_upper,
    k5PrefixGroup0037Row0031_mask_upper,
    k5PrefixGroup0037Row0032_mask_upper,
    k5PrefixGroup0037Row0033_mask_upper,
    k5PrefixGroup0037Row0034_mask_upper,
    k5PrefixGroup0037Row0035_mask_upper,
    k5PrefixGroup0037Row0036_mask_upper,
    k5PrefixGroup0037Row0037_mask_upper,
    k5PrefixGroup0037Row0038_mask_upper,
    k5PrefixGroup0037Row0039_mask_upper,
    k5PrefixGroup0037Row0040_mask_upper,
    k5PrefixGroup0037Row0041_mask_upper,
    k5PrefixGroup0037Row0042_mask_upper,
    k5PrefixGroup0037Row0043_mask_upper,
    k5PrefixGroup0037Row0044_mask_upper,
    k5PrefixGroup0037Row0045_mask_upper,
    k5PrefixGroup0037Row0046_mask_upper,
    k5PrefixGroup0037Row0047_mask_upper,
    k5PrefixGroup0037Row0048_mask_upper,
    k5PrefixGroup0037Row0049_mask_upper,
    k5PrefixGroup0037Row0050_mask_upper,
    k5PrefixGroup0037Row0051_mask_upper,
    k5PrefixGroup0037Row0052_mask_upper,
    k5PrefixGroup0037Row0053_mask_upper,
    k5PrefixGroup0037Row0054_mask_upper,
    k5PrefixGroup0037Row0055_mask_upper,
    k5PrefixGroup0037Row0056_mask_upper,
    k5PrefixGroup0037Row0057_mask_upper,
    k5PrefixGroup0037Row0058_mask_upper,
    k5PrefixGroup0037Row0059_mask_upper,
    k5PrefixGroup0037Row0060_mask_upper,
    k5PrefixGroup0037Row0061_mask_upper,
    k5PrefixGroup0037Row0062_mask_upper,
    k5PrefixGroup0037Row0063_mask_upper,
    k5PrefixGroup0037Row0064_mask_upper,
    k5PrefixGroup0037Row0065_mask_upper,
    k5PrefixGroup0037Row0066_mask_upper,
    k5PrefixGroup0037Row0067_mask_upper,
    k5PrefixGroup0037Row0068_mask_upper,
    k5PrefixGroup0037Row0069_mask_upper,
    k5PrefixGroup0037Row0070_mask_upper,
    k5PrefixGroup0037Row0071_mask_upper,
    k5PrefixGroup0037Row0072_mask_upper,
    k5PrefixGroup0037Row0073_mask_upper,
    k5PrefixGroup0037Row0074_mask_upper,
    k5PrefixGroup0037Row0075_mask_upper,
    k5PrefixGroup0037Row0076_mask_upper,
    k5PrefixGroup0037Row0077_mask_upper,
    k5PrefixGroup0037Row0078_mask_upper,
    k5PrefixGroup0037Row0079_mask_upper,
    k5PrefixGroup0037Row0080_mask_upper,
    k5PrefixGroup0037Row0081_mask_upper,
    k5PrefixGroup0037Row0082_mask_upper,
    k5PrefixGroup0037Row0083_mask_upper,
    k5PrefixGroup0037Row0084_mask_upper,
    k5PrefixGroup0037Row0085_mask_upper,
    k5PrefixGroup0037Row0086_mask_upper,
    k5PrefixGroup0037Row0087_mask_upper,
    k5PrefixGroup0037Row0088_mask_upper,
    k5PrefixGroup0037Row0089_mask_upper,
    k5PrefixGroup0037Row0090_mask_upper,
    k5PrefixGroup0037Row0091_mask_upper,
    k5PrefixGroup0037Row0092_mask_upper,
    k5PrefixGroup0037Row0093_mask_upper,
    k5PrefixGroup0037Row0094_mask_upper,
    k5PrefixGroup0037Row0095_mask_upper,
    k5PrefixGroup0037Row0096_mask_upper,
    k5PrefixGroup0037Row0097_mask_upper,
    k5PrefixGroup0037Row0098_mask_upper,
    k5PrefixGroup0037Row0099_mask_upper,
    k5PrefixGroup0037Row0100_mask_upper,
    k5PrefixGroup0037Row0101_mask_upper,
    k5PrefixGroup0037Row0102_mask_upper,
    k5PrefixGroup0037Row0103_mask_upper,
    k5PrefixGroup0037Row0104_mask_upper,
    k5PrefixGroup0037Row0105_mask_upper,
    k5PrefixGroup0037Row0106_mask_upper,
    k5PrefixGroup0037Row0107_mask_upper,
    k5PrefixGroup0037Row0108_mask_upper,
    k5PrefixGroup0037Row0109_mask_upper,
    k5PrefixGroup0037Row0110_mask_upper,
    k5PrefixGroup0037Row0111_mask_upper,
    k5PrefixGroup0037Row0112_mask_upper,
    k5PrefixGroup0037Row0113_mask_upper,
    k5PrefixGroup0037Row0114_mask_upper,
    k5PrefixGroup0037Row0115_mask_upper,
    k5PrefixGroup0037Row0116_mask_upper,
    k5PrefixGroup0037Row0117_mask_upper,
    k5PrefixGroup0037Row0118_mask_upper,
    k5PrefixGroup0037Row0119_mask_upper,
    k5PrefixGroup0037Row0120_mask_upper,
    k5PrefixGroup0037Row0121_mask_upper,
    k5PrefixGroup0037Row0122_mask_upper,
    k5PrefixGroup0037Row0123_mask_upper,
    k5PrefixGroup0037Row0124_mask_upper,
    k5PrefixGroup0037Row0125_mask_upper,
    k5PrefixGroup0037Row0126_mask_upper,
    k5PrefixGroup0037Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
