import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0051 : List (List ℕ) :=
  [[7, 37, 59, 71],
     [7, 37, 59, 73],
     [7, 37, 61, 67],
     [7, 37, 61, 71],
     [7, 37, 61, 73],
     [7, 37, 67, 71],
     [7, 41, 43, 47],
     [7, 41, 43, 53],
     [7, 41, 43, 59],
     [7, 41, 43, 61],
     [7, 41, 43, 67],
     [7, 41, 43, 71],
     [7, 41, 43, 73],
     [7, 41, 43, 79],
     [7, 41, 43, 83],
     [7, 41, 47, 53],
     [7, 41, 47, 59],
     [7, 41, 47, 61],
     [7, 41, 47, 67],
     [7, 41, 47, 71],
     [7, 41, 47, 73],
     [7, 41, 47, 79],
     [7, 41, 53, 59],
     [7, 41, 53, 61],
     [7, 41, 53, 67],
     [7, 41, 53, 71],
     [7, 41, 53, 73],
     [7, 41, 59, 61],
     [7, 41, 59, 67],
     [7, 41, 59, 71],
     [7, 41, 61, 67],
     [7, 41, 61, 71],
     [7, 43, 47, 53],
     [7, 43, 47, 59],
     [7, 43, 47, 61],
     [7, 43, 47, 67],
     [7, 43, 47, 71],
     [7, 43, 47, 73],
     [7, 43, 47, 79],
     [7, 43, 53, 59],
     [7, 43, 53, 61],
     [7, 43, 53, 67],
     [7, 43, 53, 71],
     [7, 43, 53, 73],
     [7, 43, 59, 61],
     [7, 43, 59, 67],
     [7, 43, 59, 71],
     [7, 43, 61, 67],
     [7, 43, 61, 71],
     [7, 47, 53, 59],
     [7, 47, 53, 61],
     [7, 47, 53, 67],
     [7, 47, 53, 71],
     [7, 47, 59, 61],
     [7, 47, 59, 67],
     [7, 47, 61, 67],
     [7, 53, 59, 61],
     [11, 13, 17, 19],
     [11, 13, 17, 23],
     [11, 13, 17, 29],
     [11, 13, 17, 31],
     [11, 13, 17, 37],
     [11, 13, 17, 41],
     [11, 13, 17, 43],
     [11, 13, 17, 47],
     [11, 13, 17, 53],
     [11, 13, 17, 59],
     [11, 13, 17, 61],
     [11, 13, 17, 67],
     [11, 13, 17, 71],
     [11, 13, 17, 73],
     [11, 13, 17, 79],
     [11, 13, 17, 83],
     [11, 13, 17, 89],
     [11, 13, 17, 97],
     [11, 13, 17, 101],
     [11, 13, 17, 103],
     [11, 13, 17, 107],
     [11, 13, 17, 109],
     [11, 13, 17, 113],
     [11, 13, 17, 127],
     [11, 13, 17, 131],
     [11, 13, 17, 137],
     [11, 13, 17, 139],
     [11, 13, 17, 149],
     [11, 13, 17, 151],
     [11, 13, 17, 157],
     [11, 13, 17, 163],
     [11, 13, 17, 167],
     [11, 13, 17, 173],
     [11, 13, 17, 179],
     [11, 13, 17, 181],
     [11, 13, 17, 191],
     [11, 13, 17, 193],
     [11, 13, 17, 197],
     [11, 13, 19, 23],
     [11, 13, 19, 29],
     [11, 13, 19, 31],
     [11, 13, 19, 37],
     [11, 13, 19, 41],
     [11, 13, 19, 43],
     [11, 13, 19, 47],
     [11, 13, 19, 53],
     [11, 13, 19, 59],
     [11, 13, 19, 61],
     [11, 13, 19, 67],
     [11, 13, 19, 71],
     [11, 13, 19, 73],
     [11, 13, 19, 79],
     [11, 13, 19, 83],
     [11, 13, 19, 89],
     [11, 13, 19, 97],
     [11, 13, 19, 101],
     [11, 13, 19, 103],
     [11, 13, 19, 107],
     [11, 13, 19, 109],
     [11, 13, 19, 113],
     [11, 13, 19, 127],
     [11, 13, 19, 131],
     [11, 13, 19, 137],
     [11, 13, 19, 139],
     [11, 13, 19, 149],
     [11, 13, 19, 151],
     [11, 13, 19, 157],
     [11, 13, 19, 163],
     [11, 13, 19, 167],
     [11, 13, 19, 173],
     [11, 13, 19, 179]]

