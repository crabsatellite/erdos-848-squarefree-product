import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0018 : List (List ℕ) :=
  [[3, 13, 23, 227],
     [3, 13, 23, 229],
     [3, 13, 23, 233],
     [3, 13, 23, 239],
     [3, 13, 23, 241],
     [3, 13, 23, 251],
     [3, 13, 23, 257],
     [3, 13, 23, 263],
     [3, 13, 23, 269],
     [3, 13, 23, 271],
     [3, 13, 23, 277],
     [3, 13, 23, 281],
     [3, 13, 23, 283],
     [3, 13, 23, 293],
     [3, 13, 23, 307],
     [3, 13, 23, 311],
     [3, 13, 23, 313],
     [3, 13, 23, 317],
     [3, 13, 29, 31],
     [3, 13, 29, 37],
     [3, 13, 29, 41],
     [3, 13, 29, 43],
     [3, 13, 29, 47],
     [3, 13, 29, 53],
     [3, 13, 29, 59],
     [3, 13, 29, 61],
     [3, 13, 29, 67],
     [3, 13, 29, 71],
     [3, 13, 29, 73],
     [3, 13, 29, 79],
     [3, 13, 29, 83],
     [3, 13, 29, 89],
     [3, 13, 29, 97],
     [3, 13, 29, 101],
     [3, 13, 29, 103],
     [3, 13, 29, 107],
     [3, 13, 29, 109],
     [3, 13, 29, 113],
     [3, 13, 29, 127],
     [3, 13, 29, 131],
     [3, 13, 29, 137],
     [3, 13, 29, 139],
     [3, 13, 29, 149],
     [3, 13, 29, 151],
     [3, 13, 29, 157],
     [3, 13, 29, 163],
     [3, 13, 29, 167],
     [3, 13, 29, 173],
     [3, 13, 29, 179],
     [3, 13, 29, 181],
     [3, 13, 29, 191],
     [3, 13, 29, 193],
     [3, 13, 29, 197],
     [3, 13, 29, 199],
     [3, 13, 29, 211],
     [3, 13, 29, 223],
     [3, 13, 29, 227],
     [3, 13, 29, 229],
     [3, 13, 29, 233],
     [3, 13, 29, 239],
     [3, 13, 29, 241],
     [3, 13, 29, 251],
     [3, 13, 29, 257],
     [3, 13, 29, 263],
     [3, 13, 29, 269],
     [3, 13, 29, 271],
     [3, 13, 29, 277],
     [3, 13, 29, 281],
     [3, 13, 29, 283],
     [3, 13, 31, 37],
     [3, 13, 31, 41],
     [3, 13, 31, 43],
     [3, 13, 31, 47],
     [3, 13, 31, 53],
     [3, 13, 31, 59],
     [3, 13, 31, 61],
     [3, 13, 31, 67],
     [3, 13, 31, 71],
     [3, 13, 31, 73],
     [3, 13, 31, 79],
     [3, 13, 31, 83],
     [3, 13, 31, 89],
     [3, 13, 31, 97],
     [3, 13, 31, 101],
     [3, 13, 31, 103],
     [3, 13, 31, 107],
     [3, 13, 31, 109],
     [3, 13, 31, 113],
     [3, 13, 31, 127],
     [3, 13, 31, 131],
     [3, 13, 31, 137],
     [3, 13, 31, 139],
     [3, 13, 31, 149],
     [3, 13, 31, 151],
     [3, 13, 31, 157],
     [3, 13, 31, 163],
     [3, 13, 31, 167],
     [3, 13, 31, 173],
     [3, 13, 31, 179],
     [3, 13, 31, 181],
     [3, 13, 31, 191],
     [3, 13, 31, 193],
     [3, 13, 31, 197],
     [3, 13, 31, 199],
     [3, 13, 31, 211],
     [3, 13, 31, 223],
     [3, 13, 31, 227],
     [3, 13, 31, 229],
     [3, 13, 31, 233],
     [3, 13, 31, 239],
     [3, 13, 31, 241],
     [3, 13, 31, 251],
     [3, 13, 31, 257],
     [3, 13, 31, 263],
     [3, 13, 31, 269],
     [3, 13, 31, 271],
     [3, 13, 31, 277],
     [3, 13, 31, 281],
     [3, 13, 37, 41],
     [3, 13, 37, 43],
     [3, 13, 37, 47],
     [3, 13, 37, 53],
     [3, 13, 37, 59],
     [3, 13, 37, 61],
     [3, 13, 37, 67],
     [3, 13, 37, 71],
     [3, 13, 37, 73],
     [3, 13, 37, 79]]

