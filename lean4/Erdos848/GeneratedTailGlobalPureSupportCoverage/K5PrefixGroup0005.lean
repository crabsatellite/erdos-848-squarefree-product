import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0005 : List (List ℕ) :=
  [[3, 7, 37, 269],
     [3, 7, 37, 271],
     [3, 7, 37, 277],
     [3, 7, 37, 281],
     [3, 7, 37, 283],
     [3, 7, 37, 293],
     [3, 7, 37, 307],
     [3, 7, 37, 311],
     [3, 7, 37, 313],
     [3, 7, 37, 317],
     [3, 7, 37, 331],
     [3, 7, 37, 337],
     [3, 7, 37, 347],
     [3, 7, 37, 349],
     [3, 7, 41, 43],
     [3, 7, 41, 47],
     [3, 7, 41, 53],
     [3, 7, 41, 59],
     [3, 7, 41, 61],
     [3, 7, 41, 67],
     [3, 7, 41, 71],
     [3, 7, 41, 73],
     [3, 7, 41, 79],
     [3, 7, 41, 83],
     [3, 7, 41, 89],
     [3, 7, 41, 97],
     [3, 7, 41, 101],
     [3, 7, 41, 103],
     [3, 7, 41, 107],
     [3, 7, 41, 109],
     [3, 7, 41, 113],
     [3, 7, 41, 127],
     [3, 7, 41, 131],
     [3, 7, 41, 137],
     [3, 7, 41, 139],
     [3, 7, 41, 149],
     [3, 7, 41, 151],
     [3, 7, 41, 157],
     [3, 7, 41, 163],
     [3, 7, 41, 167],
     [3, 7, 41, 173],
     [3, 7, 41, 179],
     [3, 7, 41, 181],
     [3, 7, 41, 191],
     [3, 7, 41, 193],
     [3, 7, 41, 197],
     [3, 7, 41, 199],
     [3, 7, 41, 211],
     [3, 7, 41, 223],
     [3, 7, 41, 227],
     [3, 7, 41, 229],
     [3, 7, 41, 233],
     [3, 7, 41, 239],
     [3, 7, 41, 241],
     [3, 7, 41, 251],
     [3, 7, 41, 257],
     [3, 7, 41, 263],
     [3, 7, 41, 269],
     [3, 7, 41, 271],
     [3, 7, 41, 277],
     [3, 7, 41, 281],
     [3, 7, 41, 283],
     [3, 7, 41, 293],
     [3, 7, 41, 307],
     [3, 7, 41, 311],
     [3, 7, 41, 313],
     [3, 7, 41, 317],
     [3, 7, 41, 331],
     [3, 7, 43, 47],
     [3, 7, 43, 53],
     [3, 7, 43, 59],
     [3, 7, 43, 61],
     [3, 7, 43, 67],
     [3, 7, 43, 71],
     [3, 7, 43, 73],
     [3, 7, 43, 79],
     [3, 7, 43, 83],
     [3, 7, 43, 89],
     [3, 7, 43, 97],
     [3, 7, 43, 101],
     [3, 7, 43, 103],
     [3, 7, 43, 107],
     [3, 7, 43, 109],
     [3, 7, 43, 113],
     [3, 7, 43, 127],
     [3, 7, 43, 131],
     [3, 7, 43, 137],
     [3, 7, 43, 139],
     [3, 7, 43, 149],
     [3, 7, 43, 151],
     [3, 7, 43, 157],
     [3, 7, 43, 163],
     [3, 7, 43, 167],
     [3, 7, 43, 173],
     [3, 7, 43, 179],
     [3, 7, 43, 181],
     [3, 7, 43, 191],
     [3, 7, 43, 193],
     [3, 7, 43, 197],
     [3, 7, 43, 199],
     [3, 7, 43, 211],
     [3, 7, 43, 223],
     [3, 7, 43, 227],
     [3, 7, 43, 229],
     [3, 7, 43, 233],
     [3, 7, 43, 239],
     [3, 7, 43, 241],
     [3, 7, 43, 251],
     [3, 7, 43, 257],
     [3, 7, 43, 263],
     [3, 7, 43, 269],
     [3, 7, 43, 271],
     [3, 7, 43, 277],
     [3, 7, 43, 281],
     [3, 7, 43, 283],
     [3, 7, 43, 293],
     [3, 7, 43, 307],
     [3, 7, 43, 311],
     [3, 7, 43, 313],
     [3, 7, 43, 317],
     [3, 7, 47, 53],
     [3, 7, 47, 59],
     [3, 7, 47, 61],
     [3, 7, 47, 67],
     [3, 7, 47, 71],
     [3, 7, 47, 73],
     [3, 7, 47, 79],
     [3, 7, 47, 83]]

