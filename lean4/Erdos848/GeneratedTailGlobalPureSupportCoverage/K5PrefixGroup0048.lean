import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0048 : List (List ℕ) :=
  [[7, 19, 59, 97],
     [7, 19, 59, 101],
     [7, 19, 59, 103],
     [7, 19, 59, 107],
     [7, 19, 59, 109],
     [7, 19, 61, 67],
     [7, 19, 61, 71],
     [7, 19, 61, 73],
     [7, 19, 61, 79],
     [7, 19, 61, 83],
     [7, 19, 61, 89],
     [7, 19, 61, 97],
     [7, 19, 61, 101],
     [7, 19, 61, 103],
     [7, 19, 61, 107],
     [7, 19, 67, 71],
     [7, 19, 67, 73],
     [7, 19, 67, 79],
     [7, 19, 67, 83],
     [7, 19, 67, 89],
     [7, 19, 67, 97],
     [7, 19, 67, 101],
     [7, 19, 71, 73],
     [7, 19, 71, 79],
     [7, 19, 71, 83],
     [7, 19, 71, 89],
     [7, 19, 71, 97],
     [7, 19, 73, 79],
     [7, 19, 73, 83],
     [7, 19, 73, 89],
     [7, 19, 73, 97],
     [7, 19, 79, 83],
     [7, 19, 79, 89],
     [7, 19, 83, 89],
     [7, 23, 29, 31],
     [7, 23, 29, 37],
     [7, 23, 29, 41],
     [7, 23, 29, 43],
     [7, 23, 29, 47],
     [7, 23, 29, 53],
     [7, 23, 29, 59],
     [7, 23, 29, 61],
     [7, 23, 29, 67],
     [7, 23, 29, 71],
     [7, 23, 29, 73],
     [7, 23, 29, 79],
     [7, 23, 29, 83],
     [7, 23, 29, 89],
     [7, 23, 29, 97],
     [7, 23, 29, 101],
     [7, 23, 29, 103],
     [7, 23, 29, 107],
     [7, 23, 29, 109],
     [7, 23, 29, 113],
     [7, 23, 29, 127],
     [7, 23, 29, 131],
     [7, 23, 29, 137],
     [7, 23, 31, 37],
     [7, 23, 31, 41],
     [7, 23, 31, 43],
     [7, 23, 31, 47],
     [7, 23, 31, 53],
     [7, 23, 31, 59],
     [7, 23, 31, 61],
     [7, 23, 31, 67],
     [7, 23, 31, 71],
     [7, 23, 31, 73],
     [7, 23, 31, 79],
     [7, 23, 31, 83],
     [7, 23, 31, 89],
     [7, 23, 31, 97],
     [7, 23, 31, 101],
     [7, 23, 31, 103],
     [7, 23, 31, 107],
     [7, 23, 31, 109],
     [7, 23, 31, 113],
     [7, 23, 31, 127],
     [7, 23, 31, 131],
     [7, 23, 31, 137],
     [7, 23, 37, 41],
     [7, 23, 37, 43],
     [7, 23, 37, 47],
     [7, 23, 37, 53],
     [7, 23, 37, 59],
     [7, 23, 37, 61],
     [7, 23, 37, 67],
     [7, 23, 37, 71],
     [7, 23, 37, 73],
     [7, 23, 37, 79],
     [7, 23, 37, 83],
     [7, 23, 37, 89],
     [7, 23, 37, 97],
     [7, 23, 37, 101],
     [7, 23, 37, 103],
     [7, 23, 37, 107],
     [7, 23, 37, 109],
     [7, 23, 37, 113],
     [7, 23, 41, 43],
     [7, 23, 41, 47],
     [7, 23, 41, 53],
     [7, 23, 41, 59],
     [7, 23, 41, 61],
     [7, 23, 41, 67],
     [7, 23, 41, 71],
     [7, 23, 41, 73],
     [7, 23, 41, 79],
     [7, 23, 41, 83],
     [7, 23, 41, 89],
     [7, 23, 41, 97],
     [7, 23, 41, 101],
     [7, 23, 41, 103],
     [7, 23, 41, 107],
     [7, 23, 41, 109],
     [7, 23, 41, 113],
     [7, 23, 43, 47],
     [7, 23, 43, 53],
     [7, 23, 43, 59],
     [7, 23, 43, 61],
     [7, 23, 43, 67],
     [7, 23, 43, 71],
     [7, 23, 43, 73],
     [7, 23, 43, 79],
     [7, 23, 43, 83],
     [7, 23, 43, 89],
     [7, 23, 43, 97],
     [7, 23, 43, 101],
     [7, 23, 43, 103],
     [7, 23, 43, 107]]