theorem k5PrefixGroup0018Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 283] = true := by
  decide

theorem k5PrefixGroup0018Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 283] = true := by
  decide

theorem k5PrefixGroup0018Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 293] = true := by
  decide

theorem k5PrefixGroup0018Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 293] = true := by
  decide

theorem k5PrefixGroup0018Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 307] = true := by
  decide

theorem k5PrefixGroup0018Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 307] = true := by
  decide

theorem k5PrefixGroup0018Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 311] = true := by
  decide

theorem k5PrefixGroup0018Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 311] = true := by
  decide

theorem k5PrefixGroup0018Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 313] = true := by
  decide

theorem k5PrefixGroup0018Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 313] = true := by
  decide

theorem k5PrefixGroup0018Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 23, 317] = true := by
  decide

theorem k5PrefixGroup0018Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 23, 317] = true := by
  decide

theorem k5PrefixGroup0018Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 31] = true := by
  decide

theorem k5PrefixGroup0018Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 31] = true := by
  decide

theorem k5PrefixGroup0018Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 37] = true := by
  decide

theorem k5PrefixGroup0018Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 37] = true := by
  decide

theorem k5PrefixGroup0018Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 79] = true := by
  decide

theorem k5PrefixGroup0018Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 79] = true := by
  decide

theorem k5PrefixGroup0018Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 83] = true := by
  decide

theorem k5PrefixGroup0018Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 83] = true := by
  decide

theorem k5PrefixGroup0018Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 89] = true := by
  decide

theorem k5PrefixGroup0018Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 89] = true := by
  decide

theorem k5PrefixGroup0018Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 97] = true := by
  decide

theorem k5PrefixGroup0018Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 97] = true := by
  decide

theorem k5PrefixGroup0018Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 101] = true := by
  decide

theorem k5PrefixGroup0018Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 101] = true := by
  decide

theorem k5PrefixGroup0018Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 103] = true := by
  decide

theorem k5PrefixGroup0018Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 103] = true := by
  decide

theorem k5PrefixGroup0018Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 107] = true := by
  decide

theorem k5PrefixGroup0018Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 107] = true := by
  decide

theorem k5PrefixGroup0018Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 109] = true := by
  decide

theorem k5PrefixGroup0018Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 109] = true := by
  decide

theorem k5PrefixGroup0018Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 113] = true := by
  decide

theorem k5PrefixGroup0018Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 113] = true := by
  decide

theorem k5PrefixGroup0018Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 127] = true := by
  decide

theorem k5PrefixGroup0018Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 127] = true := by
  decide

theorem k5PrefixGroup0018Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 131] = true := by
  decide

theorem k5PrefixGroup0018Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 131] = true := by
  decide

theorem k5PrefixGroup0018Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 137] = true := by
  decide

theorem k5PrefixGroup0018Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 137] = true := by
  decide

theorem k5PrefixGroup0018Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 139] = true := by
  decide

theorem k5PrefixGroup0018Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 139] = true := by
  decide

theorem k5PrefixGroup0018Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 149] = true := by
  decide

theorem k5PrefixGroup0018Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 149] = true := by
  decide

theorem k5PrefixGroup0018Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 151] = true := by
  decide

theorem k5PrefixGroup0018Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 151] = true := by
  decide

theorem k5PrefixGroup0018Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 157] = true := by
  decide

theorem k5PrefixGroup0018Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 157] = true := by
  decide

theorem k5PrefixGroup0018Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 163] = true := by
  decide

theorem k5PrefixGroup0018Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 163] = true := by
  decide

theorem k5PrefixGroup0018Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 167] = true := by
  decide

theorem k5PrefixGroup0018Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 167] = true := by
  decide

theorem k5PrefixGroup0018Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 173] = true := by
  decide

theorem k5PrefixGroup0018Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 173] = true := by
  decide

theorem k5PrefixGroup0018Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 179] = true := by
  decide

theorem k5PrefixGroup0018Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 179] = true := by
  decide