theorem k5PrefixGroup0005Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 331] = true := by
  decide

theorem k5PrefixGroup0005Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 331] = true := by
  decide

theorem k5PrefixGroup0005Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 337] = true := by
  decide

theorem k5PrefixGroup0005Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 337] = true := by
  decide

theorem k5PrefixGroup0005Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 347] = true := by
  decide

theorem k5PrefixGroup0005Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 347] = true := by
  decide

theorem k5PrefixGroup0005Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 37, 349] = true := by
  decide

theorem k5PrefixGroup0005Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 37, 349] = true := by
  decide

theorem k5PrefixGroup0005Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 43] = true := by
  decide

theorem k5PrefixGroup0005Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 43] = true := by
  decide

theorem k5PrefixGroup0005Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 47] = true := by
  decide

theorem k5PrefixGroup0005Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 47] = true := by
  decide

theorem k5PrefixGroup0005Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 83] = true := by
  decide

theorem k5PrefixGroup0005Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 83] = true := by
  decide

theorem k5PrefixGroup0005Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 89] = true := by
  decide

theorem k5PrefixGroup0005Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 89] = true := by
  decide

theorem k5PrefixGroup0005Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 97] = true := by
  decide

theorem k5PrefixGroup0005Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 97] = true := by
  decide

theorem k5PrefixGroup0005Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 101] = true := by
  decide

theorem k5PrefixGroup0005Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 101] = true := by
  decide

theorem k5PrefixGroup0005Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 103] = true := by
  decide

theorem k5PrefixGroup0005Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 103] = true := by
  decide

theorem k5PrefixGroup0005Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 107] = true := by
  decide

theorem k5PrefixGroup0005Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 107] = true := by
  decide

theorem k5PrefixGroup0005Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 109] = true := by
  decide

theorem k5PrefixGroup0005Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 109] = true := by
  decide

theorem k5PrefixGroup0005Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 113] = true := by
  decide

theorem k5PrefixGroup0005Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 113] = true := by
  decide

theorem k5PrefixGroup0005Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 127] = true := by
  decide

theorem k5PrefixGroup0005Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 127] = true := by
  decide

theorem k5PrefixGroup0005Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 131] = true := by
  decide

theorem k5PrefixGroup0005Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 131] = true := by
  decide

theorem k5PrefixGroup0005Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 137] = true := by
  decide

theorem k5PrefixGroup0005Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 137] = true := by
  decide

theorem k5PrefixGroup0005Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 139] = true := by
  decide

theorem k5PrefixGroup0005Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 139] = true := by
  decide

theorem k5PrefixGroup0005Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 149] = true := by
  decide

theorem k5PrefixGroup0005Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 149] = true := by
  decide

theorem k5PrefixGroup0005Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 151] = true := by
  decide

theorem k5PrefixGroup0005Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 151] = true := by
  decide

theorem k5PrefixGroup0005Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 157] = true := by
  decide

theorem k5PrefixGroup0005Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 157] = true := by
  decide

theorem k5PrefixGroup0005Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 163] = true := by
  decide

theorem k5PrefixGroup0005Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 163] = true := by
  decide

