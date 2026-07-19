import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0054 : List (List ℕ) :=
  [[11, 17, 29, 71],
     [11, 17, 29, 73],
     [11, 17, 29, 79],
     [11, 17, 29, 83],
     [11, 17, 29, 89],
     [11, 17, 29, 97],
     [11, 17, 29, 101],
     [11, 17, 29, 103],
     [11, 17, 29, 107],
     [11, 17, 29, 109],
     [11, 17, 29, 113],
     [11, 17, 29, 127],
     [11, 17, 31, 37],
     [11, 17, 31, 41],
     [11, 17, 31, 43],
     [11, 17, 31, 47],
     [11, 17, 31, 53],
     [11, 17, 31, 59],
     [11, 17, 31, 61],
     [11, 17, 31, 67],
     [11, 17, 31, 71],
     [11, 17, 31, 73],
     [11, 17, 31, 79],
     [11, 17, 31, 83],
     [11, 17, 31, 89],
     [11, 17, 31, 97],
     [11, 17, 31, 101],
     [11, 17, 31, 103],
     [11, 17, 31, 107],
     [11, 17, 31, 109],
     [11, 17, 31, 113],
     [11, 17, 31, 127],
     [11, 17, 37, 41],
     [11, 17, 37, 43],
     [11, 17, 37, 47],
     [11, 17, 37, 53],
     [11, 17, 37, 59],
     [11, 17, 37, 61],
     [11, 17, 37, 67],
     [11, 17, 37, 71],
     [11, 17, 37, 73],
     [11, 17, 37, 79],
     [11, 17, 37, 83],
     [11, 17, 37, 89],
     [11, 17, 37, 97],
     [11, 17, 37, 101],
     [11, 17, 37, 103],
     [11, 17, 37, 107],
     [11, 17, 37, 109],
     [11, 17, 41, 43],
     [11, 17, 41, 47],
     [11, 17, 41, 53],
     [11, 17, 41, 59],
     [11, 17, 41, 61],
     [11, 17, 41, 67],
     [11, 17, 41, 71],
     [11, 17, 41, 73],
     [11, 17, 41, 79],
     [11, 17, 41, 83],
     [11, 17, 41, 89],
     [11, 17, 41, 97],
     [11, 17, 41, 101],
     [11, 17, 41, 103],
     [11, 17, 41, 107],
     [11, 17, 41, 109],
     [11, 17, 43, 47],
     [11, 17, 43, 53],
     [11, 17, 43, 59],
     [11, 17, 43, 61],
     [11, 17, 43, 67],
     [11, 17, 43, 71],
     [11, 17, 43, 73],
     [11, 17, 43, 79],
     [11, 17, 43, 83],
     [11, 17, 43, 89],
     [11, 17, 43, 97],
     [11, 17, 43, 101],
     [11, 17, 43, 103],
     [11, 17, 43, 107],
     [11, 17, 47, 53],
     [11, 17, 47, 59],
     [11, 17, 47, 61],
     [11, 17, 47, 67],
     [11, 17, 47, 71],
     [11, 17, 47, 73],
     [11, 17, 47, 79],
     [11, 17, 47, 83],
     [11, 17, 47, 89],
     [11, 17, 47, 97],
     [11, 17, 47, 101],
     [11, 17, 53, 59],
     [11, 17, 53, 61],
     [11, 17, 53, 67],
     [11, 17, 53, 71],
     [11, 17, 53, 73],
     [11, 17, 53, 79],
     [11, 17, 53, 83],
     [11, 17, 53, 89],
     [11, 17, 59, 61],
     [11, 17, 59, 67],
     [11, 17, 59, 71],
     [11, 17, 59, 73],
     [11, 17, 59, 79],
     [11, 17, 59, 83],
     [11, 17, 59, 89],
     [11, 17, 61, 67],
     [11, 17, 61, 71],
     [11, 17, 61, 73],
     [11, 17, 61, 79],
     [11, 17, 61, 83],
     [11, 17, 67, 71],
     [11, 17, 67, 73],
     [11, 17, 67, 79],
     [11, 17, 67, 83],
     [11, 17, 71, 73],
     [11, 17, 71, 79],
     [11, 17, 73, 79],
     [11, 19, 23, 29],
     [11, 19, 23, 31],
     [11, 19, 23, 37],
     [11, 19, 23, 41],
     [11, 19, 23, 43],
     [11, 19, 23, 47],
     [11, 19, 23, 53],
     [11, 19, 23, 59],
     [11, 19, 23, 61],
     [11, 19, 23, 67],
     [11, 19, 23, 71]]

