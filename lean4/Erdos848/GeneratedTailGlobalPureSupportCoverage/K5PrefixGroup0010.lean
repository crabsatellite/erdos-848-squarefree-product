import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0010 : List (List ℕ) :=
  [[3, 11, 13, 37],
     [3, 11, 13, 41],
     [3, 11, 13, 43],
     [3, 11, 13, 47],
     [3, 11, 13, 53],
     [3, 11, 13, 59],
     [3, 11, 13, 61],
     [3, 11, 13, 67],
     [3, 11, 13, 71],
     [3, 11, 13, 73],
     [3, 11, 13, 79],
     [3, 11, 13, 83],
     [3, 11, 13, 89],
     [3, 11, 13, 97],
     [3, 11, 13, 101],
     [3, 11, 13, 103],
     [3, 11, 13, 107],
     [3, 11, 13, 109],
     [3, 11, 13, 113],
     [3, 11, 13, 127],
     [3, 11, 13, 131],
     [3, 11, 13, 137],
     [3, 11, 13, 139],
     [3, 11, 13, 149],
     [3, 11, 13, 151],
     [3, 11, 13, 157],
     [3, 11, 13, 163],
     [3, 11, 13, 167],
     [3, 11, 13, 173],
     [3, 11, 13, 179],
     [3, 11, 13, 181],
     [3, 11, 13, 191],
     [3, 11, 13, 193],
     [3, 11, 13, 197],
     [3, 11, 13, 199],
     [3, 11, 13, 211],
     [3, 11, 13, 223],
     [3, 11, 13, 227],
     [3, 11, 13, 229],
     [3, 11, 13, 233],
     [3, 11, 13, 239],
     [3, 11, 13, 241],
     [3, 11, 13, 251],
     [3, 11, 13, 257],
     [3, 11, 13, 263],
     [3, 11, 13, 269],
     [3, 11, 13, 271],
     [3, 11, 13, 277],
     [3, 11, 13, 281],
     [3, 11, 13, 283],
     [3, 11, 13, 293],
     [3, 11, 13, 307],
     [3, 11, 13, 311],
     [3, 11, 13, 313],
     [3, 11, 13, 317],
     [3, 11, 13, 331],
     [3, 11, 13, 337],
     [3, 11, 13, 347],
     [3, 11, 13, 349],
     [3, 11, 13, 353],
     [3, 11, 13, 359],
     [3, 11, 13, 367],
     [3, 11, 13, 373],
     [3, 11, 13, 379],
     [3, 11, 13, 383],
     [3, 11, 13, 389],
     [3, 11, 13, 397],
     [3, 11, 13, 401],
     [3, 11, 13, 409],
     [3, 11, 13, 419],
     [3, 11, 13, 421],
     [3, 11, 13, 431],
     [3, 11, 13, 433],
     [3, 11, 13, 439],
     [3, 11, 13, 443],
     [3, 11, 13, 449],
     [3, 11, 13, 457],
     [3, 11, 13, 461],
     [3, 11, 13, 463],
     [3, 11, 13, 467],
     [3, 11, 17, 19],
     [3, 11, 17, 23],
     [3, 11, 17, 29],
     [3, 11, 17, 31],
     [3, 11, 17, 37],
     [3, 11, 17, 41],
     [3, 11, 17, 43],
     [3, 11, 17, 47],
     [3, 11, 17, 53],
     [3, 11, 17, 59],
     [3, 11, 17, 61],
     [3, 11, 17, 67],
     [3, 11, 17, 71],
     [3, 11, 17, 73],
     [3, 11, 17, 79],
     [3, 11, 17, 83],
     [3, 11, 17, 89],
     [3, 11, 17, 97],
     [3, 11, 17, 101],
     [3, 11, 17, 103],
     [3, 11, 17, 107],
     [3, 11, 17, 109],
     [3, 11, 17, 113],
     [3, 11, 17, 127],
     [3, 11, 17, 131],
     [3, 11, 17, 137],
     [3, 11, 17, 139],
     [3, 11, 17, 149],
     [3, 11, 17, 151],
     [3, 11, 17, 157],
     [3, 11, 17, 163],
     [3, 11, 17, 167],
     [3, 11, 17, 173],
     [3, 11, 17, 179],
     [3, 11, 17, 181],
     [3, 11, 17, 191],
     [3, 11, 17, 193],
     [3, 11, 17, 197],
     [3, 11, 17, 199],
     [3, 11, 17, 211],
     [3, 11, 17, 223],
     [3, 11, 17, 227],
     [3, 11, 17, 229],
     [3, 11, 17, 233],
     [3, 11, 17, 239],
     [3, 11, 17, 241],
     [3, 11, 17, 251],
     [3, 11, 17, 257]]

