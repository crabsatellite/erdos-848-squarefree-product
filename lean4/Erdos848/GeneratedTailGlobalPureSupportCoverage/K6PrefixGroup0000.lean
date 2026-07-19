import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17],
     [3, 7, 11, 13, 19],
     [3, 7, 11, 13, 23],
     [3, 7, 11, 13, 29],
     [3, 7, 11, 13, 31],
     [3, 7, 11, 13, 37],
     [3, 7, 11, 13, 41],
     [3, 7, 11, 13, 43],
     [3, 7, 11, 13, 47],
     [3, 7, 11, 13, 53],
     [3, 7, 11, 13, 59],
     [3, 7, 11, 13, 61],
     [3, 7, 11, 13, 67],
     [3, 7, 11, 13, 71],
     [3, 7, 11, 13, 73],
     [3, 7, 11, 13, 79],
     [3, 7, 11, 13, 83],
     [3, 7, 11, 13, 89],
     [3, 7, 11, 13, 97],
     [3, 7, 11, 13, 101],
     [3, 7, 11, 13, 103],
     [3, 7, 11, 13, 107],
     [3, 7, 11, 13, 109],
     [3, 7, 11, 13, 113],
     [3, 7, 11, 13, 127],
     [3, 7, 11, 13, 131],
     [3, 7, 11, 13, 137],
     [3, 7, 11, 13, 139],
     [3, 7, 11, 13, 149],
     [3, 7, 11, 13, 151],
     [3, 7, 11, 13, 157],
     [3, 7, 11, 13, 163],
     [3, 7, 11, 13, 167],
     [3, 7, 11, 13, 173],
     [3, 7, 11, 13, 179],
     [3, 7, 11, 13, 181],
     [3, 7, 11, 13, 191],
     [3, 7, 11, 13, 193],
     [3, 7, 11, 13, 197],
     [3, 7, 11, 13, 199],
     [3, 7, 11, 13, 211],
     [3, 7, 11, 13, 223],
     [3, 7, 11, 13, 227],
     [3, 7, 11, 13, 229],
     [3, 7, 11, 13, 233],
     [3, 7, 11, 13, 239],
     [3, 7, 11, 13, 241],
     [3, 7, 11, 17, 19],
     [3, 7, 11, 17, 23],
     [3, 7, 11, 17, 29],
     [3, 7, 11, 17, 31],
     [3, 7, 11, 17, 37],
     [3, 7, 11, 17, 41],
     [3, 7, 11, 17, 43],
     [3, 7, 11, 17, 47],
     [3, 7, 11, 17, 53],
     [3, 7, 11, 17, 59],
     [3, 7, 11, 17, 61],
     [3, 7, 11, 17, 67],
     [3, 7, 11, 17, 71],
     [3, 7, 11, 17, 73],
     [3, 7, 11, 17, 79],
     [3, 7, 11, 17, 83],
     [3, 7, 11, 17, 89],
     [3, 7, 11, 17, 97],
     [3, 7, 11, 17, 101],
     [3, 7, 11, 17, 103],
     [3, 7, 11, 17, 107],
     [3, 7, 11, 17, 109],
     [3, 7, 11, 17, 113],
     [3, 7, 11, 17, 127],
     [3, 7, 11, 17, 131],
     [3, 7, 11, 17, 137],
     [3, 7, 11, 17, 139],
     [3, 7, 11, 17, 149],
     [3, 7, 11, 17, 151],
     [3, 7, 11, 17, 157],
     [3, 7, 11, 17, 163],
     [3, 7, 11, 17, 167],
     [3, 7, 11, 17, 173],
     [3, 7, 11, 17, 179],
     [3, 7, 11, 17, 181],
     [3, 7, 11, 17, 191],
     [3, 7, 11, 17, 193],
     [3, 7, 11, 17, 197],
     [3, 7, 11, 17, 199],
     [3, 7, 11, 17, 211],
     [3, 7, 11, 19, 23],
     [3, 7, 11, 19, 29],
     [3, 7, 11, 19, 31],
     [3, 7, 11, 19, 37],
     [3, 7, 11, 19, 41],
     [3, 7, 11, 19, 43],
     [3, 7, 11, 19, 47],
     [3, 7, 11, 19, 53],
     [3, 7, 11, 19, 59],
     [3, 7, 11, 19, 61],
     [3, 7, 11, 19, 67],
     [3, 7, 11, 19, 71],
     [3, 7, 11, 19, 73],
     [3, 7, 11, 19, 79],
     [3, 7, 11, 19, 83],
     [3, 7, 11, 19, 89],
     [3, 7, 11, 19, 97],
     [3, 7, 11, 19, 101],
     [3, 7, 11, 19, 103],
     [3, 7, 11, 19, 107],
     [3, 7, 11, 19, 109],
     [3, 7, 11, 19, 113],
     [3, 7, 11, 19, 127],
     [3, 7, 11, 19, 131],
     [3, 7, 11, 19, 137],
     [3, 7, 11, 19, 139],
     [3, 7, 11, 19, 149],
     [3, 7, 11, 19, 151],
     [3, 7, 11, 19, 157],
     [3, 7, 11, 19, 163],
     [3, 7, 11, 19, 167],
     [3, 7, 11, 19, 173],
     [3, 7, 11, 19, 179],
     [3, 7, 11, 19, 181],
     [3, 7, 11, 19, 191],
     [3, 7, 11, 19, 193],
     [3, 7, 11, 19, 197],
     [3, 7, 11, 19, 199],
     [3, 7, 11, 23, 29],
     [3, 7, 11, 23, 31],
     [3, 7, 11, 23, 37]]

