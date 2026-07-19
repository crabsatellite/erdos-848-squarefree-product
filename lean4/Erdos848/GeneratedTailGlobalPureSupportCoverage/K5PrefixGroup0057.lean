import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0057 : List (List ℕ) :=
  [[11, 29, 43, 53],
     [11, 29, 43, 59],
     [11, 29, 43, 61],
     [11, 29, 43, 67],
     [11, 29, 43, 71],
     [11, 29, 43, 73],
     [11, 29, 43, 79],
     [11, 29, 47, 53],
     [11, 29, 47, 59],
     [11, 29, 47, 61],
     [11, 29, 47, 67],
     [11, 29, 47, 71],
     [11, 29, 47, 73],
     [11, 29, 53, 59],
     [11, 29, 53, 61],
     [11, 29, 53, 67],
     [11, 29, 53, 71],
     [11, 29, 59, 61],
     [11, 29, 59, 67],
     [11, 29, 61, 67],
     [11, 31, 37, 41],
     [11, 31, 37, 43],
     [11, 31, 37, 47],
     [11, 31, 37, 53],
     [11, 31, 37, 59],
     [11, 31, 37, 61],
     [11, 31, 37, 67],
     [11, 31, 37, 71],
     [11, 31, 37, 73],
     [11, 31, 37, 79],
     [11, 31, 37, 83],
     [11, 31, 41, 43],
     [11, 31, 41, 47],
     [11, 31, 41, 53],
     [11, 31, 41, 59],
     [11, 31, 41, 61],
     [11, 31, 41, 67],
     [11, 31, 41, 71],
     [11, 31, 41, 73],
     [11, 31, 41, 79],
     [11, 31, 43, 47],
     [11, 31, 43, 53],
     [11, 31, 43, 59],
     [11, 31, 43, 61],
     [11, 31, 43, 67],
     [11, 31, 43, 71],
     [11, 31, 43, 73],
     [11, 31, 43, 79],
     [11, 31, 47, 53],
     [11, 31, 47, 59],
     [11, 31, 47, 61],
     [11, 31, 47, 67],
     [11, 31, 47, 71],
     [11, 31, 47, 73],
     [11, 31, 53, 59],
     [11, 31, 53, 61],
     [11, 31, 53, 67],
     [11, 31, 53, 71],
     [11, 31, 59, 61],
     [11, 31, 59, 67],
     [11, 37, 41, 43],
     [11, 37, 41, 47],
     [11, 37, 41, 53],
     [11, 37, 41, 59],
     [11, 37, 41, 61],
     [11, 37, 41, 67],
     [11, 37, 41, 71],
     [11, 37, 41, 73],
     [11, 37, 43, 47],
     [11, 37, 43, 53],
     [11, 37, 43, 59],
     [11, 37, 43, 61],
     [11, 37, 43, 67],
     [11, 37, 43, 71],
     [11, 37, 47, 53],
     [11, 37, 47, 59],
     [11, 37, 47, 61],
     [11, 37, 47, 67],
     [11, 37, 53, 59],
     [11, 37, 53, 61],
     [11, 41, 43, 47],
     [11, 41, 43, 53],
     [11, 41, 43, 59],
     [11, 41, 43, 61],
     [11, 41, 43, 67],
     [11, 41, 47, 53],
     [11, 41, 47, 59],
     [11, 41, 47, 61],
     [11, 41, 53, 59],
     [11, 43, 47, 53],
     [11, 43, 47, 59],
     [11, 43, 47, 61],
     [11, 43, 53, 59],
     [13, 17, 19, 23],
     [13, 17, 19, 29],
     [13, 17, 19, 31],
     [13, 17, 19, 37],
     [13, 17, 19, 41],
     [13, 17, 19, 43],
     [13, 17, 19, 47],
     [13, 17, 19, 53],
     [13, 17, 19, 59],
     [13, 17, 19, 61],
     [13, 17, 19, 67],
     [13, 17, 19, 71],
     [13, 17, 19, 73],
     [13, 17, 19, 79],
     [13, 17, 19, 83],
     [13, 17, 19, 89],
     [13, 17, 19, 97],
     [13, 17, 19, 101],
     [13, 17, 19, 103],
     [13, 17, 19, 107],
     [13, 17, 19, 109],
     [13, 17, 19, 113],
     [13, 17, 19, 127],
     [13, 17, 19, 131],
     [13, 17, 19, 137],
     [13, 17, 19, 139],
     [13, 17, 19, 149],
     [13, 17, 23, 29],
     [13, 17, 23, 31],
     [13, 17, 23, 37],
     [13, 17, 23, 41],
     [13, 17, 23, 43],
     [13, 17, 23, 47],
     [13, 17, 23, 53],
     [13, 17, 23, 59]]