theorem k5PrefixGroup0010Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 37] = true := by
  decide

theorem k5PrefixGroup0010Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 37] = true := by
  decide

theorem k5PrefixGroup0010Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 41] = true := by
  decide

theorem k5PrefixGroup0010Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 41] = true := by
  decide

theorem k5PrefixGroup0010Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 43] = true := by
  decide

theorem k5PrefixGroup0010Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 43] = true := by
  decide

theorem k5PrefixGroup0010Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 47] = true := by
  decide

theorem k5PrefixGroup0010Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 47] = true := by
  decide

theorem k5PrefixGroup0010Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 53] = true := by
  decide

theorem k5PrefixGroup0010Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 53] = true := by
  decide

theorem k5PrefixGroup0010Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 59] = true := by
  decide

theorem k5PrefixGroup0010Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 59] = true := by
  decide

theorem k5PrefixGroup0010Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 61] = true := by
  decide

theorem k5PrefixGroup0010Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 61] = true := by
  decide

theorem k5PrefixGroup0010Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 67] = true := by
  decide

theorem k5PrefixGroup0010Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 67] = true := by
  decide

theorem k5PrefixGroup0010Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 71] = true := by
  decide

theorem k5PrefixGroup0010Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 71] = true := by
  decide

theorem k5PrefixGroup0010Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 73] = true := by
  decide

theorem k5PrefixGroup0010Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 73] = true := by
  decide

theorem k5PrefixGroup0010Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 79] = true := by
  decide

theorem k5PrefixGroup0010Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 79] = true := by
  decide

theorem k5PrefixGroup0010Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 83] = true := by
  decide

theorem k5PrefixGroup0010Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 83] = true := by
  decide

theorem k5PrefixGroup0010Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 89] = true := by
  decide

theorem k5PrefixGroup0010Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 89] = true := by
  decide

theorem k5PrefixGroup0010Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 97] = true := by
  decide

theorem k5PrefixGroup0010Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 97] = true := by
  decide

theorem k5PrefixGroup0010Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 101] = true := by
  decide

theorem k5PrefixGroup0010Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 101] = true := by
  decide

theorem k5PrefixGroup0010Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 103] = true := by
  decide

theorem k5PrefixGroup0010Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 103] = true := by
  decide

theorem k5PrefixGroup0010Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 107] = true := by
  decide

theorem k5PrefixGroup0010Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 107] = true := by
  decide

theorem k5PrefixGroup0010Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 109] = true := by
  decide

theorem k5PrefixGroup0010Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 109] = true := by
  decide

theorem k5PrefixGroup0010Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 113] = true := by
  decide

theorem k5PrefixGroup0010Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 113] = true := by
  decide

theorem k5PrefixGroup0010Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 127] = true := by
  decide

theorem k5PrefixGroup0010Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 127] = true := by
  decide

theorem k5PrefixGroup0010Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 131] = true := by
  decide

theorem k5PrefixGroup0010Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 131] = true := by
  decide

theorem k5PrefixGroup0010Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 137] = true := by
  decide

theorem k5PrefixGroup0010Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 137] = true := by
  decide

theorem k5PrefixGroup0010Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 139] = true := by
  decide

theorem k5PrefixGroup0010Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 139] = true := by
  decide

theorem k5PrefixGroup0010Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 149] = true := by
  decide

theorem k5PrefixGroup0010Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 149] = true := by
  decide

theorem k5PrefixGroup0010Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 151] = true := by
  decide

theorem k5PrefixGroup0010Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 151] = true := by
  decide

theorem k5PrefixGroup0010Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 157] = true := by
  decide

theorem k5PrefixGroup0010Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 157] = true := by
  decide

theorem k5PrefixGroup0010Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 163] = true := by
  decide

theorem k5PrefixGroup0010Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 163] = true := by
  decide

theorem k5PrefixGroup0010Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 167] = true := by
  decide

theorem k5PrefixGroup0010Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 167] = true := by
  decide

theorem k5PrefixGroup0010Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 173] = true := by
  decide

theorem k5PrefixGroup0010Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 173] = true := by
  decide

theorem k5PrefixGroup0010Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 179] = true := by
  decide

theorem k5PrefixGroup0010Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 179] = true := by
  decide

theorem k5PrefixGroup0010Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 181] = true := by
  decide

theorem k5PrefixGroup0010Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 181] = true := by
  decide

theorem k5PrefixGroup0010Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 191] = true := by
  decide

theorem k5PrefixGroup0010Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 191] = true := by
  decide

theorem k5PrefixGroup0010Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 193] = true := by
  decide

theorem k5PrefixGroup0010Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 193] = true := by
  decide

