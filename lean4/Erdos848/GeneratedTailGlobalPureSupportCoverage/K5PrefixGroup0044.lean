import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0044 : List (List ℕ) :=
  [[7, 13, 59, 61],
     [7, 13, 59, 67],
     [7, 13, 59, 71],
     [7, 13, 59, 73],
     [7, 13, 59, 79],
     [7, 13, 59, 83],
     [7, 13, 59, 89],
     [7, 13, 59, 97],
     [7, 13, 59, 101],
     [7, 13, 59, 103],
     [7, 13, 59, 107],
     [7, 13, 59, 109],
     [7, 13, 59, 113],
     [7, 13, 59, 127],
     [7, 13, 59, 131],
     [7, 13, 61, 67],
     [7, 13, 61, 71],
     [7, 13, 61, 73],
     [7, 13, 61, 79],
     [7, 13, 61, 83],
     [7, 13, 61, 89],
     [7, 13, 61, 97],
     [7, 13, 61, 101],
     [7, 13, 61, 103],
     [7, 13, 61, 107],
     [7, 13, 61, 109],
     [7, 13, 61, 113],
     [7, 13, 61, 127],
     [7, 13, 67, 71],
     [7, 13, 67, 73],
     [7, 13, 67, 79],
     [7, 13, 67, 83],
     [7, 13, 67, 89],
     [7, 13, 67, 97],
     [7, 13, 67, 101],
     [7, 13, 67, 103],
     [7, 13, 67, 107],
     [7, 13, 67, 109],
     [7, 13, 67, 113],
     [7, 13, 71, 73],
     [7, 13, 71, 79],
     [7, 13, 71, 83],
     [7, 13, 71, 89],
     [7, 13, 71, 97],
     [7, 13, 71, 101],
     [7, 13, 71, 103],
     [7, 13, 71, 107],
     [7, 13, 71, 109],
     [7, 13, 71, 113],
     [7, 13, 73, 79],
     [7, 13, 73, 83],
     [7, 13, 73, 89],
     [7, 13, 73, 97],
     [7, 13, 73, 101],
     [7, 13, 73, 103],
     [7, 13, 73, 107],
     [7, 13, 73, 109],
     [7, 13, 73, 113],
     [7, 13, 79, 83],
     [7, 13, 79, 89],
     [7, 13, 79, 97],
     [7, 13, 79, 101],
     [7, 13, 79, 103],
     [7, 13, 79, 107],
     [7, 13, 79, 109],
     [7, 13, 83, 89],
     [7, 13, 83, 97],
     [7, 13, 83, 101],
     [7, 13, 83, 103],
     [7, 13, 83, 107],
     [7, 13, 83, 109],
     [7, 13, 89, 97],
     [7, 13, 89, 101],
     [7, 13, 89, 103],
     [7, 13, 89, 107],
     [7, 13, 97, 101],
     [7, 17, 19, 23],
     [7, 17, 19, 29],
     [7, 17, 19, 31],
     [7, 17, 19, 37],
     [7, 17, 19, 41],
     [7, 17, 19, 43],
     [7, 17, 19, 47],
     [7, 17, 19, 53],
     [7, 17, 19, 59],
     [7, 17, 19, 61],
     [7, 17, 19, 67],
     [7, 17, 19, 71],
     [7, 17, 19, 73],
     [7, 17, 19, 79],
     [7, 17, 19, 83],
     [7, 17, 19, 89],
     [7, 17, 19, 97],
     [7, 17, 19, 101],
     [7, 17, 19, 103],
     [7, 17, 19, 107],
     [7, 17, 19, 109],
     [7, 17, 19, 113],
     [7, 17, 19, 127],
     [7, 17, 19, 131],
     [7, 17, 19, 137],
     [7, 17, 19, 139],
     [7, 17, 19, 149],
     [7, 17, 19, 151],
     [7, 17, 19, 157],
     [7, 17, 19, 163],
     [7, 17, 19, 167],
     [7, 17, 19, 173],
     [7, 17, 19, 179],
     [7, 17, 19, 181],
     [7, 17, 19, 191],
     [7, 17, 19, 193],
     [7, 17, 19, 197],
     [7, 17, 19, 199],
     [7, 17, 23, 29],
     [7, 17, 23, 31],
     [7, 17, 23, 37],
     [7, 17, 23, 41],
     [7, 17, 23, 43],
     [7, 17, 23, 47],
     [7, 17, 23, 53],
     [7, 17, 23, 59],
     [7, 17, 23, 61],
     [7, 17, 23, 67],
     [7, 17, 23, 71],
     [7, 17, 23, 73],
     [7, 17, 23, 79],
     [7, 17, 23, 83]]

