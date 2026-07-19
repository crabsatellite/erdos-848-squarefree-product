import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0041 : List (List ℕ) :=
  [[7, 11, 59, 97],
     [7, 11, 59, 101],
     [7, 11, 59, 103],
     [7, 11, 59, 107],
     [7, 11, 59, 109],
     [7, 11, 59, 113],
     [7, 11, 59, 127],
     [7, 11, 59, 131],
     [7, 11, 59, 137],
     [7, 11, 59, 139],
     [7, 11, 61, 67],
     [7, 11, 61, 71],
     [7, 11, 61, 73],
     [7, 11, 61, 79],
     [7, 11, 61, 83],
     [7, 11, 61, 89],
     [7, 11, 61, 97],
     [7, 11, 61, 101],
     [7, 11, 61, 103],
     [7, 11, 61, 107],
     [7, 11, 61, 109],
     [7, 11, 61, 113],
     [7, 11, 61, 127],
     [7, 11, 61, 131],
     [7, 11, 61, 137],
     [7, 11, 67, 71],
     [7, 11, 67, 73],
     [7, 11, 67, 79],
     [7, 11, 67, 83],
     [7, 11, 67, 89],
     [7, 11, 67, 97],
     [7, 11, 67, 101],
     [7, 11, 67, 103],
     [7, 11, 67, 107],
     [7, 11, 67, 109],
     [7, 11, 67, 113],
     [7, 11, 67, 127],
     [7, 11, 67, 131],
     [7, 11, 71, 73],
     [7, 11, 71, 79],
     [7, 11, 71, 83],
     [7, 11, 71, 89],
     [7, 11, 71, 97],
     [7, 11, 71, 101],
     [7, 11, 71, 103],
     [7, 11, 71, 107],
     [7, 11, 71, 109],
     [7, 11, 71, 113],
     [7, 11, 71, 127],
     [7, 11, 73, 79],
     [7, 11, 73, 83],
     [7, 11, 73, 89],
     [7, 11, 73, 97],
     [7, 11, 73, 101],
     [7, 11, 73, 103],
     [7, 11, 73, 107],
     [7, 11, 73, 109],
     [7, 11, 73, 113],
     [7, 11, 73, 127],
     [7, 11, 79, 83],
     [7, 11, 79, 89],
     [7, 11, 79, 97],
     [7, 11, 79, 101],
     [7, 11, 79, 103],
     [7, 11, 79, 107],
     [7, 11, 79, 109],
     [7, 11, 79, 113],
     [7, 11, 83, 89],
     [7, 11, 83, 97],
     [7, 11, 83, 101],
     [7, 11, 83, 103],
     [7, 11, 83, 107],
     [7, 11, 83, 109],
     [7, 11, 83, 113],
     [7, 11, 89, 97],
     [7, 11, 89, 101],
     [7, 11, 89, 103],
     [7, 11, 89, 107],
     [7, 11, 89, 109],
     [7, 11, 97, 101],
     [7, 11, 97, 103],
     [7, 11, 97, 107],
     [7, 11, 97, 109],
     [7, 11, 101, 103],
     [7, 11, 101, 107],
     [7, 11, 101, 109],
     [7, 11, 103, 107],
     [7, 13, 17, 19],
     [7, 13, 17, 23],
     [7, 13, 17, 29],
     [7, 13, 17, 31],
     [7, 13, 17, 37],
     [7, 13, 17, 41],
     [7, 13, 17, 43],
     [7, 13, 17, 47],
     [7, 13, 17, 53],
     [7, 13, 17, 59],
     [7, 13, 17, 61],
     [7, 13, 17, 67],
     [7, 13, 17, 71],
     [7, 13, 17, 73],
     [7, 13, 17, 79],
     [7, 13, 17, 83],
     [7, 13, 17, 89],
     [7, 13, 17, 97],
     [7, 13, 17, 101],
     [7, 13, 17, 103],
     [7, 13, 17, 107],
     [7, 13, 17, 109],
     [7, 13, 17, 113],
     [7, 13, 17, 127],
     [7, 13, 17, 131],
     [7, 13, 17, 137],
     [7, 13, 17, 139],
     [7, 13, 17, 149],
     [7, 13, 17, 151],
     [7, 13, 17, 157],
     [7, 13, 17, 163],
     [7, 13, 17, 167],
     [7, 13, 17, 173],
     [7, 13, 17, 179],
     [7, 13, 17, 181],
     [7, 13, 17, 191],
     [7, 13, 17, 193],
     [7, 13, 17, 197],
     [7, 13, 17, 199],
     [7, 13, 17, 211],
     [7, 13, 17, 223]]