theorem k5PrefixGroup0010Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 197] = true := by
  decide

theorem k5PrefixGroup0010Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 197] = true := by
  decide

theorem k5PrefixGroup0010Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 199] = true := by
  decide

theorem k5PrefixGroup0010Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 199] = true := by
  decide

theorem k5PrefixGroup0010Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 211] = true := by
  decide

theorem k5PrefixGroup0010Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 211] = true := by
  decide

theorem k5PrefixGroup0010Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 223] = true := by
  decide

theorem k5PrefixGroup0010Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 223] = true := by
  decide

theorem k5PrefixGroup0010Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 227] = true := by
  decide

theorem k5PrefixGroup0010Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 227] = true := by
  decide

theorem k5PrefixGroup0010Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 229] = true := by
  decide

theorem k5PrefixGroup0010Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 229] = true := by
  decide

theorem k5PrefixGroup0010Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 233] = true := by
  decide

theorem k5PrefixGroup0010Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 233] = true := by
  decide

theorem k5PrefixGroup0010Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 239] = true := by
  decide

theorem k5PrefixGroup0010Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 239] = true := by
  decide

theorem k5PrefixGroup0010Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 241] = true := by
  decide

theorem k5PrefixGroup0010Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 241] = true := by
  decide

theorem k5PrefixGroup0010Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 251] = true := by
  decide

theorem k5PrefixGroup0010Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 251] = true := by
  decide

theorem k5PrefixGroup0010Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 257] = true := by
  decide

theorem k5PrefixGroup0010Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 257] = true := by
  decide

theorem k5PrefixGroup0010Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 263] = true := by
  decide

theorem k5PrefixGroup0010Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 263] = true := by
  decide

theorem k5PrefixGroup0010Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 269] = true := by
  decide

theorem k5PrefixGroup0010Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 269] = true := by
  decide

theorem k5PrefixGroup0010Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 271] = true := by
  decide

theorem k5PrefixGroup0010Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 271] = true := by
  decide

theorem k5PrefixGroup0010Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 277] = true := by
  decide

theorem k5PrefixGroup0010Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 277] = true := by
  decide

theorem k5PrefixGroup0010Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 281] = true := by
  decide

theorem k5PrefixGroup0010Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 281] = true := by
  decide

theorem k5PrefixGroup0010Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 283] = true := by
  decide

theorem k5PrefixGroup0010Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 283] = true := by
  decide

theorem k5PrefixGroup0010Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 293] = true := by
  decide

theorem k5PrefixGroup0010Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 293] = true := by
  decide

theorem k5PrefixGroup0010Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 307] = true := by
  decide

theorem k5PrefixGroup0010Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 307] = true := by
  decide

theorem k5PrefixGroup0010Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 311] = true := by
  decide

theorem k5PrefixGroup0010Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 311] = true := by
  decide

theorem k5PrefixGroup0010Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 313] = true := by
  decide

theorem k5PrefixGroup0010Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 313] = true := by
  decide

theorem k5PrefixGroup0010Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 317] = true := by
  decide

theorem k5PrefixGroup0010Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 317] = true := by
  decide

theorem k5PrefixGroup0010Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 331] = true := by
  decide

theorem k5PrefixGroup0010Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 331] = true := by
  decide

theorem k5PrefixGroup0010Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 337] = true := by
  decide

theorem k5PrefixGroup0010Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 337] = true := by
  decide

theorem k5PrefixGroup0010Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 347] = true := by
  decide

theorem k5PrefixGroup0010Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 347] = true := by
  decide

theorem k5PrefixGroup0010Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 349] = true := by
  decide

theorem k5PrefixGroup0010Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 349] = true := by
  decide

theorem k5PrefixGroup0010Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 353] = true := by
  decide

theorem k5PrefixGroup0010Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 353] = true := by
  decide

theorem k5PrefixGroup0010Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 359] = true := by
  decide

theorem k5PrefixGroup0010Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 359] = true := by
  decide

theorem k5PrefixGroup0010Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 367] = true := by
  decide

theorem k5PrefixGroup0010Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 367] = true := by
  decide

theorem k5PrefixGroup0010Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 373] = true := by
  decide

theorem k5PrefixGroup0010Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 373] = true := by
  decide

theorem k5PrefixGroup0010Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 379] = true := by
  decide

theorem k5PrefixGroup0010Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 379] = true := by
  decide

theorem k5PrefixGroup0010Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 383] = true := by
  decide

theorem k5PrefixGroup0010Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 383] = true := by
  decide

theorem k5PrefixGroup0010Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 389] = true := by
  decide

theorem k5PrefixGroup0010Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 389] = true := by
  decide

theorem k5PrefixGroup0010Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 397] = true := by
  decide

