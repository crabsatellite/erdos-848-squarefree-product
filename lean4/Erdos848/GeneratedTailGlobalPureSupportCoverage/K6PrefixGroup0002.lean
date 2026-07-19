import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 11, 43, 53],
     [3, 7, 11, 43, 59],
     [3, 7, 11, 43, 61],
     [3, 7, 11, 43, 67],
     [3, 7, 11, 43, 71],
     [3, 7, 11, 43, 73],
     [3, 7, 11, 43, 79],
     [3, 7, 11, 43, 83],
     [3, 7, 11, 43, 89],
     [3, 7, 11, 43, 97],
     [3, 7, 11, 43, 101],
     [3, 7, 11, 43, 103],
     [3, 7, 11, 43, 107],
     [3, 7, 11, 43, 109],
     [3, 7, 11, 43, 113],
     [3, 7, 11, 43, 127],
     [3, 7, 11, 43, 131],
     [3, 7, 11, 43, 137],
     [3, 7, 11, 47, 53],
     [3, 7, 11, 47, 59],
     [3, 7, 11, 47, 61],
     [3, 7, 11, 47, 67],
     [3, 7, 11, 47, 71],
     [3, 7, 11, 47, 73],
     [3, 7, 11, 47, 79],
     [3, 7, 11, 47, 83],
     [3, 7, 11, 47, 89],
     [3, 7, 11, 47, 97],
     [3, 7, 11, 47, 101],
     [3, 7, 11, 47, 103],
     [3, 7, 11, 47, 107],
     [3, 7, 11, 47, 109],
     [3, 7, 11, 47, 113],
     [3, 7, 11, 47, 127],
     [3, 7, 11, 53, 59],
     [3, 7, 11, 53, 61],
     [3, 7, 11, 53, 67],
     [3, 7, 11, 53, 71],
     [3, 7, 11, 53, 73],
     [3, 7, 11, 53, 79],
     [3, 7, 11, 53, 83],
     [3, 7, 11, 53, 89],
     [3, 7, 11, 53, 97],
     [3, 7, 11, 53, 101],
     [3, 7, 11, 53, 103],
     [3, 7, 11, 53, 107],
     [3, 7, 11, 53, 109],
     [3, 7, 11, 53, 113],
     [3, 7, 11, 59, 61],
     [3, 7, 11, 59, 67],
     [3, 7, 11, 59, 71],
     [3, 7, 11, 59, 73],
     [3, 7, 11, 59, 79],
     [3, 7, 11, 59, 83],
     [3, 7, 11, 59, 89],
     [3, 7, 11, 59, 97],
     [3, 7, 11, 59, 101],
     [3, 7, 11, 59, 103],
     [3, 7, 11, 59, 107],
     [3, 7, 11, 59, 109],
     [3, 7, 11, 61, 67],
     [3, 7, 11, 61, 71],
     [3, 7, 11, 61, 73],
     [3, 7, 11, 61, 79],
     [3, 7, 11, 61, 83],
     [3, 7, 11, 61, 89],
     [3, 7, 11, 61, 97],
     [3, 7, 11, 61, 101],
     [3, 7, 11, 61, 103],
     [3, 7, 11, 61, 107],
     [3, 7, 11, 61, 109],
     [3, 7, 11, 67, 71],
     [3, 7, 11, 67, 73],
     [3, 7, 11, 67, 79],
     [3, 7, 11, 67, 83],
     [3, 7, 11, 67, 89],
     [3, 7, 11, 67, 97],
     [3, 7, 11, 67, 101],
     [3, 7, 11, 67, 103],
     [3, 7, 11, 67, 107],
     [3, 7, 11, 67, 109],
     [3, 7, 11, 71, 73],
     [3, 7, 11, 71, 79],
     [3, 7, 11, 71, 83],
     [3, 7, 11, 71, 89],
     [3, 7, 11, 71, 97],
     [3, 7, 11, 71, 101],
     [3, 7, 11, 71, 103],
     [3, 7, 11, 71, 107],
     [3, 7, 11, 73, 79],
     [3, 7, 11, 73, 83],
     [3, 7, 11, 73, 89],
     [3, 7, 11, 73, 97],
     [3, 7, 11, 73, 101],
     [3, 7, 11, 73, 103],
     [3, 7, 11, 79, 83],
     [3, 7, 11, 79, 89],
     [3, 7, 11, 79, 97],
     [3, 7, 11, 79, 101],
     [3, 7, 11, 83, 89],
     [3, 7, 11, 83, 97],
     [3, 7, 13, 17, 19],
     [3, 7, 13, 17, 23],
     [3, 7, 13, 17, 29],
     [3, 7, 13, 17, 31],
     [3, 7, 13, 17, 37],
     [3, 7, 13, 17, 41],
     [3, 7, 13, 17, 43],
     [3, 7, 13, 17, 47],
     [3, 7, 13, 17, 53],
     [3, 7, 13, 17, 59],
     [3, 7, 13, 17, 61],
     [3, 7, 13, 17, 67],
     [3, 7, 13, 17, 71],
     [3, 7, 13, 17, 73],
     [3, 7, 13, 17, 79],
     [3, 7, 13, 17, 83],
     [3, 7, 13, 17, 89],
     [3, 7, 13, 17, 97],
     [3, 7, 13, 17, 101],
     [3, 7, 13, 17, 103],
     [3, 7, 13, 17, 107],
     [3, 7, 13, 17, 109],
     [3, 7, 13, 17, 113],
     [3, 7, 13, 17, 127],
     [3, 7, 13, 17, 131],
     [3, 7, 13, 17, 137],
     [3, 7, 13, 17, 139]]