theorem k5PrefixGroup0051Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 59, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 59, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 61, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 61, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 37, 67, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 37, 67, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 43, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 43, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 47, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 47, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 53, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 53, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 41, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 41, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 47, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 47, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 53, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 53, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 59, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 43, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 43, 61, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 53, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 53, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 53, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 53, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 59, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 47, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 47, 61, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 53, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 53, 59, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0051Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0051Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0051Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0051Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0051Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0051Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0051Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0051Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0051Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0051Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0051Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0051Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0051Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0051Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0051Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0051Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0051Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0051Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0051Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0051Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0051Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0051Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0051Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0051Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0051Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0051Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0051Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0051Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0051Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0051Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0051Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0051Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0051Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0051Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0051Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0051Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0051Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0051Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0051Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0051Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0051Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0051Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0051Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0051Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0051Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0051Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0051Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0051Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0051Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0051Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0051Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0051Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0051Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0051Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0051Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0051Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0051Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0051Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 23] = true := by
  decide

theorem k5PrefixGroup0051Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 23] = true := by
  decide

theorem k5PrefixGroup0051Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 29] = true := by
  decide

theorem k5PrefixGroup0051Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 29] = true := by
  decide

theorem k5PrefixGroup0051Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 31] = true := by
  decide

theorem k5PrefixGroup0051Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 31] = true := by
  decide

theorem k5PrefixGroup0051Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 37] = true := by
  decide

theorem k5PrefixGroup0051Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 37] = true := by
  decide

theorem k5PrefixGroup0051Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 41] = true := by
  decide

theorem k5PrefixGroup0051Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 41] = true := by
  decide

theorem k5PrefixGroup0051Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 43] = true := by
  decide

theorem k5PrefixGroup0051Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 43] = true := by
  decide

theorem k5PrefixGroup0051Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 47] = true := by
  decide

theorem k5PrefixGroup0051Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 53] = true := by
  decide

theorem k5PrefixGroup0051Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 59] = true := by
  decide

theorem k5PrefixGroup0051Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 61] = true := by
  decide

theorem k5PrefixGroup0051Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 67] = true := by
  decide

theorem k5PrefixGroup0051Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 71] = true := by
  decide

theorem k5PrefixGroup0051Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 73] = true := by
  decide

theorem k5PrefixGroup0051Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 79] = true := by
  decide

theorem k5PrefixGroup0051Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 83] = true := by
  decide

theorem k5PrefixGroup0051Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 89] = true := by
  decide

theorem k5PrefixGroup0051Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 89] = true := by
  decide

theorem k5PrefixGroup0051Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 97] = true := by
  decide

theorem k5PrefixGroup0051Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 97] = true := by
  decide

theorem k5PrefixGroup0051Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 101] = true := by
  decide

theorem k5PrefixGroup0051Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 101] = true := by
  decide

theorem k5PrefixGroup0051Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 103] = true := by
  decide

theorem k5PrefixGroup0051Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 103] = true := by
  decide

theorem k5PrefixGroup0051Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 107] = true := by
  decide

theorem k5PrefixGroup0051Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 107] = true := by
  decide

theorem k5PrefixGroup0051Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 109] = true := by
  decide

theorem k5PrefixGroup0051Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 109] = true := by
  decide

theorem k5PrefixGroup0051Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 113] = true := by
  decide

theorem k5PrefixGroup0051Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 113] = true := by
  decide

theorem k5PrefixGroup0051Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 127] = true := by
  decide

theorem k5PrefixGroup0051Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 127] = true := by
  decide

theorem k5PrefixGroup0051Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 131] = true := by
  decide