theorem k5PrefixGroup0041Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 59, 139] = true := by
  decide

theorem k5PrefixGroup0041Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 59, 139] = true := by
  decide

theorem k5PrefixGroup0041Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 67] = true := by
  decide

theorem k5PrefixGroup0041Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 67] = true := by
  decide

theorem k5PrefixGroup0041Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 61, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 61, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 67, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 67, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 71, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 71, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 73, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 73, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 79, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 79, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 83, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 83, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 89, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 89, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 89, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 89, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 89, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 89, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 89, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 89, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 89, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 89, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 97, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 97, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 97, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 97, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 97, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 97, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 97, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 97, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 101, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 101, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 101, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 101, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 101, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 101, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 11, 103, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 103, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0041Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0041Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0041Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0041Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0041Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0041Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0041Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0041Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0041Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0041Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0041Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0041Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0041Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0041Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0041Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0041Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0041Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0041Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0041Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0041Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0041Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0041Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0041Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0041Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0041Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0041Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0041Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0041Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0041Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0041Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0041Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0041Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0041Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0041Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0041Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0041Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0041Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0041Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0041Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0041Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0041Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0041Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0041Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0041Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0041Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0041Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0041Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0041Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0041Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0041Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0041Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0041Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0041Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0041Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0041Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0041Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0041Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0041Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0041Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0041Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0041Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0041Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 199] = true := by
  decide

theorem k5PrefixGroup0041Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 199] = true := by
  decide

theorem k5PrefixGroup0041Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 211] = true := by
  decide

theorem k5PrefixGroup0041Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 211] = true := by
  decide

theorem k5PrefixGroup0041Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [7, 13, 17, 223] = true := by
  decide

theorem k5PrefixGroup0041Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 223] = true := by
  decide