theorem k5PrefixGroup0005Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 167] = true := by
  decide

theorem k5PrefixGroup0005Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 167] = true := by
  decide

theorem k5PrefixGroup0005Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 173] = true := by
  decide

theorem k5PrefixGroup0005Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 173] = true := by
  decide

theorem k5PrefixGroup0005Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 179] = true := by
  decide

theorem k5PrefixGroup0005Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 179] = true := by
  decide

theorem k5PrefixGroup0005Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 181] = true := by
  decide

theorem k5PrefixGroup0005Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 181] = true := by
  decide

theorem k5PrefixGroup0005Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 191] = true := by
  decide

theorem k5PrefixGroup0005Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 191] = true := by
  decide

theorem k5PrefixGroup0005Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 193] = true := by
  decide

theorem k5PrefixGroup0005Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 193] = true := by
  decide

theorem k5PrefixGroup0005Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 197] = true := by
  decide

theorem k5PrefixGroup0005Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 197] = true := by
  decide

theorem k5PrefixGroup0005Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 199] = true := by
  decide

theorem k5PrefixGroup0005Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 199] = true := by
  decide

theorem k5PrefixGroup0005Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 211] = true := by
  decide

theorem k5PrefixGroup0005Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 211] = true := by
  decide

theorem k5PrefixGroup0005Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 223] = true := by
  decide

theorem k5PrefixGroup0005Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 223] = true := by
  decide

theorem k5PrefixGroup0005Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 227] = true := by
  decide

theorem k5PrefixGroup0005Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 227] = true := by
  decide

theorem k5PrefixGroup0005Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 229] = true := by
  decide

theorem k5PrefixGroup0005Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 229] = true := by
  decide

theorem k5PrefixGroup0005Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 233] = true := by
  decide

theorem k5PrefixGroup0005Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 233] = true := by
  decide

theorem k5PrefixGroup0005Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 239] = true := by
  decide

theorem k5PrefixGroup0005Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 239] = true := by
  decide

theorem k5PrefixGroup0005Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 241] = true := by
  decide

theorem k5PrefixGroup0005Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 241] = true := by
  decide

theorem k5PrefixGroup0005Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 251] = true := by
  decide

theorem k5PrefixGroup0005Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 251] = true := by
  decide

theorem k5PrefixGroup0005Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 257] = true := by
  decide

theorem k5PrefixGroup0005Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 257] = true := by
  decide

theorem k5PrefixGroup0005Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 263] = true := by
  decide

theorem k5PrefixGroup0005Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 263] = true := by
  decide

theorem k5PrefixGroup0005Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 41, 331] = true := by
  decide

theorem k5PrefixGroup0005Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 41, 331] = true := by
  decide

theorem k5PrefixGroup0005Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 47] = true := by
  decide

theorem k5PrefixGroup0005Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 47] = true := by
  decide

theorem k5PrefixGroup0005Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 83] = true := by
  decide

theorem k5PrefixGroup0005Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 83] = true := by
  decide

theorem k5PrefixGroup0005Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 89] = true := by
  decide

theorem k5PrefixGroup0005Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 89] = true := by
  decide

theorem k5PrefixGroup0005Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 97] = true := by
  decide

theorem k5PrefixGroup0005Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 97] = true := by
  decide

theorem k5PrefixGroup0005Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 101] = true := by
  decide

theorem k5PrefixGroup0005Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 101] = true := by
  decide

theorem k5PrefixGroup0005Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 103] = true := by
  decide

theorem k5PrefixGroup0005Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 103] = true := by
  decide

theorem k5PrefixGroup0005Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 107] = true := by
  decide

theorem k5PrefixGroup0005Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 107] = true := by
  decide

theorem k5PrefixGroup0005Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 109] = true := by
  decide

theorem k5PrefixGroup0005Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 109] = true := by
  decide

theorem k5PrefixGroup0005Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 113] = true := by
  decide

theorem k5PrefixGroup0005Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 113] = true := by
  decide

theorem k5PrefixGroup0005Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 127] = true := by
  decide