theorem k5PrefixGroup0051Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 131] = true := by
  decide

theorem k5PrefixGroup0051Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 137] = true := by
  decide

theorem k5PrefixGroup0051Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 137] = true := by
  decide

theorem k5PrefixGroup0051Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 139] = true := by
  decide

theorem k5PrefixGroup0051Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 139] = true := by
  decide

theorem k5PrefixGroup0051Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 149] = true := by
  decide

theorem k5PrefixGroup0051Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 149] = true := by
  decide

theorem k5PrefixGroup0051Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 151] = true := by
  decide

theorem k5PrefixGroup0051Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 151] = true := by
  decide

theorem k5PrefixGroup0051Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 157] = true := by
  decide

theorem k5PrefixGroup0051Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 157] = true := by
  decide

theorem k5PrefixGroup0051Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 163] = true := by
  decide

theorem k5PrefixGroup0051Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 163] = true := by
  decide

theorem k5PrefixGroup0051Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 167] = true := by
  decide

theorem k5PrefixGroup0051Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 167] = true := by
  decide

theorem k5PrefixGroup0051Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 173] = true := by
  decide

theorem k5PrefixGroup0051Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 173] = true := by
  decide

theorem k5PrefixGroup0051Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 13, 19, 179] = true := by
  decide

theorem k5PrefixGroup0051Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 13, 19, 179] = true := by
  decide

