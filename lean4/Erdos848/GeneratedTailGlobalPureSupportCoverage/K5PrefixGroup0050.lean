import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0050 : List (List ℕ) :=
  [[7, 29, 53, 71],
     [7, 29, 53, 73],
     [7, 29, 53, 79],
     [7, 29, 53, 83],
     [7, 29, 53, 89],
     [7, 29, 59, 61],
     [7, 29, 59, 67],
     [7, 29, 59, 71],
     [7, 29, 59, 73],
     [7, 29, 59, 79],
     [7, 29, 59, 83],
     [7, 29, 61, 67],
     [7, 29, 61, 71],
     [7, 29, 61, 73],
     [7, 29, 61, 79],
     [7, 29, 61, 83],
     [7, 29, 67, 71],
     [7, 29, 67, 73],
     [7, 29, 67, 79],
     [7, 29, 71, 73],
     [7, 29, 71, 79],
     [7, 31, 37, 41],
     [7, 31, 37, 43],
     [7, 31, 37, 47],
     [7, 31, 37, 53],
     [7, 31, 37, 59],
     [7, 31, 37, 61],
     [7, 31, 37, 67],
     [7, 31, 37, 71],
     [7, 31, 37, 73],
     [7, 31, 37, 79],
     [7, 31, 37, 83],
     [7, 31, 37, 89],
     [7, 31, 37, 97],
     [7, 31, 37, 101],
     [7, 31, 37, 103],
     [7, 31, 37, 107],
     [7, 31, 41, 43],
     [7, 31, 41, 47],
     [7, 31, 41, 53],
     [7, 31, 41, 59],
     [7, 31, 41, 61],
     [7, 31, 41, 67],
     [7, 31, 41, 71],
     [7, 31, 41, 73],
     [7, 31, 41, 79],
     [7, 31, 41, 83],
     [7, 31, 41, 89],
     [7, 31, 41, 97],
     [7, 31, 41, 101],
     [7, 31, 43, 47],
     [7, 31, 43, 53],
     [7, 31, 43, 59],
     [7, 31, 43, 61],
     [7, 31, 43, 67],
     [7, 31, 43, 71],
     [7, 31, 43, 73],
     [7, 31, 43, 79],
     [7, 31, 43, 83],
     [7, 31, 43, 89],
     [7, 31, 43, 97],
     [7, 31, 47, 53],
     [7, 31, 47, 59],
     [7, 31, 47, 61],
     [7, 31, 47, 67],
     [7, 31, 47, 71],
     [7, 31, 47, 73],
     [7, 31, 47, 79],
     [7, 31, 47, 83],
     [7, 31, 47, 89],
     [7, 31, 53, 59],
     [7, 31, 53, 61],
     [7, 31, 53, 67],
     [7, 31, 53, 71],
     [7, 31, 53, 73],
     [7, 31, 53, 79],
     [7, 31, 53, 83],
     [7, 31, 59, 61],
     [7, 31, 59, 67],
     [7, 31, 59, 71],
     [7, 31, 59, 73],
     [7, 31, 59, 79],
     [7, 31, 59, 83],
     [7, 31, 61, 67],
     [7, 31, 61, 71],
     [7, 31, 61, 73],
     [7, 31, 61, 79],
     [7, 31, 67, 71],
     [7, 31, 67, 73],
     [7, 31, 67, 79],
     [7, 31, 71, 73],
     [7, 37, 41, 43],
     [7, 37, 41, 47],
     [7, 37, 41, 53],
     [7, 37, 41, 59],
     [7, 37, 41, 61],
     [7, 37, 41, 67],
     [7, 37, 41, 71],
     [7, 37, 41, 73],
     [7, 37, 41, 79],
     [7, 37, 41, 83],
     [7, 37, 41, 89],
     [7, 37, 43, 47],
     [7, 37, 43, 53],
     [7, 37, 43, 59],
     [7, 37, 43, 61],
     [7, 37, 43, 67],
     [7, 37, 43, 71],
     [7, 37, 43, 73],
     [7, 37, 43, 79],
     [7, 37, 43, 83],
     [7, 37, 43, 89],
     [7, 37, 47, 53],
     [7, 37, 47, 59],
     [7, 37, 47, 61],
     [7, 37, 47, 67],
     [7, 37, 47, 71],
     [7, 37, 47, 73],
     [7, 37, 47, 79],
     [7, 37, 47, 83],
     [7, 37, 53, 59],
     [7, 37, 53, 61],
     [7, 37, 53, 67],
     [7, 37, 53, 71],
     [7, 37, 53, 73],
     [7, 37, 53, 79],
     [7, 37, 59, 61],
     [7, 37, 59, 67]]

