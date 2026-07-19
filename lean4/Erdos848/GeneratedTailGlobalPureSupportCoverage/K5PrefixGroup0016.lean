import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0016 : List (List ℕ) :=
  [[3, 11, 89, 101],
     [3, 11, 89, 103],
     [3, 11, 89, 107],
     [3, 11, 89, 109],
     [3, 11, 89, 113],
     [3, 11, 89, 127],
     [3, 11, 89, 131],
     [3, 11, 89, 137],
     [3, 11, 89, 139],
     [3, 11, 89, 149],
     [3, 11, 89, 151],
     [3, 11, 89, 157],
     [3, 11, 89, 163],
     [3, 11, 89, 167],
     [3, 11, 89, 173],
     [3, 11, 89, 179],
     [3, 11, 97, 101],
     [3, 11, 97, 103],
     [3, 11, 97, 107],
     [3, 11, 97, 109],
     [3, 11, 97, 113],
     [3, 11, 97, 127],
     [3, 11, 97, 131],
     [3, 11, 97, 137],
     [3, 11, 97, 139],
     [3, 11, 97, 149],
     [3, 11, 97, 151],
     [3, 11, 97, 157],
     [3, 11, 97, 163],
     [3, 11, 97, 167],
     [3, 11, 101, 103],
     [3, 11, 101, 107],
     [3, 11, 101, 109],
     [3, 11, 101, 113],
     [3, 11, 101, 127],
     [3, 11, 101, 131],
     [3, 11, 101, 137],
     [3, 11, 101, 139],
     [3, 11, 101, 149],
     [3, 11, 101, 151],
     [3, 11, 101, 157],
     [3, 11, 101, 163],
     [3, 11, 101, 167],
     [3, 11, 103, 107],
     [3, 11, 103, 109],
     [3, 11, 103, 113],
     [3, 11, 103, 127],
     [3, 11, 103, 131],
     [3, 11, 103, 137],
     [3, 11, 103, 139],
     [3, 11, 103, 149],
     [3, 11, 103, 151],
     [3, 11, 103, 157],
     [3, 11, 103, 163],
     [3, 11, 107, 109],
     [3, 11, 107, 113],
     [3, 11, 107, 127],
     [3, 11, 107, 131],
     [3, 11, 107, 137],
     [3, 11, 107, 139],
     [3, 11, 107, 149],
     [3, 11, 107, 151],
     [3, 11, 107, 157],
     [3, 11, 107, 163],
     [3, 11, 109, 113],
     [3, 11, 109, 127],
     [3, 11, 109, 131],
     [3, 11, 109, 137],
     [3, 11, 109, 139],
     [3, 11, 109, 149],
     [3, 11, 109, 151],
     [3, 11, 109, 157],
     [3, 11, 113, 127],
     [3, 11, 113, 131],
     [3, 11, 113, 137],
     [3, 11, 113, 139],
     [3, 11, 113, 149],
     [3, 11, 113, 151],
     [3, 11, 113, 157],
     [3, 11, 127, 131],
     [3, 11, 127, 137],
     [3, 11, 127, 139],
     [3, 11, 127, 149],
     [3, 11, 131, 137],
     [3, 11, 131, 139],
     [3, 11, 137, 139],
     [3, 13, 17, 19],
     [3, 13, 17, 23],
     [3, 13, 17, 29],
     [3, 13, 17, 31],
     [3, 13, 17, 37],
     [3, 13, 17, 41],
     [3, 13, 17, 43],
     [3, 13, 17, 47],
     [3, 13, 17, 53],
     [3, 13, 17, 59],
     [3, 13, 17, 61],
     [3, 13, 17, 67],
     [3, 13, 17, 71],
     [3, 13, 17, 73],
     [3, 13, 17, 79],
     [3, 13, 17, 83],
     [3, 13, 17, 89],
     [3, 13, 17, 97],
     [3, 13, 17, 101],
     [3, 13, 17, 103],
     [3, 13, 17, 107],
     [3, 13, 17, 109],
     [3, 13, 17, 113],
     [3, 13, 17, 127],
     [3, 13, 17, 131],
     [3, 13, 17, 137],
     [3, 13, 17, 139],
     [3, 13, 17, 149],
     [3, 13, 17, 151],
     [3, 13, 17, 157],
     [3, 13, 17, 163],
     [3, 13, 17, 167],
     [3, 13, 17, 173],
     [3, 13, 17, 179],
     [3, 13, 17, 181],
     [3, 13, 17, 191],
     [3, 13, 17, 193],
     [3, 13, 17, 197],
     [3, 13, 17, 199],
     [3, 13, 17, 211],
     [3, 13, 17, 223],
     [3, 13, 17, 227]]