theorem k5PrefixGroup0044Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 59, 131] = true := by
  decide

theorem k5PrefixGroup0044Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 59, 131] = true := by
  decide

theorem k5PrefixGroup0044Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 61, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 61, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 67, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 67, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 71, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 71, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 73, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 73, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 79, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 79, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 83, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 83, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 89, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 89, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 89, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 89, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 89, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 89, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 89, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 89, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 97, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 97, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0044Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 23] = true := by
  decide

theorem k5PrefixGroup0044Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0044Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 29] = true := by
  decide

theorem k5PrefixGroup0044Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0044Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 31] = true := by
  decide

theorem k5PrefixGroup0044Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0044Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 37] = true := by
  decide

theorem k5PrefixGroup0044Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0044Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 41] = true := by
  decide

theorem k5PrefixGroup0044Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0044Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 43] = true := by
  decide

theorem k5PrefixGroup0044Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0044Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 47] = true := by
  decide

theorem k5PrefixGroup0044Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0044Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 53] = true := by
  decide

theorem k5PrefixGroup0044Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0044Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 59] = true := by
  decide

theorem k5PrefixGroup0044Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 89] = true := by
  decide

theorem k5PrefixGroup0044Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 97] = true := by
  decide

theorem k5PrefixGroup0044Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 101] = true := by
  decide

theorem k5PrefixGroup0044Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 103] = true := by
  decide

theorem k5PrefixGroup0044Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 107] = true := by
  decide

theorem k5PrefixGroup0044Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 109] = true := by
  decide

theorem k5PrefixGroup0044Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 113] = true := by
  decide

theorem k5PrefixGroup0044Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 127] = true := by
  decide

theorem k5PrefixGroup0044Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0044Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 131] = true := by
  decide

theorem k5PrefixGroup0044Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0044Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 137] = true := by
  decide

theorem k5PrefixGroup0044Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0044Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 139] = true := by
  decide

theorem k5PrefixGroup0044Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0044Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 149] = true := by
  decide

theorem k5PrefixGroup0044Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0044Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 151] = true := by
  decide

theorem k5PrefixGroup0044Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0044Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 157] = true := by
  decide

theorem k5PrefixGroup0044Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 163] = true := by
  decide

theorem k5PrefixGroup0044Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 163] = true := by
  decide

theorem k5PrefixGroup0044Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 167] = true := by
  decide

theorem k5PrefixGroup0044Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 167] = true := by
  decide

theorem k5PrefixGroup0044Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 173] = true := by
  decide

theorem k5PrefixGroup0044Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 173] = true := by
  decide

theorem k5PrefixGroup0044Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 179] = true := by
  decide

theorem k5PrefixGroup0044Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 179] = true := by
  decide

theorem k5PrefixGroup0044Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 181] = true := by
  decide

theorem k5PrefixGroup0044Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 181] = true := by
  decide

theorem k5PrefixGroup0044Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 191] = true := by
  decide

theorem k5PrefixGroup0044Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 191] = true := by
  decide

theorem k5PrefixGroup0044Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 193] = true := by
  decide

theorem k5PrefixGroup0044Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 193] = true := by
  decide

theorem k5PrefixGroup0044Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 197] = true := by
  decide

theorem k5PrefixGroup0044Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 197] = true := by
  decide

theorem k5PrefixGroup0044Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 19, 199] = true := by
  decide