theorem k5PrefixGroup0051_passes :
    k5PrefixGroup0051.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0051, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0051Row0000_passes,
    k5PrefixGroup0051Row0001_passes,
    k5PrefixGroup0051Row0002_passes,
    k5PrefixGroup0051Row0003_passes,
    k5PrefixGroup0051Row0004_passes,
    k5PrefixGroup0051Row0005_passes,
    k5PrefixGroup0051Row0006_passes,
    k5PrefixGroup0051Row0007_passes,
    k5PrefixGroup0051Row0008_passes,
    k5PrefixGroup0051Row0009_passes,
    k5PrefixGroup0051Row0010_passes,
    k5PrefixGroup0051Row0011_passes,
    k5PrefixGroup0051Row0012_passes,
    k5PrefixGroup0051Row0013_passes,
    k5PrefixGroup0051Row0014_passes,
    k5PrefixGroup0051Row0015_passes,
    k5PrefixGroup0051Row0016_passes,
    k5PrefixGroup0051Row0017_passes,
    k5PrefixGroup0051Row0018_passes,
    k5PrefixGroup0051Row0019_passes,
    k5PrefixGroup0051Row0020_passes,
    k5PrefixGroup0051Row0021_passes,
    k5PrefixGroup0051Row0022_passes,
    k5PrefixGroup0051Row0023_passes,
    k5PrefixGroup0051Row0024_passes,
    k5PrefixGroup0051Row0025_passes,
    k5PrefixGroup0051Row0026_passes,
    k5PrefixGroup0051Row0027_passes,
    k5PrefixGroup0051Row0028_passes,
    k5PrefixGroup0051Row0029_passes,
    k5PrefixGroup0051Row0030_passes,
    k5PrefixGroup0051Row0031_passes,
    k5PrefixGroup0051Row0032_passes,
    k5PrefixGroup0051Row0033_passes,
    k5PrefixGroup0051Row0034_passes,
    k5PrefixGroup0051Row0035_passes,
    k5PrefixGroup0051Row0036_passes,
    k5PrefixGroup0051Row0037_passes,
    k5PrefixGroup0051Row0038_passes,
    k5PrefixGroup0051Row0039_passes,
    k5PrefixGroup0051Row0040_passes,
    k5PrefixGroup0051Row0041_passes,
    k5PrefixGroup0051Row0042_passes,
    k5PrefixGroup0051Row0043_passes,
    k5PrefixGroup0051Row0044_passes,
    k5PrefixGroup0051Row0045_passes,
    k5PrefixGroup0051Row0046_passes,
    k5PrefixGroup0051Row0047_passes,
    k5PrefixGroup0051Row0048_passes,
    k5PrefixGroup0051Row0049_passes,
    k5PrefixGroup0051Row0050_passes,
    k5PrefixGroup0051Row0051_passes,
    k5PrefixGroup0051Row0052_passes,
    k5PrefixGroup0051Row0053_passes,
    k5PrefixGroup0051Row0054_passes,
    k5PrefixGroup0051Row0055_passes,
    k5PrefixGroup0051Row0056_passes,
    k5PrefixGroup0051Row0057_passes,
    k5PrefixGroup0051Row0058_passes,
    k5PrefixGroup0051Row0059_passes,
    k5PrefixGroup0051Row0060_passes,
    k5PrefixGroup0051Row0061_passes,
    k5PrefixGroup0051Row0062_passes,
    k5PrefixGroup0051Row0063_passes,
    k5PrefixGroup0051Row0064_passes,
    k5PrefixGroup0051Row0065_passes,
    k5PrefixGroup0051Row0066_passes,
    k5PrefixGroup0051Row0067_passes,
    k5PrefixGroup0051Row0068_passes,
    k5PrefixGroup0051Row0069_passes,
    k5PrefixGroup0051Row0070_passes,
    k5PrefixGroup0051Row0071_passes,
    k5PrefixGroup0051Row0072_passes,
    k5PrefixGroup0051Row0073_passes,
    k5PrefixGroup0051Row0074_passes,
    k5PrefixGroup0051Row0075_passes,
    k5PrefixGroup0051Row0076_passes,
    k5PrefixGroup0051Row0077_passes,
    k5PrefixGroup0051Row0078_passes,
    k5PrefixGroup0051Row0079_passes,
    k5PrefixGroup0051Row0080_passes,
    k5PrefixGroup0051Row0081_passes,
    k5PrefixGroup0051Row0082_passes,
    k5PrefixGroup0051Row0083_passes,
    k5PrefixGroup0051Row0084_passes,
    k5PrefixGroup0051Row0085_passes,
    k5PrefixGroup0051Row0086_passes,
    k5PrefixGroup0051Row0087_passes,
    k5PrefixGroup0051Row0088_passes,
    k5PrefixGroup0051Row0089_passes,
    k5PrefixGroup0051Row0090_passes,
    k5PrefixGroup0051Row0091_passes,
    k5PrefixGroup0051Row0092_passes,
    k5PrefixGroup0051Row0093_passes,
    k5PrefixGroup0051Row0094_passes,
    k5PrefixGroup0051Row0095_passes,
    k5PrefixGroup0051Row0096_passes,
    k5PrefixGroup0051Row0097_passes,
    k5PrefixGroup0051Row0098_passes,
    k5PrefixGroup0051Row0099_passes,
    k5PrefixGroup0051Row0100_passes,
    k5PrefixGroup0051Row0101_passes,
    k5PrefixGroup0051Row0102_passes,
    k5PrefixGroup0051Row0103_passes,
    k5PrefixGroup0051Row0104_passes,
    k5PrefixGroup0051Row0105_passes,
    k5PrefixGroup0051Row0106_passes,
    k5PrefixGroup0051Row0107_passes,
    k5PrefixGroup0051Row0108_passes,
    k5PrefixGroup0051Row0109_passes,
    k5PrefixGroup0051Row0110_passes,
    k5PrefixGroup0051Row0111_passes,
    k5PrefixGroup0051Row0112_passes,
    k5PrefixGroup0051Row0113_passes,
    k5PrefixGroup0051Row0114_passes,
    k5PrefixGroup0051Row0115_passes,
    k5PrefixGroup0051Row0116_passes,
    k5PrefixGroup0051Row0117_passes,
    k5PrefixGroup0051Row0118_passes,
    k5PrefixGroup0051Row0119_passes,
    k5PrefixGroup0051Row0120_passes,
    k5PrefixGroup0051Row0121_passes,
    k5PrefixGroup0051Row0122_passes,
    k5PrefixGroup0051Row0123_passes,
    k5PrefixGroup0051Row0124_passes,
    k5PrefixGroup0051Row0125_passes,
    k5PrefixGroup0051Row0126_passes,
    k5PrefixGroup0051Row0127_passes]