theorem k5PrefixGroup0016Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 173] = true := by
  decide

theorem k5PrefixGroup0016Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 173] = true := by
  decide

theorem k5PrefixGroup0016Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 89, 179] = true := by
  decide

theorem k5PrefixGroup0016Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 89, 179] = true := by
  decide

theorem k5PrefixGroup0016Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 97, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 97, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 101, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 101, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 103, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 103, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 107, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 107, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 109, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 109, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 113, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 113, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 127, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 127, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 127, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 127, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 127, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 127, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 127, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 127, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 131, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 131, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 131, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 131, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 137, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 137, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0016Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 19] = true := by
  decide

theorem k5PrefixGroup0016Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0016Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 23] = true := by
  decide

theorem k5PrefixGroup0016Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0016Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 29] = true := by
  decide

theorem k5PrefixGroup0016Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0016Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 31] = true := by
  decide

theorem k5PrefixGroup0016Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0016Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 37] = true := by
  decide

theorem k5PrefixGroup0016Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0016Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 41] = true := by
  decide

theorem k5PrefixGroup0016Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0016Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 43] = true := by
  decide

theorem k5PrefixGroup0016Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0016Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 47] = true := by
  decide

theorem k5PrefixGroup0016Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0016Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 53] = true := by
  decide

theorem k5PrefixGroup0016Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0016Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 59] = true := by
  decide

theorem k5PrefixGroup0016Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0016Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 61] = true := by
  decide

theorem k5PrefixGroup0016Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0016Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 67] = true := by
  decide

theorem k5PrefixGroup0016Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0016Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 71] = true := by
  decide

theorem k5PrefixGroup0016Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0016Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 73] = true := by
  decide

theorem k5PrefixGroup0016Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0016Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 79] = true := by
  decide

theorem k5PrefixGroup0016Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0016Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 83] = true := by
  decide

theorem k5PrefixGroup0016Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0016Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 89] = true := by
  decide

theorem k5PrefixGroup0016Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0016Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 97] = true := by
  decide

theorem k5PrefixGroup0016Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 101] = true := by
  decide

theorem k5PrefixGroup0016Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 103] = true := by
  decide

theorem k5PrefixGroup0016Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 107] = true := by
  decide

theorem k5PrefixGroup0016Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 109] = true := by
  decide

theorem k5PrefixGroup0016Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 113] = true := by
  decide

theorem k5PrefixGroup0016Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 127] = true := by
  decide

theorem k5PrefixGroup0016Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 131] = true := by
  decide

theorem k5PrefixGroup0016Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 137] = true := by
  decide

theorem k5PrefixGroup0016Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 139] = true := by
  decide

theorem k5PrefixGroup0016Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 149] = true := by
  decide

theorem k5PrefixGroup0016Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 151] = true := by
  decide

theorem k5PrefixGroup0016Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 157] = true := by
  decide

theorem k5PrefixGroup0016Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 163] = true := by
  decide

theorem k5PrefixGroup0016Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 167] = true := by
  decide

theorem k5PrefixGroup0016Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0016Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 173] = true := by
  decide

theorem k5PrefixGroup0016Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0016Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 179] = true := by
  decide