theorem k5PrefixGroup0018Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 181] = true := by
  decide

theorem k5PrefixGroup0018Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 181] = true := by
  decide

theorem k5PrefixGroup0018Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 191] = true := by
  decide

theorem k5PrefixGroup0018Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 191] = true := by
  decide

theorem k5PrefixGroup0018Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 193] = true := by
  decide

theorem k5PrefixGroup0018Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 193] = true := by
  decide

theorem k5PrefixGroup0018Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 197] = true := by
  decide

theorem k5PrefixGroup0018Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 197] = true := by
  decide

theorem k5PrefixGroup0018Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 199] = true := by
  decide

theorem k5PrefixGroup0018Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 199] = true := by
  decide

theorem k5PrefixGroup0018Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 211] = true := by
  decide

theorem k5PrefixGroup0018Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 211] = true := by
  decide

theorem k5PrefixGroup0018Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 223] = true := by
  decide

theorem k5PrefixGroup0018Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 223] = true := by
  decide

theorem k5PrefixGroup0018Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 29, 283] = true := by
  decide

theorem k5PrefixGroup0018Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 29, 283] = true := by
  decide

theorem k5PrefixGroup0018Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 37] = true := by
  decide

theorem k5PrefixGroup0018Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 37] = true := by
  decide

theorem k5PrefixGroup0018Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 79] = true := by
  decide

theorem k5PrefixGroup0018Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 79] = true := by
  decide

theorem k5PrefixGroup0018Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 83] = true := by
  decide

theorem k5PrefixGroup0018Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 83] = true := by
  decide

theorem k5PrefixGroup0018Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 89] = true := by
  decide

theorem k5PrefixGroup0018Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 89] = true := by
  decide

theorem k5PrefixGroup0018Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 97] = true := by
  decide

theorem k5PrefixGroup0018Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 97] = true := by
  decide

theorem k5PrefixGroup0018Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 101] = true := by
  decide

theorem k5PrefixGroup0018Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 101] = true := by
  decide

theorem k5PrefixGroup0018Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 103] = true := by
  decide

theorem k5PrefixGroup0018Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 103] = true := by
  decide

theorem k5PrefixGroup0018Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 107] = true := by
  decide

theorem k5PrefixGroup0018Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 107] = true := by
  decide

theorem k5PrefixGroup0018Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 109] = true := by
  decide

theorem k5PrefixGroup0018Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 109] = true := by
  decide

theorem k5PrefixGroup0018Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 113] = true := by
  decide

theorem k5PrefixGroup0018Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 113] = true := by
  decide

theorem k5PrefixGroup0018Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 127] = true := by
  decide

theorem k5PrefixGroup0018Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 127] = true := by
  decide

theorem k5PrefixGroup0018Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 131] = true := by
  decide

theorem k5PrefixGroup0018Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 131] = true := by
  decide

theorem k5PrefixGroup0018Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 137] = true := by
  decide

theorem k5PrefixGroup0018Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 137] = true := by
  decide

theorem k5PrefixGroup0018Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 139] = true := by
  decide

theorem k5PrefixGroup0018Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 139] = true := by
  decide

theorem k5PrefixGroup0018Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 149] = true := by
  decide

theorem k5PrefixGroup0018Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 149] = true := by
  decide

theorem k5PrefixGroup0018Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 151] = true := by
  decide

theorem k5PrefixGroup0018Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 151] = true := by
  decide

theorem k5PrefixGroup0018Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 157] = true := by
  decide

theorem k5PrefixGroup0018Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 157] = true := by
  decide

theorem k5PrefixGroup0018Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 163] = true := by
  decide

theorem k5PrefixGroup0018Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 163] = true := by
  decide

theorem k5PrefixGroup0018Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 167] = true := by
  decide

theorem k5PrefixGroup0018Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 167] = true := by
  decide

theorem k5PrefixGroup0018Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 173] = true := by
  decide

theorem k5PrefixGroup0018Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 173] = true := by
  decide

theorem k5PrefixGroup0018Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 179] = true := by
  decide

theorem k5PrefixGroup0018Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 179] = true := by
  decide

theorem k5PrefixGroup0018Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 181] = true := by
  decide

theorem k5PrefixGroup0018Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 181] = true := by
  decide

theorem k5PrefixGroup0018Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 191] = true := by
  decide

theorem k5PrefixGroup0018Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 191] = true := by
  decide