theorem k5PrefixGroup0041_passes :
    k5PrefixGroup0041.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0041, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0041Row0000_passes,
    k5PrefixGroup0041Row0001_passes,
    k5PrefixGroup0041Row0002_passes,
    k5PrefixGroup0041Row0003_passes,
    k5PrefixGroup0041Row0004_passes,
    k5PrefixGroup0041Row0005_passes,
    k5PrefixGroup0041Row0006_passes,
    k5PrefixGroup0041Row0007_passes,
    k5PrefixGroup0041Row0008_passes,
    k5PrefixGroup0041Row0009_passes,
    k5PrefixGroup0041Row0010_passes,
    k5PrefixGroup0041Row0011_passes,
    k5PrefixGroup0041Row0012_passes,
    k5PrefixGroup0041Row0013_passes,
    k5PrefixGroup0041Row0014_passes,
    k5PrefixGroup0041Row0015_passes,
    k5PrefixGroup0041Row0016_passes,
    k5PrefixGroup0041Row0017_passes,
    k5PrefixGroup0041Row0018_passes,
    k5PrefixGroup0041Row0019_passes,
    k5PrefixGroup0041Row0020_passes,
    k5PrefixGroup0041Row0021_passes,
    k5PrefixGroup0041Row0022_passes,
    k5PrefixGroup0041Row0023_passes,
    k5PrefixGroup0041Row0024_passes,
    k5PrefixGroup0041Row0025_passes,
    k5PrefixGroup0041Row0026_passes,
    k5PrefixGroup0041Row0027_passes,
    k5PrefixGroup0041Row0028_passes,
    k5PrefixGroup0041Row0029_passes,
    k5PrefixGroup0041Row0030_passes,
    k5PrefixGroup0041Row0031_passes,
    k5PrefixGroup0041Row0032_passes,
    k5PrefixGroup0041Row0033_passes,
    k5PrefixGroup0041Row0034_passes,
    k5PrefixGroup0041Row0035_passes,
    k5PrefixGroup0041Row0036_passes,
    k5PrefixGroup0041Row0037_passes,
    k5PrefixGroup0041Row0038_passes,
    k5PrefixGroup0041Row0039_passes,
    k5PrefixGroup0041Row0040_passes,
    k5PrefixGroup0041Row0041_passes,
    k5PrefixGroup0041Row0042_passes,
    k5PrefixGroup0041Row0043_passes,
    k5PrefixGroup0041Row0044_passes,
    k5PrefixGroup0041Row0045_passes,
    k5PrefixGroup0041Row0046_passes,
    k5PrefixGroup0041Row0047_passes,
    k5PrefixGroup0041Row0048_passes,
    k5PrefixGroup0041Row0049_passes,
    k5PrefixGroup0041Row0050_passes,
    k5PrefixGroup0041Row0051_passes,
    k5PrefixGroup0041Row0052_passes,
    k5PrefixGroup0041Row0053_passes,
    k5PrefixGroup0041Row0054_passes,
    k5PrefixGroup0041Row0055_passes,
    k5PrefixGroup0041Row0056_passes,
    k5PrefixGroup0041Row0057_passes,
    k5PrefixGroup0041Row0058_passes,
    k5PrefixGroup0041Row0059_passes,
    k5PrefixGroup0041Row0060_passes,
    k5PrefixGroup0041Row0061_passes,
    k5PrefixGroup0041Row0062_passes,
    k5PrefixGroup0041Row0063_passes,
    k5PrefixGroup0041Row0064_passes,
    k5PrefixGroup0041Row0065_passes,
    k5PrefixGroup0041Row0066_passes,
    k5PrefixGroup0041Row0067_passes,
    k5PrefixGroup0041Row0068_passes,
    k5PrefixGroup0041Row0069_passes,
    k5PrefixGroup0041Row0070_passes,
    k5PrefixGroup0041Row0071_passes,
    k5PrefixGroup0041Row0072_passes,
    k5PrefixGroup0041Row0073_passes,
    k5PrefixGroup0041Row0074_passes,
    k5PrefixGroup0041Row0075_passes,
    k5PrefixGroup0041Row0076_passes,
    k5PrefixGroup0041Row0077_passes,
    k5PrefixGroup0041Row0078_passes,
    k5PrefixGroup0041Row0079_passes,
    k5PrefixGroup0041Row0080_passes,
    k5PrefixGroup0041Row0081_passes,
    k5PrefixGroup0041Row0082_passes,
    k5PrefixGroup0041Row0083_passes,
    k5PrefixGroup0041Row0084_passes,
    k5PrefixGroup0041Row0085_passes,
    k5PrefixGroup0041Row0086_passes,
    k5PrefixGroup0041Row0087_passes,
    k5PrefixGroup0041Row0088_passes,
    k5PrefixGroup0041Row0089_passes,
    k5PrefixGroup0041Row0090_passes,
    k5PrefixGroup0041Row0091_passes,
    k5PrefixGroup0041Row0092_passes,
    k5PrefixGroup0041Row0093_passes,
    k5PrefixGroup0041Row0094_passes,
    k5PrefixGroup0041Row0095_passes,
    k5PrefixGroup0041Row0096_passes,
    k5PrefixGroup0041Row0097_passes,
    k5PrefixGroup0041Row0098_passes,
    k5PrefixGroup0041Row0099_passes,
    k5PrefixGroup0041Row0100_passes,
    k5PrefixGroup0041Row0101_passes,
    k5PrefixGroup0041Row0102_passes,
    k5PrefixGroup0041Row0103_passes,
    k5PrefixGroup0041Row0104_passes,
    k5PrefixGroup0041Row0105_passes,
    k5PrefixGroup0041Row0106_passes,
    k5PrefixGroup0041Row0107_passes,
    k5PrefixGroup0041Row0108_passes,
    k5PrefixGroup0041Row0109_passes,
    k5PrefixGroup0041Row0110_passes,
    k5PrefixGroup0041Row0111_passes,
    k5PrefixGroup0041Row0112_passes,
    k5PrefixGroup0041Row0113_passes,
    k5PrefixGroup0041Row0114_passes,
    k5PrefixGroup0041Row0115_passes,
    k5PrefixGroup0041Row0116_passes,
    k5PrefixGroup0041Row0117_passes,
    k5PrefixGroup0041Row0118_passes,
    k5PrefixGroup0041Row0119_passes,
    k5PrefixGroup0041Row0120_passes,
    k5PrefixGroup0041Row0121_passes,
    k5PrefixGroup0041Row0122_passes,
    k5PrefixGroup0041Row0123_passes,
    k5PrefixGroup0041Row0124_passes,
    k5PrefixGroup0041Row0125_passes,
    k5PrefixGroup0041Row0126_passes,
    k5PrefixGroup0041Row0127_passes]