theorem k5PrefixGroup0005Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 127] = true := by
  decide

theorem k5PrefixGroup0005Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 131] = true := by
  decide

theorem k5PrefixGroup0005Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 131] = true := by
  decide

theorem k5PrefixGroup0005Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 137] = true := by
  decide

theorem k5PrefixGroup0005Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 137] = true := by
  decide

theorem k5PrefixGroup0005Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 139] = true := by
  decide

theorem k5PrefixGroup0005Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 139] = true := by
  decide

theorem k5PrefixGroup0005Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 149] = true := by
  decide

theorem k5PrefixGroup0005Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 149] = true := by
  decide

theorem k5PrefixGroup0005Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 151] = true := by
  decide

theorem k5PrefixGroup0005Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 151] = true := by
  decide

theorem k5PrefixGroup0005Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 157] = true := by
  decide

theorem k5PrefixGroup0005Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 157] = true := by
  decide

theorem k5PrefixGroup0005Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 163] = true := by
  decide

theorem k5PrefixGroup0005Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 163] = true := by
  decide

theorem k5PrefixGroup0005Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 167] = true := by
  decide

theorem k5PrefixGroup0005Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 167] = true := by
  decide

theorem k5PrefixGroup0005Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 173] = true := by
  decide

theorem k5PrefixGroup0005Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 173] = true := by
  decide

theorem k5PrefixGroup0005Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 179] = true := by
  decide

theorem k5PrefixGroup0005Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 179] = true := by
  decide

theorem k5PrefixGroup0005Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 181] = true := by
  decide

theorem k5PrefixGroup0005Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 181] = true := by
  decide

theorem k5PrefixGroup0005Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 191] = true := by
  decide

theorem k5PrefixGroup0005Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 191] = true := by
  decide

theorem k5PrefixGroup0005Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 193] = true := by
  decide

theorem k5PrefixGroup0005Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 193] = true := by
  decide

theorem k5PrefixGroup0005Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 197] = true := by
  decide

theorem k5PrefixGroup0005Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 197] = true := by
  decide

theorem k5PrefixGroup0005Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 199] = true := by
  decide

theorem k5PrefixGroup0005Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 199] = true := by
  decide

theorem k5PrefixGroup0005Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 211] = true := by
  decide

theorem k5PrefixGroup0005Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 211] = true := by
  decide

theorem k5PrefixGroup0005Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 223] = true := by
  decide

theorem k5PrefixGroup0005Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 223] = true := by
  decide

theorem k5PrefixGroup0005Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 227] = true := by
  decide

theorem k5PrefixGroup0005Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 227] = true := by
  decide

theorem k5PrefixGroup0005Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 229] = true := by
  decide

theorem k5PrefixGroup0005Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 229] = true := by
  decide

theorem k5PrefixGroup0005Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 233] = true := by
  decide

theorem k5PrefixGroup0005Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 233] = true := by
  decide

theorem k5PrefixGroup0005Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 239] = true := by
  decide

theorem k5PrefixGroup0005Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 239] = true := by
  decide

theorem k5PrefixGroup0005Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 241] = true := by
  decide

theorem k5PrefixGroup0005Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 241] = true := by
  decide

theorem k5PrefixGroup0005Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 251] = true := by
  decide

theorem k5PrefixGroup0005Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 251] = true := by
  decide

theorem k5PrefixGroup0005Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 257] = true := by
  decide

theorem k5PrefixGroup0005Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 257] = true := by
  decide

theorem k5PrefixGroup0005Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 263] = true := by
  decide

theorem k5PrefixGroup0005Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 263] = true := by
  decide

theorem k5PrefixGroup0005Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 269] = true := by
  decide

theorem k5PrefixGroup0005Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 271] = true := by
  decide

theorem k5PrefixGroup0005Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 277] = true := by
  decide

theorem k5PrefixGroup0005Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 281] = true := by
  decide

theorem k5PrefixGroup0005Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 283] = true := by
  decide

theorem k5PrefixGroup0005Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 293] = true := by
  decide