theorem k5PrefixGroup0057Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 43, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 43, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 47, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 47, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 53, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 53, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 53, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 59, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 59, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 29, 61, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0057Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0057Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 47, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 53, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 53, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 59, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 31, 59, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 41, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 43, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 47, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 37, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 37, 53, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 43, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 43, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 43, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 41, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 41, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 43, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 43, 47, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 43, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 43, 47, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 43, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 43, 47, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 43, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 43, 53, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0057Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0057Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0057Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0057Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0057Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0057Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0057Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0057Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0057Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0057Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0057Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0057Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0057Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0057Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0057Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0057Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0057Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0057Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0057Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0057Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0057Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0057Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0057Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0057Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0057Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0057Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0057Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0057Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0057Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0057Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0057Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0057Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0057Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0057Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0057Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0057Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0057Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0057Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0057Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0057Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0057Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0057Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0057Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0057Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0057Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0057Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0057Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0057Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0057Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [13, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0057Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [13, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0057_passes :
    k5PrefixGroup0057.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0057, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0057Row0000_passes,
    k5PrefixGroup0057Row0001_passes,
    k5PrefixGroup0057Row0002_passes,
    k5PrefixGroup0057Row0003_passes,
    k5PrefixGroup0057Row0004_passes,
    k5PrefixGroup0057Row0005_passes,
    k5PrefixGroup0057Row0006_passes,
    k5PrefixGroup0057Row0007_passes,
    k5PrefixGroup0057Row0008_passes,
    k5PrefixGroup0057Row0009_passes,
    k5PrefixGroup0057Row0010_passes,
    k5PrefixGroup0057Row0011_passes,
    k5PrefixGroup0057Row0012_passes,
    k5PrefixGroup0057Row0013_passes,
    k5PrefixGroup0057Row0014_passes,
    k5PrefixGroup0057Row0015_passes,
    k5PrefixGroup0057Row0016_passes,
    k5PrefixGroup0057Row0017_passes,
    k5PrefixGroup0057Row0018_passes,
    k5PrefixGroup0057Row0019_passes,
    k5PrefixGroup0057Row0020_passes,
    k5PrefixGroup0057Row0021_passes,
    k5PrefixGroup0057Row0022_passes,
    k5PrefixGroup0057Row0023_passes,
    k5PrefixGroup0057Row0024_passes,
    k5PrefixGroup0057Row0025_passes,
    k5PrefixGroup0057Row0026_passes,
    k5PrefixGroup0057Row0027_passes,
    k5PrefixGroup0057Row0028_passes,
    k5PrefixGroup0057Row0029_passes,
    k5PrefixGroup0057Row0030_passes,
    k5PrefixGroup0057Row0031_passes,
    k5PrefixGroup0057Row0032_passes,
    k5PrefixGroup0057Row0033_passes,
    k5PrefixGroup0057Row0034_passes,
    k5PrefixGroup0057Row0035_passes,
    k5PrefixGroup0057Row0036_passes,
    k5PrefixGroup0057Row0037_passes,
    k5PrefixGroup0057Row0038_passes,
    k5PrefixGroup0057Row0039_passes,
    k5PrefixGroup0057Row0040_passes,
    k5PrefixGroup0057Row0041_passes,
    k5PrefixGroup0057Row0042_passes,
    k5PrefixGroup0057Row0043_passes,
    k5PrefixGroup0057Row0044_passes,
    k5PrefixGroup0057Row0045_passes,
    k5PrefixGroup0057Row0046_passes,
    k5PrefixGroup0057Row0047_passes,
    k5PrefixGroup0057Row0048_passes,
    k5PrefixGroup0057Row0049_passes,
    k5PrefixGroup0057Row0050_passes,
    k5PrefixGroup0057Row0051_passes,
    k5PrefixGroup0057Row0052_passes,
    k5PrefixGroup0057Row0053_passes,
    k5PrefixGroup0057Row0054_passes,
    k5PrefixGroup0057Row0055_passes,
    k5PrefixGroup0057Row0056_passes,
    k5PrefixGroup0057Row0057_passes,
    k5PrefixGroup0057Row0058_passes,
    k5PrefixGroup0057Row0059_passes,
    k5PrefixGroup0057Row0060_passes,
    k5PrefixGroup0057Row0061_passes,
    k5PrefixGroup0057Row0062_passes,
    k5PrefixGroup0057Row0063_passes,
    k5PrefixGroup0057Row0064_passes,
    k5PrefixGroup0057Row0065_passes,
    k5PrefixGroup0057Row0066_passes,
    k5PrefixGroup0057Row0067_passes,
    k5PrefixGroup0057Row0068_passes,
    k5PrefixGroup0057Row0069_passes,
    k5PrefixGroup0057Row0070_passes,
    k5PrefixGroup0057Row0071_passes,
    k5PrefixGroup0057Row0072_passes,
    k5PrefixGroup0057Row0073_passes,
    k5PrefixGroup0057Row0074_passes,
    k5PrefixGroup0057Row0075_passes,
    k5PrefixGroup0057Row0076_passes,
    k5PrefixGroup0057Row0077_passes,
    k5PrefixGroup0057Row0078_passes,
    k5PrefixGroup0057Row0079_passes,
    k5PrefixGroup0057Row0080_passes,
    k5PrefixGroup0057Row0081_passes,
    k5PrefixGroup0057Row0082_passes,
    k5PrefixGroup0057Row0083_passes,
    k5PrefixGroup0057Row0084_passes,
    k5PrefixGroup0057Row0085_passes,
    k5PrefixGroup0057Row0086_passes,
    k5PrefixGroup0057Row0087_passes,
    k5PrefixGroup0057Row0088_passes,
    k5PrefixGroup0057Row0089_passes,
    k5PrefixGroup0057Row0090_passes,
    k5PrefixGroup0057Row0091_passes,
    k5PrefixGroup0057Row0092_passes,
    k5PrefixGroup0057Row0093_passes,
    k5PrefixGroup0057Row0094_passes,
    k5PrefixGroup0057Row0095_passes,
    k5PrefixGroup0057Row0096_passes,
    k5PrefixGroup0057Row0097_passes,
    k5PrefixGroup0057Row0098_passes,
    k5PrefixGroup0057Row0099_passes,
    k5PrefixGroup0057Row0100_passes,
    k5PrefixGroup0057Row0101_passes,
    k5PrefixGroup0057Row0102_passes,
    k5PrefixGroup0057Row0103_passes,
    k5PrefixGroup0057Row0104_passes,
    k5PrefixGroup0057Row0105_passes,
    k5PrefixGroup0057Row0106_passes,
    k5PrefixGroup0057Row0107_passes,
    k5PrefixGroup0057Row0108_passes,
    k5PrefixGroup0057Row0109_passes,
    k5PrefixGroup0057Row0110_passes,
    k5PrefixGroup0057Row0111_passes,
    k5PrefixGroup0057Row0112_passes,
    k5PrefixGroup0057Row0113_passes,
    k5PrefixGroup0057Row0114_passes,
    k5PrefixGroup0057Row0115_passes,
    k5PrefixGroup0057Row0116_passes,
    k5PrefixGroup0057Row0117_passes,
    k5PrefixGroup0057Row0118_passes,
    k5PrefixGroup0057Row0119_passes,
    k5PrefixGroup0057Row0120_passes,
    k5PrefixGroup0057Row0121_passes,
    k5PrefixGroup0057Row0122_passes,
    k5PrefixGroup0057Row0123_passes,
    k5PrefixGroup0057Row0124_passes,
    k5PrefixGroup0057Row0125_passes,
    k5PrefixGroup0057Row0126_passes,
    k5PrefixGroup0057Row0127_passes]

theorem k5PrefixGroup0057_mask_upper :
    k5PrefixGroup0057.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0057, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0057Row0000_mask_upper,
    k5PrefixGroup0057Row0001_mask_upper,
    k5PrefixGroup0057Row0002_mask_upper,
    k5PrefixGroup0057Row0003_mask_upper,
    k5PrefixGroup0057Row0004_mask_upper,
    k5PrefixGroup0057Row0005_mask_upper,
    k5PrefixGroup0057Row0006_mask_upper,
    k5PrefixGroup0057Row0007_mask_upper,
    k5PrefixGroup0057Row0008_mask_upper,
    k5PrefixGroup0057Row0009_mask_upper,
    k5PrefixGroup0057Row0010_mask_upper,
    k5PrefixGroup0057Row0011_mask_upper,
    k5PrefixGroup0057Row0012_mask_upper,
    k5PrefixGroup0057Row0013_mask_upper,
    k5PrefixGroup0057Row0014_mask_upper,
    k5PrefixGroup0057Row0015_mask_upper,
    k5PrefixGroup0057Row0016_mask_upper,
    k5PrefixGroup0057Row0017_mask_upper,
    k5PrefixGroup0057Row0018_mask_upper,
    k5PrefixGroup0057Row0019_mask_upper,
    k5PrefixGroup0057Row0020_mask_upper,
    k5PrefixGroup0057Row0021_mask_upper,
    k5PrefixGroup0057Row0022_mask_upper,
    k5PrefixGroup0057Row0023_mask_upper,
    k5PrefixGroup0057Row0024_mask_upper,
    k5PrefixGroup0057Row0025_mask_upper,
    k5PrefixGroup0057Row0026_mask_upper,
    k5PrefixGroup0057Row0027_mask_upper,
    k5PrefixGroup0057Row0028_mask_upper,
    k5PrefixGroup0057Row0029_mask_upper,
    k5PrefixGroup0057Row0030_mask_upper,
    k5PrefixGroup0057Row0031_mask_upper,
    k5PrefixGroup0057Row0032_mask_upper,
    k5PrefixGroup0057Row0033_mask_upper,
    k5PrefixGroup0057Row0034_mask_upper,
    k5PrefixGroup0057Row0035_mask_upper,
    k5PrefixGroup0057Row0036_mask_upper,
    k5PrefixGroup0057Row0037_mask_upper,
    k5PrefixGroup0057Row0038_mask_upper,
    k5PrefixGroup0057Row0039_mask_upper,
    k5PrefixGroup0057Row0040_mask_upper,
    k5PrefixGroup0057Row0041_mask_upper,
    k5PrefixGroup0057Row0042_mask_upper,
    k5PrefixGroup0057Row0043_mask_upper,
    k5PrefixGroup0057Row0044_mask_upper,
    k5PrefixGroup0057Row0045_mask_upper,
    k5PrefixGroup0057Row0046_mask_upper,
    k5PrefixGroup0057Row0047_mask_upper,
    k5PrefixGroup0057Row0048_mask_upper,
    k5PrefixGroup0057Row0049_mask_upper,
    k5PrefixGroup0057Row0050_mask_upper,
    k5PrefixGroup0057Row0051_mask_upper,
    k5PrefixGroup0057Row0052_mask_upper,
    k5PrefixGroup0057Row0053_mask_upper,
    k5PrefixGroup0057Row0054_mask_upper,
    k5PrefixGroup0057Row0055_mask_upper,
    k5PrefixGroup0057Row0056_mask_upper,
    k5PrefixGroup0057Row0057_mask_upper,
    k5PrefixGroup0057Row0058_mask_upper,
    k5PrefixGroup0057Row0059_mask_upper,
    k5PrefixGroup0057Row0060_mask_upper,
    k5PrefixGroup0057Row0061_mask_upper,
    k5PrefixGroup0057Row0062_mask_upper,
    k5PrefixGroup0057Row0063_mask_upper,
    k5PrefixGroup0057Row0064_mask_upper,
    k5PrefixGroup0057Row0065_mask_upper,
    k5PrefixGroup0057Row0066_mask_upper,
    k5PrefixGroup0057Row0067_mask_upper,
    k5PrefixGroup0057Row0068_mask_upper,
    k5PrefixGroup0057Row0069_mask_upper,
    k5PrefixGroup0057Row0070_mask_upper,
    k5PrefixGroup0057Row0071_mask_upper,
    k5PrefixGroup0057Row0072_mask_upper,
    k5PrefixGroup0057Row0073_mask_upper,
    k5PrefixGroup0057Row0074_mask_upper,
    k5PrefixGroup0057Row0075_mask_upper,
    k5PrefixGroup0057Row0076_mask_upper,
    k5PrefixGroup0057Row0077_mask_upper,
    k5PrefixGroup0057Row0078_mask_upper,
    k5PrefixGroup0057Row0079_mask_upper,
    k5PrefixGroup0057Row0080_mask_upper,
    k5PrefixGroup0057Row0081_mask_upper,
    k5PrefixGroup0057Row0082_mask_upper,
    k5PrefixGroup0057Row0083_mask_upper,
    k5PrefixGroup0057Row0084_mask_upper,
    k5PrefixGroup0057Row0085_mask_upper,
    k5PrefixGroup0057Row0086_mask_upper,
    k5PrefixGroup0057Row0087_mask_upper,
    k5PrefixGroup0057Row0088_mask_upper,
    k5PrefixGroup0057Row0089_mask_upper,
    k5PrefixGroup0057Row0090_mask_upper,
    k5PrefixGroup0057Row0091_mask_upper,
    k5PrefixGroup0057Row0092_mask_upper,
    k5PrefixGroup0057Row0093_mask_upper,
    k5PrefixGroup0057Row0094_mask_upper,
    k5PrefixGroup0057Row0095_mask_upper,
    k5PrefixGroup0057Row0096_mask_upper,
    k5PrefixGroup0057Row0097_mask_upper,
    k5PrefixGroup0057Row0098_mask_upper,
    k5PrefixGroup0057Row0099_mask_upper,
    k5PrefixGroup0057Row0100_mask_upper,
    k5PrefixGroup0057Row0101_mask_upper,
    k5PrefixGroup0057Row0102_mask_upper,
    k5PrefixGroup0057Row0103_mask_upper,
    k5PrefixGroup0057Row0104_mask_upper,
    k5PrefixGroup0057Row0105_mask_upper,
    k5PrefixGroup0057Row0106_mask_upper,
    k5PrefixGroup0057Row0107_mask_upper,
    k5PrefixGroup0057Row0108_mask_upper,
    k5PrefixGroup0057Row0109_mask_upper,
    k5PrefixGroup0057Row0110_mask_upper,
    k5PrefixGroup0057Row0111_mask_upper,
    k5PrefixGroup0057Row0112_mask_upper,
    k5PrefixGroup0057Row0113_mask_upper,
    k5PrefixGroup0057Row0114_mask_upper,
    k5PrefixGroup0057Row0115_mask_upper,
    k5PrefixGroup0057Row0116_mask_upper,
    k5PrefixGroup0057Row0117_mask_upper,
    k5PrefixGroup0057Row0118_mask_upper,
    k5PrefixGroup0057Row0119_mask_upper,
    k5PrefixGroup0057Row0120_mask_upper,
    k5PrefixGroup0057Row0121_mask_upper,
    k5PrefixGroup0057Row0122_mask_upper,
    k5PrefixGroup0057Row0123_mask_upper,
    k5PrefixGroup0057Row0124_mask_upper,
    k5PrefixGroup0057Row0125_mask_upper,
    k5PrefixGroup0057Row0126_mask_upper,
    k5PrefixGroup0057Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
