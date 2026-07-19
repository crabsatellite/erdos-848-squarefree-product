import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0010 : List (List ℕ) :=
  [[3, 11, 13, 23, 107],
     [3, 11, 13, 23, 109],
     [3, 11, 13, 23, 113],
     [3, 11, 13, 23, 127],
     [3, 11, 13, 23, 131],
     [3, 11, 13, 23, 137],
     [3, 11, 13, 29, 31],
     [3, 11, 13, 29, 37],
     [3, 11, 13, 29, 41],
     [3, 11, 13, 29, 43],
     [3, 11, 13, 29, 47],
     [3, 11, 13, 29, 53],
     [3, 11, 13, 29, 59],
     [3, 11, 13, 29, 61],
     [3, 11, 13, 29, 67],
     [3, 11, 13, 29, 71],
     [3, 11, 13, 29, 73],
     [3, 11, 13, 29, 79],
     [3, 11, 13, 29, 83],
     [3, 11, 13, 29, 89],
     [3, 11, 13, 29, 97],
     [3, 11, 13, 29, 101],
     [3, 11, 13, 29, 103],
     [3, 11, 13, 29, 107],
     [3, 11, 13, 29, 109],
     [3, 11, 13, 29, 113],
     [3, 11, 13, 31, 37],
     [3, 11, 13, 31, 41],
     [3, 11, 13, 31, 43],
     [3, 11, 13, 31, 47],
     [3, 11, 13, 31, 53],
     [3, 11, 13, 31, 59],
     [3, 11, 13, 31, 61],
     [3, 11, 13, 31, 67],
     [3, 11, 13, 31, 71],
     [3, 11, 13, 31, 73],
     [3, 11, 13, 31, 79],
     [3, 11, 13, 31, 83],
     [3, 11, 13, 31, 89],
     [3, 11, 13, 31, 97],
     [3, 11, 13, 31, 101],
     [3, 11, 13, 31, 103],
     [3, 11, 13, 31, 107],
     [3, 11, 13, 31, 109],
     [3, 11, 13, 31, 113],
     [3, 11, 13, 37, 41],
     [3, 11, 13, 37, 43],
     [3, 11, 13, 37, 47],
     [3, 11, 13, 37, 53],
     [3, 11, 13, 37, 59],
     [3, 11, 13, 37, 61],
     [3, 11, 13, 37, 67],
     [3, 11, 13, 37, 71],
     [3, 11, 13, 37, 73],
     [3, 11, 13, 37, 79],
     [3, 11, 13, 37, 83],
     [3, 11, 13, 37, 89],
     [3, 11, 13, 37, 97],
     [3, 11, 13, 37, 101],
     [3, 11, 13, 37, 103],
     [3, 11, 13, 37, 107],
     [3, 11, 13, 41, 43],
     [3, 11, 13, 41, 47],
     [3, 11, 13, 41, 53],
     [3, 11, 13, 41, 59],
     [3, 11, 13, 41, 61],
     [3, 11, 13, 41, 67],
     [3, 11, 13, 41, 71],
     [3, 11, 13, 41, 73],
     [3, 11, 13, 41, 79],
     [3, 11, 13, 41, 83],
     [3, 11, 13, 41, 89],
     [3, 11, 13, 41, 97],
     [3, 11, 13, 41, 101],
     [3, 11, 13, 43, 47],
     [3, 11, 13, 43, 53],
     [3, 11, 13, 43, 59],
     [3, 11, 13, 43, 61],
     [3, 11, 13, 43, 67],
     [3, 11, 13, 43, 71],
     [3, 11, 13, 43, 73],
     [3, 11, 13, 43, 79],
     [3, 11, 13, 43, 83],
     [3, 11, 13, 43, 89],
     [3, 11, 13, 43, 97],
     [3, 11, 13, 43, 101],
     [3, 11, 13, 47, 53],
     [3, 11, 13, 47, 59],
     [3, 11, 13, 47, 61],
     [3, 11, 13, 47, 67],
     [3, 11, 13, 47, 71],
     [3, 11, 13, 47, 73],
     [3, 11, 13, 47, 79],
     [3, 11, 13, 47, 83],
     [3, 11, 13, 47, 89],
     [3, 11, 13, 53, 59],
     [3, 11, 13, 53, 61],
     [3, 11, 13, 53, 67],
     [3, 11, 13, 53, 71],
     [3, 11, 13, 53, 73],
     [3, 11, 13, 53, 79],
     [3, 11, 13, 53, 83],
     [3, 11, 13, 59, 61],
     [3, 11, 13, 59, 67],
     [3, 11, 13, 59, 71],
     [3, 11, 13, 59, 73],
     [3, 11, 13, 59, 79],
     [3, 11, 13, 59, 83],
     [3, 11, 13, 61, 67],
     [3, 11, 13, 61, 71],
     [3, 11, 13, 61, 73],
     [3, 11, 13, 61, 79],
     [3, 11, 13, 61, 83],
     [3, 11, 13, 67, 71],
     [3, 11, 13, 67, 73],
     [3, 11, 13, 67, 79],
     [3, 11, 13, 71, 73],
     [3, 11, 17, 19, 23],
     [3, 11, 17, 19, 29],
     [3, 11, 17, 19, 31],
     [3, 11, 17, 19, 37],
     [3, 11, 17, 19, 41],
     [3, 11, 17, 19, 43],
     [3, 11, 17, 19, 47],
     [3, 11, 17, 19, 53],
     [3, 11, 17, 19, 59],
     [3, 11, 17, 19, 61],
     [3, 11, 17, 19, 67]]