theorem k5PrefixGroup0018Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 193] = true := by
  decide

theorem k5PrefixGroup0018Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 193] = true := by
  decide

theorem k5PrefixGroup0018Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 197] = true := by
  decide

theorem k5PrefixGroup0018Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 197] = true := by
  decide

theorem k5PrefixGroup0018Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 199] = true := by
  decide

theorem k5PrefixGroup0018Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 199] = true := by
  decide

theorem k5PrefixGroup0018Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 211] = true := by
  decide

theorem k5PrefixGroup0018Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 211] = true := by
  decide

theorem k5PrefixGroup0018Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 223] = true := by
  decide

theorem k5PrefixGroup0018Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 223] = true := by
  decide

theorem k5PrefixGroup0018Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 227] = true := by
  decide

theorem k5PrefixGroup0018Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 229] = true := by
  decide

theorem k5PrefixGroup0018Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 233] = true := by
  decide

theorem k5PrefixGroup0018Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 239] = true := by
  decide

theorem k5PrefixGroup0018Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 241] = true := by
  decide

theorem k5PrefixGroup0018Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 251] = true := by
  decide

theorem k5PrefixGroup0018Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 257] = true := by
  decide

theorem k5PrefixGroup0018Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 263] = true := by
  decide

theorem k5PrefixGroup0018Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 269] = true := by
  decide

theorem k5PrefixGroup0018Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 271] = true := by
  decide

theorem k5PrefixGroup0018Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 277] = true := by
  decide

theorem k5PrefixGroup0018Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 31, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 31, 281] = true := by
  decide

theorem k5PrefixGroup0018Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 41] = true := by
  decide

theorem k5PrefixGroup0018Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 43] = true := by
  decide

theorem k5PrefixGroup0018Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 47] = true := by
  decide

theorem k5PrefixGroup0018Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 53] = true := by
  decide

theorem k5PrefixGroup0018Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 59] = true := by
  decide

theorem k5PrefixGroup0018Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 61] = true := by
  decide

theorem k5PrefixGroup0018Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 67] = true := by
  decide

theorem k5PrefixGroup0018Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 71] = true := by
  decide

theorem k5PrefixGroup0018Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 73] = true := by
  decide

theorem k5PrefixGroup0018Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 13, 37, 79] = true := by
  decide

theorem k5PrefixGroup0018Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 13, 37, 79] = true := by
  decide