theorem k5PrefixGroup0050Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 53, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 53, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 53, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 53, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 59, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 59, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 61, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 61, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 61, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 61, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 61, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 61, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 61, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 61, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 67, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 67, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 67, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 67, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 67, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 67, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 71, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 71, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 29, 71, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 29, 71, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0050Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0050Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 101] = true := by
  decide

theorem k5PrefixGroup0050Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 101] = true := by
  decide

theorem k5PrefixGroup0050Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 103] = true := by
  decide

theorem k5PrefixGroup0050Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 103] = true := by
  decide

theorem k5PrefixGroup0050Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 37, 107] = true := by
  decide

theorem k5PrefixGroup0050Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 37, 107] = true := by
  decide

theorem k5PrefixGroup0050Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 41, 101] = true := by
  decide

theorem k5PrefixGroup0050Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 41, 101] = true := by
  decide

theorem k5PrefixGroup0050Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 43, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 43, 97] = true := by
  decide

theorem k5PrefixGroup0050Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 47, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 47, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 53, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 53, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 59, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 59, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 61, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 61, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 61, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 61, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 61, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 61, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 61, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 61, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 67, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 67, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 67, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 67, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 67, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 67, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 31, 71, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 31, 71, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0050Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 41, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 41, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0050Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 43, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 43, 89] = true := by
  decide

theorem k5PrefixGroup0050Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0050Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 47, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 47, 83] = true := by
  decide

theorem k5PrefixGroup0050Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 59] = true := by
  decide

theorem k5PrefixGroup0050Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 71] = true := by
  decide

theorem k5PrefixGroup0050Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 73] = true := by
  decide

theorem k5PrefixGroup0050Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 53, 79] = true := by
  decide

theorem k5PrefixGroup0050Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 59, 61] = true := by
  decide

theorem k5PrefixGroup0050Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 59, 67] = true := by
  decide