theorem k6PrefixGroup0002Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 131] = true := by
  decide

theorem k6PrefixGroup0002Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 131] = true := by
  decide

theorem k6PrefixGroup0002Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 137] = true := by
  decide

theorem k6PrefixGroup0002Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 137] = true := by
  decide

theorem k6PrefixGroup0002Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 47, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 47, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 53, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 53, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 59, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 59, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 61, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 61, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 67, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 67, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 71, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 71, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 73, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 73, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 79, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 79, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 79, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 79, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 79, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 79, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 79, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 79, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 83, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 83, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 83, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 83, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 19] = true := by
  decide

theorem k6PrefixGroup0002Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 19] = true := by
  decide

theorem k6PrefixGroup0002Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 23] = true := by
  decide

theorem k6PrefixGroup0002Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 23] = true := by
  decide

theorem k6PrefixGroup0002Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 29] = true := by
  decide

theorem k6PrefixGroup0002Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 29] = true := by
  decide

theorem k6PrefixGroup0002Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 31] = true := by
  decide

theorem k6PrefixGroup0002Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 31] = true := by
  decide

theorem k6PrefixGroup0002Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 37] = true := by
  decide

theorem k6PrefixGroup0002Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 37] = true := by
  decide

theorem k6PrefixGroup0002Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 41] = true := by
  decide

theorem k6PrefixGroup0002Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 41] = true := by
  decide

theorem k6PrefixGroup0002Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 43] = true := by
  decide

theorem k6PrefixGroup0002Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 43] = true := by
  decide

theorem k6PrefixGroup0002Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 47] = true := by
  decide

theorem k6PrefixGroup0002Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 47] = true := by
  decide

theorem k6PrefixGroup0002Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 53] = true := by
  decide

theorem k6PrefixGroup0002Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 59] = true := by
  decide

theorem k6PrefixGroup0002Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 61] = true := by
  decide

theorem k6PrefixGroup0002Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 67] = true := by
  decide

theorem k6PrefixGroup0002Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 71] = true := by
  decide

theorem k6PrefixGroup0002Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 73] = true := by
  decide

theorem k6PrefixGroup0002Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 79] = true := by
  decide

theorem k6PrefixGroup0002Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 83] = true := by
  decide

