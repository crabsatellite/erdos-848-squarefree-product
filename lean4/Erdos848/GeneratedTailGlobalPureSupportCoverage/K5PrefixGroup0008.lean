import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0008 : List (List ℕ) :=
  [[3, 7, 73, 173],
     [3, 7, 73, 179],
     [3, 7, 73, 181],
     [3, 7, 73, 191],
     [3, 7, 73, 193],
     [3, 7, 73, 197],
     [3, 7, 73, 199],
     [3, 7, 73, 211],
     [3, 7, 73, 223],
     [3, 7, 73, 227],
     [3, 7, 73, 229],
     [3, 7, 73, 233],
     [3, 7, 73, 239],
     [3, 7, 73, 241],
     [3, 7, 79, 83],
     [3, 7, 79, 89],
     [3, 7, 79, 97],
     [3, 7, 79, 101],
     [3, 7, 79, 103],
     [3, 7, 79, 107],
     [3, 7, 79, 109],
     [3, 7, 79, 113],
     [3, 7, 79, 127],
     [3, 7, 79, 131],
     [3, 7, 79, 137],
     [3, 7, 79, 139],
     [3, 7, 79, 149],
     [3, 7, 79, 151],
     [3, 7, 79, 157],
     [3, 7, 79, 163],
     [3, 7, 79, 167],
     [3, 7, 79, 173],
     [3, 7, 79, 179],
     [3, 7, 79, 181],
     [3, 7, 79, 191],
     [3, 7, 79, 193],
     [3, 7, 79, 197],
     [3, 7, 79, 199],
     [3, 7, 79, 211],
     [3, 7, 79, 223],
     [3, 7, 79, 227],
     [3, 7, 79, 229],
     [3, 7, 79, 233],
     [3, 7, 79, 239],
     [3, 7, 83, 89],
     [3, 7, 83, 97],
     [3, 7, 83, 101],
     [3, 7, 83, 103],
     [3, 7, 83, 107],
     [3, 7, 83, 109],
     [3, 7, 83, 113],
     [3, 7, 83, 127],
     [3, 7, 83, 131],
     [3, 7, 83, 137],
     [3, 7, 83, 139],
     [3, 7, 83, 149],
     [3, 7, 83, 151],
     [3, 7, 83, 157],
     [3, 7, 83, 163],
     [3, 7, 83, 167],
     [3, 7, 83, 173],
     [3, 7, 83, 179],
     [3, 7, 83, 181],
     [3, 7, 83, 191],
     [3, 7, 83, 193],
     [3, 7, 83, 197],
     [3, 7, 83, 199],
     [3, 7, 83, 211],
     [3, 7, 83, 223],
     [3, 7, 83, 227],
     [3, 7, 83, 229],
     [3, 7, 89, 97],
     [3, 7, 89, 101],
     [3, 7, 89, 103],
     [3, 7, 89, 107],
     [3, 7, 89, 109],
     [3, 7, 89, 113],
     [3, 7, 89, 127],
     [3, 7, 89, 131],
     [3, 7, 89, 137],
     [3, 7, 89, 139],
     [3, 7, 89, 149],
     [3, 7, 89, 151],
     [3, 7, 89, 157],
     [3, 7, 89, 163],
     [3, 7, 89, 167],
     [3, 7, 89, 173],
     [3, 7, 89, 179],
     [3, 7, 89, 181],
     [3, 7, 89, 191],
     [3, 7, 89, 193],
     [3, 7, 89, 197],
     [3, 7, 89, 199],
     [3, 7, 89, 211],
     [3, 7, 89, 223],
     [3, 7, 97, 101],
     [3, 7, 97, 103],
     [3, 7, 97, 107],
     [3, 7, 97, 109],
     [3, 7, 97, 113],
     [3, 7, 97, 127],
     [3, 7, 97, 131],
     [3, 7, 97, 137],
     [3, 7, 97, 139],
     [3, 7, 97, 149],
     [3, 7, 97, 151],
     [3, 7, 97, 157],
     [3, 7, 97, 163],
     [3, 7, 97, 167],
     [3, 7, 97, 173],
     [3, 7, 97, 179],
     [3, 7, 97, 181],
     [3, 7, 97, 191],
     [3, 7, 97, 193],
     [3, 7, 97, 197],
     [3, 7, 97, 199],
     [3, 7, 97, 211],
     [3, 7, 101, 103],
     [3, 7, 101, 107],
     [3, 7, 101, 109],
     [3, 7, 101, 113],
     [3, 7, 101, 127],
     [3, 7, 101, 131],
     [3, 7, 101, 137],
     [3, 7, 101, 139],
     [3, 7, 101, 149],
     [3, 7, 101, 151],
     [3, 7, 101, 157]]