theorem k5PrefixGroup0048Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 59, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 59, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 59, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 59, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 59, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 59, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 59, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 59, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 59, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 59, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 61, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 61, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 67, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 67, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 71, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 71, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 71, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 71, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 71, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 71, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 71, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 71, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 71, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 71, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 73, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 73, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 73, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 73, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 73, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 73, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 73, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 73, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 79, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 79, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 79, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 79, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 19, 83, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 19, 83, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 31] = true := by
  decide

theorem k5PrefixGroup0048Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 31] = true := by
  decide

theorem k5PrefixGroup0048Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 37] = true := by
  decide

theorem k5PrefixGroup0048Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 37] = true := by
  decide

theorem k5PrefixGroup0048Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 127] = true := by
  decide

theorem k5PrefixGroup0048Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 127] = true := by
  decide

theorem k5PrefixGroup0048Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 131] = true := by
  decide

theorem k5PrefixGroup0048Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 131] = true := by
  decide

theorem k5PrefixGroup0048Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 29, 137] = true := by
  decide

theorem k5PrefixGroup0048Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 29, 137] = true := by
  decide

theorem k5PrefixGroup0048Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0048Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0048Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 127] = true := by
  decide

theorem k5PrefixGroup0048Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 127] = true := by
  decide

theorem k5PrefixGroup0048Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 131] = true := by
  decide

theorem k5PrefixGroup0048Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 131] = true := by
  decide

theorem k5PrefixGroup0048Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 31, 137] = true := by
  decide

theorem k5PrefixGroup0048Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 31, 137] = true := by
  decide

theorem k5PrefixGroup0048Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 41] = true := by
  decide

theorem k5PrefixGroup0048Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 37, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 37, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 43] = true := by
  decide

theorem k5PrefixGroup0048Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 109] = true := by
  decide

theorem k5PrefixGroup0048Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 41, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 41, 113] = true := by
  decide

theorem k5PrefixGroup0048Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 47] = true := by
  decide

theorem k5PrefixGroup0048Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 53] = true := by
  decide

theorem k5PrefixGroup0048Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 59] = true := by
  decide

theorem k5PrefixGroup0048Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 61] = true := by
  decide

theorem k5PrefixGroup0048Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 67] = true := by
  decide

theorem k5PrefixGroup0048Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 71] = true := by
  decide

theorem k5PrefixGroup0048Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 73] = true := by
  decide

theorem k5PrefixGroup0048Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 79] = true := by
  decide

theorem k5PrefixGroup0048Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 83] = true := by
  decide

theorem k5PrefixGroup0048Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 89] = true := by
  decide

theorem k5PrefixGroup0048Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 97] = true := by
  decide

theorem k5PrefixGroup0048Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 101] = true := by
  decide

theorem k5PrefixGroup0048Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 103] = true := by
  decide

theorem k5PrefixGroup0048Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 23, 43, 107] = true := by
  decide

theorem k5PrefixGroup0048Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 23, 43, 107] = true := by
  decide