theorem k5PrefixGroup0010Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 397] = true := by
  decide

theorem k5PrefixGroup0010Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 401] = true := by
  decide

theorem k5PrefixGroup0010Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 401] = true := by
  decide

theorem k5PrefixGroup0010Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 409] = true := by
  decide

theorem k5PrefixGroup0010Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 409] = true := by
  decide

theorem k5PrefixGroup0010Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 419] = true := by
  decide

theorem k5PrefixGroup0010Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 419] = true := by
  decide

theorem k5PrefixGroup0010Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 421] = true := by
  decide

theorem k5PrefixGroup0010Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 421] = true := by
  decide

theorem k5PrefixGroup0010Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 431] = true := by
  decide

theorem k5PrefixGroup0010Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 431] = true := by
  decide

theorem k5PrefixGroup0010Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 433] = true := by
  decide

theorem k5PrefixGroup0010Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 433] = true := by
  decide

theorem k5PrefixGroup0010Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 439] = true := by
  decide

theorem k5PrefixGroup0010Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 439] = true := by
  decide

theorem k5PrefixGroup0010Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 443] = true := by
  decide

theorem k5PrefixGroup0010Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 443] = true := by
  decide

theorem k5PrefixGroup0010Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 449] = true := by
  decide

theorem k5PrefixGroup0010Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 449] = true := by
  decide

theorem k5PrefixGroup0010Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 457] = true := by
  decide

theorem k5PrefixGroup0010Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 457] = true := by
  decide

theorem k5PrefixGroup0010Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 461] = true := by
  decide

theorem k5PrefixGroup0010Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 461] = true := by
  decide

theorem k5PrefixGroup0010Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 463] = true := by
  decide

theorem k5PrefixGroup0010Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 463] = true := by
  decide

theorem k5PrefixGroup0010Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 13, 467] = true := by
  decide

theorem k5PrefixGroup0010Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 13, 467] = true := by
  decide

theorem k5PrefixGroup0010Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 19] = true := by
  decide

theorem k5PrefixGroup0010Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 19] = true := by
  decide

theorem k5PrefixGroup0010Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 23] = true := by
  decide

theorem k5PrefixGroup0010Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 23] = true := by
  decide

theorem k5PrefixGroup0010Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 29] = true := by
  decide

theorem k5PrefixGroup0010Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 29] = true := by
  decide

theorem k5PrefixGroup0010Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 31] = true := by
  decide

theorem k5PrefixGroup0010Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 31] = true := by
  decide

theorem k5PrefixGroup0010Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 37] = true := by
  decide

theorem k5PrefixGroup0010Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 37] = true := by
  decide

theorem k5PrefixGroup0010Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 41] = true := by
  decide

theorem k5PrefixGroup0010Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 41] = true := by
  decide

theorem k5PrefixGroup0010Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 43] = true := by
  decide

theorem k5PrefixGroup0010Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 43] = true := by
  decide

theorem k5PrefixGroup0010Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 47] = true := by
  decide

theorem k5PrefixGroup0010Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 47] = true := by
  decide

theorem k5PrefixGroup0010Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 53] = true := by
  decide

theorem k5PrefixGroup0010Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 53] = true := by
  decide

theorem k5PrefixGroup0010Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 59] = true := by
  decide

theorem k5PrefixGroup0010Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 59] = true := by
  decide

theorem k5PrefixGroup0010Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 61] = true := by
  decide

theorem k5PrefixGroup0010Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 61] = true := by
  decide

theorem k5PrefixGroup0010Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 67] = true := by
  decide

theorem k5PrefixGroup0010Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 67] = true := by
  decide

theorem k5PrefixGroup0010Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 71] = true := by
  decide

theorem k5PrefixGroup0010Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 71] = true := by
  decide

theorem k5PrefixGroup0010Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 73] = true := by
  decide

theorem k5PrefixGroup0010Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 73] = true := by
  decide

theorem k5PrefixGroup0010Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 79] = true := by
  decide

theorem k5PrefixGroup0010Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 79] = true := by
  decide

theorem k5PrefixGroup0010Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 83] = true := by
  decide

theorem k5PrefixGroup0010Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 83] = true := by
  decide

theorem k5PrefixGroup0010Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 89] = true := by
  decide

theorem k5PrefixGroup0010Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 89] = true := by
  decide

theorem k5PrefixGroup0010Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 97] = true := by
  decide

theorem k5PrefixGroup0010Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 97] = true := by
  decide

theorem k5PrefixGroup0010Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 101] = true := by
  decide

theorem k5PrefixGroup0010Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 101] = true := by
  decide

theorem k5PrefixGroup0010Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 103] = true := by
  decide

theorem k5PrefixGroup0010Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 103] = true := by
  decide

theorem k5PrefixGroup0010Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 107] = true := by
  decide