theorem k5PrefixGroup0008Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 233] = true := by
  decide

theorem k5PrefixGroup0008Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 233] = true := by
  decide

theorem k5PrefixGroup0008Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 239] = true := by
  decide

theorem k5PrefixGroup0008Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 239] = true := by
  decide

theorem k5PrefixGroup0008Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 73, 241] = true := by
  decide

theorem k5PrefixGroup0008Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 73, 241] = true := by
  decide

theorem k5PrefixGroup0008Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 83] = true := by
  decide

theorem k5PrefixGroup0008Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 83] = true := by
  decide

theorem k5PrefixGroup0008Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 89] = true := by
  decide

theorem k5PrefixGroup0008Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 89] = true := by
  decide

theorem k5PrefixGroup0008Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 233] = true := by
  decide

theorem k5PrefixGroup0008Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 233] = true := by
  decide

theorem k5PrefixGroup0008Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 79, 239] = true := by
  decide

theorem k5PrefixGroup0008Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 79, 239] = true := by
  decide

theorem k5PrefixGroup0008Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 89] = true := by
  decide

theorem k5PrefixGroup0008Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 89] = true := by
  decide

theorem k5PrefixGroup0008Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 227] = true := by
  decide

theorem k5PrefixGroup0008Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 83, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 83, 229] = true := by
  decide

theorem k5PrefixGroup0008Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 97] = true := by
  decide

theorem k5PrefixGroup0008Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 89, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 89, 223] = true := by
  decide

theorem k5PrefixGroup0008Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 101] = true := by
  decide

theorem k5PrefixGroup0008Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 163] = true := by
  decide

theorem k5PrefixGroup0008Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 167] = true := by
  decide

theorem k5PrefixGroup0008Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 173] = true := by
  decide

theorem k5PrefixGroup0008Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 179] = true := by
  decide

theorem k5PrefixGroup0008Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 181] = true := by
  decide

theorem k5PrefixGroup0008Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 191] = true := by
  decide

theorem k5PrefixGroup0008Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 193] = true := by
  decide

theorem k5PrefixGroup0008Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 197] = true := by
  decide

theorem k5PrefixGroup0008Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 199] = true := by
  decide

theorem k5PrefixGroup0008Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 97, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 97, 211] = true := by
  decide

theorem k5PrefixGroup0008Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 103] = true := by
  decide

theorem k5PrefixGroup0008Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 107] = true := by
  decide

theorem k5PrefixGroup0008Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 109] = true := by
  decide

theorem k5PrefixGroup0008Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 113] = true := by
  decide

theorem k5PrefixGroup0008Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 127] = true := by
  decide

theorem k5PrefixGroup0008Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 131] = true := by
  decide

theorem k5PrefixGroup0008Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 137] = true := by
  decide

theorem k5PrefixGroup0008Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 139] = true := by
  decide

theorem k5PrefixGroup0008Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 149] = true := by
  decide

theorem k5PrefixGroup0008Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 151] = true := by
  decide

theorem k5PrefixGroup0008Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 101, 157] = true := by
  decide

theorem k5PrefixGroup0008Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 101, 157] = true := by
  decide