theorem k5PrefixGroup0050_passes :
    k5PrefixGroup0050.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0050, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0050Row0000_passes,
    k5PrefixGroup0050Row0001_passes,
    k5PrefixGroup0050Row0002_passes,
    k5PrefixGroup0050Row0003_passes,
    k5PrefixGroup0050Row0004_passes,
    k5PrefixGroup0050Row0005_passes,
    k5PrefixGroup0050Row0006_passes,
    k5PrefixGroup0050Row0007_passes,
    k5PrefixGroup0050Row0008_passes,
    k5PrefixGroup0050Row0009_passes,
    k5PrefixGroup0050Row0010_passes,
    k5PrefixGroup0050Row0011_passes,
    k5PrefixGroup0050Row0012_passes,
    k5PrefixGroup0050Row0013_passes,
    k5PrefixGroup0050Row0014_passes,
    k5PrefixGroup0050Row0015_passes,
    k5PrefixGroup0050Row0016_passes,
    k5PrefixGroup0050Row0017_passes,
    k5PrefixGroup0050Row0018_passes,
    k5PrefixGroup0050Row0019_passes,
    k5PrefixGroup0050Row0020_passes,
    k5PrefixGroup0050Row0021_passes,
    k5PrefixGroup0050Row0022_passes,
    k5PrefixGroup0050Row0023_passes,
    k5PrefixGroup0050Row0024_passes,
    k5PrefixGroup0050Row0025_passes,
    k5PrefixGroup0050Row0026_passes,
    k5PrefixGroup0050Row0027_passes,
    k5PrefixGroup0050Row0028_passes,
    k5PrefixGroup0050Row0029_passes,
    k5PrefixGroup0050Row0030_passes,
    k5PrefixGroup0050Row0031_passes,
    k5PrefixGroup0050Row0032_passes,
    k5PrefixGroup0050Row0033_passes,
    k5PrefixGroup0050Row0034_passes,
    k5PrefixGroup0050Row0035_passes,
    k5PrefixGroup0050Row0036_passes,
    k5PrefixGroup0050Row0037_passes,
    k5PrefixGroup0050Row0038_passes,
    k5PrefixGroup0050Row0039_passes,
    k5PrefixGroup0050Row0040_passes,
    k5PrefixGroup0050Row0041_passes,
    k5PrefixGroup0050Row0042_passes,
    k5PrefixGroup0050Row0043_passes,
    k5PrefixGroup0050Row0044_passes,
    k5PrefixGroup0050Row0045_passes,
    k5PrefixGroup0050Row0046_passes,
    k5PrefixGroup0050Row0047_passes,
    k5PrefixGroup0050Row0048_passes,
    k5PrefixGroup0050Row0049_passes,
    k5PrefixGroup0050Row0050_passes,
    k5PrefixGroup0050Row0051_passes,
    k5PrefixGroup0050Row0052_passes,
    k5PrefixGroup0050Row0053_passes,
    k5PrefixGroup0050Row0054_passes,
    k5PrefixGroup0050Row0055_passes,
    k5PrefixGroup0050Row0056_passes,
    k5PrefixGroup0050Row0057_passes,
    k5PrefixGroup0050Row0058_passes,
    k5PrefixGroup0050Row0059_passes,
    k5PrefixGroup0050Row0060_passes,
    k5PrefixGroup0050Row0061_passes,
    k5PrefixGroup0050Row0062_passes,
    k5PrefixGroup0050Row0063_passes,
    k5PrefixGroup0050Row0064_passes,
    k5PrefixGroup0050Row0065_passes,
    k5PrefixGroup0050Row0066_passes,
    k5PrefixGroup0050Row0067_passes,
    k5PrefixGroup0050Row0068_passes,
    k5PrefixGroup0050Row0069_passes,
    k5PrefixGroup0050Row0070_passes,
    k5PrefixGroup0050Row0071_passes,
    k5PrefixGroup0050Row0072_passes,
    k5PrefixGroup0050Row0073_passes,
    k5PrefixGroup0050Row0074_passes,
    k5PrefixGroup0050Row0075_passes,
    k5PrefixGroup0050Row0076_passes,
    k5PrefixGroup0050Row0077_passes,
    k5PrefixGroup0050Row0078_passes,
    k5PrefixGroup0050Row0079_passes,
    k5PrefixGroup0050Row0080_passes,
    k5PrefixGroup0050Row0081_passes,
    k5PrefixGroup0050Row0082_passes,
    k5PrefixGroup0050Row0083_passes,
    k5PrefixGroup0050Row0084_passes,
    k5PrefixGroup0050Row0085_passes,
    k5PrefixGroup0050Row0086_passes,
    k5PrefixGroup0050Row0087_passes,
    k5PrefixGroup0050Row0088_passes,
    k5PrefixGroup0050Row0089_passes,
    k5PrefixGroup0050Row0090_passes,
    k5PrefixGroup0050Row0091_passes,
    k5PrefixGroup0050Row0092_passes,
    k5PrefixGroup0050Row0093_passes,
    k5PrefixGroup0050Row0094_passes,
    k5PrefixGroup0050Row0095_passes,
    k5PrefixGroup0050Row0096_passes,
    k5PrefixGroup0050Row0097_passes,
    k5PrefixGroup0050Row0098_passes,
    k5PrefixGroup0050Row0099_passes,
    k5PrefixGroup0050Row0100_passes,
    k5PrefixGroup0050Row0101_passes,
    k5PrefixGroup0050Row0102_passes,
    k5PrefixGroup0050Row0103_passes,
    k5PrefixGroup0050Row0104_passes,
    k5PrefixGroup0050Row0105_passes,
    k5PrefixGroup0050Row0106_passes,
    k5PrefixGroup0050Row0107_passes,
    k5PrefixGroup0050Row0108_passes,
    k5PrefixGroup0050Row0109_passes,
    k5PrefixGroup0050Row0110_passes,
    k5PrefixGroup0050Row0111_passes,
    k5PrefixGroup0050Row0112_passes,
    k5PrefixGroup0050Row0113_passes,
    k5PrefixGroup0050Row0114_passes,
    k5PrefixGroup0050Row0115_passes,
    k5PrefixGroup0050Row0116_passes,
    k5PrefixGroup0050Row0117_passes,
    k5PrefixGroup0050Row0118_passes,
    k5PrefixGroup0050Row0119_passes,
    k5PrefixGroup0050Row0120_passes,
    k5PrefixGroup0050Row0121_passes,
    k5PrefixGroup0050Row0122_passes,
    k5PrefixGroup0050Row0123_passes,
    k5PrefixGroup0050Row0124_passes,
    k5PrefixGroup0050Row0125_passes,
    k5PrefixGroup0050Row0126_passes,
    k5PrefixGroup0050Row0127_passes]