theorem k6PrefixGroup0000Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 17] = true := by
  decide

theorem k6PrefixGroup0000Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17] = true := by
  decide

theorem k6PrefixGroup0000Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 19] = true := by
  decide

theorem k6PrefixGroup0000Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19] = true := by
  decide

theorem k6PrefixGroup0000Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 211] = true := by
  decide

theorem k6PrefixGroup0000Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 211] = true := by
  decide

theorem k6PrefixGroup0000Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 223] = true := by
  decide

theorem k6PrefixGroup0000Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 223] = true := by
  decide

theorem k6PrefixGroup0000Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 227] = true := by
  decide

theorem k6PrefixGroup0000Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 227] = true := by
  decide

theorem k6PrefixGroup0000Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 229] = true := by
  decide

theorem k6PrefixGroup0000Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 229] = true := by
  decide

theorem k6PrefixGroup0000Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 233] = true := by
  decide

theorem k6PrefixGroup0000Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 233] = true := by
  decide

theorem k6PrefixGroup0000Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 239] = true := by
  decide

theorem k6PrefixGroup0000Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 239] = true := by
  decide

theorem k6PrefixGroup0000Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 13, 241] = true := by
  decide

theorem k6PrefixGroup0000Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 241] = true := by
  decide

theorem k6PrefixGroup0000Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 19] = true := by
  decide

theorem k6PrefixGroup0000Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19] = true := by
  decide

theorem k6PrefixGroup0000Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 17, 211] = true := by
  decide

theorem k6PrefixGroup0000Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 211] = true := by
  decide

theorem k6PrefixGroup0000Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23] = true := by
  decide

theorem k6PrefixGroup0000Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 41] = true := by
  decide

theorem k6PrefixGroup0000Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 43] = true := by
  decide

theorem k6PrefixGroup0000Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 47] = true := by
  decide

theorem k6PrefixGroup0000Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 53] = true := by
  decide

theorem k6PrefixGroup0000Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 59] = true := by
  decide

theorem k6PrefixGroup0000Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 61] = true := by
  decide

theorem k6PrefixGroup0000Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 67] = true := by
  decide

theorem k6PrefixGroup0000Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 71] = true := by
  decide

theorem k6PrefixGroup0000Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 73] = true := by
  decide

theorem k6PrefixGroup0000Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 79] = true := by
  decide

theorem k6PrefixGroup0000Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 83] = true := by
  decide

theorem k6PrefixGroup0000Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 89] = true := by
  decide

theorem k6PrefixGroup0000Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 97] = true := by
  decide