theorem k5PrefixGroup0010Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 107] = true := by
  decide

theorem k5PrefixGroup0010Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 109] = true := by
  decide

theorem k5PrefixGroup0010Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 109] = true := by
  decide

theorem k5PrefixGroup0010Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 113] = true := by
  decide

theorem k5PrefixGroup0010Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 113] = true := by
  decide

theorem k5PrefixGroup0010Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 127] = true := by
  decide

theorem k5PrefixGroup0010Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 127] = true := by
  decide

theorem k5PrefixGroup0010Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 131] = true := by
  decide

theorem k5PrefixGroup0010Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 131] = true := by
  decide

theorem k5PrefixGroup0010Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 137] = true := by
  decide

theorem k5PrefixGroup0010Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 137] = true := by
  decide

theorem k5PrefixGroup0010Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 139] = true := by
  decide

theorem k5PrefixGroup0010Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 139] = true := by
  decide

theorem k5PrefixGroup0010Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 149] = true := by
  decide

theorem k5PrefixGroup0010Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 149] = true := by
  decide

theorem k5PrefixGroup0010Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 151] = true := by
  decide

theorem k5PrefixGroup0010Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 151] = true := by
  decide

theorem k5PrefixGroup0010Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 157] = true := by
  decide

theorem k5PrefixGroup0010Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 157] = true := by
  decide

theorem k5PrefixGroup0010Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 163] = true := by
  decide

theorem k5PrefixGroup0010Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 163] = true := by
  decide

theorem k5PrefixGroup0010Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 167] = true := by
  decide

theorem k5PrefixGroup0010Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 167] = true := by
  decide

theorem k5PrefixGroup0010Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 173] = true := by
  decide

theorem k5PrefixGroup0010Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 173] = true := by
  decide

theorem k5PrefixGroup0010Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 179] = true := by
  decide

theorem k5PrefixGroup0010Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 179] = true := by
  decide

theorem k5PrefixGroup0010Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 181] = true := by
  decide

theorem k5PrefixGroup0010Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 181] = true := by
  decide

theorem k5PrefixGroup0010Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 191] = true := by
  decide

theorem k5PrefixGroup0010Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 191] = true := by
  decide

theorem k5PrefixGroup0010Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 193] = true := by
  decide

theorem k5PrefixGroup0010Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 193] = true := by
  decide

theorem k5PrefixGroup0010Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 197] = true := by
  decide

theorem k5PrefixGroup0010Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 197] = true := by
  decide

theorem k5PrefixGroup0010Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 199] = true := by
  decide

theorem k5PrefixGroup0010Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 199] = true := by
  decide

theorem k5PrefixGroup0010Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 211] = true := by
  decide

theorem k5PrefixGroup0010Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 211] = true := by
  decide

theorem k5PrefixGroup0010Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 223] = true := by
  decide

theorem k5PrefixGroup0010Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 223] = true := by
  decide

theorem k5PrefixGroup0010Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 227] = true := by
  decide

theorem k5PrefixGroup0010Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 227] = true := by
  decide

theorem k5PrefixGroup0010Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 229] = true := by
  decide

theorem k5PrefixGroup0010Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 229] = true := by
  decide

theorem k5PrefixGroup0010Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 233] = true := by
  decide

theorem k5PrefixGroup0010Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 233] = true := by
  decide

theorem k5PrefixGroup0010Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 239] = true := by
  decide

theorem k5PrefixGroup0010Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 239] = true := by
  decide

theorem k5PrefixGroup0010Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 241] = true := by
  decide

theorem k5PrefixGroup0010Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 241] = true := by
  decide

theorem k5PrefixGroup0010Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 251] = true := by
  decide

theorem k5PrefixGroup0010Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 251] = true := by
  decide

theorem k5PrefixGroup0010Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 257] = true := by
  decide

theorem k5PrefixGroup0010Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 257] = true := by
  decide