theorem k6PrefixGroup0010Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 127] = true := by
  decide

theorem k6PrefixGroup0010Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 127] = true := by
  decide

theorem k6PrefixGroup0010Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 131] = true := by
  decide

theorem k6PrefixGroup0010Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 131] = true := by
  decide

theorem k6PrefixGroup0010Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 23, 137] = true := by
  decide

theorem k6PrefixGroup0010Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 23, 137] = true := by
  decide

theorem k6PrefixGroup0010Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 31] = true := by
  decide

theorem k6PrefixGroup0010Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 31] = true := by
  decide

theorem k6PrefixGroup0010Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 29, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 29, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 109] = true := by
  decide

theorem k6PrefixGroup0010Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 31, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 31, 113] = true := by
  decide

theorem k6PrefixGroup0010Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 103] = true := by
  decide

theorem k6PrefixGroup0010Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 37, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37, 107] = true := by
  decide

theorem k6PrefixGroup0010Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 41, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 97] = true := by
  decide

theorem k6PrefixGroup0010Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 43, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43, 101] = true := by
  decide

theorem k6PrefixGroup0010Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 47, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47, 89] = true := by
  decide

theorem k6PrefixGroup0010Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 53, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 59, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 61, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 61, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 61, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 61, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 61, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61, 83] = true := by
  decide

theorem k6PrefixGroup0010Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 67, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 67, 71] = true := by
  decide

theorem k6PrefixGroup0010Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 67, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 67, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 67, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 67, 79] = true := by
  decide

theorem k6PrefixGroup0010Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 13, 71, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 71, 73] = true := by
  decide

theorem k6PrefixGroup0010Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 23] = true := by
  decide

theorem k6PrefixGroup0010Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 23] = true := by
  decide

theorem k6PrefixGroup0010Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 29] = true := by
  decide

theorem k6PrefixGroup0010Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 29] = true := by
  decide

theorem k6PrefixGroup0010Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 31] = true := by
  decide

theorem k6PrefixGroup0010Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 31] = true := by
  decide

theorem k6PrefixGroup0010Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 37] = true := by
  decide

theorem k6PrefixGroup0010Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 41] = true := by
  decide

theorem k6PrefixGroup0010Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 43] = true := by
  decide

theorem k6PrefixGroup0010Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 47] = true := by
  decide

theorem k6PrefixGroup0010Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 53] = true := by
  decide

theorem k6PrefixGroup0010Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 59] = true := by
  decide

theorem k6PrefixGroup0010Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 61] = true := by
  decide

theorem k6PrefixGroup0010Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 11, 17, 19, 67] = true := by
  decide

theorem k6PrefixGroup0010Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19, 67] = true := by
  decide