theorem k5PrefixGroup0050_mask_upper :
    k5PrefixGroup0050.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0050, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0050Row0000_mask_upper,
    k5PrefixGroup0050Row0001_mask_upper,
    k5PrefixGroup0050Row0002_mask_upper,
    k5PrefixGroup0050Row0003_mask_upper,
    k5PrefixGroup0050Row0004_mask_upper,
    k5PrefixGroup0050Row0005_mask_upper,
    k5PrefixGroup0050Row0006_mask_upper,
    k5PrefixGroup0050Row0007_mask_upper,
    k5PrefixGroup0050Row0008_mask_upper,
    k5PrefixGroup0050Row0009_mask_upper,
    k5PrefixGroup0050Row0010_mask_upper,
    k5PrefixGroup0050Row0011_mask_upper,
    k5PrefixGroup0050Row0012_mask_upper,
    k5PrefixGroup0050Row0013_mask_upper,
    k5PrefixGroup0050Row0014_mask_upper,
    k5PrefixGroup0050Row0015_mask_upper,
    k5PrefixGroup0050Row0016_mask_upper,
    k5PrefixGroup0050Row0017_mask_upper,
    k5PrefixGroup0050Row0018_mask_upper,
    k5PrefixGroup0050Row0019_mask_upper,
    k5PrefixGroup0050Row0020_mask_upper,
    k5PrefixGroup0050Row0021_mask_upper,
    k5PrefixGroup0050Row0022_mask_upper,
    k5PrefixGroup0050Row0023_mask_upper,
    k5PrefixGroup0050Row0024_mask_upper,
    k5PrefixGroup0050Row0025_mask_upper,
    k5PrefixGroup0050Row0026_mask_upper,
    k5PrefixGroup0050Row0027_mask_upper,
    k5PrefixGroup0050Row0028_mask_upper,
    k5PrefixGroup0050Row0029_mask_upper,
    k5PrefixGroup0050Row0030_mask_upper,
    k5PrefixGroup0050Row0031_mask_upper,
    k5PrefixGroup0050Row0032_mask_upper,
    k5PrefixGroup0050Row0033_mask_upper,
    k5PrefixGroup0050Row0034_mask_upper,
    k5PrefixGroup0050Row0035_mask_upper,
    k5PrefixGroup0050Row0036_mask_upper,
    k5PrefixGroup0050Row0037_mask_upper,
    k5PrefixGroup0050Row0038_mask_upper,
    k5PrefixGroup0050Row0039_mask_upper,
    k5PrefixGroup0050Row0040_mask_upper,
    k5PrefixGroup0050Row0041_mask_upper,
    k5PrefixGroup0050Row0042_mask_upper,
    k5PrefixGroup0050Row0043_mask_upper,
    k5PrefixGroup0050Row0044_mask_upper,
    k5PrefixGroup0050Row0045_mask_upper,
    k5PrefixGroup0050Row0046_mask_upper,
    k5PrefixGroup0050Row0047_mask_upper,
    k5PrefixGroup0050Row0048_mask_upper,
    k5PrefixGroup0050Row0049_mask_upper,
    k5PrefixGroup0050Row0050_mask_upper,
    k5PrefixGroup0050Row0051_mask_upper,
    k5PrefixGroup0050Row0052_mask_upper,
    k5PrefixGroup0050Row0053_mask_upper,
    k5PrefixGroup0050Row0054_mask_upper,
    k5PrefixGroup0050Row0055_mask_upper,
    k5PrefixGroup0050Row0056_mask_upper,
    k5PrefixGroup0050Row0057_mask_upper,
    k5PrefixGroup0050Row0058_mask_upper,
    k5PrefixGroup0050Row0059_mask_upper,
    k5PrefixGroup0050Row0060_mask_upper,
    k5PrefixGroup0050Row0061_mask_upper,
    k5PrefixGroup0050Row0062_mask_upper,
    k5PrefixGroup0050Row0063_mask_upper,
    k5PrefixGroup0050Row0064_mask_upper,
    k5PrefixGroup0050Row0065_mask_upper,
    k5PrefixGroup0050Row0066_mask_upper,
    k5PrefixGroup0050Row0067_mask_upper,
    k5PrefixGroup0050Row0068_mask_upper,
    k5PrefixGroup0050Row0069_mask_upper,
    k5PrefixGroup0050Row0070_mask_upper,
    k5PrefixGroup0050Row0071_mask_upper,
    k5PrefixGroup0050Row0072_mask_upper,
    k5PrefixGroup0050Row0073_mask_upper,
    k5PrefixGroup0050Row0074_mask_upper,
    k5PrefixGroup0050Row0075_mask_upper,
    k5PrefixGroup0050Row0076_mask_upper,
    k5PrefixGroup0050Row0077_mask_upper,
    k5PrefixGroup0050Row0078_mask_upper,
    k5PrefixGroup0050Row0079_mask_upper,
    k5PrefixGroup0050Row0080_mask_upper,
    k5PrefixGroup0050Row0081_mask_upper,
    k5PrefixGroup0050Row0082_mask_upper,
    k5PrefixGroup0050Row0083_mask_upper,
    k5PrefixGroup0050Row0084_mask_upper,
    k5PrefixGroup0050Row0085_mask_upper,
    k5PrefixGroup0050Row0086_mask_upper,
    k5PrefixGroup0050Row0087_mask_upper,
    k5PrefixGroup0050Row0088_mask_upper,
    k5PrefixGroup0050Row0089_mask_upper,
    k5PrefixGroup0050Row0090_mask_upper,
    k5PrefixGroup0050Row0091_mask_upper,
    k5PrefixGroup0050Row0092_mask_upper,
    k5PrefixGroup0050Row0093_mask_upper,
    k5PrefixGroup0050Row0094_mask_upper,
    k5PrefixGroup0050Row0095_mask_upper,
    k5PrefixGroup0050Row0096_mask_upper,
    k5PrefixGroup0050Row0097_mask_upper,
    k5PrefixGroup0050Row0098_mask_upper,
    k5PrefixGroup0050Row0099_mask_upper,
    k5PrefixGroup0050Row0100_mask_upper,
    k5PrefixGroup0050Row0101_mask_upper,
    k5PrefixGroup0050Row0102_mask_upper,
    k5PrefixGroup0050Row0103_mask_upper,
    k5PrefixGroup0050Row0104_mask_upper,
    k5PrefixGroup0050Row0105_mask_upper,
    k5PrefixGroup0050Row0106_mask_upper,
    k5PrefixGroup0050Row0107_mask_upper,
    k5PrefixGroup0050Row0108_mask_upper,
    k5PrefixGroup0050Row0109_mask_upper,
    k5PrefixGroup0050Row0110_mask_upper,
    k5PrefixGroup0050Row0111_mask_upper,
    k5PrefixGroup0050Row0112_mask_upper,
    k5PrefixGroup0050Row0113_mask_upper,
    k5PrefixGroup0050Row0114_mask_upper,
    k5PrefixGroup0050Row0115_mask_upper,
    k5PrefixGroup0050Row0116_mask_upper,
    k5PrefixGroup0050Row0117_mask_upper,
    k5PrefixGroup0050Row0118_mask_upper,
    k5PrefixGroup0050Row0119_mask_upper,
    k5PrefixGroup0050Row0120_mask_upper,
    k5PrefixGroup0050Row0121_mask_upper,
    k5PrefixGroup0050Row0122_mask_upper,
    k5PrefixGroup0050Row0123_mask_upper,
    k5PrefixGroup0050Row0124_mask_upper,
    k5PrefixGroup0050Row0125_mask_upper,
    k5PrefixGroup0050Row0126_mask_upper,
    k5PrefixGroup0050Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