theorem k5PrefixGroup0010_passes :
    k5PrefixGroup0010.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0010, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0010Row0000_passes,
    k5PrefixGroup0010Row0001_passes,
    k5PrefixGroup0010Row0002_passes,
    k5PrefixGroup0010Row0003_passes,
    k5PrefixGroup0010Row0004_passes,
    k5PrefixGroup0010Row0005_passes,
    k5PrefixGroup0010Row0006_passes,
    k5PrefixGroup0010Row0007_passes,
    k5PrefixGroup0010Row0008_passes,
    k5PrefixGroup0010Row0009_passes,
    k5PrefixGroup0010Row0010_passes,
    k5PrefixGroup0010Row0011_passes,
    k5PrefixGroup0010Row0012_passes,
    k5PrefixGroup0010Row0013_passes,
    k5PrefixGroup0010Row0014_passes,
    k5PrefixGroup0010Row0015_passes,
    k5PrefixGroup0010Row0016_passes,
    k5PrefixGroup0010Row0017_passes,
    k5PrefixGroup0010Row0018_passes,
    k5PrefixGroup0010Row0019_passes,
    k5PrefixGroup0010Row0020_passes,
    k5PrefixGroup0010Row0021_passes,
    k5PrefixGroup0010Row0022_passes,
    k5PrefixGroup0010Row0023_passes,
    k5PrefixGroup0010Row0024_passes,
    k5PrefixGroup0010Row0025_passes,
    k5PrefixGroup0010Row0026_passes,
    k5PrefixGroup0010Row0027_passes,
    k5PrefixGroup0010Row0028_passes,
    k5PrefixGroup0010Row0029_passes,
    k5PrefixGroup0010Row0030_passes,
    k5PrefixGroup0010Row0031_passes,
    k5PrefixGroup0010Row0032_passes,
    k5PrefixGroup0010Row0033_passes,
    k5PrefixGroup0010Row0034_passes,
    k5PrefixGroup0010Row0035_passes,
    k5PrefixGroup0010Row0036_passes,
    k5PrefixGroup0010Row0037_passes,
    k5PrefixGroup0010Row0038_passes,
    k5PrefixGroup0010Row0039_passes,
    k5PrefixGroup0010Row0040_passes,
    k5PrefixGroup0010Row0041_passes,
    k5PrefixGroup0010Row0042_passes,
    k5PrefixGroup0010Row0043_passes,
    k5PrefixGroup0010Row0044_passes,
    k5PrefixGroup0010Row0045_passes,
    k5PrefixGroup0010Row0046_passes,
    k5PrefixGroup0010Row0047_passes,
    k5PrefixGroup0010Row0048_passes,
    k5PrefixGroup0010Row0049_passes,
    k5PrefixGroup0010Row0050_passes,
    k5PrefixGroup0010Row0051_passes,
    k5PrefixGroup0010Row0052_passes,
    k5PrefixGroup0010Row0053_passes,
    k5PrefixGroup0010Row0054_passes,
    k5PrefixGroup0010Row0055_passes,
    k5PrefixGroup0010Row0056_passes,
    k5PrefixGroup0010Row0057_passes,
    k5PrefixGroup0010Row0058_passes,
    k5PrefixGroup0010Row0059_passes,
    k5PrefixGroup0010Row0060_passes,
    k5PrefixGroup0010Row0061_passes,
    k5PrefixGroup0010Row0062_passes,
    k5PrefixGroup0010Row0063_passes,
    k5PrefixGroup0010Row0064_passes,
    k5PrefixGroup0010Row0065_passes,
    k5PrefixGroup0010Row0066_passes,
    k5PrefixGroup0010Row0067_passes,
    k5PrefixGroup0010Row0068_passes,
    k5PrefixGroup0010Row0069_passes,
    k5PrefixGroup0010Row0070_passes,
    k5PrefixGroup0010Row0071_passes,
    k5PrefixGroup0010Row0072_passes,
    k5PrefixGroup0010Row0073_passes,
    k5PrefixGroup0010Row0074_passes,
    k5PrefixGroup0010Row0075_passes,
    k5PrefixGroup0010Row0076_passes,
    k5PrefixGroup0010Row0077_passes,
    k5PrefixGroup0010Row0078_passes,
    k5PrefixGroup0010Row0079_passes,
    k5PrefixGroup0010Row0080_passes,
    k5PrefixGroup0010Row0081_passes,
    k5PrefixGroup0010Row0082_passes,
    k5PrefixGroup0010Row0083_passes,
    k5PrefixGroup0010Row0084_passes,
    k5PrefixGroup0010Row0085_passes,
    k5PrefixGroup0010Row0086_passes,
    k5PrefixGroup0010Row0087_passes,
    k5PrefixGroup0010Row0088_passes,
    k5PrefixGroup0010Row0089_passes,
    k5PrefixGroup0010Row0090_passes,
    k5PrefixGroup0010Row0091_passes,
    k5PrefixGroup0010Row0092_passes,
    k5PrefixGroup0010Row0093_passes,
    k5PrefixGroup0010Row0094_passes,
    k5PrefixGroup0010Row0095_passes,
    k5PrefixGroup0010Row0096_passes,
    k5PrefixGroup0010Row0097_passes,
    k5PrefixGroup0010Row0098_passes,
    k5PrefixGroup0010Row0099_passes,
    k5PrefixGroup0010Row0100_passes,
    k5PrefixGroup0010Row0101_passes,
    k5PrefixGroup0010Row0102_passes,
    k5PrefixGroup0010Row0103_passes,
    k5PrefixGroup0010Row0104_passes,
    k5PrefixGroup0010Row0105_passes,
    k5PrefixGroup0010Row0106_passes,
    k5PrefixGroup0010Row0107_passes,
    k5PrefixGroup0010Row0108_passes,
    k5PrefixGroup0010Row0109_passes,
    k5PrefixGroup0010Row0110_passes,
    k5PrefixGroup0010Row0111_passes,
    k5PrefixGroup0010Row0112_passes,
    k5PrefixGroup0010Row0113_passes,
    k5PrefixGroup0010Row0114_passes,
    k5PrefixGroup0010Row0115_passes,
    k5PrefixGroup0010Row0116_passes,
    k5PrefixGroup0010Row0117_passes,
    k5PrefixGroup0010Row0118_passes,
    k5PrefixGroup0010Row0119_passes,
    k5PrefixGroup0010Row0120_passes,
    k5PrefixGroup0010Row0121_passes,
    k5PrefixGroup0010Row0122_passes,
    k5PrefixGroup0010Row0123_passes,
    k5PrefixGroup0010Row0124_passes,
    k5PrefixGroup0010Row0125_passes,
    k5PrefixGroup0010Row0126_passes,
    k5PrefixGroup0010Row0127_passes]