theorem k5PrefixGroup0018_passes :
    k5PrefixGroup0018.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0018, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0018Row0000_passes,
    k5PrefixGroup0018Row0001_passes,
    k5PrefixGroup0018Row0002_passes,
    k5PrefixGroup0018Row0003_passes,
    k5PrefixGroup0018Row0004_passes,
    k5PrefixGroup0018Row0005_passes,
    k5PrefixGroup0018Row0006_passes,
    k5PrefixGroup0018Row0007_passes,
    k5PrefixGroup0018Row0008_passes,
    k5PrefixGroup0018Row0009_passes,
    k5PrefixGroup0018Row0010_passes,
    k5PrefixGroup0018Row0011_passes,
    k5PrefixGroup0018Row0012_passes,
    k5PrefixGroup0018Row0013_passes,
    k5PrefixGroup0018Row0014_passes,
    k5PrefixGroup0018Row0015_passes,
    k5PrefixGroup0018Row0016_passes,
    k5PrefixGroup0018Row0017_passes,
    k5PrefixGroup0018Row0018_passes,
    k5PrefixGroup0018Row0019_passes,
    k5PrefixGroup0018Row0020_passes,
    k5PrefixGroup0018Row0021_passes,
    k5PrefixGroup0018Row0022_passes,
    k5PrefixGroup0018Row0023_passes,
    k5PrefixGroup0018Row0024_passes,
    k5PrefixGroup0018Row0025_passes,
    k5PrefixGroup0018Row0026_passes,
    k5PrefixGroup0018Row0027_passes,
    k5PrefixGroup0018Row0028_passes,
    k5PrefixGroup0018Row0029_passes,
    k5PrefixGroup0018Row0030_passes,
    k5PrefixGroup0018Row0031_passes,
    k5PrefixGroup0018Row0032_passes,
    k5PrefixGroup0018Row0033_passes,
    k5PrefixGroup0018Row0034_passes,
    k5PrefixGroup0018Row0035_passes,
    k5PrefixGroup0018Row0036_passes,
    k5PrefixGroup0018Row0037_passes,
    k5PrefixGroup0018Row0038_passes,
    k5PrefixGroup0018Row0039_passes,
    k5PrefixGroup0018Row0040_passes,
    k5PrefixGroup0018Row0041_passes,
    k5PrefixGroup0018Row0042_passes,
    k5PrefixGroup0018Row0043_passes,
    k5PrefixGroup0018Row0044_passes,
    k5PrefixGroup0018Row0045_passes,
    k5PrefixGroup0018Row0046_passes,
    k5PrefixGroup0018Row0047_passes,
    k5PrefixGroup0018Row0048_passes,
    k5PrefixGroup0018Row0049_passes,
    k5PrefixGroup0018Row0050_passes,
    k5PrefixGroup0018Row0051_passes,
    k5PrefixGroup0018Row0052_passes,
    k5PrefixGroup0018Row0053_passes,
    k5PrefixGroup0018Row0054_passes,
    k5PrefixGroup0018Row0055_passes,
    k5PrefixGroup0018Row0056_passes,
    k5PrefixGroup0018Row0057_passes,
    k5PrefixGroup0018Row0058_passes,
    k5PrefixGroup0018Row0059_passes,
    k5PrefixGroup0018Row0060_passes,
    k5PrefixGroup0018Row0061_passes,
    k5PrefixGroup0018Row0062_passes,
    k5PrefixGroup0018Row0063_passes,
    k5PrefixGroup0018Row0064_passes,
    k5PrefixGroup0018Row0065_passes,
    k5PrefixGroup0018Row0066_passes,
    k5PrefixGroup0018Row0067_passes,
    k5PrefixGroup0018Row0068_passes,
    k5PrefixGroup0018Row0069_passes,
    k5PrefixGroup0018Row0070_passes,
    k5PrefixGroup0018Row0071_passes,
    k5PrefixGroup0018Row0072_passes,
    k5PrefixGroup0018Row0073_passes,
    k5PrefixGroup0018Row0074_passes,
    k5PrefixGroup0018Row0075_passes,
    k5PrefixGroup0018Row0076_passes,
    k5PrefixGroup0018Row0077_passes,
    k5PrefixGroup0018Row0078_passes,
    k5PrefixGroup0018Row0079_passes,
    k5PrefixGroup0018Row0080_passes,
    k5PrefixGroup0018Row0081_passes,
    k5PrefixGroup0018Row0082_passes,
    k5PrefixGroup0018Row0083_passes,
    k5PrefixGroup0018Row0084_passes,
    k5PrefixGroup0018Row0085_passes,
    k5PrefixGroup0018Row0086_passes,
    k5PrefixGroup0018Row0087_passes,
    k5PrefixGroup0018Row0088_passes,
    k5PrefixGroup0018Row0089_passes,
    k5PrefixGroup0018Row0090_passes,
    k5PrefixGroup0018Row0091_passes,
    k5PrefixGroup0018Row0092_passes,
    k5PrefixGroup0018Row0093_passes,
    k5PrefixGroup0018Row0094_passes,
    k5PrefixGroup0018Row0095_passes,
    k5PrefixGroup0018Row0096_passes,
    k5PrefixGroup0018Row0097_passes,
    k5PrefixGroup0018Row0098_passes,
    k5PrefixGroup0018Row0099_passes,
    k5PrefixGroup0018Row0100_passes,
    k5PrefixGroup0018Row0101_passes,
    k5PrefixGroup0018Row0102_passes,
    k5PrefixGroup0018Row0103_passes,
    k5PrefixGroup0018Row0104_passes,
    k5PrefixGroup0018Row0105_passes,
    k5PrefixGroup0018Row0106_passes,
    k5PrefixGroup0018Row0107_passes,
    k5PrefixGroup0018Row0108_passes,
    k5PrefixGroup0018Row0109_passes,
    k5PrefixGroup0018Row0110_passes,
    k5PrefixGroup0018Row0111_passes,
    k5PrefixGroup0018Row0112_passes,
    k5PrefixGroup0018Row0113_passes,
    k5PrefixGroup0018Row0114_passes,
    k5PrefixGroup0018Row0115_passes,
    k5PrefixGroup0018Row0116_passes,
    k5PrefixGroup0018Row0117_passes,
    k5PrefixGroup0018Row0118_passes,
    k5PrefixGroup0018Row0119_passes,
    k5PrefixGroup0018Row0120_passes,
    k5PrefixGroup0018Row0121_passes,
    k5PrefixGroup0018Row0122_passes,
    k5PrefixGroup0018Row0123_passes,
    k5PrefixGroup0018Row0124_passes,
    k5PrefixGroup0018Row0125_passes,
    k5PrefixGroup0018Row0126_passes,
    k5PrefixGroup0018Row0127_passes]