theorem k6PrefixGroup0010_passes :
    k6PrefixGroup0010.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6PrefixGroup0010, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0010Row0000_passes,
    k6PrefixGroup0010Row0001_passes,
    k6PrefixGroup0010Row0002_passes,
    k6PrefixGroup0010Row0003_passes,
    k6PrefixGroup0010Row0004_passes,
    k6PrefixGroup0010Row0005_passes,
    k6PrefixGroup0010Row0006_passes,
    k6PrefixGroup0010Row0007_passes,
    k6PrefixGroup0010Row0008_passes,
    k6PrefixGroup0010Row0009_passes,
    k6PrefixGroup0010Row0010_passes,
    k6PrefixGroup0010Row0011_passes,
    k6PrefixGroup0010Row0012_passes,
    k6PrefixGroup0010Row0013_passes,
    k6PrefixGroup0010Row0014_passes,
    k6PrefixGroup0010Row0015_passes,
    k6PrefixGroup0010Row0016_passes,
    k6PrefixGroup0010Row0017_passes,
    k6PrefixGroup0010Row0018_passes,
    k6PrefixGroup0010Row0019_passes,
    k6PrefixGroup0010Row0020_passes,
    k6PrefixGroup0010Row0021_passes,
    k6PrefixGroup0010Row0022_passes,
    k6PrefixGroup0010Row0023_passes,
    k6PrefixGroup0010Row0024_passes,
    k6PrefixGroup0010Row0025_passes,
    k6PrefixGroup0010Row0026_passes,
    k6PrefixGroup0010Row0027_passes,
    k6PrefixGroup0010Row0028_passes,
    k6PrefixGroup0010Row0029_passes,
    k6PrefixGroup0010Row0030_passes,
    k6PrefixGroup0010Row0031_passes,
    k6PrefixGroup0010Row0032_passes,
    k6PrefixGroup0010Row0033_passes,
    k6PrefixGroup0010Row0034_passes,
    k6PrefixGroup0010Row0035_passes,
    k6PrefixGroup0010Row0036_passes,
    k6PrefixGroup0010Row0037_passes,
    k6PrefixGroup0010Row0038_passes,
    k6PrefixGroup0010Row0039_passes,
    k6PrefixGroup0010Row0040_passes,
    k6PrefixGroup0010Row0041_passes,
    k6PrefixGroup0010Row0042_passes,
    k6PrefixGroup0010Row0043_passes,
    k6PrefixGroup0010Row0044_passes,
    k6PrefixGroup0010Row0045_passes,
    k6PrefixGroup0010Row0046_passes,
    k6PrefixGroup0010Row0047_passes,
    k6PrefixGroup0010Row0048_passes,
    k6PrefixGroup0010Row0049_passes,
    k6PrefixGroup0010Row0050_passes,
    k6PrefixGroup0010Row0051_passes,
    k6PrefixGroup0010Row0052_passes,
    k6PrefixGroup0010Row0053_passes,
    k6PrefixGroup0010Row0054_passes,
    k6PrefixGroup0010Row0055_passes,
    k6PrefixGroup0010Row0056_passes,
    k6PrefixGroup0010Row0057_passes,
    k6PrefixGroup0010Row0058_passes,
    k6PrefixGroup0010Row0059_passes,
    k6PrefixGroup0010Row0060_passes,
    k6PrefixGroup0010Row0061_passes,
    k6PrefixGroup0010Row0062_passes,
    k6PrefixGroup0010Row0063_passes,
    k6PrefixGroup0010Row0064_passes,
    k6PrefixGroup0010Row0065_passes,
    k6PrefixGroup0010Row0066_passes,
    k6PrefixGroup0010Row0067_passes,
    k6PrefixGroup0010Row0068_passes,
    k6PrefixGroup0010Row0069_passes,
    k6PrefixGroup0010Row0070_passes,
    k6PrefixGroup0010Row0071_passes,
    k6PrefixGroup0010Row0072_passes,
    k6PrefixGroup0010Row0073_passes,
    k6PrefixGroup0010Row0074_passes,
    k6PrefixGroup0010Row0075_passes,
    k6PrefixGroup0010Row0076_passes,
    k6PrefixGroup0010Row0077_passes,
    k6PrefixGroup0010Row0078_passes,
    k6PrefixGroup0010Row0079_passes,
    k6PrefixGroup0010Row0080_passes,
    k6PrefixGroup0010Row0081_passes,
    k6PrefixGroup0010Row0082_passes,
    k6PrefixGroup0010Row0083_passes,
    k6PrefixGroup0010Row0084_passes,
    k6PrefixGroup0010Row0085_passes,
    k6PrefixGroup0010Row0086_passes,
    k6PrefixGroup0010Row0087_passes,
    k6PrefixGroup0010Row0088_passes,
    k6PrefixGroup0010Row0089_passes,
    k6PrefixGroup0010Row0090_passes,
    k6PrefixGroup0010Row0091_passes,
    k6PrefixGroup0010Row0092_passes,
    k6PrefixGroup0010Row0093_passes,
    k6PrefixGroup0010Row0094_passes,
    k6PrefixGroup0010Row0095_passes,
    k6PrefixGroup0010Row0096_passes,
    k6PrefixGroup0010Row0097_passes,
    k6PrefixGroup0010Row0098_passes,
    k6PrefixGroup0010Row0099_passes,
    k6PrefixGroup0010Row0100_passes,
    k6PrefixGroup0010Row0101_passes,
    k6PrefixGroup0010Row0102_passes,
    k6PrefixGroup0010Row0103_passes,
    k6PrefixGroup0010Row0104_passes,
    k6PrefixGroup0010Row0105_passes,
    k6PrefixGroup0010Row0106_passes,
    k6PrefixGroup0010Row0107_passes,
    k6PrefixGroup0010Row0108_passes,
    k6PrefixGroup0010Row0109_passes,
    k6PrefixGroup0010Row0110_passes,
    k6PrefixGroup0010Row0111_passes,
    k6PrefixGroup0010Row0112_passes,
    k6PrefixGroup0010Row0113_passes,
    k6PrefixGroup0010Row0114_passes,
    k6PrefixGroup0010Row0115_passes,
    k6PrefixGroup0010Row0116_passes,
    k6PrefixGroup0010Row0117_passes,
    k6PrefixGroup0010Row0118_passes,
    k6PrefixGroup0010Row0119_passes,
    k6PrefixGroup0010Row0120_passes,
    k6PrefixGroup0010Row0121_passes,
    k6PrefixGroup0010Row0122_passes,
    k6PrefixGroup0010Row0123_passes,
    k6PrefixGroup0010Row0124_passes,
    k6PrefixGroup0010Row0125_passes,
    k6PrefixGroup0010Row0126_passes,
    k6PrefixGroup0010Row0127_passes]