theorem k5PrefixGroup0010_mask_upper :
    k5PrefixGroup0010.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0010, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0010Row0000_mask_upper,
    k5PrefixGroup0010Row0001_mask_upper,
    k5PrefixGroup0010Row0002_mask_upper,
    k5PrefixGroup0010Row0003_mask_upper,
    k5PrefixGroup0010Row0004_mask_upper,
    k5PrefixGroup0010Row0005_mask_upper,
    k5PrefixGroup0010Row0006_mask_upper,
    k5PrefixGroup0010Row0007_mask_upper,
    k5PrefixGroup0010Row0008_mask_upper,
    k5PrefixGroup0010Row0009_mask_upper,
    k5PrefixGroup0010Row0010_mask_upper,
    k5PrefixGroup0010Row0011_mask_upper,
    k5PrefixGroup0010Row0012_mask_upper,
    k5PrefixGroup0010Row0013_mask_upper,
    k5PrefixGroup0010Row0014_mask_upper,
    k5PrefixGroup0010Row0015_mask_upper,
    k5PrefixGroup0010Row0016_mask_upper,
    k5PrefixGroup0010Row0017_mask_upper,
    k5PrefixGroup0010Row0018_mask_upper,
    k5PrefixGroup0010Row0019_mask_upper,
    k5PrefixGroup0010Row0020_mask_upper,
    k5PrefixGroup0010Row0021_mask_upper,
    k5PrefixGroup0010Row0022_mask_upper,
    k5PrefixGroup0010Row0023_mask_upper,
    k5PrefixGroup0010Row0024_mask_upper,
    k5PrefixGroup0010Row0025_mask_upper,
    k5PrefixGroup0010Row0026_mask_upper,
    k5PrefixGroup0010Row0027_mask_upper,
    k5PrefixGroup0010Row0028_mask_upper,
    k5PrefixGroup0010Row0029_mask_upper,
    k5PrefixGroup0010Row0030_mask_upper,
    k5PrefixGroup0010Row0031_mask_upper,
    k5PrefixGroup0010Row0032_mask_upper,
    k5PrefixGroup0010Row0033_mask_upper,
    k5PrefixGroup0010Row0034_mask_upper,
    k5PrefixGroup0010Row0035_mask_upper,
    k5PrefixGroup0010Row0036_mask_upper,
    k5PrefixGroup0010Row0037_mask_upper,
    k5PrefixGroup0010Row0038_mask_upper,
    k5PrefixGroup0010Row0039_mask_upper,
    k5PrefixGroup0010Row0040_mask_upper,
    k5PrefixGroup0010Row0041_mask_upper,
    k5PrefixGroup0010Row0042_mask_upper,
    k5PrefixGroup0010Row0043_mask_upper,
    k5PrefixGroup0010Row0044_mask_upper,
    k5PrefixGroup0010Row0045_mask_upper,
    k5PrefixGroup0010Row0046_mask_upper,
    k5PrefixGroup0010Row0047_mask_upper,
    k5PrefixGroup0010Row0048_mask_upper,
    k5PrefixGroup0010Row0049_mask_upper,
    k5PrefixGroup0010Row0050_mask_upper,
    k5PrefixGroup0010Row0051_mask_upper,
    k5PrefixGroup0010Row0052_mask_upper,
    k5PrefixGroup0010Row0053_mask_upper,
    k5PrefixGroup0010Row0054_mask_upper,
    k5PrefixGroup0010Row0055_mask_upper,
    k5PrefixGroup0010Row0056_mask_upper,
    k5PrefixGroup0010Row0057_mask_upper,
    k5PrefixGroup0010Row0058_mask_upper,
    k5PrefixGroup0010Row0059_mask_upper,
    k5PrefixGroup0010Row0060_mask_upper,
    k5PrefixGroup0010Row0061_mask_upper,
    k5PrefixGroup0010Row0062_mask_upper,
    k5PrefixGroup0010Row0063_mask_upper,
    k5PrefixGroup0010Row0064_mask_upper,
    k5PrefixGroup0010Row0065_mask_upper,
    k5PrefixGroup0010Row0066_mask_upper,
    k5PrefixGroup0010Row0067_mask_upper,
    k5PrefixGroup0010Row0068_mask_upper,
    k5PrefixGroup0010Row0069_mask_upper,
    k5PrefixGroup0010Row0070_mask_upper,
    k5PrefixGroup0010Row0071_mask_upper,
    k5PrefixGroup0010Row0072_mask_upper,
    k5PrefixGroup0010Row0073_mask_upper,
    k5PrefixGroup0010Row0074_mask_upper,
    k5PrefixGroup0010Row0075_mask_upper,
    k5PrefixGroup0010Row0076_mask_upper,
    k5PrefixGroup0010Row0077_mask_upper,
    k5PrefixGroup0010Row0078_mask_upper,
    k5PrefixGroup0010Row0079_mask_upper,
    k5PrefixGroup0010Row0080_mask_upper,
    k5PrefixGroup0010Row0081_mask_upper,
    k5PrefixGroup0010Row0082_mask_upper,
    k5PrefixGroup0010Row0083_mask_upper,
    k5PrefixGroup0010Row0084_mask_upper,
    k5PrefixGroup0010Row0085_mask_upper,
    k5PrefixGroup0010Row0086_mask_upper,
    k5PrefixGroup0010Row0087_mask_upper,
    k5PrefixGroup0010Row0088_mask_upper,
    k5PrefixGroup0010Row0089_mask_upper,
    k5PrefixGroup0010Row0090_mask_upper,
    k5PrefixGroup0010Row0091_mask_upper,
    k5PrefixGroup0010Row0092_mask_upper,
    k5PrefixGroup0010Row0093_mask_upper,
    k5PrefixGroup0010Row0094_mask_upper,
    k5PrefixGroup0010Row0095_mask_upper,
    k5PrefixGroup0010Row0096_mask_upper,
    k5PrefixGroup0010Row0097_mask_upper,
    k5PrefixGroup0010Row0098_mask_upper,
    k5PrefixGroup0010Row0099_mask_upper,
    k5PrefixGroup0010Row0100_mask_upper,
    k5PrefixGroup0010Row0101_mask_upper,
    k5PrefixGroup0010Row0102_mask_upper,
    k5PrefixGroup0010Row0103_mask_upper,
    k5PrefixGroup0010Row0104_mask_upper,
    k5PrefixGroup0010Row0105_mask_upper,
    k5PrefixGroup0010Row0106_mask_upper,
    k5PrefixGroup0010Row0107_mask_upper,
    k5PrefixGroup0010Row0108_mask_upper,
    k5PrefixGroup0010Row0109_mask_upper,
    k5PrefixGroup0010Row0110_mask_upper,
    k5PrefixGroup0010Row0111_mask_upper,
    k5PrefixGroup0010Row0112_mask_upper,
    k5PrefixGroup0010Row0113_mask_upper,
    k5PrefixGroup0010Row0114_mask_upper,
    k5PrefixGroup0010Row0115_mask_upper,
    k5PrefixGroup0010Row0116_mask_upper,
    k5PrefixGroup0010Row0117_mask_upper,
    k5PrefixGroup0010Row0118_mask_upper,
    k5PrefixGroup0010Row0119_mask_upper,
    k5PrefixGroup0010Row0120_mask_upper,
    k5PrefixGroup0010Row0121_mask_upper,
    k5PrefixGroup0010Row0122_mask_upper,
    k5PrefixGroup0010Row0123_mask_upper,
    k5PrefixGroup0010Row0124_mask_upper,
    k5PrefixGroup0010Row0125_mask_upper,
    k5PrefixGroup0010Row0126_mask_upper,
    k5PrefixGroup0010Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