theorem k5PrefixGroup0008_passes :
    k5PrefixGroup0008.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0008, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0008Row0000_passes,
    k5PrefixGroup0008Row0001_passes,
    k5PrefixGroup0008Row0002_passes,
    k5PrefixGroup0008Row0003_passes,
    k5PrefixGroup0008Row0004_passes,
    k5PrefixGroup0008Row0005_passes,
    k5PrefixGroup0008Row0006_passes,
    k5PrefixGroup0008Row0007_passes,
    k5PrefixGroup0008Row0008_passes,
    k5PrefixGroup0008Row0009_passes,
    k5PrefixGroup0008Row0010_passes,
    k5PrefixGroup0008Row0011_passes,
    k5PrefixGroup0008Row0012_passes,
    k5PrefixGroup0008Row0013_passes,
    k5PrefixGroup0008Row0014_passes,
    k5PrefixGroup0008Row0015_passes,
    k5PrefixGroup0008Row0016_passes,
    k5PrefixGroup0008Row0017_passes,
    k5PrefixGroup0008Row0018_passes,
    k5PrefixGroup0008Row0019_passes,
    k5PrefixGroup0008Row0020_passes,
    k5PrefixGroup0008Row0021_passes,
    k5PrefixGroup0008Row0022_passes,
    k5PrefixGroup0008Row0023_passes,
    k5PrefixGroup0008Row0024_passes,
    k5PrefixGroup0008Row0025_passes,
    k5PrefixGroup0008Row0026_passes,
    k5PrefixGroup0008Row0027_passes,
    k5PrefixGroup0008Row0028_passes,
    k5PrefixGroup0008Row0029_passes,
    k5PrefixGroup0008Row0030_passes,
    k5PrefixGroup0008Row0031_passes,
    k5PrefixGroup0008Row0032_passes,
    k5PrefixGroup0008Row0033_passes,
    k5PrefixGroup0008Row0034_passes,
    k5PrefixGroup0008Row0035_passes,
    k5PrefixGroup0008Row0036_passes,
    k5PrefixGroup0008Row0037_passes,
    k5PrefixGroup0008Row0038_passes,
    k5PrefixGroup0008Row0039_passes,
    k5PrefixGroup0008Row0040_passes,
    k5PrefixGroup0008Row0041_passes,
    k5PrefixGroup0008Row0042_passes,
    k5PrefixGroup0008Row0043_passes,
    k5PrefixGroup0008Row0044_passes,
    k5PrefixGroup0008Row0045_passes,
    k5PrefixGroup0008Row0046_passes,
    k5PrefixGroup0008Row0047_passes,
    k5PrefixGroup0008Row0048_passes,
    k5PrefixGroup0008Row0049_passes,
    k5PrefixGroup0008Row0050_passes,
    k5PrefixGroup0008Row0051_passes,
    k5PrefixGroup0008Row0052_passes,
    k5PrefixGroup0008Row0053_passes,
    k5PrefixGroup0008Row0054_passes,
    k5PrefixGroup0008Row0055_passes,
    k5PrefixGroup0008Row0056_passes,
    k5PrefixGroup0008Row0057_passes,
    k5PrefixGroup0008Row0058_passes,
    k5PrefixGroup0008Row0059_passes,
    k5PrefixGroup0008Row0060_passes,
    k5PrefixGroup0008Row0061_passes,
    k5PrefixGroup0008Row0062_passes,
    k5PrefixGroup0008Row0063_passes,
    k5PrefixGroup0008Row0064_passes,
    k5PrefixGroup0008Row0065_passes,
    k5PrefixGroup0008Row0066_passes,
    k5PrefixGroup0008Row0067_passes,
    k5PrefixGroup0008Row0068_passes,
    k5PrefixGroup0008Row0069_passes,
    k5PrefixGroup0008Row0070_passes,
    k5PrefixGroup0008Row0071_passes,
    k5PrefixGroup0008Row0072_passes,
    k5PrefixGroup0008Row0073_passes,
    k5PrefixGroup0008Row0074_passes,
    k5PrefixGroup0008Row0075_passes,
    k5PrefixGroup0008Row0076_passes,
    k5PrefixGroup0008Row0077_passes,
    k5PrefixGroup0008Row0078_passes,
    k5PrefixGroup0008Row0079_passes,
    k5PrefixGroup0008Row0080_passes,
    k5PrefixGroup0008Row0081_passes,
    k5PrefixGroup0008Row0082_passes,
    k5PrefixGroup0008Row0083_passes,
    k5PrefixGroup0008Row0084_passes,
    k5PrefixGroup0008Row0085_passes,
    k5PrefixGroup0008Row0086_passes,
    k5PrefixGroup0008Row0087_passes,
    k5PrefixGroup0008Row0088_passes,
    k5PrefixGroup0008Row0089_passes,
    k5PrefixGroup0008Row0090_passes,
    k5PrefixGroup0008Row0091_passes,
    k5PrefixGroup0008Row0092_passes,
    k5PrefixGroup0008Row0093_passes,
    k5PrefixGroup0008Row0094_passes,
    k5PrefixGroup0008Row0095_passes,
    k5PrefixGroup0008Row0096_passes,
    k5PrefixGroup0008Row0097_passes,
    k5PrefixGroup0008Row0098_passes,
    k5PrefixGroup0008Row0099_passes,
    k5PrefixGroup0008Row0100_passes,
    k5PrefixGroup0008Row0101_passes,
    k5PrefixGroup0008Row0102_passes,
    k5PrefixGroup0008Row0103_passes,
    k5PrefixGroup0008Row0104_passes,
    k5PrefixGroup0008Row0105_passes,
    k5PrefixGroup0008Row0106_passes,
    k5PrefixGroup0008Row0107_passes,
    k5PrefixGroup0008Row0108_passes,
    k5PrefixGroup0008Row0109_passes,
    k5PrefixGroup0008Row0110_passes,
    k5PrefixGroup0008Row0111_passes,
    k5PrefixGroup0008Row0112_passes,
    k5PrefixGroup0008Row0113_passes,
    k5PrefixGroup0008Row0114_passes,
    k5PrefixGroup0008Row0115_passes,
    k5PrefixGroup0008Row0116_passes,
    k5PrefixGroup0008Row0117_passes,
    k5PrefixGroup0008Row0118_passes,
    k5PrefixGroup0008Row0119_passes,
    k5PrefixGroup0008Row0120_passes,
    k5PrefixGroup0008Row0121_passes,
    k5PrefixGroup0008Row0122_passes,
    k5PrefixGroup0008Row0123_passes,
    k5PrefixGroup0008Row0124_passes,
    k5PrefixGroup0008Row0125_passes,
    k5PrefixGroup0008Row0126_passes,
    k5PrefixGroup0008Row0127_passes]