theorem k5PrefixGroup0005Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 307] = true := by
  decide

theorem k5PrefixGroup0005Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 311] = true := by
  decide

theorem k5PrefixGroup0005Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 313] = true := by
  decide

theorem k5PrefixGroup0005Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 43, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 43, 317] = true := by
  decide

theorem k5PrefixGroup0005Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 53] = true := by
  decide

theorem k5PrefixGroup0005Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 59] = true := by
  decide

theorem k5PrefixGroup0005Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 61] = true := by
  decide

theorem k5PrefixGroup0005Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 67] = true := by
  decide

theorem k5PrefixGroup0005Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 71] = true := by
  decide

theorem k5PrefixGroup0005Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 73] = true := by
  decide

theorem k5PrefixGroup0005Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 79] = true := by
  decide

theorem k5PrefixGroup0005Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 7, 47, 83] = true := by
  decide

theorem k5PrefixGroup0005Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 47, 83] = true := by
  decide

theorem k5PrefixGroup0005_passes :
    k5PrefixGroup0005.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0005, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0005Row0000_passes,
    k5PrefixGroup0005Row0001_passes,
    k5PrefixGroup0005Row0002_passes,
    k5PrefixGroup0005Row0003_passes,
    k5PrefixGroup0005Row0004_passes,
    k5PrefixGroup0005Row0005_passes,
    k5PrefixGroup0005Row0006_passes,
    k5PrefixGroup0005Row0007_passes,
    k5PrefixGroup0005Row0008_passes,
    k5PrefixGroup0005Row0009_passes,
    k5PrefixGroup0005Row0010_passes,
    k5PrefixGroup0005Row0011_passes,
    k5PrefixGroup0005Row0012_passes,
    k5PrefixGroup0005Row0013_passes,
    k5PrefixGroup0005Row0014_passes,
    k5PrefixGroup0005Row0015_passes,
    k5PrefixGroup0005Row0016_passes,
    k5PrefixGroup0005Row0017_passes,
    k5PrefixGroup0005Row0018_passes,
    k5PrefixGroup0005Row0019_passes,
    k5PrefixGroup0005Row0020_passes,
    k5PrefixGroup0005Row0021_passes,
    k5PrefixGroup0005Row0022_passes,
    k5PrefixGroup0005Row0023_passes,
    k5PrefixGroup0005Row0024_passes,
    k5PrefixGroup0005Row0025_passes,
    k5PrefixGroup0005Row0026_passes,
    k5PrefixGroup0005Row0027_passes,
    k5PrefixGroup0005Row0028_passes,
    k5PrefixGroup0005Row0029_passes,
    k5PrefixGroup0005Row0030_passes,
    k5PrefixGroup0005Row0031_passes,
    k5PrefixGroup0005Row0032_passes,
    k5PrefixGroup0005Row0033_passes,
    k5PrefixGroup0005Row0034_passes,
    k5PrefixGroup0005Row0035_passes,
    k5PrefixGroup0005Row0036_passes,
    k5PrefixGroup0005Row0037_passes,
    k5PrefixGroup0005Row0038_passes,
    k5PrefixGroup0005Row0039_passes,
    k5PrefixGroup0005Row0040_passes,
    k5PrefixGroup0005Row0041_passes,
    k5PrefixGroup0005Row0042_passes,
    k5PrefixGroup0005Row0043_passes,
    k5PrefixGroup0005Row0044_passes,
    k5PrefixGroup0005Row0045_passes,
    k5PrefixGroup0005Row0046_passes,
    k5PrefixGroup0005Row0047_passes,
    k5PrefixGroup0005Row0048_passes,
    k5PrefixGroup0005Row0049_passes,
    k5PrefixGroup0005Row0050_passes,
    k5PrefixGroup0005Row0051_passes,
    k5PrefixGroup0005Row0052_passes,
    k5PrefixGroup0005Row0053_passes,
    k5PrefixGroup0005Row0054_passes,
    k5PrefixGroup0005Row0055_passes,
    k5PrefixGroup0005Row0056_passes,
    k5PrefixGroup0005Row0057_passes,
    k5PrefixGroup0005Row0058_passes,
    k5PrefixGroup0005Row0059_passes,
    k5PrefixGroup0005Row0060_passes,
    k5PrefixGroup0005Row0061_passes,
    k5PrefixGroup0005Row0062_passes,
    k5PrefixGroup0005Row0063_passes,
    k5PrefixGroup0005Row0064_passes,
    k5PrefixGroup0005Row0065_passes,
    k5PrefixGroup0005Row0066_passes,
    k5PrefixGroup0005Row0067_passes,
    k5PrefixGroup0005Row0068_passes,
    k5PrefixGroup0005Row0069_passes,
    k5PrefixGroup0005Row0070_passes,
    k5PrefixGroup0005Row0071_passes,
    k5PrefixGroup0005Row0072_passes,
    k5PrefixGroup0005Row0073_passes,
    k5PrefixGroup0005Row0074_passes,
    k5PrefixGroup0005Row0075_passes,
    k5PrefixGroup0005Row0076_passes,
    k5PrefixGroup0005Row0077_passes,
    k5PrefixGroup0005Row0078_passes,
    k5PrefixGroup0005Row0079_passes,
    k5PrefixGroup0005Row0080_passes,
    k5PrefixGroup0005Row0081_passes,
    k5PrefixGroup0005Row0082_passes,
    k5PrefixGroup0005Row0083_passes,
    k5PrefixGroup0005Row0084_passes,
    k5PrefixGroup0005Row0085_passes,
    k5PrefixGroup0005Row0086_passes,
    k5PrefixGroup0005Row0087_passes,
    k5PrefixGroup0005Row0088_passes,
    k5PrefixGroup0005Row0089_passes,
    k5PrefixGroup0005Row0090_passes,
    k5PrefixGroup0005Row0091_passes,
    k5PrefixGroup0005Row0092_passes,
    k5PrefixGroup0005Row0093_passes,
    k5PrefixGroup0005Row0094_passes,
    k5PrefixGroup0005Row0095_passes,
    k5PrefixGroup0005Row0096_passes,
    k5PrefixGroup0005Row0097_passes,
    k5PrefixGroup0005Row0098_passes,
    k5PrefixGroup0005Row0099_passes,
    k5PrefixGroup0005Row0100_passes,
    k5PrefixGroup0005Row0101_passes,
    k5PrefixGroup0005Row0102_passes,
    k5PrefixGroup0005Row0103_passes,
    k5PrefixGroup0005Row0104_passes,
    k5PrefixGroup0005Row0105_passes,
    k5PrefixGroup0005Row0106_passes,
    k5PrefixGroup0005Row0107_passes,
    k5PrefixGroup0005Row0108_passes,
    k5PrefixGroup0005Row0109_passes,
    k5PrefixGroup0005Row0110_passes,
    k5PrefixGroup0005Row0111_passes,
    k5PrefixGroup0005Row0112_passes,
    k5PrefixGroup0005Row0113_passes,
    k5PrefixGroup0005Row0114_passes,
    k5PrefixGroup0005Row0115_passes,
    k5PrefixGroup0005Row0116_passes,
    k5PrefixGroup0005Row0117_passes,
    k5PrefixGroup0005Row0118_passes,
    k5PrefixGroup0005Row0119_passes,
    k5PrefixGroup0005Row0120_passes,
    k5PrefixGroup0005Row0121_passes,
    k5PrefixGroup0005Row0122_passes,
    k5PrefixGroup0005Row0123_passes,
    k5PrefixGroup0005Row0124_passes,
    k5PrefixGroup0005Row0125_passes,
    k5PrefixGroup0005Row0126_passes,
    k5PrefixGroup0005Row0127_passes]