theorem k6PrefixGroup0000Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 101] = true := by
  decide

theorem k6PrefixGroup0000Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 103] = true := by
  decide

theorem k6PrefixGroup0000Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 107] = true := by
  decide

theorem k6PrefixGroup0000Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 109] = true := by
  decide

theorem k6PrefixGroup0000Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 113] = true := by
  decide

theorem k6PrefixGroup0000Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 127] = true := by
  decide

theorem k6PrefixGroup0000Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 131] = true := by
  decide

theorem k6PrefixGroup0000Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 137] = true := by
  decide

theorem k6PrefixGroup0000Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 139] = true := by
  decide

theorem k6PrefixGroup0000Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 149] = true := by
  decide

theorem k6PrefixGroup0000Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 151] = true := by
  decide

theorem k6PrefixGroup0000Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 157] = true := by
  decide

theorem k6PrefixGroup0000Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 163] = true := by
  decide

theorem k6PrefixGroup0000Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 167] = true := by
  decide

theorem k6PrefixGroup0000Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 173] = true := by
  decide

theorem k6PrefixGroup0000Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 179] = true := by
  decide

theorem k6PrefixGroup0000Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 181] = true := by
  decide

theorem k6PrefixGroup0000Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 191] = true := by
  decide

theorem k6PrefixGroup0000Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 193] = true := by
  decide

theorem k6PrefixGroup0000Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 197] = true := by
  decide

theorem k6PrefixGroup0000Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 19, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 199] = true := by
  decide

theorem k6PrefixGroup0000Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29] = true := by
  decide

theorem k6PrefixGroup0000Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 31] = true := by
  decide

theorem k6PrefixGroup0000Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 37] = true := by
  decide

theorem k6PrefixGroup0000Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 37] = true := by
  decide