theorem k5PrefixGroup0051_mask_upper :
    k5PrefixGroup0051.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0051, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0051Row0000_mask_upper,
    k5PrefixGroup0051Row0001_mask_upper,
    k5PrefixGroup0051Row0002_mask_upper,
    k5PrefixGroup0051Row0003_mask_upper,
    k5PrefixGroup0051Row0004_mask_upper,
    k5PrefixGroup0051Row0005_mask_upper,
    k5PrefixGroup0051Row0006_mask_upper,
    k5PrefixGroup0051Row0007_mask_upper,
    k5PrefixGroup0051Row0008_mask_upper,
    k5PrefixGroup0051Row0009_mask_upper,
    k5PrefixGroup0051Row0010_mask_upper,
    k5PrefixGroup0051Row0011_mask_upper,
    k5PrefixGroup0051Row0012_mask_upper,
    k5PrefixGroup0051Row0013_mask_upper,
    k5PrefixGroup0051Row0014_mask_upper,
    k5PrefixGroup0051Row0015_mask_upper,
    k5PrefixGroup0051Row0016_mask_upper,
    k5PrefixGroup0051Row0017_mask_upper,
    k5PrefixGroup0051Row0018_mask_upper,
    k5PrefixGroup0051Row0019_mask_upper,
    k5PrefixGroup0051Row0020_mask_upper,
    k5PrefixGroup0051Row0021_mask_upper,
    k5PrefixGroup0051Row0022_mask_upper,
    k5PrefixGroup0051Row0023_mask_upper,
    k5PrefixGroup0051Row0024_mask_upper,
    k5PrefixGroup0051Row0025_mask_upper,
    k5PrefixGroup0051Row0026_mask_upper,
    k5PrefixGroup0051Row0027_mask_upper,
    k5PrefixGroup0051Row0028_mask_upper,
    k5PrefixGroup0051Row0029_mask_upper,
    k5PrefixGroup0051Row0030_mask_upper,
    k5PrefixGroup0051Row0031_mask_upper,
    k5PrefixGroup0051Row0032_mask_upper,
    k5PrefixGroup0051Row0033_mask_upper,
    k5PrefixGroup0051Row0034_mask_upper,
    k5PrefixGroup0051Row0035_mask_upper,
    k5PrefixGroup0051Row0036_mask_upper,
    k5PrefixGroup0051Row0037_mask_upper,
    k5PrefixGroup0051Row0038_mask_upper,
    k5PrefixGroup0051Row0039_mask_upper,
    k5PrefixGroup0051Row0040_mask_upper,
    k5PrefixGroup0051Row0041_mask_upper,
    k5PrefixGroup0051Row0042_mask_upper,
    k5PrefixGroup0051Row0043_mask_upper,
    k5PrefixGroup0051Row0044_mask_upper,
    k5PrefixGroup0051Row0045_mask_upper,
    k5PrefixGroup0051Row0046_mask_upper,
    k5PrefixGroup0051Row0047_mask_upper,
    k5PrefixGroup0051Row0048_mask_upper,
    k5PrefixGroup0051Row0049_mask_upper,
    k5PrefixGroup0051Row0050_mask_upper,
    k5PrefixGroup0051Row0051_mask_upper,
    k5PrefixGroup0051Row0052_mask_upper,
    k5PrefixGroup0051Row0053_mask_upper,
    k5PrefixGroup0051Row0054_mask_upper,
    k5PrefixGroup0051Row0055_mask_upper,
    k5PrefixGroup0051Row0056_mask_upper,
    k5PrefixGroup0051Row0057_mask_upper,
    k5PrefixGroup0051Row0058_mask_upper,
    k5PrefixGroup0051Row0059_mask_upper,
    k5PrefixGroup0051Row0060_mask_upper,
    k5PrefixGroup0051Row0061_mask_upper,
    k5PrefixGroup0051Row0062_mask_upper,
    k5PrefixGroup0051Row0063_mask_upper,
    k5PrefixGroup0051Row0064_mask_upper,
    k5PrefixGroup0051Row0065_mask_upper,
    k5PrefixGroup0051Row0066_mask_upper,
    k5PrefixGroup0051Row0067_mask_upper,
    k5PrefixGroup0051Row0068_mask_upper,
    k5PrefixGroup0051Row0069_mask_upper,
    k5PrefixGroup0051Row0070_mask_upper,
    k5PrefixGroup0051Row0071_mask_upper,
    k5PrefixGroup0051Row0072_mask_upper,
    k5PrefixGroup0051Row0073_mask_upper,
    k5PrefixGroup0051Row0074_mask_upper,
    k5PrefixGroup0051Row0075_mask_upper,
    k5PrefixGroup0051Row0076_mask_upper,
    k5PrefixGroup0051Row0077_mask_upper,
    k5PrefixGroup0051Row0078_mask_upper,
    k5PrefixGroup0051Row0079_mask_upper,
    k5PrefixGroup0051Row0080_mask_upper,
    k5PrefixGroup0051Row0081_mask_upper,
    k5PrefixGroup0051Row0082_mask_upper,
    k5PrefixGroup0051Row0083_mask_upper,
    k5PrefixGroup0051Row0084_mask_upper,
    k5PrefixGroup0051Row0085_mask_upper,
    k5PrefixGroup0051Row0086_mask_upper,
    k5PrefixGroup0051Row0087_mask_upper,
    k5PrefixGroup0051Row0088_mask_upper,
    k5PrefixGroup0051Row0089_mask_upper,
    k5PrefixGroup0051Row0090_mask_upper,
    k5PrefixGroup0051Row0091_mask_upper,
    k5PrefixGroup0051Row0092_mask_upper,
    k5PrefixGroup0051Row0093_mask_upper,
    k5PrefixGroup0051Row0094_mask_upper,
    k5PrefixGroup0051Row0095_mask_upper,
    k5PrefixGroup0051Row0096_mask_upper,
    k5PrefixGroup0051Row0097_mask_upper,
    k5PrefixGroup0051Row0098_mask_upper,
    k5PrefixGroup0051Row0099_mask_upper,
    k5PrefixGroup0051Row0100_mask_upper,
    k5PrefixGroup0051Row0101_mask_upper,
    k5PrefixGroup0051Row0102_mask_upper,
    k5PrefixGroup0051Row0103_mask_upper,
    k5PrefixGroup0051Row0104_mask_upper,
    k5PrefixGroup0051Row0105_mask_upper,
    k5PrefixGroup0051Row0106_mask_upper,
    k5PrefixGroup0051Row0107_mask_upper,
    k5PrefixGroup0051Row0108_mask_upper,
    k5PrefixGroup0051Row0109_mask_upper,
    k5PrefixGroup0051Row0110_mask_upper,
    k5PrefixGroup0051Row0111_mask_upper,
    k5PrefixGroup0051Row0112_mask_upper,
    k5PrefixGroup0051Row0113_mask_upper,
    k5PrefixGroup0051Row0114_mask_upper,
    k5PrefixGroup0051Row0115_mask_upper,
    k5PrefixGroup0051Row0116_mask_upper,
    k5PrefixGroup0051Row0117_mask_upper,
    k5PrefixGroup0051Row0118_mask_upper,
    k5PrefixGroup0051Row0119_mask_upper,
    k5PrefixGroup0051Row0120_mask_upper,
    k5PrefixGroup0051Row0121_mask_upper,
    k5PrefixGroup0051Row0122_mask_upper,
    k5PrefixGroup0051Row0123_mask_upper,
    k5PrefixGroup0051Row0124_mask_upper,
    k5PrefixGroup0051Row0125_mask_upper,
    k5PrefixGroup0051Row0126_mask_upper,
    k5PrefixGroup0051Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