theorem k6PrefixGroup0002Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 89] = true := by
  decide

theorem k6PrefixGroup0002Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 97] = true := by
  decide

theorem k6PrefixGroup0002Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 101] = true := by
  decide

theorem k6PrefixGroup0002Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 103] = true := by
  decide

theorem k6PrefixGroup0002Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 107] = true := by
  decide

theorem k6PrefixGroup0002Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 109] = true := by
  decide

theorem k6PrefixGroup0002Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 113] = true := by
  decide

theorem k6PrefixGroup0002Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 127] = true := by
  decide

theorem k6PrefixGroup0002Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 131] = true := by
  decide

theorem k6PrefixGroup0002Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 131] = true := by
  decide

theorem k6PrefixGroup0002Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 137] = true := by
  decide

theorem k6PrefixGroup0002Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 137] = true := by
  decide

theorem k6PrefixGroup0002Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 13, 17, 139] = true := by
  decide

theorem k6PrefixGroup0002Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 13, 17, 139] = true := by
  decide

theorem k6PrefixGroup0002_passes :
    k6PrefixGroup0002.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6PrefixGroup0002, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0002Row0000_passes,
    k6PrefixGroup0002Row0001_passes,
    k6PrefixGroup0002Row0002_passes,
    k6PrefixGroup0002Row0003_passes,
    k6PrefixGroup0002Row0004_passes,
    k6PrefixGroup0002Row0005_passes,
    k6PrefixGroup0002Row0006_passes,
    k6PrefixGroup0002Row0007_passes,
    k6PrefixGroup0002Row0008_passes,
    k6PrefixGroup0002Row0009_passes,
    k6PrefixGroup0002Row0010_passes,
    k6PrefixGroup0002Row0011_passes,
    k6PrefixGroup0002Row0012_passes,
    k6PrefixGroup0002Row0013_passes,
    k6PrefixGroup0002Row0014_passes,
    k6PrefixGroup0002Row0015_passes,
    k6PrefixGroup0002Row0016_passes,
    k6PrefixGroup0002Row0017_passes,
    k6PrefixGroup0002Row0018_passes,
    k6PrefixGroup0002Row0019_passes,
    k6PrefixGroup0002Row0020_passes,
    k6PrefixGroup0002Row0021_passes,
    k6PrefixGroup0002Row0022_passes,
    k6PrefixGroup0002Row0023_passes,
    k6PrefixGroup0002Row0024_passes,
    k6PrefixGroup0002Row0025_passes,
    k6PrefixGroup0002Row0026_passes,
    k6PrefixGroup0002Row0027_passes,
    k6PrefixGroup0002Row0028_passes,
    k6PrefixGroup0002Row0029_passes,
    k6PrefixGroup0002Row0030_passes,
    k6PrefixGroup0002Row0031_passes,
    k6PrefixGroup0002Row0032_passes,
    k6PrefixGroup0002Row0033_passes,
    k6PrefixGroup0002Row0034_passes,
    k6PrefixGroup0002Row0035_passes,
    k6PrefixGroup0002Row0036_passes,
    k6PrefixGroup0002Row0037_passes,
    k6PrefixGroup0002Row0038_passes,
    k6PrefixGroup0002Row0039_passes,
    k6PrefixGroup0002Row0040_passes,
    k6PrefixGroup0002Row0041_passes,
    k6PrefixGroup0002Row0042_passes,
    k6PrefixGroup0002Row0043_passes,
    k6PrefixGroup0002Row0044_passes,
    k6PrefixGroup0002Row0045_passes,
    k6PrefixGroup0002Row0046_passes,
    k6PrefixGroup0002Row0047_passes,
    k6PrefixGroup0002Row0048_passes,
    k6PrefixGroup0002Row0049_passes,
    k6PrefixGroup0002Row0050_passes,
    k6PrefixGroup0002Row0051_passes,
    k6PrefixGroup0002Row0052_passes,
    k6PrefixGroup0002Row0053_passes,
    k6PrefixGroup0002Row0054_passes,
    k6PrefixGroup0002Row0055_passes,
    k6PrefixGroup0002Row0056_passes,
    k6PrefixGroup0002Row0057_passes,
    k6PrefixGroup0002Row0058_passes,
    k6PrefixGroup0002Row0059_passes,
    k6PrefixGroup0002Row0060_passes,
    k6PrefixGroup0002Row0061_passes,
    k6PrefixGroup0002Row0062_passes,
    k6PrefixGroup0002Row0063_passes,
    k6PrefixGroup0002Row0064_passes,
    k6PrefixGroup0002Row0065_passes,
    k6PrefixGroup0002Row0066_passes,
    k6PrefixGroup0002Row0067_passes,
    k6PrefixGroup0002Row0068_passes,
    k6PrefixGroup0002Row0069_passes,
    k6PrefixGroup0002Row0070_passes,
    k6PrefixGroup0002Row0071_passes,
    k6PrefixGroup0002Row0072_passes,
    k6PrefixGroup0002Row0073_passes,
    k6PrefixGroup0002Row0074_passes,
    k6PrefixGroup0002Row0075_passes,
    k6PrefixGroup0002Row0076_passes,
    k6PrefixGroup0002Row0077_passes,
    k6PrefixGroup0002Row0078_passes,
    k6PrefixGroup0002Row0079_passes,
    k6PrefixGroup0002Row0080_passes,
    k6PrefixGroup0002Row0081_passes,
    k6PrefixGroup0002Row0082_passes,
    k6PrefixGroup0002Row0083_passes,
    k6PrefixGroup0002Row0084_passes,
    k6PrefixGroup0002Row0085_passes,
    k6PrefixGroup0002Row0086_passes,
    k6PrefixGroup0002Row0087_passes,
    k6PrefixGroup0002Row0088_passes,
    k6PrefixGroup0002Row0089_passes,
    k6PrefixGroup0002Row0090_passes,
    k6PrefixGroup0002Row0091_passes,
    k6PrefixGroup0002Row0092_passes,
    k6PrefixGroup0002Row0093_passes,
    k6PrefixGroup0002Row0094_passes,
    k6PrefixGroup0002Row0095_passes,
    k6PrefixGroup0002Row0096_passes,
    k6PrefixGroup0002Row0097_passes,
    k6PrefixGroup0002Row0098_passes,
    k6PrefixGroup0002Row0099_passes,
    k6PrefixGroup0002Row0100_passes,
    k6PrefixGroup0002Row0101_passes,
    k6PrefixGroup0002Row0102_passes,
    k6PrefixGroup0002Row0103_passes,
    k6PrefixGroup0002Row0104_passes,
    k6PrefixGroup0002Row0105_passes,
    k6PrefixGroup0002Row0106_passes,
    k6PrefixGroup0002Row0107_passes,
    k6PrefixGroup0002Row0108_passes,
    k6PrefixGroup0002Row0109_passes,
    k6PrefixGroup0002Row0110_passes,
    k6PrefixGroup0002Row0111_passes,
    k6PrefixGroup0002Row0112_passes,
    k6PrefixGroup0002Row0113_passes,
    k6PrefixGroup0002Row0114_passes,
    k6PrefixGroup0002Row0115_passes,
    k6PrefixGroup0002Row0116_passes,
    k6PrefixGroup0002Row0117_passes,
    k6PrefixGroup0002Row0118_passes,
    k6PrefixGroup0002Row0119_passes,
    k6PrefixGroup0002Row0120_passes,
    k6PrefixGroup0002Row0121_passes,
    k6PrefixGroup0002Row0122_passes,
    k6PrefixGroup0002Row0123_passes,
    k6PrefixGroup0002Row0124_passes,
    k6PrefixGroup0002Row0125_passes,
    k6PrefixGroup0002Row0126_passes,
    k6PrefixGroup0002Row0127_passes]