theorem k5PrefixGroup0054Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 113] = true := by
  decide

theorem k5PrefixGroup0054Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 113] = true := by
  decide

theorem k5PrefixGroup0054Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 29, 127] = true := by
  decide

theorem k5PrefixGroup0054Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 29, 127] = true := by
  decide

theorem k5PrefixGroup0054Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 37] = true := by
  decide

theorem k5PrefixGroup0054Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 37] = true := by
  decide

theorem k5PrefixGroup0054Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 113] = true := by
  decide

theorem k5PrefixGroup0054Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 113] = true := by
  decide

theorem k5PrefixGroup0054Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 31, 127] = true := by
  decide

theorem k5PrefixGroup0054Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 31, 127] = true := by
  decide

theorem k5PrefixGroup0054Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 37, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 37, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 41, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 41, 109] = true := by
  decide

theorem k5PrefixGroup0054Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 103] = true := by
  decide

theorem k5PrefixGroup0054Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 43, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 43, 107] = true := by
  decide

theorem k5PrefixGroup0054Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 97] = true := by
  decide

theorem k5PrefixGroup0054Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 47, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 47, 101] = true := by
  decide

theorem k5PrefixGroup0054Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 53, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 53, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 59, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 59, 89] = true := by
  decide

theorem k5PrefixGroup0054Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 61, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 61, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 61, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 61, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 61, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 61, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 61, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 67, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 67, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 67, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 67, 83] = true := by
  decide

theorem k5PrefixGroup0054Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 71, 73] = true := by
  decide

theorem k5PrefixGroup0054Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 71, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 17, 73, 79] = true := by
  decide

theorem k5PrefixGroup0054Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0054Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 29] = true := by
  decide

theorem k5PrefixGroup0054Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0054Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 31] = true := by
  decide

theorem k5PrefixGroup0054Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0054Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 37] = true := by
  decide

theorem k5PrefixGroup0054Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 41] = true := by
  decide

theorem k5PrefixGroup0054Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 43] = true := by
  decide

theorem k5PrefixGroup0054Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 47] = true := by
  decide

theorem k5PrefixGroup0054Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 53] = true := by
  decide

theorem k5PrefixGroup0054Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 59] = true := by
  decide

theorem k5PrefixGroup0054Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 61] = true := by
  decide

theorem k5PrefixGroup0054Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 67] = true := by
  decide