theorem k5PrefixGroup0048_passes :
    k5PrefixGroup0048.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0048, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0048Row0000_passes,
    k5PrefixGroup0048Row0001_passes,
    k5PrefixGroup0048Row0002_passes,
    k5PrefixGroup0048Row0003_passes,
    k5PrefixGroup0048Row0004_passes,
    k5PrefixGroup0048Row0005_passes,
    k5PrefixGroup0048Row0006_passes,
    k5PrefixGroup0048Row0007_passes,
    k5PrefixGroup0048Row0008_passes,
    k5PrefixGroup0048Row0009_passes,
    k5PrefixGroup0048Row0010_passes,
    k5PrefixGroup0048Row0011_passes,
    k5PrefixGroup0048Row0012_passes,
    k5PrefixGroup0048Row0013_passes,
    k5PrefixGroup0048Row0014_passes,
    k5PrefixGroup0048Row0015_passes,
    k5PrefixGroup0048Row0016_passes,
    k5PrefixGroup0048Row0017_passes,
    k5PrefixGroup0048Row0018_passes,
    k5PrefixGroup0048Row0019_passes,
    k5PrefixGroup0048Row0020_passes,
    k5PrefixGroup0048Row0021_passes,
    k5PrefixGroup0048Row0022_passes,
    k5PrefixGroup0048Row0023_passes,
    k5PrefixGroup0048Row0024_passes,
    k5PrefixGroup0048Row0025_passes,
    k5PrefixGroup0048Row0026_passes,
    k5PrefixGroup0048Row0027_passes,
    k5PrefixGroup0048Row0028_passes,
    k5PrefixGroup0048Row0029_passes,
    k5PrefixGroup0048Row0030_passes,
    k5PrefixGroup0048Row0031_passes,
    k5PrefixGroup0048Row0032_passes,
    k5PrefixGroup0048Row0033_passes,
    k5PrefixGroup0048Row0034_passes,
    k5PrefixGroup0048Row0035_passes,
    k5PrefixGroup0048Row0036_passes,
    k5PrefixGroup0048Row0037_passes,
    k5PrefixGroup0048Row0038_passes,
    k5PrefixGroup0048Row0039_passes,
    k5PrefixGroup0048Row0040_passes,
    k5PrefixGroup0048Row0041_passes,
    k5PrefixGroup0048Row0042_passes,
    k5PrefixGroup0048Row0043_passes,
    k5PrefixGroup0048Row0044_passes,
    k5PrefixGroup0048Row0045_passes,
    k5PrefixGroup0048Row0046_passes,
    k5PrefixGroup0048Row0047_passes,
    k5PrefixGroup0048Row0048_passes,
    k5PrefixGroup0048Row0049_passes,
    k5PrefixGroup0048Row0050_passes,
    k5PrefixGroup0048Row0051_passes,
    k5PrefixGroup0048Row0052_passes,
    k5PrefixGroup0048Row0053_passes,
    k5PrefixGroup0048Row0054_passes,
    k5PrefixGroup0048Row0055_passes,
    k5PrefixGroup0048Row0056_passes,
    k5PrefixGroup0048Row0057_passes,
    k5PrefixGroup0048Row0058_passes,
    k5PrefixGroup0048Row0059_passes,
    k5PrefixGroup0048Row0060_passes,
    k5PrefixGroup0048Row0061_passes,
    k5PrefixGroup0048Row0062_passes,
    k5PrefixGroup0048Row0063_passes,
    k5PrefixGroup0048Row0064_passes,
    k5PrefixGroup0048Row0065_passes,
    k5PrefixGroup0048Row0066_passes,
    k5PrefixGroup0048Row0067_passes,
    k5PrefixGroup0048Row0068_passes,
    k5PrefixGroup0048Row0069_passes,
    k5PrefixGroup0048Row0070_passes,
    k5PrefixGroup0048Row0071_passes,
    k5PrefixGroup0048Row0072_passes,
    k5PrefixGroup0048Row0073_passes,
    k5PrefixGroup0048Row0074_passes,
    k5PrefixGroup0048Row0075_passes,
    k5PrefixGroup0048Row0076_passes,
    k5PrefixGroup0048Row0077_passes,
    k5PrefixGroup0048Row0078_passes,
    k5PrefixGroup0048Row0079_passes,
    k5PrefixGroup0048Row0080_passes,
    k5PrefixGroup0048Row0081_passes,
    k5PrefixGroup0048Row0082_passes,
    k5PrefixGroup0048Row0083_passes,
    k5PrefixGroup0048Row0084_passes,
    k5PrefixGroup0048Row0085_passes,
    k5PrefixGroup0048Row0086_passes,
    k5PrefixGroup0048Row0087_passes,
    k5PrefixGroup0048Row0088_passes,
    k5PrefixGroup0048Row0089_passes,
    k5PrefixGroup0048Row0090_passes,
    k5PrefixGroup0048Row0091_passes,
    k5PrefixGroup0048Row0092_passes,
    k5PrefixGroup0048Row0093_passes,
    k5PrefixGroup0048Row0094_passes,
    k5PrefixGroup0048Row0095_passes,
    k5PrefixGroup0048Row0096_passes,
    k5PrefixGroup0048Row0097_passes,
    k5PrefixGroup0048Row0098_passes,
    k5PrefixGroup0048Row0099_passes,
    k5PrefixGroup0048Row0100_passes,
    k5PrefixGroup0048Row0101_passes,
    k5PrefixGroup0048Row0102_passes,
    k5PrefixGroup0048Row0103_passes,
    k5PrefixGroup0048Row0104_passes,
    k5PrefixGroup0048Row0105_passes,
    k5PrefixGroup0048Row0106_passes,
    k5PrefixGroup0048Row0107_passes,
    k5PrefixGroup0048Row0108_passes,
    k5PrefixGroup0048Row0109_passes,
    k5PrefixGroup0048Row0110_passes,
    k5PrefixGroup0048Row0111_passes,
    k5PrefixGroup0048Row0112_passes,
    k5PrefixGroup0048Row0113_passes,
    k5PrefixGroup0048Row0114_passes,
    k5PrefixGroup0048Row0115_passes,
    k5PrefixGroup0048Row0116_passes,
    k5PrefixGroup0048Row0117_passes,
    k5PrefixGroup0048Row0118_passes,
    k5PrefixGroup0048Row0119_passes,
    k5PrefixGroup0048Row0120_passes,
    k5PrefixGroup0048Row0121_passes,
    k5PrefixGroup0048Row0122_passes,
    k5PrefixGroup0048Row0123_passes,
    k5PrefixGroup0048Row0124_passes,
    k5PrefixGroup0048Row0125_passes,
    k5PrefixGroup0048Row0126_passes,
    k5PrefixGroup0048Row0127_passes]