theorem k5PrefixGroup0044Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 19, 199] = true := by
  decide

theorem k5PrefixGroup0044Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0044Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 29] = true := by
  decide

theorem k5PrefixGroup0044Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0044Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 31] = true := by
  decide

theorem k5PrefixGroup0044Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0044Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 37] = true := by
  decide

theorem k5PrefixGroup0044Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0044Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 41] = true := by
  decide

theorem k5PrefixGroup0044Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0044Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 43] = true := by
  decide

theorem k5PrefixGroup0044Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0044Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 47] = true := by
  decide

theorem k5PrefixGroup0044Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0044Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 53] = true := by
  decide

theorem k5PrefixGroup0044Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0044Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 59] = true := by
  decide

theorem k5PrefixGroup0044Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 61] = true := by
  decide

theorem k5PrefixGroup0044Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 67] = true := by
  decide

theorem k5PrefixGroup0044Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 71] = true := by
  decide

theorem k5PrefixGroup0044Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 73] = true := by
  decide

theorem k5PrefixGroup0044Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 79] = true := by
  decide

theorem k5PrefixGroup0044Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0044Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 17, 23, 83] = true := by
  decide

theorem k5PrefixGroup0044_passes :
    k5PrefixGroup0044.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0044, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0044Row0000_passes,
    k5PrefixGroup0044Row0001_passes,
    k5PrefixGroup0044Row0002_passes,
    k5PrefixGroup0044Row0003_passes,
    k5PrefixGroup0044Row0004_passes,
    k5PrefixGroup0044Row0005_passes,
    k5PrefixGroup0044Row0006_passes,
    k5PrefixGroup0044Row0007_passes,
    k5PrefixGroup0044Row0008_passes,
    k5PrefixGroup0044Row0009_passes,
    k5PrefixGroup0044Row0010_passes,
    k5PrefixGroup0044Row0011_passes,
    k5PrefixGroup0044Row0012_passes,
    k5PrefixGroup0044Row0013_passes,
    k5PrefixGroup0044Row0014_passes,
    k5PrefixGroup0044Row0015_passes,
    k5PrefixGroup0044Row0016_passes,
    k5PrefixGroup0044Row0017_passes,
    k5PrefixGroup0044Row0018_passes,
    k5PrefixGroup0044Row0019_passes,
    k5PrefixGroup0044Row0020_passes,
    k5PrefixGroup0044Row0021_passes,
    k5PrefixGroup0044Row0022_passes,
    k5PrefixGroup0044Row0023_passes,
    k5PrefixGroup0044Row0024_passes,
    k5PrefixGroup0044Row0025_passes,
    k5PrefixGroup0044Row0026_passes,
    k5PrefixGroup0044Row0027_passes,
    k5PrefixGroup0044Row0028_passes,
    k5PrefixGroup0044Row0029_passes,
    k5PrefixGroup0044Row0030_passes,
    k5PrefixGroup0044Row0031_passes,
    k5PrefixGroup0044Row0032_passes,
    k5PrefixGroup0044Row0033_passes,
    k5PrefixGroup0044Row0034_passes,
    k5PrefixGroup0044Row0035_passes,
    k5PrefixGroup0044Row0036_passes,
    k5PrefixGroup0044Row0037_passes,
    k5PrefixGroup0044Row0038_passes,
    k5PrefixGroup0044Row0039_passes,
    k5PrefixGroup0044Row0040_passes,
    k5PrefixGroup0044Row0041_passes,
    k5PrefixGroup0044Row0042_passes,
    k5PrefixGroup0044Row0043_passes,
    k5PrefixGroup0044Row0044_passes,
    k5PrefixGroup0044Row0045_passes,
    k5PrefixGroup0044Row0046_passes,
    k5PrefixGroup0044Row0047_passes,
    k5PrefixGroup0044Row0048_passes,
    k5PrefixGroup0044Row0049_passes,
    k5PrefixGroup0044Row0050_passes,
    k5PrefixGroup0044Row0051_passes,
    k5PrefixGroup0044Row0052_passes,
    k5PrefixGroup0044Row0053_passes,
    k5PrefixGroup0044Row0054_passes,
    k5PrefixGroup0044Row0055_passes,
    k5PrefixGroup0044Row0056_passes,
    k5PrefixGroup0044Row0057_passes,
    k5PrefixGroup0044Row0058_passes,
    k5PrefixGroup0044Row0059_passes,
    k5PrefixGroup0044Row0060_passes,
    k5PrefixGroup0044Row0061_passes,
    k5PrefixGroup0044Row0062_passes,
    k5PrefixGroup0044Row0063_passes,
    k5PrefixGroup0044Row0064_passes,
    k5PrefixGroup0044Row0065_passes,
    k5PrefixGroup0044Row0066_passes,
    k5PrefixGroup0044Row0067_passes,
    k5PrefixGroup0044Row0068_passes,
    k5PrefixGroup0044Row0069_passes,
    k5PrefixGroup0044Row0070_passes,
    k5PrefixGroup0044Row0071_passes,
    k5PrefixGroup0044Row0072_passes,
    k5PrefixGroup0044Row0073_passes,
    k5PrefixGroup0044Row0074_passes,
    k5PrefixGroup0044Row0075_passes,
    k5PrefixGroup0044Row0076_passes,
    k5PrefixGroup0044Row0077_passes,
    k5PrefixGroup0044Row0078_passes,
    k5PrefixGroup0044Row0079_passes,
    k5PrefixGroup0044Row0080_passes,
    k5PrefixGroup0044Row0081_passes,
    k5PrefixGroup0044Row0082_passes,
    k5PrefixGroup0044Row0083_passes,
    k5PrefixGroup0044Row0084_passes,
    k5PrefixGroup0044Row0085_passes,
    k5PrefixGroup0044Row0086_passes,
    k5PrefixGroup0044Row0087_passes,
    k5PrefixGroup0044Row0088_passes,
    k5PrefixGroup0044Row0089_passes,
    k5PrefixGroup0044Row0090_passes,
    k5PrefixGroup0044Row0091_passes,
    k5PrefixGroup0044Row0092_passes,
    k5PrefixGroup0044Row0093_passes,
    k5PrefixGroup0044Row0094_passes,
    k5PrefixGroup0044Row0095_passes,
    k5PrefixGroup0044Row0096_passes,
    k5PrefixGroup0044Row0097_passes,
    k5PrefixGroup0044Row0098_passes,
    k5PrefixGroup0044Row0099_passes,
    k5PrefixGroup0044Row0100_passes,
    k5PrefixGroup0044Row0101_passes,
    k5PrefixGroup0044Row0102_passes,
    k5PrefixGroup0044Row0103_passes,
    k5PrefixGroup0044Row0104_passes,
    k5PrefixGroup0044Row0105_passes,
    k5PrefixGroup0044Row0106_passes,
    k5PrefixGroup0044Row0107_passes,
    k5PrefixGroup0044Row0108_passes,
    k5PrefixGroup0044Row0109_passes,
    k5PrefixGroup0044Row0110_passes,
    k5PrefixGroup0044Row0111_passes,
    k5PrefixGroup0044Row0112_passes,
    k5PrefixGroup0044Row0113_passes,
    k5PrefixGroup0044Row0114_passes,
    k5PrefixGroup0044Row0115_passes,
    k5PrefixGroup0044Row0116_passes,
    k5PrefixGroup0044Row0117_passes,
    k5PrefixGroup0044Row0118_passes,
    k5PrefixGroup0044Row0119_passes,
    k5PrefixGroup0044Row0120_passes,
    k5PrefixGroup0044Row0121_passes,
    k5PrefixGroup0044Row0122_passes,
    k5PrefixGroup0044Row0123_passes,
    k5PrefixGroup0044Row0124_passes,
    k5PrefixGroup0044Row0125_passes,
    k5PrefixGroup0044Row0126_passes,
    k5PrefixGroup0044Row0127_passes]