theorem k6PrefixGroup0010_mask_upper :
    k6PrefixGroup0010.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6PrefixGroup0010, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0010Row0000_mask_upper,
    k6PrefixGroup0010Row0001_mask_upper,
    k6PrefixGroup0010Row0002_mask_upper,
    k6PrefixGroup0010Row0003_mask_upper,
    k6PrefixGroup0010Row0004_mask_upper,
    k6PrefixGroup0010Row0005_mask_upper,
    k6PrefixGroup0010Row0006_mask_upper,
    k6PrefixGroup0010Row0007_mask_upper,
    k6PrefixGroup0010Row0008_mask_upper,
    k6PrefixGroup0010Row0009_mask_upper,
    k6PrefixGroup0010Row0010_mask_upper,
    k6PrefixGroup0010Row0011_mask_upper,
    k6PrefixGroup0010Row0012_mask_upper,
    k6PrefixGroup0010Row0013_mask_upper,
    k6PrefixGroup0010Row0014_mask_upper,
    k6PrefixGroup0010Row0015_mask_upper,
    k6PrefixGroup0010Row0016_mask_upper,
    k6PrefixGroup0010Row0017_mask_upper,
    k6PrefixGroup0010Row0018_mask_upper,
    k6PrefixGroup0010Row0019_mask_upper,
    k6PrefixGroup0010Row0020_mask_upper,
    k6PrefixGroup0010Row0021_mask_upper,
    k6PrefixGroup0010Row0022_mask_upper,
    k6PrefixGroup0010Row0023_mask_upper,
    k6PrefixGroup0010Row0024_mask_upper,
    k6PrefixGroup0010Row0025_mask_upper,
    k6PrefixGroup0010Row0026_mask_upper,
    k6PrefixGroup0010Row0027_mask_upper,
    k6PrefixGroup0010Row0028_mask_upper,
    k6PrefixGroup0010Row0029_mask_upper,
    k6PrefixGroup0010Row0030_mask_upper,
    k6PrefixGroup0010Row0031_mask_upper,
    k6PrefixGroup0010Row0032_mask_upper,
    k6PrefixGroup0010Row0033_mask_upper,
    k6PrefixGroup0010Row0034_mask_upper,
    k6PrefixGroup0010Row0035_mask_upper,
    k6PrefixGroup0010Row0036_mask_upper,
    k6PrefixGroup0010Row0037_mask_upper,
    k6PrefixGroup0010Row0038_mask_upper,
    k6PrefixGroup0010Row0039_mask_upper,
    k6PrefixGroup0010Row0040_mask_upper,
    k6PrefixGroup0010Row0041_mask_upper,
    k6PrefixGroup0010Row0042_mask_upper,
    k6PrefixGroup0010Row0043_mask_upper,
    k6PrefixGroup0010Row0044_mask_upper,
    k6PrefixGroup0010Row0045_mask_upper,
    k6PrefixGroup0010Row0046_mask_upper,
    k6PrefixGroup0010Row0047_mask_upper,
    k6PrefixGroup0010Row0048_mask_upper,
    k6PrefixGroup0010Row0049_mask_upper,
    k6PrefixGroup0010Row0050_mask_upper,
    k6PrefixGroup0010Row0051_mask_upper,
    k6PrefixGroup0010Row0052_mask_upper,
    k6PrefixGroup0010Row0053_mask_upper,
    k6PrefixGroup0010Row0054_mask_upper,
    k6PrefixGroup0010Row0055_mask_upper,
    k6PrefixGroup0010Row0056_mask_upper,
    k6PrefixGroup0010Row0057_mask_upper,
    k6PrefixGroup0010Row0058_mask_upper,
    k6PrefixGroup0010Row0059_mask_upper,
    k6PrefixGroup0010Row0060_mask_upper,
    k6PrefixGroup0010Row0061_mask_upper,
    k6PrefixGroup0010Row0062_mask_upper,
    k6PrefixGroup0010Row0063_mask_upper,
    k6PrefixGroup0010Row0064_mask_upper,
    k6PrefixGroup0010Row0065_mask_upper,
    k6PrefixGroup0010Row0066_mask_upper,
    k6PrefixGroup0010Row0067_mask_upper,
    k6PrefixGroup0010Row0068_mask_upper,
    k6PrefixGroup0010Row0069_mask_upper,
    k6PrefixGroup0010Row0070_mask_upper,
    k6PrefixGroup0010Row0071_mask_upper,
    k6PrefixGroup0010Row0072_mask_upper,
    k6PrefixGroup0010Row0073_mask_upper,
    k6PrefixGroup0010Row0074_mask_upper,
    k6PrefixGroup0010Row0075_mask_upper,
    k6PrefixGroup0010Row0076_mask_upper,
    k6PrefixGroup0010Row0077_mask_upper,
    k6PrefixGroup0010Row0078_mask_upper,
    k6PrefixGroup0010Row0079_mask_upper,
    k6PrefixGroup0010Row0080_mask_upper,
    k6PrefixGroup0010Row0081_mask_upper,
    k6PrefixGroup0010Row0082_mask_upper,
    k6PrefixGroup0010Row0083_mask_upper,
    k6PrefixGroup0010Row0084_mask_upper,
    k6PrefixGroup0010Row0085_mask_upper,
    k6PrefixGroup0010Row0086_mask_upper,
    k6PrefixGroup0010Row0087_mask_upper,
    k6PrefixGroup0010Row0088_mask_upper,
    k6PrefixGroup0010Row0089_mask_upper,
    k6PrefixGroup0010Row0090_mask_upper,
    k6PrefixGroup0010Row0091_mask_upper,
    k6PrefixGroup0010Row0092_mask_upper,
    k6PrefixGroup0010Row0093_mask_upper,
    k6PrefixGroup0010Row0094_mask_upper,
    k6PrefixGroup0010Row0095_mask_upper,
    k6PrefixGroup0010Row0096_mask_upper,
    k6PrefixGroup0010Row0097_mask_upper,
    k6PrefixGroup0010Row0098_mask_upper,
    k6PrefixGroup0010Row0099_mask_upper,
    k6PrefixGroup0010Row0100_mask_upper,
    k6PrefixGroup0010Row0101_mask_upper,
    k6PrefixGroup0010Row0102_mask_upper,
    k6PrefixGroup0010Row0103_mask_upper,
    k6PrefixGroup0010Row0104_mask_upper,
    k6PrefixGroup0010Row0105_mask_upper,
    k6PrefixGroup0010Row0106_mask_upper,
    k6PrefixGroup0010Row0107_mask_upper,
    k6PrefixGroup0010Row0108_mask_upper,
    k6PrefixGroup0010Row0109_mask_upper,
    k6PrefixGroup0010Row0110_mask_upper,
    k6PrefixGroup0010Row0111_mask_upper,
    k6PrefixGroup0010Row0112_mask_upper,
    k6PrefixGroup0010Row0113_mask_upper,
    k6PrefixGroup0010Row0114_mask_upper,
    k6PrefixGroup0010Row0115_mask_upper,
    k6PrefixGroup0010Row0116_mask_upper,
    k6PrefixGroup0010Row0117_mask_upper,
    k6PrefixGroup0010Row0118_mask_upper,
    k6PrefixGroup0010Row0119_mask_upper,
    k6PrefixGroup0010Row0120_mask_upper,
    k6PrefixGroup0010Row0121_mask_upper,
    k6PrefixGroup0010Row0122_mask_upper,
    k6PrefixGroup0010Row0123_mask_upper,
    k6PrefixGroup0010Row0124_mask_upper,
    k6PrefixGroup0010Row0125_mask_upper,
    k6PrefixGroup0010Row0126_mask_upper,
    k6PrefixGroup0010Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