theorem k5PrefixGroup0005_mask_upper :
    k5PrefixGroup0005.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0005, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0005Row0000_mask_upper,
    k5PrefixGroup0005Row0001_mask_upper,
    k5PrefixGroup0005Row0002_mask_upper,
    k5PrefixGroup0005Row0003_mask_upper,
    k5PrefixGroup0005Row0004_mask_upper,
    k5PrefixGroup0005Row0005_mask_upper,
    k5PrefixGroup0005Row0006_mask_upper,
    k5PrefixGroup0005Row0007_mask_upper,
    k5PrefixGroup0005Row0008_mask_upper,
    k5PrefixGroup0005Row0009_mask_upper,
    k5PrefixGroup0005Row0010_mask_upper,
    k5PrefixGroup0005Row0011_mask_upper,
    k5PrefixGroup0005Row0012_mask_upper,
    k5PrefixGroup0005Row0013_mask_upper,
    k5PrefixGroup0005Row0014_mask_upper,
    k5PrefixGroup0005Row0015_mask_upper,
    k5PrefixGroup0005Row0016_mask_upper,
    k5PrefixGroup0005Row0017_mask_upper,
    k5PrefixGroup0005Row0018_mask_upper,
    k5PrefixGroup0005Row0019_mask_upper,
    k5PrefixGroup0005Row0020_mask_upper,
    k5PrefixGroup0005Row0021_mask_upper,
    k5PrefixGroup0005Row0022_mask_upper,
    k5PrefixGroup0005Row0023_mask_upper,
    k5PrefixGroup0005Row0024_mask_upper,
    k5PrefixGroup0005Row0025_mask_upper,
    k5PrefixGroup0005Row0026_mask_upper,
    k5PrefixGroup0005Row0027_mask_upper,
    k5PrefixGroup0005Row0028_mask_upper,
    k5PrefixGroup0005Row0029_mask_upper,
    k5PrefixGroup0005Row0030_mask_upper,
    k5PrefixGroup0005Row0031_mask_upper,
    k5PrefixGroup0005Row0032_mask_upper,
    k5PrefixGroup0005Row0033_mask_upper,
    k5PrefixGroup0005Row0034_mask_upper,
    k5PrefixGroup0005Row0035_mask_upper,
    k5PrefixGroup0005Row0036_mask_upper,
    k5PrefixGroup0005Row0037_mask_upper,
    k5PrefixGroup0005Row0038_mask_upper,
    k5PrefixGroup0005Row0039_mask_upper,
    k5PrefixGroup0005Row0040_mask_upper,
    k5PrefixGroup0005Row0041_mask_upper,
    k5PrefixGroup0005Row0042_mask_upper,
    k5PrefixGroup0005Row0043_mask_upper,
    k5PrefixGroup0005Row0044_mask_upper,
    k5PrefixGroup0005Row0045_mask_upper,
    k5PrefixGroup0005Row0046_mask_upper,
    k5PrefixGroup0005Row0047_mask_upper,
    k5PrefixGroup0005Row0048_mask_upper,
    k5PrefixGroup0005Row0049_mask_upper,
    k5PrefixGroup0005Row0050_mask_upper,
    k5PrefixGroup0005Row0051_mask_upper,
    k5PrefixGroup0005Row0052_mask_upper,
    k5PrefixGroup0005Row0053_mask_upper,
    k5PrefixGroup0005Row0054_mask_upper,
    k5PrefixGroup0005Row0055_mask_upper,
    k5PrefixGroup0005Row0056_mask_upper,
    k5PrefixGroup0005Row0057_mask_upper,
    k5PrefixGroup0005Row0058_mask_upper,
    k5PrefixGroup0005Row0059_mask_upper,
    k5PrefixGroup0005Row0060_mask_upper,
    k5PrefixGroup0005Row0061_mask_upper,
    k5PrefixGroup0005Row0062_mask_upper,
    k5PrefixGroup0005Row0063_mask_upper,
    k5PrefixGroup0005Row0064_mask_upper,
    k5PrefixGroup0005Row0065_mask_upper,
    k5PrefixGroup0005Row0066_mask_upper,
    k5PrefixGroup0005Row0067_mask_upper,
    k5PrefixGroup0005Row0068_mask_upper,
    k5PrefixGroup0005Row0069_mask_upper,
    k5PrefixGroup0005Row0070_mask_upper,
    k5PrefixGroup0005Row0071_mask_upper,
    k5PrefixGroup0005Row0072_mask_upper,
    k5PrefixGroup0005Row0073_mask_upper,
    k5PrefixGroup0005Row0074_mask_upper,
    k5PrefixGroup0005Row0075_mask_upper,
    k5PrefixGroup0005Row0076_mask_upper,
    k5PrefixGroup0005Row0077_mask_upper,
    k5PrefixGroup0005Row0078_mask_upper,
    k5PrefixGroup0005Row0079_mask_upper,
    k5PrefixGroup0005Row0080_mask_upper,
    k5PrefixGroup0005Row0081_mask_upper,
    k5PrefixGroup0005Row0082_mask_upper,
    k5PrefixGroup0005Row0083_mask_upper,
    k5PrefixGroup0005Row0084_mask_upper,
    k5PrefixGroup0005Row0085_mask_upper,
    k5PrefixGroup0005Row0086_mask_upper,
    k5PrefixGroup0005Row0087_mask_upper,
    k5PrefixGroup0005Row0088_mask_upper,
    k5PrefixGroup0005Row0089_mask_upper,
    k5PrefixGroup0005Row0090_mask_upper,
    k5PrefixGroup0005Row0091_mask_upper,
    k5PrefixGroup0005Row0092_mask_upper,
    k5PrefixGroup0005Row0093_mask_upper,
    k5PrefixGroup0005Row0094_mask_upper,
    k5PrefixGroup0005Row0095_mask_upper,
    k5PrefixGroup0005Row0096_mask_upper,
    k5PrefixGroup0005Row0097_mask_upper,
    k5PrefixGroup0005Row0098_mask_upper,
    k5PrefixGroup0005Row0099_mask_upper,
    k5PrefixGroup0005Row0100_mask_upper,
    k5PrefixGroup0005Row0101_mask_upper,
    k5PrefixGroup0005Row0102_mask_upper,
    k5PrefixGroup0005Row0103_mask_upper,
    k5PrefixGroup0005Row0104_mask_upper,
    k5PrefixGroup0005Row0105_mask_upper,
    k5PrefixGroup0005Row0106_mask_upper,
    k5PrefixGroup0005Row0107_mask_upper,
    k5PrefixGroup0005Row0108_mask_upper,
    k5PrefixGroup0005Row0109_mask_upper,
    k5PrefixGroup0005Row0110_mask_upper,
    k5PrefixGroup0005Row0111_mask_upper,
    k5PrefixGroup0005Row0112_mask_upper,
    k5PrefixGroup0005Row0113_mask_upper,
    k5PrefixGroup0005Row0114_mask_upper,
    k5PrefixGroup0005Row0115_mask_upper,
    k5PrefixGroup0005Row0116_mask_upper,
    k5PrefixGroup0005Row0117_mask_upper,
    k5PrefixGroup0005Row0118_mask_upper,
    k5PrefixGroup0005Row0119_mask_upper,
    k5PrefixGroup0005Row0120_mask_upper,
    k5PrefixGroup0005Row0121_mask_upper,
    k5PrefixGroup0005Row0122_mask_upper,
    k5PrefixGroup0005Row0123_mask_upper,
    k5PrefixGroup0005Row0124_mask_upper,
    k5PrefixGroup0005Row0125_mask_upper,
    k5PrefixGroup0005Row0126_mask_upper,
    k5PrefixGroup0005Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