theorem k5PrefixGroup0016Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0016Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 181] = true := by
  decide

theorem k5PrefixGroup0016Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0016Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 191] = true := by
  decide

theorem k5PrefixGroup0016Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0016Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 193] = true := by
  decide

theorem k5PrefixGroup0016Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0016Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 197] = true := by
  decide

theorem k5PrefixGroup0016Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 199] = true := by
  decide

theorem k5PrefixGroup0016Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 199] = true := by
  decide

theorem k5PrefixGroup0016Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 211] = true := by
  decide

theorem k5PrefixGroup0016Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 211] = true := by
  decide

theorem k5PrefixGroup0016Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 223] = true := by
  decide

theorem k5PrefixGroup0016Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 223] = true := by
  decide

theorem k5PrefixGroup0016Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 17, 227] = true := by
  decide

theorem k5PrefixGroup0016Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 17, 227] = true := by
  decide

theorem k5PrefixGroup0016_passes :
    k5PrefixGroup0016.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0016, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0016Row0000_passes,
    k5PrefixGroup0016Row0001_passes,
    k5PrefixGroup0016Row0002_passes,
    k5PrefixGroup0016Row0003_passes,
    k5PrefixGroup0016Row0004_passes,
    k5PrefixGroup0016Row0005_passes,
    k5PrefixGroup0016Row0006_passes,
    k5PrefixGroup0016Row0007_passes,
    k5PrefixGroup0016Row0008_passes,
    k5PrefixGroup0016Row0009_passes,
    k5PrefixGroup0016Row0010_passes,
    k5PrefixGroup0016Row0011_passes,
    k5PrefixGroup0016Row0012_passes,
    k5PrefixGroup0016Row0013_passes,
    k5PrefixGroup0016Row0014_passes,
    k5PrefixGroup0016Row0015_passes,
    k5PrefixGroup0016Row0016_passes,
    k5PrefixGroup0016Row0017_passes,
    k5PrefixGroup0016Row0018_passes,
    k5PrefixGroup0016Row0019_passes,
    k5PrefixGroup0016Row0020_passes,
    k5PrefixGroup0016Row0021_passes,
    k5PrefixGroup0016Row0022_passes,
    k5PrefixGroup0016Row0023_passes,
    k5PrefixGroup0016Row0024_passes,
    k5PrefixGroup0016Row0025_passes,
    k5PrefixGroup0016Row0026_passes,
    k5PrefixGroup0016Row0027_passes,
    k5PrefixGroup0016Row0028_passes,
    k5PrefixGroup0016Row0029_passes,
    k5PrefixGroup0016Row0030_passes,
    k5PrefixGroup0016Row0031_passes,
    k5PrefixGroup0016Row0032_passes,
    k5PrefixGroup0016Row0033_passes,
    k5PrefixGroup0016Row0034_passes,
    k5PrefixGroup0016Row0035_passes,
    k5PrefixGroup0016Row0036_passes,
    k5PrefixGroup0016Row0037_passes,
    k5PrefixGroup0016Row0038_passes,
    k5PrefixGroup0016Row0039_passes,
    k5PrefixGroup0016Row0040_passes,
    k5PrefixGroup0016Row0041_passes,
    k5PrefixGroup0016Row0042_passes,
    k5PrefixGroup0016Row0043_passes,
    k5PrefixGroup0016Row0044_passes,
    k5PrefixGroup0016Row0045_passes,
    k5PrefixGroup0016Row0046_passes,
    k5PrefixGroup0016Row0047_passes,
    k5PrefixGroup0016Row0048_passes,
    k5PrefixGroup0016Row0049_passes,
    k5PrefixGroup0016Row0050_passes,
    k5PrefixGroup0016Row0051_passes,
    k5PrefixGroup0016Row0052_passes,
    k5PrefixGroup0016Row0053_passes,
    k5PrefixGroup0016Row0054_passes,
    k5PrefixGroup0016Row0055_passes,
    k5PrefixGroup0016Row0056_passes,
    k5PrefixGroup0016Row0057_passes,
    k5PrefixGroup0016Row0058_passes,
    k5PrefixGroup0016Row0059_passes,
    k5PrefixGroup0016Row0060_passes,
    k5PrefixGroup0016Row0061_passes,
    k5PrefixGroup0016Row0062_passes,
    k5PrefixGroup0016Row0063_passes,
    k5PrefixGroup0016Row0064_passes,
    k5PrefixGroup0016Row0065_passes,
    k5PrefixGroup0016Row0066_passes,
    k5PrefixGroup0016Row0067_passes,
    k5PrefixGroup0016Row0068_passes,
    k5PrefixGroup0016Row0069_passes,
    k5PrefixGroup0016Row0070_passes,
    k5PrefixGroup0016Row0071_passes,
    k5PrefixGroup0016Row0072_passes,
    k5PrefixGroup0016Row0073_passes,
    k5PrefixGroup0016Row0074_passes,
    k5PrefixGroup0016Row0075_passes,
    k5PrefixGroup0016Row0076_passes,
    k5PrefixGroup0016Row0077_passes,
    k5PrefixGroup0016Row0078_passes,
    k5PrefixGroup0016Row0079_passes,
    k5PrefixGroup0016Row0080_passes,
    k5PrefixGroup0016Row0081_passes,
    k5PrefixGroup0016Row0082_passes,
    k5PrefixGroup0016Row0083_passes,
    k5PrefixGroup0016Row0084_passes,
    k5PrefixGroup0016Row0085_passes,
    k5PrefixGroup0016Row0086_passes,
    k5PrefixGroup0016Row0087_passes,
    k5PrefixGroup0016Row0088_passes,
    k5PrefixGroup0016Row0089_passes,
    k5PrefixGroup0016Row0090_passes,
    k5PrefixGroup0016Row0091_passes,
    k5PrefixGroup0016Row0092_passes,
    k5PrefixGroup0016Row0093_passes,
    k5PrefixGroup0016Row0094_passes,
    k5PrefixGroup0016Row0095_passes,
    k5PrefixGroup0016Row0096_passes,
    k5PrefixGroup0016Row0097_passes,
    k5PrefixGroup0016Row0098_passes,
    k5PrefixGroup0016Row0099_passes,
    k5PrefixGroup0016Row0100_passes,
    k5PrefixGroup0016Row0101_passes,
    k5PrefixGroup0016Row0102_passes,
    k5PrefixGroup0016Row0103_passes,
    k5PrefixGroup0016Row0104_passes,
    k5PrefixGroup0016Row0105_passes,
    k5PrefixGroup0016Row0106_passes,
    k5PrefixGroup0016Row0107_passes,
    k5PrefixGroup0016Row0108_passes,
    k5PrefixGroup0016Row0109_passes,
    k5PrefixGroup0016Row0110_passes,
    k5PrefixGroup0016Row0111_passes,
    k5PrefixGroup0016Row0112_passes,
    k5PrefixGroup0016Row0113_passes,
    k5PrefixGroup0016Row0114_passes,
    k5PrefixGroup0016Row0115_passes,
    k5PrefixGroup0016Row0116_passes,
    k5PrefixGroup0016Row0117_passes,
    k5PrefixGroup0016Row0118_passes,
    k5PrefixGroup0016Row0119_passes,
    k5PrefixGroup0016Row0120_passes,
    k5PrefixGroup0016Row0121_passes,
    k5PrefixGroup0016Row0122_passes,
    k5PrefixGroup0016Row0123_passes,
    k5PrefixGroup0016Row0124_passes,
    k5PrefixGroup0016Row0125_passes,
    k5PrefixGroup0016Row0126_passes,
    k5PrefixGroup0016Row0127_passes]