theorem k6PrefixGroup0000_passes :
    k6PrefixGroup0000.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0000Row0000_passes,
    k6PrefixGroup0000Row0001_passes,
    k6PrefixGroup0000Row0002_passes,
    k6PrefixGroup0000Row0003_passes,
    k6PrefixGroup0000Row0004_passes,
    k6PrefixGroup0000Row0005_passes,
    k6PrefixGroup0000Row0006_passes,
    k6PrefixGroup0000Row0007_passes,
    k6PrefixGroup0000Row0008_passes,
    k6PrefixGroup0000Row0009_passes,
    k6PrefixGroup0000Row0010_passes,
    k6PrefixGroup0000Row0011_passes,
    k6PrefixGroup0000Row0012_passes,
    k6PrefixGroup0000Row0013_passes,
    k6PrefixGroup0000Row0014_passes,
    k6PrefixGroup0000Row0015_passes,
    k6PrefixGroup0000Row0016_passes,
    k6PrefixGroup0000Row0017_passes,
    k6PrefixGroup0000Row0018_passes,
    k6PrefixGroup0000Row0019_passes,
    k6PrefixGroup0000Row0020_passes,
    k6PrefixGroup0000Row0021_passes,
    k6PrefixGroup0000Row0022_passes,
    k6PrefixGroup0000Row0023_passes,
    k6PrefixGroup0000Row0024_passes,
    k6PrefixGroup0000Row0025_passes,
    k6PrefixGroup0000Row0026_passes,
    k6PrefixGroup0000Row0027_passes,
    k6PrefixGroup0000Row0028_passes,
    k6PrefixGroup0000Row0029_passes,
    k6PrefixGroup0000Row0030_passes,
    k6PrefixGroup0000Row0031_passes,
    k6PrefixGroup0000Row0032_passes,
    k6PrefixGroup0000Row0033_passes,
    k6PrefixGroup0000Row0034_passes,
    k6PrefixGroup0000Row0035_passes,
    k6PrefixGroup0000Row0036_passes,
    k6PrefixGroup0000Row0037_passes,
    k6PrefixGroup0000Row0038_passes,
    k6PrefixGroup0000Row0039_passes,
    k6PrefixGroup0000Row0040_passes,
    k6PrefixGroup0000Row0041_passes,
    k6PrefixGroup0000Row0042_passes,
    k6PrefixGroup0000Row0043_passes,
    k6PrefixGroup0000Row0044_passes,
    k6PrefixGroup0000Row0045_passes,
    k6PrefixGroup0000Row0046_passes,
    k6PrefixGroup0000Row0047_passes,
    k6PrefixGroup0000Row0048_passes,
    k6PrefixGroup0000Row0049_passes,
    k6PrefixGroup0000Row0050_passes,
    k6PrefixGroup0000Row0051_passes,
    k6PrefixGroup0000Row0052_passes,
    k6PrefixGroup0000Row0053_passes,
    k6PrefixGroup0000Row0054_passes,
    k6PrefixGroup0000Row0055_passes,
    k6PrefixGroup0000Row0056_passes,
    k6PrefixGroup0000Row0057_passes,
    k6PrefixGroup0000Row0058_passes,
    k6PrefixGroup0000Row0059_passes,
    k6PrefixGroup0000Row0060_passes,
    k6PrefixGroup0000Row0061_passes,
    k6PrefixGroup0000Row0062_passes,
    k6PrefixGroup0000Row0063_passes,
    k6PrefixGroup0000Row0064_passes,
    k6PrefixGroup0000Row0065_passes,
    k6PrefixGroup0000Row0066_passes,
    k6PrefixGroup0000Row0067_passes,
    k6PrefixGroup0000Row0068_passes,
    k6PrefixGroup0000Row0069_passes,
    k6PrefixGroup0000Row0070_passes,
    k6PrefixGroup0000Row0071_passes,
    k6PrefixGroup0000Row0072_passes,
    k6PrefixGroup0000Row0073_passes,
    k6PrefixGroup0000Row0074_passes,
    k6PrefixGroup0000Row0075_passes,
    k6PrefixGroup0000Row0076_passes,
    k6PrefixGroup0000Row0077_passes,
    k6PrefixGroup0000Row0078_passes,
    k6PrefixGroup0000Row0079_passes,
    k6PrefixGroup0000Row0080_passes,
    k6PrefixGroup0000Row0081_passes,
    k6PrefixGroup0000Row0082_passes,
    k6PrefixGroup0000Row0083_passes,
    k6PrefixGroup0000Row0084_passes,
    k6PrefixGroup0000Row0085_passes,
    k6PrefixGroup0000Row0086_passes,
    k6PrefixGroup0000Row0087_passes,
    k6PrefixGroup0000Row0088_passes,
    k6PrefixGroup0000Row0089_passes,
    k6PrefixGroup0000Row0090_passes,
    k6PrefixGroup0000Row0091_passes,
    k6PrefixGroup0000Row0092_passes,
    k6PrefixGroup0000Row0093_passes,
    k6PrefixGroup0000Row0094_passes,
    k6PrefixGroup0000Row0095_passes,
    k6PrefixGroup0000Row0096_passes,
    k6PrefixGroup0000Row0097_passes,
    k6PrefixGroup0000Row0098_passes,
    k6PrefixGroup0000Row0099_passes,
    k6PrefixGroup0000Row0100_passes,
    k6PrefixGroup0000Row0101_passes,
    k6PrefixGroup0000Row0102_passes,
    k6PrefixGroup0000Row0103_passes,
    k6PrefixGroup0000Row0104_passes,
    k6PrefixGroup0000Row0105_passes,
    k6PrefixGroup0000Row0106_passes,
    k6PrefixGroup0000Row0107_passes,
    k6PrefixGroup0000Row0108_passes,
    k6PrefixGroup0000Row0109_passes,
    k6PrefixGroup0000Row0110_passes,
    k6PrefixGroup0000Row0111_passes,
    k6PrefixGroup0000Row0112_passes,
    k6PrefixGroup0000Row0113_passes,
    k6PrefixGroup0000Row0114_passes,
    k6PrefixGroup0000Row0115_passes,
    k6PrefixGroup0000Row0116_passes,
    k6PrefixGroup0000Row0117_passes,
    k6PrefixGroup0000Row0118_passes,
    k6PrefixGroup0000Row0119_passes,
    k6PrefixGroup0000Row0120_passes,
    k6PrefixGroup0000Row0121_passes,
    k6PrefixGroup0000Row0122_passes,
    k6PrefixGroup0000Row0123_passes,
    k6PrefixGroup0000Row0124_passes,
    k6PrefixGroup0000Row0125_passes,
    k6PrefixGroup0000Row0126_passes,
    k6PrefixGroup0000Row0127_passes]