theorem k5PrefixGroup0041_mask_upper :
    k5PrefixGroup0041.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0041, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0041Row0000_mask_upper,
    k5PrefixGroup0041Row0001_mask_upper,
    k5PrefixGroup0041Row0002_mask_upper,
    k5PrefixGroup0041Row0003_mask_upper,
    k5PrefixGroup0041Row0004_mask_upper,
    k5PrefixGroup0041Row0005_mask_upper,
    k5PrefixGroup0041Row0006_mask_upper,
    k5PrefixGroup0041Row0007_mask_upper,
    k5PrefixGroup0041Row0008_mask_upper,
    k5PrefixGroup0041Row0009_mask_upper,
    k5PrefixGroup0041Row0010_mask_upper,
    k5PrefixGroup0041Row0011_mask_upper,
    k5PrefixGroup0041Row0012_mask_upper,
    k5PrefixGroup0041Row0013_mask_upper,
    k5PrefixGroup0041Row0014_mask_upper,
    k5PrefixGroup0041Row0015_mask_upper,
    k5PrefixGroup0041Row0016_mask_upper,
    k5PrefixGroup0041Row0017_mask_upper,
    k5PrefixGroup0041Row0018_mask_upper,
    k5PrefixGroup0041Row0019_mask_upper,
    k5PrefixGroup0041Row0020_mask_upper,
    k5PrefixGroup0041Row0021_mask_upper,
    k5PrefixGroup0041Row0022_mask_upper,
    k5PrefixGroup0041Row0023_mask_upper,
    k5PrefixGroup0041Row0024_mask_upper,
    k5PrefixGroup0041Row0025_mask_upper,
    k5PrefixGroup0041Row0026_mask_upper,
    k5PrefixGroup0041Row0027_mask_upper,
    k5PrefixGroup0041Row0028_mask_upper,
    k5PrefixGroup0041Row0029_mask_upper,
    k5PrefixGroup0041Row0030_mask_upper,
    k5PrefixGroup0041Row0031_mask_upper,
    k5PrefixGroup0041Row0032_mask_upper,
    k5PrefixGroup0041Row0033_mask_upper,
    k5PrefixGroup0041Row0034_mask_upper,
    k5PrefixGroup0041Row0035_mask_upper,
    k5PrefixGroup0041Row0036_mask_upper,
    k5PrefixGroup0041Row0037_mask_upper,
    k5PrefixGroup0041Row0038_mask_upper,
    k5PrefixGroup0041Row0039_mask_upper,
    k5PrefixGroup0041Row0040_mask_upper,
    k5PrefixGroup0041Row0041_mask_upper,
    k5PrefixGroup0041Row0042_mask_upper,
    k5PrefixGroup0041Row0043_mask_upper,
    k5PrefixGroup0041Row0044_mask_upper,
    k5PrefixGroup0041Row0045_mask_upper,
    k5PrefixGroup0041Row0046_mask_upper,
    k5PrefixGroup0041Row0047_mask_upper,
    k5PrefixGroup0041Row0048_mask_upper,
    k5PrefixGroup0041Row0049_mask_upper,
    k5PrefixGroup0041Row0050_mask_upper,
    k5PrefixGroup0041Row0051_mask_upper,
    k5PrefixGroup0041Row0052_mask_upper,
    k5PrefixGroup0041Row0053_mask_upper,
    k5PrefixGroup0041Row0054_mask_upper,
    k5PrefixGroup0041Row0055_mask_upper,
    k5PrefixGroup0041Row0056_mask_upper,
    k5PrefixGroup0041Row0057_mask_upper,
    k5PrefixGroup0041Row0058_mask_upper,
    k5PrefixGroup0041Row0059_mask_upper,
    k5PrefixGroup0041Row0060_mask_upper,
    k5PrefixGroup0041Row0061_mask_upper,
    k5PrefixGroup0041Row0062_mask_upper,
    k5PrefixGroup0041Row0063_mask_upper,
    k5PrefixGroup0041Row0064_mask_upper,
    k5PrefixGroup0041Row0065_mask_upper,
    k5PrefixGroup0041Row0066_mask_upper,
    k5PrefixGroup0041Row0067_mask_upper,
    k5PrefixGroup0041Row0068_mask_upper,
    k5PrefixGroup0041Row0069_mask_upper,
    k5PrefixGroup0041Row0070_mask_upper,
    k5PrefixGroup0041Row0071_mask_upper,
    k5PrefixGroup0041Row0072_mask_upper,
    k5PrefixGroup0041Row0073_mask_upper,
    k5PrefixGroup0041Row0074_mask_upper,
    k5PrefixGroup0041Row0075_mask_upper,
    k5PrefixGroup0041Row0076_mask_upper,
    k5PrefixGroup0041Row0077_mask_upper,
    k5PrefixGroup0041Row0078_mask_upper,
    k5PrefixGroup0041Row0079_mask_upper,
    k5PrefixGroup0041Row0080_mask_upper,
    k5PrefixGroup0041Row0081_mask_upper,
    k5PrefixGroup0041Row0082_mask_upper,
    k5PrefixGroup0041Row0083_mask_upper,
    k5PrefixGroup0041Row0084_mask_upper,
    k5PrefixGroup0041Row0085_mask_upper,
    k5PrefixGroup0041Row0086_mask_upper,
    k5PrefixGroup0041Row0087_mask_upper,
    k5PrefixGroup0041Row0088_mask_upper,
    k5PrefixGroup0041Row0089_mask_upper,
    k5PrefixGroup0041Row0090_mask_upper,
    k5PrefixGroup0041Row0091_mask_upper,
    k5PrefixGroup0041Row0092_mask_upper,
    k5PrefixGroup0041Row0093_mask_upper,
    k5PrefixGroup0041Row0094_mask_upper,
    k5PrefixGroup0041Row0095_mask_upper,
    k5PrefixGroup0041Row0096_mask_upper,
    k5PrefixGroup0041Row0097_mask_upper,
    k5PrefixGroup0041Row0098_mask_upper,
    k5PrefixGroup0041Row0099_mask_upper,
    k5PrefixGroup0041Row0100_mask_upper,
    k5PrefixGroup0041Row0101_mask_upper,
    k5PrefixGroup0041Row0102_mask_upper,
    k5PrefixGroup0041Row0103_mask_upper,
    k5PrefixGroup0041Row0104_mask_upper,
    k5PrefixGroup0041Row0105_mask_upper,
    k5PrefixGroup0041Row0106_mask_upper,
    k5PrefixGroup0041Row0107_mask_upper,
    k5PrefixGroup0041Row0108_mask_upper,
    k5PrefixGroup0041Row0109_mask_upper,
    k5PrefixGroup0041Row0110_mask_upper,
    k5PrefixGroup0041Row0111_mask_upper,
    k5PrefixGroup0041Row0112_mask_upper,
    k5PrefixGroup0041Row0113_mask_upper,
    k5PrefixGroup0041Row0114_mask_upper,
    k5PrefixGroup0041Row0115_mask_upper,
    k5PrefixGroup0041Row0116_mask_upper,
    k5PrefixGroup0041Row0117_mask_upper,
    k5PrefixGroup0041Row0118_mask_upper,
    k5PrefixGroup0041Row0119_mask_upper,
    k5PrefixGroup0041Row0120_mask_upper,
    k5PrefixGroup0041Row0121_mask_upper,
    k5PrefixGroup0041Row0122_mask_upper,
    k5PrefixGroup0041Row0123_mask_upper,
    k5PrefixGroup0041Row0124_mask_upper,
    k5PrefixGroup0041Row0125_mask_upper,
    k5PrefixGroup0041Row0126_mask_upper,
    k5PrefixGroup0041Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