theorem k5PrefixGroup0008_mask_upper :
    k5PrefixGroup0008.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0008, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0008Row0000_mask_upper,
    k5PrefixGroup0008Row0001_mask_upper,
    k5PrefixGroup0008Row0002_mask_upper,
    k5PrefixGroup0008Row0003_mask_upper,
    k5PrefixGroup0008Row0004_mask_upper,
    k5PrefixGroup0008Row0005_mask_upper,
    k5PrefixGroup0008Row0006_mask_upper,
    k5PrefixGroup0008Row0007_mask_upper,
    k5PrefixGroup0008Row0008_mask_upper,
    k5PrefixGroup0008Row0009_mask_upper,
    k5PrefixGroup0008Row0010_mask_upper,
    k5PrefixGroup0008Row0011_mask_upper,
    k5PrefixGroup0008Row0012_mask_upper,
    k5PrefixGroup0008Row0013_mask_upper,
    k5PrefixGroup0008Row0014_mask_upper,
    k5PrefixGroup0008Row0015_mask_upper,
    k5PrefixGroup0008Row0016_mask_upper,
    k5PrefixGroup0008Row0017_mask_upper,
    k5PrefixGroup0008Row0018_mask_upper,
    k5PrefixGroup0008Row0019_mask_upper,
    k5PrefixGroup0008Row0020_mask_upper,
    k5PrefixGroup0008Row0021_mask_upper,
    k5PrefixGroup0008Row0022_mask_upper,
    k5PrefixGroup0008Row0023_mask_upper,
    k5PrefixGroup0008Row0024_mask_upper,
    k5PrefixGroup0008Row0025_mask_upper,
    k5PrefixGroup0008Row0026_mask_upper,
    k5PrefixGroup0008Row0027_mask_upper,
    k5PrefixGroup0008Row0028_mask_upper,
    k5PrefixGroup0008Row0029_mask_upper,
    k5PrefixGroup0008Row0030_mask_upper,
    k5PrefixGroup0008Row0031_mask_upper,
    k5PrefixGroup0008Row0032_mask_upper,
    k5PrefixGroup0008Row0033_mask_upper,
    k5PrefixGroup0008Row0034_mask_upper,
    k5PrefixGroup0008Row0035_mask_upper,
    k5PrefixGroup0008Row0036_mask_upper,
    k5PrefixGroup0008Row0037_mask_upper,
    k5PrefixGroup0008Row0038_mask_upper,
    k5PrefixGroup0008Row0039_mask_upper,
    k5PrefixGroup0008Row0040_mask_upper,
    k5PrefixGroup0008Row0041_mask_upper,
    k5PrefixGroup0008Row0042_mask_upper,
    k5PrefixGroup0008Row0043_mask_upper,
    k5PrefixGroup0008Row0044_mask_upper,
    k5PrefixGroup0008Row0045_mask_upper,
    k5PrefixGroup0008Row0046_mask_upper,
    k5PrefixGroup0008Row0047_mask_upper,
    k5PrefixGroup0008Row0048_mask_upper,
    k5PrefixGroup0008Row0049_mask_upper,
    k5PrefixGroup0008Row0050_mask_upper,
    k5PrefixGroup0008Row0051_mask_upper,
    k5PrefixGroup0008Row0052_mask_upper,
    k5PrefixGroup0008Row0053_mask_upper,
    k5PrefixGroup0008Row0054_mask_upper,
    k5PrefixGroup0008Row0055_mask_upper,
    k5PrefixGroup0008Row0056_mask_upper,
    k5PrefixGroup0008Row0057_mask_upper,
    k5PrefixGroup0008Row0058_mask_upper,
    k5PrefixGroup0008Row0059_mask_upper,
    k5PrefixGroup0008Row0060_mask_upper,
    k5PrefixGroup0008Row0061_mask_upper,
    k5PrefixGroup0008Row0062_mask_upper,
    k5PrefixGroup0008Row0063_mask_upper,
    k5PrefixGroup0008Row0064_mask_upper,
    k5PrefixGroup0008Row0065_mask_upper,
    k5PrefixGroup0008Row0066_mask_upper,
    k5PrefixGroup0008Row0067_mask_upper,
    k5PrefixGroup0008Row0068_mask_upper,
    k5PrefixGroup0008Row0069_mask_upper,
    k5PrefixGroup0008Row0070_mask_upper,
    k5PrefixGroup0008Row0071_mask_upper,
    k5PrefixGroup0008Row0072_mask_upper,
    k5PrefixGroup0008Row0073_mask_upper,
    k5PrefixGroup0008Row0074_mask_upper,
    k5PrefixGroup0008Row0075_mask_upper,
    k5PrefixGroup0008Row0076_mask_upper,
    k5PrefixGroup0008Row0077_mask_upper,
    k5PrefixGroup0008Row0078_mask_upper,
    k5PrefixGroup0008Row0079_mask_upper,
    k5PrefixGroup0008Row0080_mask_upper,
    k5PrefixGroup0008Row0081_mask_upper,
    k5PrefixGroup0008Row0082_mask_upper,
    k5PrefixGroup0008Row0083_mask_upper,
    k5PrefixGroup0008Row0084_mask_upper,
    k5PrefixGroup0008Row0085_mask_upper,
    k5PrefixGroup0008Row0086_mask_upper,
    k5PrefixGroup0008Row0087_mask_upper,
    k5PrefixGroup0008Row0088_mask_upper,
    k5PrefixGroup0008Row0089_mask_upper,
    k5PrefixGroup0008Row0090_mask_upper,
    k5PrefixGroup0008Row0091_mask_upper,
    k5PrefixGroup0008Row0092_mask_upper,
    k5PrefixGroup0008Row0093_mask_upper,
    k5PrefixGroup0008Row0094_mask_upper,
    k5PrefixGroup0008Row0095_mask_upper,
    k5PrefixGroup0008Row0096_mask_upper,
    k5PrefixGroup0008Row0097_mask_upper,
    k5PrefixGroup0008Row0098_mask_upper,
    k5PrefixGroup0008Row0099_mask_upper,
    k5PrefixGroup0008Row0100_mask_upper,
    k5PrefixGroup0008Row0101_mask_upper,
    k5PrefixGroup0008Row0102_mask_upper,
    k5PrefixGroup0008Row0103_mask_upper,
    k5PrefixGroup0008Row0104_mask_upper,
    k5PrefixGroup0008Row0105_mask_upper,
    k5PrefixGroup0008Row0106_mask_upper,
    k5PrefixGroup0008Row0107_mask_upper,
    k5PrefixGroup0008Row0108_mask_upper,
    k5PrefixGroup0008Row0109_mask_upper,
    k5PrefixGroup0008Row0110_mask_upper,
    k5PrefixGroup0008Row0111_mask_upper,
    k5PrefixGroup0008Row0112_mask_upper,
    k5PrefixGroup0008Row0113_mask_upper,
    k5PrefixGroup0008Row0114_mask_upper,
    k5PrefixGroup0008Row0115_mask_upper,
    k5PrefixGroup0008Row0116_mask_upper,
    k5PrefixGroup0008Row0117_mask_upper,
    k5PrefixGroup0008Row0118_mask_upper,
    k5PrefixGroup0008Row0119_mask_upper,
    k5PrefixGroup0008Row0120_mask_upper,
    k5PrefixGroup0008Row0121_mask_upper,
    k5PrefixGroup0008Row0122_mask_upper,
    k5PrefixGroup0008Row0123_mask_upper,
    k5PrefixGroup0008Row0124_mask_upper,
    k5PrefixGroup0008Row0125_mask_upper,
    k5PrefixGroup0008Row0126_mask_upper,
    k5PrefixGroup0008Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