theorem k6PrefixGroup0000_mask_upper :
    k6PrefixGroup0000.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0000Row0000_mask_upper,
    k6PrefixGroup0000Row0001_mask_upper,
    k6PrefixGroup0000Row0002_mask_upper,
    k6PrefixGroup0000Row0003_mask_upper,
    k6PrefixGroup0000Row0004_mask_upper,
    k6PrefixGroup0000Row0005_mask_upper,
    k6PrefixGroup0000Row0006_mask_upper,
    k6PrefixGroup0000Row0007_mask_upper,
    k6PrefixGroup0000Row0008_mask_upper,
    k6PrefixGroup0000Row0009_mask_upper,
    k6PrefixGroup0000Row0010_mask_upper,
    k6PrefixGroup0000Row0011_mask_upper,
    k6PrefixGroup0000Row0012_mask_upper,
    k6PrefixGroup0000Row0013_mask_upper,
    k6PrefixGroup0000Row0014_mask_upper,
    k6PrefixGroup0000Row0015_mask_upper,
    k6PrefixGroup0000Row0016_mask_upper,
    k6PrefixGroup0000Row0017_mask_upper,
    k6PrefixGroup0000Row0018_mask_upper,
    k6PrefixGroup0000Row0019_mask_upper,
    k6PrefixGroup0000Row0020_mask_upper,
    k6PrefixGroup0000Row0021_mask_upper,
    k6PrefixGroup0000Row0022_mask_upper,
    k6PrefixGroup0000Row0023_mask_upper,
    k6PrefixGroup0000Row0024_mask_upper,
    k6PrefixGroup0000Row0025_mask_upper,
    k6PrefixGroup0000Row0026_mask_upper,
    k6PrefixGroup0000Row0027_mask_upper,
    k6PrefixGroup0000Row0028_mask_upper,
    k6PrefixGroup0000Row0029_mask_upper,
    k6PrefixGroup0000Row0030_mask_upper,
    k6PrefixGroup0000Row0031_mask_upper,
    k6PrefixGroup0000Row0032_mask_upper,
    k6PrefixGroup0000Row0033_mask_upper,
    k6PrefixGroup0000Row0034_mask_upper,
    k6PrefixGroup0000Row0035_mask_upper,
    k6PrefixGroup0000Row0036_mask_upper,
    k6PrefixGroup0000Row0037_mask_upper,
    k6PrefixGroup0000Row0038_mask_upper,
    k6PrefixGroup0000Row0039_mask_upper,
    k6PrefixGroup0000Row0040_mask_upper,
    k6PrefixGroup0000Row0041_mask_upper,
    k6PrefixGroup0000Row0042_mask_upper,
    k6PrefixGroup0000Row0043_mask_upper,
    k6PrefixGroup0000Row0044_mask_upper,
    k6PrefixGroup0000Row0045_mask_upper,
    k6PrefixGroup0000Row0046_mask_upper,
    k6PrefixGroup0000Row0047_mask_upper,
    k6PrefixGroup0000Row0048_mask_upper,
    k6PrefixGroup0000Row0049_mask_upper,
    k6PrefixGroup0000Row0050_mask_upper,
    k6PrefixGroup0000Row0051_mask_upper,
    k6PrefixGroup0000Row0052_mask_upper,
    k6PrefixGroup0000Row0053_mask_upper,
    k6PrefixGroup0000Row0054_mask_upper,
    k6PrefixGroup0000Row0055_mask_upper,
    k6PrefixGroup0000Row0056_mask_upper,
    k6PrefixGroup0000Row0057_mask_upper,
    k6PrefixGroup0000Row0058_mask_upper,
    k6PrefixGroup0000Row0059_mask_upper,
    k6PrefixGroup0000Row0060_mask_upper,
    k6PrefixGroup0000Row0061_mask_upper,
    k6PrefixGroup0000Row0062_mask_upper,
    k6PrefixGroup0000Row0063_mask_upper,
    k6PrefixGroup0000Row0064_mask_upper,
    k6PrefixGroup0000Row0065_mask_upper,
    k6PrefixGroup0000Row0066_mask_upper,
    k6PrefixGroup0000Row0067_mask_upper,
    k6PrefixGroup0000Row0068_mask_upper,
    k6PrefixGroup0000Row0069_mask_upper,
    k6PrefixGroup0000Row0070_mask_upper,
    k6PrefixGroup0000Row0071_mask_upper,
    k6PrefixGroup0000Row0072_mask_upper,
    k6PrefixGroup0000Row0073_mask_upper,
    k6PrefixGroup0000Row0074_mask_upper,
    k6PrefixGroup0000Row0075_mask_upper,
    k6PrefixGroup0000Row0076_mask_upper,
    k6PrefixGroup0000Row0077_mask_upper,
    k6PrefixGroup0000Row0078_mask_upper,
    k6PrefixGroup0000Row0079_mask_upper,
    k6PrefixGroup0000Row0080_mask_upper,
    k6PrefixGroup0000Row0081_mask_upper,
    k6PrefixGroup0000Row0082_mask_upper,
    k6PrefixGroup0000Row0083_mask_upper,
    k6PrefixGroup0000Row0084_mask_upper,
    k6PrefixGroup0000Row0085_mask_upper,
    k6PrefixGroup0000Row0086_mask_upper,
    k6PrefixGroup0000Row0087_mask_upper,
    k6PrefixGroup0000Row0088_mask_upper,
    k6PrefixGroup0000Row0089_mask_upper,
    k6PrefixGroup0000Row0090_mask_upper,
    k6PrefixGroup0000Row0091_mask_upper,
    k6PrefixGroup0000Row0092_mask_upper,
    k6PrefixGroup0000Row0093_mask_upper,
    k6PrefixGroup0000Row0094_mask_upper,
    k6PrefixGroup0000Row0095_mask_upper,
    k6PrefixGroup0000Row0096_mask_upper,
    k6PrefixGroup0000Row0097_mask_upper,
    k6PrefixGroup0000Row0098_mask_upper,
    k6PrefixGroup0000Row0099_mask_upper,
    k6PrefixGroup0000Row0100_mask_upper,
    k6PrefixGroup0000Row0101_mask_upper,
    k6PrefixGroup0000Row0102_mask_upper,
    k6PrefixGroup0000Row0103_mask_upper,
    k6PrefixGroup0000Row0104_mask_upper,
    k6PrefixGroup0000Row0105_mask_upper,
    k6PrefixGroup0000Row0106_mask_upper,
    k6PrefixGroup0000Row0107_mask_upper,
    k6PrefixGroup0000Row0108_mask_upper,
    k6PrefixGroup0000Row0109_mask_upper,
    k6PrefixGroup0000Row0110_mask_upper,
    k6PrefixGroup0000Row0111_mask_upper,
    k6PrefixGroup0000Row0112_mask_upper,
    k6PrefixGroup0000Row0113_mask_upper,
    k6PrefixGroup0000Row0114_mask_upper,
    k6PrefixGroup0000Row0115_mask_upper,
    k6PrefixGroup0000Row0116_mask_upper,
    k6PrefixGroup0000Row0117_mask_upper,
    k6PrefixGroup0000Row0118_mask_upper,
    k6PrefixGroup0000Row0119_mask_upper,
    k6PrefixGroup0000Row0120_mask_upper,
    k6PrefixGroup0000Row0121_mask_upper,
    k6PrefixGroup0000Row0122_mask_upper,
    k6PrefixGroup0000Row0123_mask_upper,
    k6PrefixGroup0000Row0124_mask_upper,
    k6PrefixGroup0000Row0125_mask_upper,
    k6PrefixGroup0000Row0126_mask_upper,
    k6PrefixGroup0000Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