theorem k5PrefixGroup0054Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [11, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0054Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [11, 19, 23, 71] = true := by
  decide

theorem k5PrefixGroup0054_passes :
    k5PrefixGroup0054.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0054, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0054Row0000_passes,
    k5PrefixGroup0054Row0001_passes,
    k5PrefixGroup0054Row0002_passes,
    k5PrefixGroup0054Row0003_passes,
    k5PrefixGroup0054Row0004_passes,
    k5PrefixGroup0054Row0005_passes,
    k5PrefixGroup0054Row0006_passes,
    k5PrefixGroup0054Row0007_passes,
    k5PrefixGroup0054Row0008_passes,
    k5PrefixGroup0054Row0009_passes,
    k5PrefixGroup0054Row0010_passes,
    k5PrefixGroup0054Row0011_passes,
    k5PrefixGroup0054Row0012_passes,
    k5PrefixGroup0054Row0013_passes,
    k5PrefixGroup0054Row0014_passes,
    k5PrefixGroup0054Row0015_passes,
    k5PrefixGroup0054Row0016_passes,
    k5PrefixGroup0054Row0017_passes,
    k5PrefixGroup0054Row0018_passes,
    k5PrefixGroup0054Row0019_passes,
    k5PrefixGroup0054Row0020_passes,
    k5PrefixGroup0054Row0021_passes,
    k5PrefixGroup0054Row0022_passes,
    k5PrefixGroup0054Row0023_passes,
    k5PrefixGroup0054Row0024_passes,
    k5PrefixGroup0054Row0025_passes,
    k5PrefixGroup0054Row0026_passes,
    k5PrefixGroup0054Row0027_passes,
    k5PrefixGroup0054Row0028_passes,
    k5PrefixGroup0054Row0029_passes,
    k5PrefixGroup0054Row0030_passes,
    k5PrefixGroup0054Row0031_passes,
    k5PrefixGroup0054Row0032_passes,
    k5PrefixGroup0054Row0033_passes,
    k5PrefixGroup0054Row0034_passes,
    k5PrefixGroup0054Row0035_passes,
    k5PrefixGroup0054Row0036_passes,
    k5PrefixGroup0054Row0037_passes,
    k5PrefixGroup0054Row0038_passes,
    k5PrefixGroup0054Row0039_passes,
    k5PrefixGroup0054Row0040_passes,
    k5PrefixGroup0054Row0041_passes,
    k5PrefixGroup0054Row0042_passes,
    k5PrefixGroup0054Row0043_passes,
    k5PrefixGroup0054Row0044_passes,
    k5PrefixGroup0054Row0045_passes,
    k5PrefixGroup0054Row0046_passes,
    k5PrefixGroup0054Row0047_passes,
    k5PrefixGroup0054Row0048_passes,
    k5PrefixGroup0054Row0049_passes,
    k5PrefixGroup0054Row0050_passes,
    k5PrefixGroup0054Row0051_passes,
    k5PrefixGroup0054Row0052_passes,
    k5PrefixGroup0054Row0053_passes,
    k5PrefixGroup0054Row0054_passes,
    k5PrefixGroup0054Row0055_passes,
    k5PrefixGroup0054Row0056_passes,
    k5PrefixGroup0054Row0057_passes,
    k5PrefixGroup0054Row0058_passes,
    k5PrefixGroup0054Row0059_passes,
    k5PrefixGroup0054Row0060_passes,
    k5PrefixGroup0054Row0061_passes,
    k5PrefixGroup0054Row0062_passes,
    k5PrefixGroup0054Row0063_passes,
    k5PrefixGroup0054Row0064_passes,
    k5PrefixGroup0054Row0065_passes,
    k5PrefixGroup0054Row0066_passes,
    k5PrefixGroup0054Row0067_passes,
    k5PrefixGroup0054Row0068_passes,
    k5PrefixGroup0054Row0069_passes,
    k5PrefixGroup0054Row0070_passes,
    k5PrefixGroup0054Row0071_passes,
    k5PrefixGroup0054Row0072_passes,
    k5PrefixGroup0054Row0073_passes,
    k5PrefixGroup0054Row0074_passes,
    k5PrefixGroup0054Row0075_passes,
    k5PrefixGroup0054Row0076_passes,
    k5PrefixGroup0054Row0077_passes,
    k5PrefixGroup0054Row0078_passes,
    k5PrefixGroup0054Row0079_passes,
    k5PrefixGroup0054Row0080_passes,
    k5PrefixGroup0054Row0081_passes,
    k5PrefixGroup0054Row0082_passes,
    k5PrefixGroup0054Row0083_passes,
    k5PrefixGroup0054Row0084_passes,
    k5PrefixGroup0054Row0085_passes,
    k5PrefixGroup0054Row0086_passes,
    k5PrefixGroup0054Row0087_passes,
    k5PrefixGroup0054Row0088_passes,
    k5PrefixGroup0054Row0089_passes,
    k5PrefixGroup0054Row0090_passes,
    k5PrefixGroup0054Row0091_passes,
    k5PrefixGroup0054Row0092_passes,
    k5PrefixGroup0054Row0093_passes,
    k5PrefixGroup0054Row0094_passes,
    k5PrefixGroup0054Row0095_passes,
    k5PrefixGroup0054Row0096_passes,
    k5PrefixGroup0054Row0097_passes,
    k5PrefixGroup0054Row0098_passes,
    k5PrefixGroup0054Row0099_passes,
    k5PrefixGroup0054Row0100_passes,
    k5PrefixGroup0054Row0101_passes,
    k5PrefixGroup0054Row0102_passes,
    k5PrefixGroup0054Row0103_passes,
    k5PrefixGroup0054Row0104_passes,
    k5PrefixGroup0054Row0105_passes,
    k5PrefixGroup0054Row0106_passes,
    k5PrefixGroup0054Row0107_passes,
    k5PrefixGroup0054Row0108_passes,
    k5PrefixGroup0054Row0109_passes,
    k5PrefixGroup0054Row0110_passes,
    k5PrefixGroup0054Row0111_passes,
    k5PrefixGroup0054Row0112_passes,
    k5PrefixGroup0054Row0113_passes,
    k5PrefixGroup0054Row0114_passes,
    k5PrefixGroup0054Row0115_passes,
    k5PrefixGroup0054Row0116_passes,
    k5PrefixGroup0054Row0117_passes,
    k5PrefixGroup0054Row0118_passes,
    k5PrefixGroup0054Row0119_passes,
    k5PrefixGroup0054Row0120_passes,
    k5PrefixGroup0054Row0121_passes,
    k5PrefixGroup0054Row0122_passes,
    k5PrefixGroup0054Row0123_passes,
    k5PrefixGroup0054Row0124_passes,
    k5PrefixGroup0054Row0125_passes,
    k5PrefixGroup0054Row0126_passes,
    k5PrefixGroup0054Row0127_passes]