theorem k5PrefixGroup0044_mask_upper :
    k5PrefixGroup0044.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0044, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0044Row0000_mask_upper,
    k5PrefixGroup0044Row0001_mask_upper,
    k5PrefixGroup0044Row0002_mask_upper,
    k5PrefixGroup0044Row0003_mask_upper,
    k5PrefixGroup0044Row0004_mask_upper,
    k5PrefixGroup0044Row0005_mask_upper,
    k5PrefixGroup0044Row0006_mask_upper,
    k5PrefixGroup0044Row0007_mask_upper,
    k5PrefixGroup0044Row0008_mask_upper,
    k5PrefixGroup0044Row0009_mask_upper,
    k5PrefixGroup0044Row0010_mask_upper,
    k5PrefixGroup0044Row0011_mask_upper,
    k5PrefixGroup0044Row0012_mask_upper,
    k5PrefixGroup0044Row0013_mask_upper,
    k5PrefixGroup0044Row0014_mask_upper,
    k5PrefixGroup0044Row0015_mask_upper,
    k5PrefixGroup0044Row0016_mask_upper,
    k5PrefixGroup0044Row0017_mask_upper,
    k5PrefixGroup0044Row0018_mask_upper,
    k5PrefixGroup0044Row0019_mask_upper,
    k5PrefixGroup0044Row0020_mask_upper,
    k5PrefixGroup0044Row0021_mask_upper,
    k5PrefixGroup0044Row0022_mask_upper,
    k5PrefixGroup0044Row0023_mask_upper,
    k5PrefixGroup0044Row0024_mask_upper,
    k5PrefixGroup0044Row0025_mask_upper,
    k5PrefixGroup0044Row0026_mask_upper,
    k5PrefixGroup0044Row0027_mask_upper,
    k5PrefixGroup0044Row0028_mask_upper,
    k5PrefixGroup0044Row0029_mask_upper,
    k5PrefixGroup0044Row0030_mask_upper,
    k5PrefixGroup0044Row0031_mask_upper,
    k5PrefixGroup0044Row0032_mask_upper,
    k5PrefixGroup0044Row0033_mask_upper,
    k5PrefixGroup0044Row0034_mask_upper,
    k5PrefixGroup0044Row0035_mask_upper,
    k5PrefixGroup0044Row0036_mask_upper,
    k5PrefixGroup0044Row0037_mask_upper,
    k5PrefixGroup0044Row0038_mask_upper,
    k5PrefixGroup0044Row0039_mask_upper,
    k5PrefixGroup0044Row0040_mask_upper,
    k5PrefixGroup0044Row0041_mask_upper,
    k5PrefixGroup0044Row0042_mask_upper,
    k5PrefixGroup0044Row0043_mask_upper,
    k5PrefixGroup0044Row0044_mask_upper,
    k5PrefixGroup0044Row0045_mask_upper,
    k5PrefixGroup0044Row0046_mask_upper,
    k5PrefixGroup0044Row0047_mask_upper,
    k5PrefixGroup0044Row0048_mask_upper,
    k5PrefixGroup0044Row0049_mask_upper,
    k5PrefixGroup0044Row0050_mask_upper,
    k5PrefixGroup0044Row0051_mask_upper,
    k5PrefixGroup0044Row0052_mask_upper,
    k5PrefixGroup0044Row0053_mask_upper,
    k5PrefixGroup0044Row0054_mask_upper,
    k5PrefixGroup0044Row0055_mask_upper,
    k5PrefixGroup0044Row0056_mask_upper,
    k5PrefixGroup0044Row0057_mask_upper,
    k5PrefixGroup0044Row0058_mask_upper,
    k5PrefixGroup0044Row0059_mask_upper,
    k5PrefixGroup0044Row0060_mask_upper,
    k5PrefixGroup0044Row0061_mask_upper,
    k5PrefixGroup0044Row0062_mask_upper,
    k5PrefixGroup0044Row0063_mask_upper,
    k5PrefixGroup0044Row0064_mask_upper,
    k5PrefixGroup0044Row0065_mask_upper,
    k5PrefixGroup0044Row0066_mask_upper,
    k5PrefixGroup0044Row0067_mask_upper,
    k5PrefixGroup0044Row0068_mask_upper,
    k5PrefixGroup0044Row0069_mask_upper,
    k5PrefixGroup0044Row0070_mask_upper,
    k5PrefixGroup0044Row0071_mask_upper,
    k5PrefixGroup0044Row0072_mask_upper,
    k5PrefixGroup0044Row0073_mask_upper,
    k5PrefixGroup0044Row0074_mask_upper,
    k5PrefixGroup0044Row0075_mask_upper,
    k5PrefixGroup0044Row0076_mask_upper,
    k5PrefixGroup0044Row0077_mask_upper,
    k5PrefixGroup0044Row0078_mask_upper,
    k5PrefixGroup0044Row0079_mask_upper,
    k5PrefixGroup0044Row0080_mask_upper,
    k5PrefixGroup0044Row0081_mask_upper,
    k5PrefixGroup0044Row0082_mask_upper,
    k5PrefixGroup0044Row0083_mask_upper,
    k5PrefixGroup0044Row0084_mask_upper,
    k5PrefixGroup0044Row0085_mask_upper,
    k5PrefixGroup0044Row0086_mask_upper,
    k5PrefixGroup0044Row0087_mask_upper,
    k5PrefixGroup0044Row0088_mask_upper,
    k5PrefixGroup0044Row0089_mask_upper,
    k5PrefixGroup0044Row0090_mask_upper,
    k5PrefixGroup0044Row0091_mask_upper,
    k5PrefixGroup0044Row0092_mask_upper,
    k5PrefixGroup0044Row0093_mask_upper,
    k5PrefixGroup0044Row0094_mask_upper,
    k5PrefixGroup0044Row0095_mask_upper,
    k5PrefixGroup0044Row0096_mask_upper,
    k5PrefixGroup0044Row0097_mask_upper,
    k5PrefixGroup0044Row0098_mask_upper,
    k5PrefixGroup0044Row0099_mask_upper,
    k5PrefixGroup0044Row0100_mask_upper,
    k5PrefixGroup0044Row0101_mask_upper,
    k5PrefixGroup0044Row0102_mask_upper,
    k5PrefixGroup0044Row0103_mask_upper,
    k5PrefixGroup0044Row0104_mask_upper,
    k5PrefixGroup0044Row0105_mask_upper,
    k5PrefixGroup0044Row0106_mask_upper,
    k5PrefixGroup0044Row0107_mask_upper,
    k5PrefixGroup0044Row0108_mask_upper,
    k5PrefixGroup0044Row0109_mask_upper,
    k5PrefixGroup0044Row0110_mask_upper,
    k5PrefixGroup0044Row0111_mask_upper,
    k5PrefixGroup0044Row0112_mask_upper,
    k5PrefixGroup0044Row0113_mask_upper,
    k5PrefixGroup0044Row0114_mask_upper,
    k5PrefixGroup0044Row0115_mask_upper,
    k5PrefixGroup0044Row0116_mask_upper,
    k5PrefixGroup0044Row0117_mask_upper,
    k5PrefixGroup0044Row0118_mask_upper,
    k5PrefixGroup0044Row0119_mask_upper,
    k5PrefixGroup0044Row0120_mask_upper,
    k5PrefixGroup0044Row0121_mask_upper,
    k5PrefixGroup0044Row0122_mask_upper,
    k5PrefixGroup0044Row0123_mask_upper,
    k5PrefixGroup0044Row0124_mask_upper,
    k5PrefixGroup0044Row0125_mask_upper,
    k5PrefixGroup0044Row0126_mask_upper,
    k5PrefixGroup0044Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