theorem k5PrefixGroup0016_mask_upper :
    k5PrefixGroup0016.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0016, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0016Row0000_mask_upper,
    k5PrefixGroup0016Row0001_mask_upper,
    k5PrefixGroup0016Row0002_mask_upper,
    k5PrefixGroup0016Row0003_mask_upper,
    k5PrefixGroup0016Row0004_mask_upper,
    k5PrefixGroup0016Row0005_mask_upper,
    k5PrefixGroup0016Row0006_mask_upper,
    k5PrefixGroup0016Row0007_mask_upper,
    k5PrefixGroup0016Row0008_mask_upper,
    k5PrefixGroup0016Row0009_mask_upper,
    k5PrefixGroup0016Row0010_mask_upper,
    k5PrefixGroup0016Row0011_mask_upper,
    k5PrefixGroup0016Row0012_mask_upper,
    k5PrefixGroup0016Row0013_mask_upper,
    k5PrefixGroup0016Row0014_mask_upper,
    k5PrefixGroup0016Row0015_mask_upper,
    k5PrefixGroup0016Row0016_mask_upper,
    k5PrefixGroup0016Row0017_mask_upper,
    k5PrefixGroup0016Row0018_mask_upper,
    k5PrefixGroup0016Row0019_mask_upper,
    k5PrefixGroup0016Row0020_mask_upper,
    k5PrefixGroup0016Row0021_mask_upper,
    k5PrefixGroup0016Row0022_mask_upper,
    k5PrefixGroup0016Row0023_mask_upper,
    k5PrefixGroup0016Row0024_mask_upper,
    k5PrefixGroup0016Row0025_mask_upper,
    k5PrefixGroup0016Row0026_mask_upper,
    k5PrefixGroup0016Row0027_mask_upper,
    k5PrefixGroup0016Row0028_mask_upper,
    k5PrefixGroup0016Row0029_mask_upper,
    k5PrefixGroup0016Row0030_mask_upper,
    k5PrefixGroup0016Row0031_mask_upper,
    k5PrefixGroup0016Row0032_mask_upper,
    k5PrefixGroup0016Row0033_mask_upper,
    k5PrefixGroup0016Row0034_mask_upper,
    k5PrefixGroup0016Row0035_mask_upper,
    k5PrefixGroup0016Row0036_mask_upper,
    k5PrefixGroup0016Row0037_mask_upper,
    k5PrefixGroup0016Row0038_mask_upper,
    k5PrefixGroup0016Row0039_mask_upper,
    k5PrefixGroup0016Row0040_mask_upper,
    k5PrefixGroup0016Row0041_mask_upper,
    k5PrefixGroup0016Row0042_mask_upper,
    k5PrefixGroup0016Row0043_mask_upper,
    k5PrefixGroup0016Row0044_mask_upper,
    k5PrefixGroup0016Row0045_mask_upper,
    k5PrefixGroup0016Row0046_mask_upper,
    k5PrefixGroup0016Row0047_mask_upper,
    k5PrefixGroup0016Row0048_mask_upper,
    k5PrefixGroup0016Row0049_mask_upper,
    k5PrefixGroup0016Row0050_mask_upper,
    k5PrefixGroup0016Row0051_mask_upper,
    k5PrefixGroup0016Row0052_mask_upper,
    k5PrefixGroup0016Row0053_mask_upper,
    k5PrefixGroup0016Row0054_mask_upper,
    k5PrefixGroup0016Row0055_mask_upper,
    k5PrefixGroup0016Row0056_mask_upper,
    k5PrefixGroup0016Row0057_mask_upper,
    k5PrefixGroup0016Row0058_mask_upper,
    k5PrefixGroup0016Row0059_mask_upper,
    k5PrefixGroup0016Row0060_mask_upper,
    k5PrefixGroup0016Row0061_mask_upper,
    k5PrefixGroup0016Row0062_mask_upper,
    k5PrefixGroup0016Row0063_mask_upper,
    k5PrefixGroup0016Row0064_mask_upper,
    k5PrefixGroup0016Row0065_mask_upper,
    k5PrefixGroup0016Row0066_mask_upper,
    k5PrefixGroup0016Row0067_mask_upper,
    k5PrefixGroup0016Row0068_mask_upper,
    k5PrefixGroup0016Row0069_mask_upper,
    k5PrefixGroup0016Row0070_mask_upper,
    k5PrefixGroup0016Row0071_mask_upper,
    k5PrefixGroup0016Row0072_mask_upper,
    k5PrefixGroup0016Row0073_mask_upper,
    k5PrefixGroup0016Row0074_mask_upper,
    k5PrefixGroup0016Row0075_mask_upper,
    k5PrefixGroup0016Row0076_mask_upper,
    k5PrefixGroup0016Row0077_mask_upper,
    k5PrefixGroup0016Row0078_mask_upper,
    k5PrefixGroup0016Row0079_mask_upper,
    k5PrefixGroup0016Row0080_mask_upper,
    k5PrefixGroup0016Row0081_mask_upper,
    k5PrefixGroup0016Row0082_mask_upper,
    k5PrefixGroup0016Row0083_mask_upper,
    k5PrefixGroup0016Row0084_mask_upper,
    k5PrefixGroup0016Row0085_mask_upper,
    k5PrefixGroup0016Row0086_mask_upper,
    k5PrefixGroup0016Row0087_mask_upper,
    k5PrefixGroup0016Row0088_mask_upper,
    k5PrefixGroup0016Row0089_mask_upper,
    k5PrefixGroup0016Row0090_mask_upper,
    k5PrefixGroup0016Row0091_mask_upper,
    k5PrefixGroup0016Row0092_mask_upper,
    k5PrefixGroup0016Row0093_mask_upper,
    k5PrefixGroup0016Row0094_mask_upper,
    k5PrefixGroup0016Row0095_mask_upper,
    k5PrefixGroup0016Row0096_mask_upper,
    k5PrefixGroup0016Row0097_mask_upper,
    k5PrefixGroup0016Row0098_mask_upper,
    k5PrefixGroup0016Row0099_mask_upper,
    k5PrefixGroup0016Row0100_mask_upper,
    k5PrefixGroup0016Row0101_mask_upper,
    k5PrefixGroup0016Row0102_mask_upper,
    k5PrefixGroup0016Row0103_mask_upper,
    k5PrefixGroup0016Row0104_mask_upper,
    k5PrefixGroup0016Row0105_mask_upper,
    k5PrefixGroup0016Row0106_mask_upper,
    k5PrefixGroup0016Row0107_mask_upper,
    k5PrefixGroup0016Row0108_mask_upper,
    k5PrefixGroup0016Row0109_mask_upper,
    k5PrefixGroup0016Row0110_mask_upper,
    k5PrefixGroup0016Row0111_mask_upper,
    k5PrefixGroup0016Row0112_mask_upper,
    k5PrefixGroup0016Row0113_mask_upper,
    k5PrefixGroup0016Row0114_mask_upper,
    k5PrefixGroup0016Row0115_mask_upper,
    k5PrefixGroup0016Row0116_mask_upper,
    k5PrefixGroup0016Row0117_mask_upper,
    k5PrefixGroup0016Row0118_mask_upper,
    k5PrefixGroup0016Row0119_mask_upper,
    k5PrefixGroup0016Row0120_mask_upper,
    k5PrefixGroup0016Row0121_mask_upper,
    k5PrefixGroup0016Row0122_mask_upper,
    k5PrefixGroup0016Row0123_mask_upper,
    k5PrefixGroup0016Row0124_mask_upper,
    k5PrefixGroup0016Row0125_mask_upper,
    k5PrefixGroup0016Row0126_mask_upper,
    k5PrefixGroup0016Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