theorem k5PrefixGroup0054_mask_upper :
    k5PrefixGroup0054.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0054, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0054Row0000_mask_upper,
    k5PrefixGroup0054Row0001_mask_upper,
    k5PrefixGroup0054Row0002_mask_upper,
    k5PrefixGroup0054Row0003_mask_upper,
    k5PrefixGroup0054Row0004_mask_upper,
    k5PrefixGroup0054Row0005_mask_upper,
    k5PrefixGroup0054Row0006_mask_upper,
    k5PrefixGroup0054Row0007_mask_upper,
    k5PrefixGroup0054Row0008_mask_upper,
    k5PrefixGroup0054Row0009_mask_upper,
    k5PrefixGroup0054Row0010_mask_upper,
    k5PrefixGroup0054Row0011_mask_upper,
    k5PrefixGroup0054Row0012_mask_upper,
    k5PrefixGroup0054Row0013_mask_upper,
    k5PrefixGroup0054Row0014_mask_upper,
    k5PrefixGroup0054Row0015_mask_upper,
    k5PrefixGroup0054Row0016_mask_upper,
    k5PrefixGroup0054Row0017_mask_upper,
    k5PrefixGroup0054Row0018_mask_upper,
    k5PrefixGroup0054Row0019_mask_upper,
    k5PrefixGroup0054Row0020_mask_upper,
    k5PrefixGroup0054Row0021_mask_upper,
    k5PrefixGroup0054Row0022_mask_upper,
    k5PrefixGroup0054Row0023_mask_upper,
    k5PrefixGroup0054Row0024_mask_upper,
    k5PrefixGroup0054Row0025_mask_upper,
    k5PrefixGroup0054Row0026_mask_upper,
    k5PrefixGroup0054Row0027_mask_upper,
    k5PrefixGroup0054Row0028_mask_upper,
    k5PrefixGroup0054Row0029_mask_upper,
    k5PrefixGroup0054Row0030_mask_upper,
    k5PrefixGroup0054Row0031_mask_upper,
    k5PrefixGroup0054Row0032_mask_upper,
    k5PrefixGroup0054Row0033_mask_upper,
    k5PrefixGroup0054Row0034_mask_upper,
    k5PrefixGroup0054Row0035_mask_upper,
    k5PrefixGroup0054Row0036_mask_upper,
    k5PrefixGroup0054Row0037_mask_upper,
    k5PrefixGroup0054Row0038_mask_upper,
    k5PrefixGroup0054Row0039_mask_upper,
    k5PrefixGroup0054Row0040_mask_upper,
    k5PrefixGroup0054Row0041_mask_upper,
    k5PrefixGroup0054Row0042_mask_upper,
    k5PrefixGroup0054Row0043_mask_upper,
    k5PrefixGroup0054Row0044_mask_upper,
    k5PrefixGroup0054Row0045_mask_upper,
    k5PrefixGroup0054Row0046_mask_upper,
    k5PrefixGroup0054Row0047_mask_upper,
    k5PrefixGroup0054Row0048_mask_upper,
    k5PrefixGroup0054Row0049_mask_upper,
    k5PrefixGroup0054Row0050_mask_upper,
    k5PrefixGroup0054Row0051_mask_upper,
    k5PrefixGroup0054Row0052_mask_upper,
    k5PrefixGroup0054Row0053_mask_upper,
    k5PrefixGroup0054Row0054_mask_upper,
    k5PrefixGroup0054Row0055_mask_upper,
    k5PrefixGroup0054Row0056_mask_upper,
    k5PrefixGroup0054Row0057_mask_upper,
    k5PrefixGroup0054Row0058_mask_upper,
    k5PrefixGroup0054Row0059_mask_upper,
    k5PrefixGroup0054Row0060_mask_upper,
    k5PrefixGroup0054Row0061_mask_upper,
    k5PrefixGroup0054Row0062_mask_upper,
    k5PrefixGroup0054Row0063_mask_upper,
    k5PrefixGroup0054Row0064_mask_upper,
    k5PrefixGroup0054Row0065_mask_upper,
    k5PrefixGroup0054Row0066_mask_upper,
    k5PrefixGroup0054Row0067_mask_upper,
    k5PrefixGroup0054Row0068_mask_upper,
    k5PrefixGroup0054Row0069_mask_upper,
    k5PrefixGroup0054Row0070_mask_upper,
    k5PrefixGroup0054Row0071_mask_upper,
    k5PrefixGroup0054Row0072_mask_upper,
    k5PrefixGroup0054Row0073_mask_upper,
    k5PrefixGroup0054Row0074_mask_upper,
    k5PrefixGroup0054Row0075_mask_upper,
    k5PrefixGroup0054Row0076_mask_upper,
    k5PrefixGroup0054Row0077_mask_upper,
    k5PrefixGroup0054Row0078_mask_upper,
    k5PrefixGroup0054Row0079_mask_upper,
    k5PrefixGroup0054Row0080_mask_upper,
    k5PrefixGroup0054Row0081_mask_upper,
    k5PrefixGroup0054Row0082_mask_upper,
    k5PrefixGroup0054Row0083_mask_upper,
    k5PrefixGroup0054Row0084_mask_upper,
    k5PrefixGroup0054Row0085_mask_upper,
    k5PrefixGroup0054Row0086_mask_upper,
    k5PrefixGroup0054Row0087_mask_upper,
    k5PrefixGroup0054Row0088_mask_upper,
    k5PrefixGroup0054Row0089_mask_upper,
    k5PrefixGroup0054Row0090_mask_upper,
    k5PrefixGroup0054Row0091_mask_upper,
    k5PrefixGroup0054Row0092_mask_upper,
    k5PrefixGroup0054Row0093_mask_upper,
    k5PrefixGroup0054Row0094_mask_upper,
    k5PrefixGroup0054Row0095_mask_upper,
    k5PrefixGroup0054Row0096_mask_upper,
    k5PrefixGroup0054Row0097_mask_upper,
    k5PrefixGroup0054Row0098_mask_upper,
    k5PrefixGroup0054Row0099_mask_upper,
    k5PrefixGroup0054Row0100_mask_upper,
    k5PrefixGroup0054Row0101_mask_upper,
    k5PrefixGroup0054Row0102_mask_upper,
    k5PrefixGroup0054Row0103_mask_upper,
    k5PrefixGroup0054Row0104_mask_upper,
    k5PrefixGroup0054Row0105_mask_upper,
    k5PrefixGroup0054Row0106_mask_upper,
    k5PrefixGroup0054Row0107_mask_upper,
    k5PrefixGroup0054Row0108_mask_upper,
    k5PrefixGroup0054Row0109_mask_upper,
    k5PrefixGroup0054Row0110_mask_upper,
    k5PrefixGroup0054Row0111_mask_upper,
    k5PrefixGroup0054Row0112_mask_upper,
    k5PrefixGroup0054Row0113_mask_upper,
    k5PrefixGroup0054Row0114_mask_upper,
    k5PrefixGroup0054Row0115_mask_upper,
    k5PrefixGroup0054Row0116_mask_upper,
    k5PrefixGroup0054Row0117_mask_upper,
    k5PrefixGroup0054Row0118_mask_upper,
    k5PrefixGroup0054Row0119_mask_upper,
    k5PrefixGroup0054Row0120_mask_upper,
    k5PrefixGroup0054Row0121_mask_upper,
    k5PrefixGroup0054Row0122_mask_upper,
    k5PrefixGroup0054Row0123_mask_upper,
    k5PrefixGroup0054Row0124_mask_upper,
    k5PrefixGroup0054Row0125_mask_upper,
    k5PrefixGroup0054Row0126_mask_upper,
    k5PrefixGroup0054Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