theorem k6PrefixGroup0002_mask_upper :
    k6PrefixGroup0002.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6PrefixGroup0002, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0002Row0000_mask_upper,
    k6PrefixGroup0002Row0001_mask_upper,
    k6PrefixGroup0002Row0002_mask_upper,
    k6PrefixGroup0002Row0003_mask_upper,
    k6PrefixGroup0002Row0004_mask_upper,
    k6PrefixGroup0002Row0005_mask_upper,
    k6PrefixGroup0002Row0006_mask_upper,
    k6PrefixGroup0002Row0007_mask_upper,
    k6PrefixGroup0002Row0008_mask_upper,
    k6PrefixGroup0002Row0009_mask_upper,
    k6PrefixGroup0002Row0010_mask_upper,
    k6PrefixGroup0002Row0011_mask_upper,
    k6PrefixGroup0002Row0012_mask_upper,
    k6PrefixGroup0002Row0013_mask_upper,
    k6PrefixGroup0002Row0014_mask_upper,
    k6PrefixGroup0002Row0015_mask_upper,
    k6PrefixGroup0002Row0016_mask_upper,
    k6PrefixGroup0002Row0017_mask_upper,
    k6PrefixGroup0002Row0018_mask_upper,
    k6PrefixGroup0002Row0019_mask_upper,
    k6PrefixGroup0002Row0020_mask_upper,
    k6PrefixGroup0002Row0021_mask_upper,
    k6PrefixGroup0002Row0022_mask_upper,
    k6PrefixGroup0002Row0023_mask_upper,
    k6PrefixGroup0002Row0024_mask_upper,
    k6PrefixGroup0002Row0025_mask_upper,
    k6PrefixGroup0002Row0026_mask_upper,
    k6PrefixGroup0002Row0027_mask_upper,
    k6PrefixGroup0002Row0028_mask_upper,
    k6PrefixGroup0002Row0029_mask_upper,
    k6PrefixGroup0002Row0030_mask_upper,
    k6PrefixGroup0002Row0031_mask_upper,
    k6PrefixGroup0002Row0032_mask_upper,
    k6PrefixGroup0002Row0033_mask_upper,
    k6PrefixGroup0002Row0034_mask_upper,
    k6PrefixGroup0002Row0035_mask_upper,
    k6PrefixGroup0002Row0036_mask_upper,
    k6PrefixGroup0002Row0037_mask_upper,
    k6PrefixGroup0002Row0038_mask_upper,
    k6PrefixGroup0002Row0039_mask_upper,
    k6PrefixGroup0002Row0040_mask_upper,
    k6PrefixGroup0002Row0041_mask_upper,
    k6PrefixGroup0002Row0042_mask_upper,
    k6PrefixGroup0002Row0043_mask_upper,
    k6PrefixGroup0002Row0044_mask_upper,
    k6PrefixGroup0002Row0045_mask_upper,
    k6PrefixGroup0002Row0046_mask_upper,
    k6PrefixGroup0002Row0047_mask_upper,
    k6PrefixGroup0002Row0048_mask_upper,
    k6PrefixGroup0002Row0049_mask_upper,
    k6PrefixGroup0002Row0050_mask_upper,
    k6PrefixGroup0002Row0051_mask_upper,
    k6PrefixGroup0002Row0052_mask_upper,
    k6PrefixGroup0002Row0053_mask_upper,
    k6PrefixGroup0002Row0054_mask_upper,
    k6PrefixGroup0002Row0055_mask_upper,
    k6PrefixGroup0002Row0056_mask_upper,
    k6PrefixGroup0002Row0057_mask_upper,
    k6PrefixGroup0002Row0058_mask_upper,
    k6PrefixGroup0002Row0059_mask_upper,
    k6PrefixGroup0002Row0060_mask_upper,
    k6PrefixGroup0002Row0061_mask_upper,
    k6PrefixGroup0002Row0062_mask_upper,
    k6PrefixGroup0002Row0063_mask_upper,
    k6PrefixGroup0002Row0064_mask_upper,
    k6PrefixGroup0002Row0065_mask_upper,
    k6PrefixGroup0002Row0066_mask_upper,
    k6PrefixGroup0002Row0067_mask_upper,
    k6PrefixGroup0002Row0068_mask_upper,
    k6PrefixGroup0002Row0069_mask_upper,
    k6PrefixGroup0002Row0070_mask_upper,
    k6PrefixGroup0002Row0071_mask_upper,
    k6PrefixGroup0002Row0072_mask_upper,
    k6PrefixGroup0002Row0073_mask_upper,
    k6PrefixGroup0002Row0074_mask_upper,
    k6PrefixGroup0002Row0075_mask_upper,
    k6PrefixGroup0002Row0076_mask_upper,
    k6PrefixGroup0002Row0077_mask_upper,
    k6PrefixGroup0002Row0078_mask_upper,
    k6PrefixGroup0002Row0079_mask_upper,
    k6PrefixGroup0002Row0080_mask_upper,
    k6PrefixGroup0002Row0081_mask_upper,
    k6PrefixGroup0002Row0082_mask_upper,
    k6PrefixGroup0002Row0083_mask_upper,
    k6PrefixGroup0002Row0084_mask_upper,
    k6PrefixGroup0002Row0085_mask_upper,
    k6PrefixGroup0002Row0086_mask_upper,
    k6PrefixGroup0002Row0087_mask_upper,
    k6PrefixGroup0002Row0088_mask_upper,
    k6PrefixGroup0002Row0089_mask_upper,
    k6PrefixGroup0002Row0090_mask_upper,
    k6PrefixGroup0002Row0091_mask_upper,
    k6PrefixGroup0002Row0092_mask_upper,
    k6PrefixGroup0002Row0093_mask_upper,
    k6PrefixGroup0002Row0094_mask_upper,
    k6PrefixGroup0002Row0095_mask_upper,
    k6PrefixGroup0002Row0096_mask_upper,
    k6PrefixGroup0002Row0097_mask_upper,
    k6PrefixGroup0002Row0098_mask_upper,
    k6PrefixGroup0002Row0099_mask_upper,
    k6PrefixGroup0002Row0100_mask_upper,
    k6PrefixGroup0002Row0101_mask_upper,
    k6PrefixGroup0002Row0102_mask_upper,
    k6PrefixGroup0002Row0103_mask_upper,
    k6PrefixGroup0002Row0104_mask_upper,
    k6PrefixGroup0002Row0105_mask_upper,
    k6PrefixGroup0002Row0106_mask_upper,
    k6PrefixGroup0002Row0107_mask_upper,
    k6PrefixGroup0002Row0108_mask_upper,
    k6PrefixGroup0002Row0109_mask_upper,
    k6PrefixGroup0002Row0110_mask_upper,
    k6PrefixGroup0002Row0111_mask_upper,
    k6PrefixGroup0002Row0112_mask_upper,
    k6PrefixGroup0002Row0113_mask_upper,
    k6PrefixGroup0002Row0114_mask_upper,
    k6PrefixGroup0002Row0115_mask_upper,
    k6PrefixGroup0002Row0116_mask_upper,
    k6PrefixGroup0002Row0117_mask_upper,
    k6PrefixGroup0002Row0118_mask_upper,
    k6PrefixGroup0002Row0119_mask_upper,
    k6PrefixGroup0002Row0120_mask_upper,
    k6PrefixGroup0002Row0121_mask_upper,
    k6PrefixGroup0002Row0122_mask_upper,
    k6PrefixGroup0002Row0123_mask_upper,
    k6PrefixGroup0002Row0124_mask_upper,
    k6PrefixGroup0002Row0125_mask_upper,
    k6PrefixGroup0002Row0126_mask_upper,
    k6PrefixGroup0002Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