theorem k5PrefixGroup0018_mask_upper :
    k5PrefixGroup0018.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0018, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0018Row0000_mask_upper,
    k5PrefixGroup0018Row0001_mask_upper,
    k5PrefixGroup0018Row0002_mask_upper,
    k5PrefixGroup0018Row0003_mask_upper,
    k5PrefixGroup0018Row0004_mask_upper,
    k5PrefixGroup0018Row0005_mask_upper,
    k5PrefixGroup0018Row0006_mask_upper,
    k5PrefixGroup0018Row0007_mask_upper,
    k5PrefixGroup0018Row0008_mask_upper,
    k5PrefixGroup0018Row0009_mask_upper,
    k5PrefixGroup0018Row0010_mask_upper,
    k5PrefixGroup0018Row0011_mask_upper,
    k5PrefixGroup0018Row0012_mask_upper,
    k5PrefixGroup0018Row0013_mask_upper,
    k5PrefixGroup0018Row0014_mask_upper,
    k5PrefixGroup0018Row0015_mask_upper,
    k5PrefixGroup0018Row0016_mask_upper,
    k5PrefixGroup0018Row0017_mask_upper,
    k5PrefixGroup0018Row0018_mask_upper,
    k5PrefixGroup0018Row0019_mask_upper,
    k5PrefixGroup0018Row0020_mask_upper,
    k5PrefixGroup0018Row0021_mask_upper,
    k5PrefixGroup0018Row0022_mask_upper,
    k5PrefixGroup0018Row0023_mask_upper,
    k5PrefixGroup0018Row0024_mask_upper,
    k5PrefixGroup0018Row0025_mask_upper,
    k5PrefixGroup0018Row0026_mask_upper,
    k5PrefixGroup0018Row0027_mask_upper,
    k5PrefixGroup0018Row0028_mask_upper,
    k5PrefixGroup0018Row0029_mask_upper,
    k5PrefixGroup0018Row0030_mask_upper,
    k5PrefixGroup0018Row0031_mask_upper,
    k5PrefixGroup0018Row0032_mask_upper,
    k5PrefixGroup0018Row0033_mask_upper,
    k5PrefixGroup0018Row0034_mask_upper,
    k5PrefixGroup0018Row0035_mask_upper,
    k5PrefixGroup0018Row0036_mask_upper,
    k5PrefixGroup0018Row0037_mask_upper,
    k5PrefixGroup0018Row0038_mask_upper,
    k5PrefixGroup0018Row0039_mask_upper,
    k5PrefixGroup0018Row0040_mask_upper,
    k5PrefixGroup0018Row0041_mask_upper,
    k5PrefixGroup0018Row0042_mask_upper,
    k5PrefixGroup0018Row0043_mask_upper,
    k5PrefixGroup0018Row0044_mask_upper,
    k5PrefixGroup0018Row0045_mask_upper,
    k5PrefixGroup0018Row0046_mask_upper,
    k5PrefixGroup0018Row0047_mask_upper,
    k5PrefixGroup0018Row0048_mask_upper,
    k5PrefixGroup0018Row0049_mask_upper,
    k5PrefixGroup0018Row0050_mask_upper,
    k5PrefixGroup0018Row0051_mask_upper,
    k5PrefixGroup0018Row0052_mask_upper,
    k5PrefixGroup0018Row0053_mask_upper,
    k5PrefixGroup0018Row0054_mask_upper,
    k5PrefixGroup0018Row0055_mask_upper,
    k5PrefixGroup0018Row0056_mask_upper,
    k5PrefixGroup0018Row0057_mask_upper,
    k5PrefixGroup0018Row0058_mask_upper,
    k5PrefixGroup0018Row0059_mask_upper,
    k5PrefixGroup0018Row0060_mask_upper,
    k5PrefixGroup0018Row0061_mask_upper,
    k5PrefixGroup0018Row0062_mask_upper,
    k5PrefixGroup0018Row0063_mask_upper,
    k5PrefixGroup0018Row0064_mask_upper,
    k5PrefixGroup0018Row0065_mask_upper,
    k5PrefixGroup0018Row0066_mask_upper,
    k5PrefixGroup0018Row0067_mask_upper,
    k5PrefixGroup0018Row0068_mask_upper,
    k5PrefixGroup0018Row0069_mask_upper,
    k5PrefixGroup0018Row0070_mask_upper,
    k5PrefixGroup0018Row0071_mask_upper,
    k5PrefixGroup0018Row0072_mask_upper,
    k5PrefixGroup0018Row0073_mask_upper,
    k5PrefixGroup0018Row0074_mask_upper,
    k5PrefixGroup0018Row0075_mask_upper,
    k5PrefixGroup0018Row0076_mask_upper,
    k5PrefixGroup0018Row0077_mask_upper,
    k5PrefixGroup0018Row0078_mask_upper,
    k5PrefixGroup0018Row0079_mask_upper,
    k5PrefixGroup0018Row0080_mask_upper,
    k5PrefixGroup0018Row0081_mask_upper,
    k5PrefixGroup0018Row0082_mask_upper,
    k5PrefixGroup0018Row0083_mask_upper,
    k5PrefixGroup0018Row0084_mask_upper,
    k5PrefixGroup0018Row0085_mask_upper,
    k5PrefixGroup0018Row0086_mask_upper,
    k5PrefixGroup0018Row0087_mask_upper,
    k5PrefixGroup0018Row0088_mask_upper,
    k5PrefixGroup0018Row0089_mask_upper,
    k5PrefixGroup0018Row0090_mask_upper,
    k5PrefixGroup0018Row0091_mask_upper,
    k5PrefixGroup0018Row0092_mask_upper,
    k5PrefixGroup0018Row0093_mask_upper,
    k5PrefixGroup0018Row0094_mask_upper,
    k5PrefixGroup0018Row0095_mask_upper,
    k5PrefixGroup0018Row0096_mask_upper,
    k5PrefixGroup0018Row0097_mask_upper,
    k5PrefixGroup0018Row0098_mask_upper,
    k5PrefixGroup0018Row0099_mask_upper,
    k5PrefixGroup0018Row0100_mask_upper,
    k5PrefixGroup0018Row0101_mask_upper,
    k5PrefixGroup0018Row0102_mask_upper,
    k5PrefixGroup0018Row0103_mask_upper,
    k5PrefixGroup0018Row0104_mask_upper,
    k5PrefixGroup0018Row0105_mask_upper,
    k5PrefixGroup0018Row0106_mask_upper,
    k5PrefixGroup0018Row0107_mask_upper,
    k5PrefixGroup0018Row0108_mask_upper,
    k5PrefixGroup0018Row0109_mask_upper,
    k5PrefixGroup0018Row0110_mask_upper,
    k5PrefixGroup0018Row0111_mask_upper,
    k5PrefixGroup0018Row0112_mask_upper,
    k5PrefixGroup0018Row0113_mask_upper,
    k5PrefixGroup0018Row0114_mask_upper,
    k5PrefixGroup0018Row0115_mask_upper,
    k5PrefixGroup0018Row0116_mask_upper,
    k5PrefixGroup0018Row0117_mask_upper,
    k5PrefixGroup0018Row0118_mask_upper,
    k5PrefixGroup0018Row0119_mask_upper,
    k5PrefixGroup0018Row0120_mask_upper,
    k5PrefixGroup0018Row0121_mask_upper,
    k5PrefixGroup0018Row0122_mask_upper,
    k5PrefixGroup0018Row0123_mask_upper,
    k5PrefixGroup0018Row0124_mask_upper,
    k5PrefixGroup0018Row0125_mask_upper,
    k5PrefixGroup0018Row0126_mask_upper,
    k5PrefixGroup0018Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