theorem k5PrefixGroup0048_mask_upper :
    k5PrefixGroup0048.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0048, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0048Row0000_mask_upper,
    k5PrefixGroup0048Row0001_mask_upper,
    k5PrefixGroup0048Row0002_mask_upper,
    k5PrefixGroup0048Row0003_mask_upper,
    k5PrefixGroup0048Row0004_mask_upper,
    k5PrefixGroup0048Row0005_mask_upper,
    k5PrefixGroup0048Row0006_mask_upper,
    k5PrefixGroup0048Row0007_mask_upper,
    k5PrefixGroup0048Row0008_mask_upper,
    k5PrefixGroup0048Row0009_mask_upper,
    k5PrefixGroup0048Row0010_mask_upper,
    k5PrefixGroup0048Row0011_mask_upper,
    k5PrefixGroup0048Row0012_mask_upper,
    k5PrefixGroup0048Row0013_mask_upper,
    k5PrefixGroup0048Row0014_mask_upper,
    k5PrefixGroup0048Row0015_mask_upper,
    k5PrefixGroup0048Row0016_mask_upper,
    k5PrefixGroup0048Row0017_mask_upper,
    k5PrefixGroup0048Row0018_mask_upper,
    k5PrefixGroup0048Row0019_mask_upper,
    k5PrefixGroup0048Row0020_mask_upper,
    k5PrefixGroup0048Row0021_mask_upper,
    k5PrefixGroup0048Row0022_mask_upper,
    k5PrefixGroup0048Row0023_mask_upper,
    k5PrefixGroup0048Row0024_mask_upper,
    k5PrefixGroup0048Row0025_mask_upper,
    k5PrefixGroup0048Row0026_mask_upper,
    k5PrefixGroup0048Row0027_mask_upper,
    k5PrefixGroup0048Row0028_mask_upper,
    k5PrefixGroup0048Row0029_mask_upper,
    k5PrefixGroup0048Row0030_mask_upper,
    k5PrefixGroup0048Row0031_mask_upper,
    k5PrefixGroup0048Row0032_mask_upper,
    k5PrefixGroup0048Row0033_mask_upper,
    k5PrefixGroup0048Row0034_mask_upper,
    k5PrefixGroup0048Row0035_mask_upper,
    k5PrefixGroup0048Row0036_mask_upper,
    k5PrefixGroup0048Row0037_mask_upper,
    k5PrefixGroup0048Row0038_mask_upper,
    k5PrefixGroup0048Row0039_mask_upper,
    k5PrefixGroup0048Row0040_mask_upper,
    k5PrefixGroup0048Row0041_mask_upper,
    k5PrefixGroup0048Row0042_mask_upper,
    k5PrefixGroup0048Row0043_mask_upper,
    k5PrefixGroup0048Row0044_mask_upper,
    k5PrefixGroup0048Row0045_mask_upper,
    k5PrefixGroup0048Row0046_mask_upper,
    k5PrefixGroup0048Row0047_mask_upper,
    k5PrefixGroup0048Row0048_mask_upper,
    k5PrefixGroup0048Row0049_mask_upper,
    k5PrefixGroup0048Row0050_mask_upper,
    k5PrefixGroup0048Row0051_mask_upper,
    k5PrefixGroup0048Row0052_mask_upper,
    k5PrefixGroup0048Row0053_mask_upper,
    k5PrefixGroup0048Row0054_mask_upper,
    k5PrefixGroup0048Row0055_mask_upper,
    k5PrefixGroup0048Row0056_mask_upper,
    k5PrefixGroup0048Row0057_mask_upper,
    k5PrefixGroup0048Row0058_mask_upper,
    k5PrefixGroup0048Row0059_mask_upper,
    k5PrefixGroup0048Row0060_mask_upper,
    k5PrefixGroup0048Row0061_mask_upper,
    k5PrefixGroup0048Row0062_mask_upper,
    k5PrefixGroup0048Row0063_mask_upper,
    k5PrefixGroup0048Row0064_mask_upper,
    k5PrefixGroup0048Row0065_mask_upper,
    k5PrefixGroup0048Row0066_mask_upper,
    k5PrefixGroup0048Row0067_mask_upper,
    k5PrefixGroup0048Row0068_mask_upper,
    k5PrefixGroup0048Row0069_mask_upper,
    k5PrefixGroup0048Row0070_mask_upper,
    k5PrefixGroup0048Row0071_mask_upper,
    k5PrefixGroup0048Row0072_mask_upper,
    k5PrefixGroup0048Row0073_mask_upper,
    k5PrefixGroup0048Row0074_mask_upper,
    k5PrefixGroup0048Row0075_mask_upper,
    k5PrefixGroup0048Row0076_mask_upper,
    k5PrefixGroup0048Row0077_mask_upper,
    k5PrefixGroup0048Row0078_mask_upper,
    k5PrefixGroup0048Row0079_mask_upper,
    k5PrefixGroup0048Row0080_mask_upper,
    k5PrefixGroup0048Row0081_mask_upper,
    k5PrefixGroup0048Row0082_mask_upper,
    k5PrefixGroup0048Row0083_mask_upper,
    k5PrefixGroup0048Row0084_mask_upper,
    k5PrefixGroup0048Row0085_mask_upper,
    k5PrefixGroup0048Row0086_mask_upper,
    k5PrefixGroup0048Row0087_mask_upper,
    k5PrefixGroup0048Row0088_mask_upper,
    k5PrefixGroup0048Row0089_mask_upper,
    k5PrefixGroup0048Row0090_mask_upper,
    k5PrefixGroup0048Row0091_mask_upper,
    k5PrefixGroup0048Row0092_mask_upper,
    k5PrefixGroup0048Row0093_mask_upper,
    k5PrefixGroup0048Row0094_mask_upper,
    k5PrefixGroup0048Row0095_mask_upper,
    k5PrefixGroup0048Row0096_mask_upper,
    k5PrefixGroup0048Row0097_mask_upper,
    k5PrefixGroup0048Row0098_mask_upper,
    k5PrefixGroup0048Row0099_mask_upper,
    k5PrefixGroup0048Row0100_mask_upper,
    k5PrefixGroup0048Row0101_mask_upper,
    k5PrefixGroup0048Row0102_mask_upper,
    k5PrefixGroup0048Row0103_mask_upper,
    k5PrefixGroup0048Row0104_mask_upper,
    k5PrefixGroup0048Row0105_mask_upper,
    k5PrefixGroup0048Row0106_mask_upper,
    k5PrefixGroup0048Row0107_mask_upper,
    k5PrefixGroup0048Row0108_mask_upper,
    k5PrefixGroup0048Row0109_mask_upper,
    k5PrefixGroup0048Row0110_mask_upper,
    k5PrefixGroup0048Row0111_mask_upper,
    k5PrefixGroup0048Row0112_mask_upper,
    k5PrefixGroup0048Row0113_mask_upper,
    k5PrefixGroup0048Row0114_mask_upper,
    k5PrefixGroup0048Row0115_mask_upper,
    k5PrefixGroup0048Row0116_mask_upper,
    k5PrefixGroup0048Row0117_mask_upper,
    k5PrefixGroup0048Row0118_mask_upper,
    k5PrefixGroup0048Row0119_mask_upper,
    k5PrefixGroup0048Row0120_mask_upper,
    k5PrefixGroup0048Row0121_mask_upper,
    k5PrefixGroup0048Row0122_mask_upper,
    k5PrefixGroup0048Row0123_mask_upper,
    k5PrefixGroup0048Row0124_mask_upper,
    k5PrefixGroup0048Row0125_mask_upper,
    k5PrefixGroup0048Row0126_mask_upper,
    k5PrefixGroup0048Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
