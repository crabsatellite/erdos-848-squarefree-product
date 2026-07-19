import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0011 : List (List ℕ) :=
  [[3, 11, 17, 263],
     [3, 11, 17, 269],
     [3, 11, 17, 271],
     [3, 11, 17, 277],
     [3, 11, 17, 281],
     [3, 11, 17, 283],
     [3, 11, 17, 293],
     [3, 11, 17, 307],
     [3, 11, 17, 311],
     [3, 11, 17, 313],
     [3, 11, 17, 317],
     [3, 11, 17, 331],
     [3, 11, 17, 337],
     [3, 11, 17, 347],
     [3, 11, 17, 349],
     [3, 11, 17, 353],
     [3, 11, 17, 359],
     [3, 11, 17, 367],
     [3, 11, 17, 373],
     [3, 11, 17, 379],
     [3, 11, 17, 383],
     [3, 11, 17, 389],
     [3, 11, 17, 397],
     [3, 11, 17, 401],
     [3, 11, 17, 409],
     [3, 11, 19, 23],
     [3, 11, 19, 29],
     [3, 11, 19, 31],
     [3, 11, 19, 37],
     [3, 11, 19, 41],
     [3, 11, 19, 43],
     [3, 11, 19, 47],
     [3, 11, 19, 53],
     [3, 11, 19, 59],
     [3, 11, 19, 61],
     [3, 11, 19, 67],
     [3, 11, 19, 71],
     [3, 11, 19, 73],
     [3, 11, 19, 79],
     [3, 11, 19, 83],
     [3, 11, 19, 89],
     [3, 11, 19, 97],
     [3, 11, 19, 101],
     [3, 11, 19, 103],
     [3, 11, 19, 107],
     [3, 11, 19, 109],
     [3, 11, 19, 113],
     [3, 11, 19, 127],
     [3, 11, 19, 131],
     [3, 11, 19, 137],
     [3, 11, 19, 139],
     [3, 11, 19, 149],
     [3, 11, 19, 151],
     [3, 11, 19, 157],
     [3, 11, 19, 163],
     [3, 11, 19, 167],
     [3, 11, 19, 173],
     [3, 11, 19, 179],
     [3, 11, 19, 181],
     [3, 11, 19, 191],
     [3, 11, 19, 193],
     [3, 11, 19, 197],
     [3, 11, 19, 199],
     [3, 11, 19, 211],
     [3, 11, 19, 223],
     [3, 11, 19, 227],
     [3, 11, 19, 229],
     [3, 11, 19, 233],
     [3, 11, 19, 239],
     [3, 11, 19, 241],
     [3, 11, 19, 251],
     [3, 11, 19, 257],
     [3, 11, 19, 263],
     [3, 11, 19, 269],
     [3, 11, 19, 271],
     [3, 11, 19, 277],
     [3, 11, 19, 281],
     [3, 11, 19, 283],
     [3, 11, 19, 293],
     [3, 11, 19, 307],
     [3, 11, 19, 311],
     [3, 11, 19, 313],
     [3, 11, 19, 317],
     [3, 11, 19, 331],
     [3, 11, 19, 337],
     [3, 11, 19, 347],
     [3, 11, 19, 349],
     [3, 11, 19, 353],
     [3, 11, 19, 359],
     [3, 11, 19, 367],
     [3, 11, 19, 373],
     [3, 11, 19, 379],
     [3, 11, 19, 383],
     [3, 11, 23, 29],
     [3, 11, 23, 31],
     [3, 11, 23, 37],
     [3, 11, 23, 41],
     [3, 11, 23, 43],
     [3, 11, 23, 47],
     [3, 11, 23, 53],
     [3, 11, 23, 59],
     [3, 11, 23, 61],
     [3, 11, 23, 67],
     [3, 11, 23, 71],
     [3, 11, 23, 73],
     [3, 11, 23, 79],
     [3, 11, 23, 83],
     [3, 11, 23, 89],
     [3, 11, 23, 97],
     [3, 11, 23, 101],
     [3, 11, 23, 103],
     [3, 11, 23, 107],
     [3, 11, 23, 109],
     [3, 11, 23, 113],
     [3, 11, 23, 127],
     [3, 11, 23, 131],
     [3, 11, 23, 137],
     [3, 11, 23, 139],
     [3, 11, 23, 149],
     [3, 11, 23, 151],
     [3, 11, 23, 157],
     [3, 11, 23, 163],
     [3, 11, 23, 167],
     [3, 11, 23, 173],
     [3, 11, 23, 179],
     [3, 11, 23, 181],
     [3, 11, 23, 191],
     [3, 11, 23, 193]]

theorem k5PrefixGroup0011Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 263] = true := by
  decide

theorem k5PrefixGroup0011Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 263] = true := by
  decide

theorem k5PrefixGroup0011Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 269] = true := by
  decide

theorem k5PrefixGroup0011Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 269] = true := by
  decide

theorem k5PrefixGroup0011Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 271] = true := by
  decide

theorem k5PrefixGroup0011Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 271] = true := by
  decide

theorem k5PrefixGroup0011Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 277] = true := by
  decide

theorem k5PrefixGroup0011Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 277] = true := by
  decide

theorem k5PrefixGroup0011Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 281] = true := by
  decide

theorem k5PrefixGroup0011Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 281] = true := by
  decide

theorem k5PrefixGroup0011Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 283] = true := by
  decide

theorem k5PrefixGroup0011Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 283] = true := by
  decide

theorem k5PrefixGroup0011Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 293] = true := by
  decide

theorem k5PrefixGroup0011Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 293] = true := by
  decide

theorem k5PrefixGroup0011Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 307] = true := by
  decide

theorem k5PrefixGroup0011Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 307] = true := by
  decide

theorem k5PrefixGroup0011Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 311] = true := by
  decide

theorem k5PrefixGroup0011Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 311] = true := by
  decide

theorem k5PrefixGroup0011Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 313] = true := by
  decide

theorem k5PrefixGroup0011Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 313] = true := by
  decide

theorem k5PrefixGroup0011Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 317] = true := by
  decide

theorem k5PrefixGroup0011Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 317] = true := by
  decide

theorem k5PrefixGroup0011Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 331] = true := by
  decide

theorem k5PrefixGroup0011Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 331] = true := by
  decide

theorem k5PrefixGroup0011Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 337] = true := by
  decide

theorem k5PrefixGroup0011Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 337] = true := by
  decide

theorem k5PrefixGroup0011Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 347] = true := by
  decide

theorem k5PrefixGroup0011Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 347] = true := by
  decide

theorem k5PrefixGroup0011Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 349] = true := by
  decide

theorem k5PrefixGroup0011Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 349] = true := by
  decide

theorem k5PrefixGroup0011Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 353] = true := by
  decide

theorem k5PrefixGroup0011Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 353] = true := by
  decide

theorem k5PrefixGroup0011Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 359] = true := by
  decide

theorem k5PrefixGroup0011Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 359] = true := by
  decide

theorem k5PrefixGroup0011Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 367] = true := by
  decide

theorem k5PrefixGroup0011Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 367] = true := by
  decide

theorem k5PrefixGroup0011Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 373] = true := by
  decide

theorem k5PrefixGroup0011Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 373] = true := by
  decide

theorem k5PrefixGroup0011Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 379] = true := by
  decide

theorem k5PrefixGroup0011Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 379] = true := by
  decide

theorem k5PrefixGroup0011Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 383] = true := by
  decide

theorem k5PrefixGroup0011Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 383] = true := by
  decide

theorem k5PrefixGroup0011Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 389] = true := by
  decide

theorem k5PrefixGroup0011Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 389] = true := by
  decide

theorem k5PrefixGroup0011Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 397] = true := by
  decide

theorem k5PrefixGroup0011Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 397] = true := by
  decide

theorem k5PrefixGroup0011Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 401] = true := by
  decide

theorem k5PrefixGroup0011Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 401] = true := by
  decide

theorem k5PrefixGroup0011Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 17, 409] = true := by
  decide

theorem k5PrefixGroup0011Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 17, 409] = true := by
  decide

theorem k5PrefixGroup0011Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 23] = true := by
  decide

theorem k5PrefixGroup0011Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 23] = true := by
  decide

theorem k5PrefixGroup0011Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 29] = true := by
  decide

theorem k5PrefixGroup0011Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 29] = true := by
  decide

theorem k5PrefixGroup0011Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 31] = true := by
  decide

theorem k5PrefixGroup0011Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 31] = true := by
  decide

theorem k5PrefixGroup0011Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 37] = true := by
  decide

theorem k5PrefixGroup0011Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 37] = true := by
  decide

theorem k5PrefixGroup0011Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 41] = true := by
  decide

theorem k5PrefixGroup0011Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 41] = true := by
  decide

theorem k5PrefixGroup0011Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 43] = true := by
  decide

theorem k5PrefixGroup0011Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 43] = true := by
  decide

theorem k5PrefixGroup0011Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 47] = true := by
  decide

theorem k5PrefixGroup0011Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 47] = true := by
  decide

theorem k5PrefixGroup0011Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 53] = true := by
  decide

theorem k5PrefixGroup0011Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 53] = true := by
  decide

theorem k5PrefixGroup0011Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 59] = true := by
  decide

theorem k5PrefixGroup0011Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 59] = true := by
  decide

theorem k5PrefixGroup0011Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 61] = true := by
  decide

theorem k5PrefixGroup0011Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 61] = true := by
  decide

theorem k5PrefixGroup0011Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 67] = true := by
  decide

theorem k5PrefixGroup0011Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 67] = true := by
  decide

theorem k5PrefixGroup0011Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 71] = true := by
  decide

theorem k5PrefixGroup0011Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 71] = true := by
  decide

theorem k5PrefixGroup0011Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 73] = true := by
  decide

theorem k5PrefixGroup0011Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 73] = true := by
  decide

theorem k5PrefixGroup0011Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 79] = true := by
  decide

theorem k5PrefixGroup0011Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 79] = true := by
  decide

theorem k5PrefixGroup0011Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 83] = true := by
  decide

theorem k5PrefixGroup0011Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 83] = true := by
  decide

theorem k5PrefixGroup0011Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 89] = true := by
  decide

theorem k5PrefixGroup0011Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 89] = true := by
  decide

theorem k5PrefixGroup0011Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 97] = true := by
  decide

theorem k5PrefixGroup0011Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 97] = true := by
  decide

theorem k5PrefixGroup0011Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 101] = true := by
  decide

theorem k5PrefixGroup0011Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 101] = true := by
  decide

theorem k5PrefixGroup0011Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 103] = true := by
  decide

theorem k5PrefixGroup0011Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 103] = true := by
  decide

theorem k5PrefixGroup0011Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 107] = true := by
  decide

theorem k5PrefixGroup0011Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 107] = true := by
  decide

theorem k5PrefixGroup0011Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 109] = true := by
  decide

theorem k5PrefixGroup0011Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 109] = true := by
  decide

theorem k5PrefixGroup0011Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 113] = true := by
  decide

theorem k5PrefixGroup0011Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 113] = true := by
  decide

theorem k5PrefixGroup0011Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 127] = true := by
  decide

theorem k5PrefixGroup0011Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 127] = true := by
  decide

theorem k5PrefixGroup0011Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 131] = true := by
  decide

theorem k5PrefixGroup0011Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 131] = true := by
  decide

theorem k5PrefixGroup0011Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 137] = true := by
  decide

theorem k5PrefixGroup0011Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 137] = true := by
  decide

theorem k5PrefixGroup0011Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 139] = true := by
  decide

theorem k5PrefixGroup0011Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 139] = true := by
  decide

theorem k5PrefixGroup0011Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 149] = true := by
  decide

theorem k5PrefixGroup0011Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 149] = true := by
  decide

theorem k5PrefixGroup0011Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 151] = true := by
  decide

theorem k5PrefixGroup0011Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 151] = true := by
  decide

theorem k5PrefixGroup0011Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 157] = true := by
  decide

theorem k5PrefixGroup0011Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 157] = true := by
  decide

theorem k5PrefixGroup0011Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 163] = true := by
  decide

theorem k5PrefixGroup0011Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 163] = true := by
  decide

theorem k5PrefixGroup0011Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 167] = true := by
  decide

theorem k5PrefixGroup0011Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 167] = true := by
  decide

theorem k5PrefixGroup0011Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 173] = true := by
  decide

theorem k5PrefixGroup0011Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 173] = true := by
  decide

theorem k5PrefixGroup0011Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 179] = true := by
  decide

theorem k5PrefixGroup0011Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 179] = true := by
  decide

theorem k5PrefixGroup0011Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 181] = true := by
  decide

theorem k5PrefixGroup0011Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 181] = true := by
  decide

theorem k5PrefixGroup0011Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 191] = true := by
  decide

theorem k5PrefixGroup0011Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 191] = true := by
  decide

theorem k5PrefixGroup0011Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 193] = true := by
  decide

theorem k5PrefixGroup0011Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 193] = true := by
  decide

theorem k5PrefixGroup0011Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 197] = true := by
  decide

theorem k5PrefixGroup0011Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 197] = true := by
  decide

theorem k5PrefixGroup0011Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 199] = true := by
  decide

theorem k5PrefixGroup0011Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 199] = true := by
  decide

theorem k5PrefixGroup0011Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 211] = true := by
  decide

theorem k5PrefixGroup0011Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 211] = true := by
  decide

theorem k5PrefixGroup0011Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 223] = true := by
  decide

theorem k5PrefixGroup0011Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 223] = true := by
  decide

theorem k5PrefixGroup0011Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 227] = true := by
  decide

theorem k5PrefixGroup0011Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 227] = true := by
  decide

theorem k5PrefixGroup0011Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 229] = true := by
  decide

theorem k5PrefixGroup0011Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 229] = true := by
  decide

theorem k5PrefixGroup0011Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 233] = true := by
  decide

theorem k5PrefixGroup0011Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 233] = true := by
  decide

theorem k5PrefixGroup0011Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 239] = true := by
  decide

theorem k5PrefixGroup0011Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 239] = true := by
  decide

theorem k5PrefixGroup0011Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 241] = true := by
  decide

theorem k5PrefixGroup0011Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 241] = true := by
  decide

theorem k5PrefixGroup0011Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 251] = true := by
  decide

theorem k5PrefixGroup0011Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 251] = true := by
  decide

theorem k5PrefixGroup0011Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 257] = true := by
  decide

theorem k5PrefixGroup0011Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 257] = true := by
  decide

theorem k5PrefixGroup0011Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 263] = true := by
  decide

theorem k5PrefixGroup0011Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 263] = true := by
  decide

theorem k5PrefixGroup0011Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 269] = true := by
  decide

theorem k5PrefixGroup0011Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 269] = true := by
  decide

theorem k5PrefixGroup0011Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 271] = true := by
  decide

theorem k5PrefixGroup0011Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 271] = true := by
  decide

theorem k5PrefixGroup0011Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 277] = true := by
  decide

theorem k5PrefixGroup0011Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 277] = true := by
  decide

theorem k5PrefixGroup0011Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 281] = true := by
  decide

theorem k5PrefixGroup0011Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 281] = true := by
  decide

theorem k5PrefixGroup0011Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 283] = true := by
  decide

theorem k5PrefixGroup0011Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 283] = true := by
  decide

theorem k5PrefixGroup0011Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 293] = true := by
  decide

theorem k5PrefixGroup0011Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 293] = true := by
  decide

theorem k5PrefixGroup0011Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 307] = true := by
  decide

theorem k5PrefixGroup0011Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 307] = true := by
  decide

theorem k5PrefixGroup0011Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 311] = true := by
  decide

theorem k5PrefixGroup0011Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 311] = true := by
  decide

theorem k5PrefixGroup0011Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 313] = true := by
  decide

theorem k5PrefixGroup0011Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 313] = true := by
  decide

theorem k5PrefixGroup0011Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 317] = true := by
  decide

theorem k5PrefixGroup0011Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 317] = true := by
  decide

theorem k5PrefixGroup0011Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 331] = true := by
  decide

theorem k5PrefixGroup0011Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 331] = true := by
  decide

theorem k5PrefixGroup0011Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 337] = true := by
  decide

theorem k5PrefixGroup0011Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 337] = true := by
  decide

theorem k5PrefixGroup0011Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 347] = true := by
  decide

theorem k5PrefixGroup0011Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 347] = true := by
  decide

theorem k5PrefixGroup0011Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 349] = true := by
  decide

theorem k5PrefixGroup0011Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 349] = true := by
  decide

theorem k5PrefixGroup0011Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 353] = true := by
  decide

theorem k5PrefixGroup0011Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 353] = true := by
  decide

theorem k5PrefixGroup0011Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 359] = true := by
  decide

theorem k5PrefixGroup0011Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 359] = true := by
  decide

theorem k5PrefixGroup0011Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 367] = true := by
  decide

theorem k5PrefixGroup0011Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 367] = true := by
  decide

theorem k5PrefixGroup0011Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 373] = true := by
  decide

theorem k5PrefixGroup0011Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 373] = true := by
  decide

theorem k5PrefixGroup0011Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 379] = true := by
  decide

theorem k5PrefixGroup0011Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 379] = true := by
  decide

theorem k5PrefixGroup0011Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 19, 383] = true := by
  decide

theorem k5PrefixGroup0011Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 19, 383] = true := by
  decide

theorem k5PrefixGroup0011Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 29] = true := by
  decide

theorem k5PrefixGroup0011Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 29] = true := by
  decide

theorem k5PrefixGroup0011Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 31] = true := by
  decide

theorem k5PrefixGroup0011Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 31] = true := by
  decide

theorem k5PrefixGroup0011Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 37] = true := by
  decide

theorem k5PrefixGroup0011Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 37] = true := by
  decide

theorem k5PrefixGroup0011Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 41] = true := by
  decide

theorem k5PrefixGroup0011Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 41] = true := by
  decide

theorem k5PrefixGroup0011Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 43] = true := by
  decide

theorem k5PrefixGroup0011Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 43] = true := by
  decide

theorem k5PrefixGroup0011Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 47] = true := by
  decide

theorem k5PrefixGroup0011Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 47] = true := by
  decide

theorem k5PrefixGroup0011Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 53] = true := by
  decide

theorem k5PrefixGroup0011Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 53] = true := by
  decide

theorem k5PrefixGroup0011Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 59] = true := by
  decide

theorem k5PrefixGroup0011Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 59] = true := by
  decide

theorem k5PrefixGroup0011Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 61] = true := by
  decide

theorem k5PrefixGroup0011Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 61] = true := by
  decide

theorem k5PrefixGroup0011Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 67] = true := by
  decide

theorem k5PrefixGroup0011Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 67] = true := by
  decide

theorem k5PrefixGroup0011Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 71] = true := by
  decide

theorem k5PrefixGroup0011Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 71] = true := by
  decide

theorem k5PrefixGroup0011Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 73] = true := by
  decide

theorem k5PrefixGroup0011Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 73] = true := by
  decide

theorem k5PrefixGroup0011Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 79] = true := by
  decide

theorem k5PrefixGroup0011Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 79] = true := by
  decide

theorem k5PrefixGroup0011Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 83] = true := by
  decide

theorem k5PrefixGroup0011Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 83] = true := by
  decide

theorem k5PrefixGroup0011Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 89] = true := by
  decide

theorem k5PrefixGroup0011Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 89] = true := by
  decide

theorem k5PrefixGroup0011Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 97] = true := by
  decide

theorem k5PrefixGroup0011Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 97] = true := by
  decide

theorem k5PrefixGroup0011Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 101] = true := by
  decide

theorem k5PrefixGroup0011Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 101] = true := by
  decide

theorem k5PrefixGroup0011Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 103] = true := by
  decide

theorem k5PrefixGroup0011Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 103] = true := by
  decide

theorem k5PrefixGroup0011Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 107] = true := by
  decide

theorem k5PrefixGroup0011Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 107] = true := by
  decide

theorem k5PrefixGroup0011Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 109] = true := by
  decide

theorem k5PrefixGroup0011Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 109] = true := by
  decide

theorem k5PrefixGroup0011Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 113] = true := by
  decide

theorem k5PrefixGroup0011Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 113] = true := by
  decide

theorem k5PrefixGroup0011Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 127] = true := by
  decide

theorem k5PrefixGroup0011Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 127] = true := by
  decide

theorem k5PrefixGroup0011Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 131] = true := by
  decide

theorem k5PrefixGroup0011Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 131] = true := by
  decide

theorem k5PrefixGroup0011Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 137] = true := by
  decide

theorem k5PrefixGroup0011Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 137] = true := by
  decide

theorem k5PrefixGroup0011Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 139] = true := by
  decide

theorem k5PrefixGroup0011Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 139] = true := by
  decide

theorem k5PrefixGroup0011Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 149] = true := by
  decide

theorem k5PrefixGroup0011Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 149] = true := by
  decide

theorem k5PrefixGroup0011Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 151] = true := by
  decide

theorem k5PrefixGroup0011Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 151] = true := by
  decide

theorem k5PrefixGroup0011Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 157] = true := by
  decide

theorem k5PrefixGroup0011Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 157] = true := by
  decide

theorem k5PrefixGroup0011Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 163] = true := by
  decide

theorem k5PrefixGroup0011Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 163] = true := by
  decide

theorem k5PrefixGroup0011Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 167] = true := by
  decide

theorem k5PrefixGroup0011Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 167] = true := by
  decide

theorem k5PrefixGroup0011Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 173] = true := by
  decide

theorem k5PrefixGroup0011Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 173] = true := by
  decide

theorem k5PrefixGroup0011Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 179] = true := by
  decide

theorem k5PrefixGroup0011Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 179] = true := by
  decide

theorem k5PrefixGroup0011Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 181] = true := by
  decide

theorem k5PrefixGroup0011Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 181] = true := by
  decide

theorem k5PrefixGroup0011Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 191] = true := by
  decide

theorem k5PrefixGroup0011Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 191] = true := by
  decide

theorem k5PrefixGroup0011Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 11, 23, 193] = true := by
  decide

theorem k5PrefixGroup0011Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 11, 23, 193] = true := by
  decide

theorem k5PrefixGroup0011_passes :
    k5PrefixGroup0011.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0011, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0011Row0000_passes,
    k5PrefixGroup0011Row0001_passes,
    k5PrefixGroup0011Row0002_passes,
    k5PrefixGroup0011Row0003_passes,
    k5PrefixGroup0011Row0004_passes,
    k5PrefixGroup0011Row0005_passes,
    k5PrefixGroup0011Row0006_passes,
    k5PrefixGroup0011Row0007_passes,
    k5PrefixGroup0011Row0008_passes,
    k5PrefixGroup0011Row0009_passes,
    k5PrefixGroup0011Row0010_passes,
    k5PrefixGroup0011Row0011_passes,
    k5PrefixGroup0011Row0012_passes,
    k5PrefixGroup0011Row0013_passes,
    k5PrefixGroup0011Row0014_passes,
    k5PrefixGroup0011Row0015_passes,
    k5PrefixGroup0011Row0016_passes,
    k5PrefixGroup0011Row0017_passes,
    k5PrefixGroup0011Row0018_passes,
    k5PrefixGroup0011Row0019_passes,
    k5PrefixGroup0011Row0020_passes,
    k5PrefixGroup0011Row0021_passes,
    k5PrefixGroup0011Row0022_passes,
    k5PrefixGroup0011Row0023_passes,
    k5PrefixGroup0011Row0024_passes,
    k5PrefixGroup0011Row0025_passes,
    k5PrefixGroup0011Row0026_passes,
    k5PrefixGroup0011Row0027_passes,
    k5PrefixGroup0011Row0028_passes,
    k5PrefixGroup0011Row0029_passes,
    k5PrefixGroup0011Row0030_passes,
    k5PrefixGroup0011Row0031_passes,
    k5PrefixGroup0011Row0032_passes,
    k5PrefixGroup0011Row0033_passes,
    k5PrefixGroup0011Row0034_passes,
    k5PrefixGroup0011Row0035_passes,
    k5PrefixGroup0011Row0036_passes,
    k5PrefixGroup0011Row0037_passes,
    k5PrefixGroup0011Row0038_passes,
    k5PrefixGroup0011Row0039_passes,
    k5PrefixGroup0011Row0040_passes,
    k5PrefixGroup0011Row0041_passes,
    k5PrefixGroup0011Row0042_passes,
    k5PrefixGroup0011Row0043_passes,
    k5PrefixGroup0011Row0044_passes,
    k5PrefixGroup0011Row0045_passes,
    k5PrefixGroup0011Row0046_passes,
    k5PrefixGroup0011Row0047_passes,
    k5PrefixGroup0011Row0048_passes,
    k5PrefixGroup0011Row0049_passes,
    k5PrefixGroup0011Row0050_passes,
    k5PrefixGroup0011Row0051_passes,
    k5PrefixGroup0011Row0052_passes,
    k5PrefixGroup0011Row0053_passes,
    k5PrefixGroup0011Row0054_passes,
    k5PrefixGroup0011Row0055_passes,
    k5PrefixGroup0011Row0056_passes,
    k5PrefixGroup0011Row0057_passes,
    k5PrefixGroup0011Row0058_passes,
    k5PrefixGroup0011Row0059_passes,
    k5PrefixGroup0011Row0060_passes,
    k5PrefixGroup0011Row0061_passes,
    k5PrefixGroup0011Row0062_passes,
    k5PrefixGroup0011Row0063_passes,
    k5PrefixGroup0011Row0064_passes,
    k5PrefixGroup0011Row0065_passes,
    k5PrefixGroup0011Row0066_passes,
    k5PrefixGroup0011Row0067_passes,
    k5PrefixGroup0011Row0068_passes,
    k5PrefixGroup0011Row0069_passes,
    k5PrefixGroup0011Row0070_passes,
    k5PrefixGroup0011Row0071_passes,
    k5PrefixGroup0011Row0072_passes,
    k5PrefixGroup0011Row0073_passes,
    k5PrefixGroup0011Row0074_passes,
    k5PrefixGroup0011Row0075_passes,
    k5PrefixGroup0011Row0076_passes,
    k5PrefixGroup0011Row0077_passes,
    k5PrefixGroup0011Row0078_passes,
    k5PrefixGroup0011Row0079_passes,
    k5PrefixGroup0011Row0080_passes,
    k5PrefixGroup0011Row0081_passes,
    k5PrefixGroup0011Row0082_passes,
    k5PrefixGroup0011Row0083_passes,
    k5PrefixGroup0011Row0084_passes,
    k5PrefixGroup0011Row0085_passes,
    k5PrefixGroup0011Row0086_passes,
    k5PrefixGroup0011Row0087_passes,
    k5PrefixGroup0011Row0088_passes,
    k5PrefixGroup0011Row0089_passes,
    k5PrefixGroup0011Row0090_passes,
    k5PrefixGroup0011Row0091_passes,
    k5PrefixGroup0011Row0092_passes,
    k5PrefixGroup0011Row0093_passes,
    k5PrefixGroup0011Row0094_passes,
    k5PrefixGroup0011Row0095_passes,
    k5PrefixGroup0011Row0096_passes,
    k5PrefixGroup0011Row0097_passes,
    k5PrefixGroup0011Row0098_passes,
    k5PrefixGroup0011Row0099_passes,
    k5PrefixGroup0011Row0100_passes,
    k5PrefixGroup0011Row0101_passes,
    k5PrefixGroup0011Row0102_passes,
    k5PrefixGroup0011Row0103_passes,
    k5PrefixGroup0011Row0104_passes,
    k5PrefixGroup0011Row0105_passes,
    k5PrefixGroup0011Row0106_passes,
    k5PrefixGroup0011Row0107_passes,
    k5PrefixGroup0011Row0108_passes,
    k5PrefixGroup0011Row0109_passes,
    k5PrefixGroup0011Row0110_passes,
    k5PrefixGroup0011Row0111_passes,
    k5PrefixGroup0011Row0112_passes,
    k5PrefixGroup0011Row0113_passes,
    k5PrefixGroup0011Row0114_passes,
    k5PrefixGroup0011Row0115_passes,
    k5PrefixGroup0011Row0116_passes,
    k5PrefixGroup0011Row0117_passes,
    k5PrefixGroup0011Row0118_passes,
    k5PrefixGroup0011Row0119_passes,
    k5PrefixGroup0011Row0120_passes,
    k5PrefixGroup0011Row0121_passes,
    k5PrefixGroup0011Row0122_passes,
    k5PrefixGroup0011Row0123_passes,
    k5PrefixGroup0011Row0124_passes,
    k5PrefixGroup0011Row0125_passes,
    k5PrefixGroup0011Row0126_passes,
    k5PrefixGroup0011Row0127_passes]

theorem k5PrefixGroup0011_mask_upper :
    k5PrefixGroup0011.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0011, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0011Row0000_mask_upper,
    k5PrefixGroup0011Row0001_mask_upper,
    k5PrefixGroup0011Row0002_mask_upper,
    k5PrefixGroup0011Row0003_mask_upper,
    k5PrefixGroup0011Row0004_mask_upper,
    k5PrefixGroup0011Row0005_mask_upper,
    k5PrefixGroup0011Row0006_mask_upper,
    k5PrefixGroup0011Row0007_mask_upper,
    k5PrefixGroup0011Row0008_mask_upper,
    k5PrefixGroup0011Row0009_mask_upper,
    k5PrefixGroup0011Row0010_mask_upper,
    k5PrefixGroup0011Row0011_mask_upper,
    k5PrefixGroup0011Row0012_mask_upper,
    k5PrefixGroup0011Row0013_mask_upper,
    k5PrefixGroup0011Row0014_mask_upper,
    k5PrefixGroup0011Row0015_mask_upper,
    k5PrefixGroup0011Row0016_mask_upper,
    k5PrefixGroup0011Row0017_mask_upper,
    k5PrefixGroup0011Row0018_mask_upper,
    k5PrefixGroup0011Row0019_mask_upper,
    k5PrefixGroup0011Row0020_mask_upper,
    k5PrefixGroup0011Row0021_mask_upper,
    k5PrefixGroup0011Row0022_mask_upper,
    k5PrefixGroup0011Row0023_mask_upper,
    k5PrefixGroup0011Row0024_mask_upper,
    k5PrefixGroup0011Row0025_mask_upper,
    k5PrefixGroup0011Row0026_mask_upper,
    k5PrefixGroup0011Row0027_mask_upper,
    k5PrefixGroup0011Row0028_mask_upper,
    k5PrefixGroup0011Row0029_mask_upper,
    k5PrefixGroup0011Row0030_mask_upper,
    k5PrefixGroup0011Row0031_mask_upper,
    k5PrefixGroup0011Row0032_mask_upper,
    k5PrefixGroup0011Row0033_mask_upper,
    k5PrefixGroup0011Row0034_mask_upper,
    k5PrefixGroup0011Row0035_mask_upper,
    k5PrefixGroup0011Row0036_mask_upper,
    k5PrefixGroup0011Row0037_mask_upper,
    k5PrefixGroup0011Row0038_mask_upper,
    k5PrefixGroup0011Row0039_mask_upper,
    k5PrefixGroup0011Row0040_mask_upper,
    k5PrefixGroup0011Row0041_mask_upper,
    k5PrefixGroup0011Row0042_mask_upper,
    k5PrefixGroup0011Row0043_mask_upper,
    k5PrefixGroup0011Row0044_mask_upper,
    k5PrefixGroup0011Row0045_mask_upper,
    k5PrefixGroup0011Row0046_mask_upper,
    k5PrefixGroup0011Row0047_mask_upper,
    k5PrefixGroup0011Row0048_mask_upper,
    k5PrefixGroup0011Row0049_mask_upper,
    k5PrefixGroup0011Row0050_mask_upper,
    k5PrefixGroup0011Row0051_mask_upper,
    k5PrefixGroup0011Row0052_mask_upper,
    k5PrefixGroup0011Row0053_mask_upper,
    k5PrefixGroup0011Row0054_mask_upper,
    k5PrefixGroup0011Row0055_mask_upper,
    k5PrefixGroup0011Row0056_mask_upper,
    k5PrefixGroup0011Row0057_mask_upper,
    k5PrefixGroup0011Row0058_mask_upper,
    k5PrefixGroup0011Row0059_mask_upper,
    k5PrefixGroup0011Row0060_mask_upper,
    k5PrefixGroup0011Row0061_mask_upper,
    k5PrefixGroup0011Row0062_mask_upper,
    k5PrefixGroup0011Row0063_mask_upper,
    k5PrefixGroup0011Row0064_mask_upper,
    k5PrefixGroup0011Row0065_mask_upper,
    k5PrefixGroup0011Row0066_mask_upper,
    k5PrefixGroup0011Row0067_mask_upper,
    k5PrefixGroup0011Row0068_mask_upper,
    k5PrefixGroup0011Row0069_mask_upper,
    k5PrefixGroup0011Row0070_mask_upper,
    k5PrefixGroup0011Row0071_mask_upper,
    k5PrefixGroup0011Row0072_mask_upper,
    k5PrefixGroup0011Row0073_mask_upper,
    k5PrefixGroup0011Row0074_mask_upper,
    k5PrefixGroup0011Row0075_mask_upper,
    k5PrefixGroup0011Row0076_mask_upper,
    k5PrefixGroup0011Row0077_mask_upper,
    k5PrefixGroup0011Row0078_mask_upper,
    k5PrefixGroup0011Row0079_mask_upper,
    k5PrefixGroup0011Row0080_mask_upper,
    k5PrefixGroup0011Row0081_mask_upper,
    k5PrefixGroup0011Row0082_mask_upper,
    k5PrefixGroup0011Row0083_mask_upper,
    k5PrefixGroup0011Row0084_mask_upper,
    k5PrefixGroup0011Row0085_mask_upper,
    k5PrefixGroup0011Row0086_mask_upper,
    k5PrefixGroup0011Row0087_mask_upper,
    k5PrefixGroup0011Row0088_mask_upper,
    k5PrefixGroup0011Row0089_mask_upper,
    k5PrefixGroup0011Row0090_mask_upper,
    k5PrefixGroup0011Row0091_mask_upper,
    k5PrefixGroup0011Row0092_mask_upper,
    k5PrefixGroup0011Row0093_mask_upper,
    k5PrefixGroup0011Row0094_mask_upper,
    k5PrefixGroup0011Row0095_mask_upper,
    k5PrefixGroup0011Row0096_mask_upper,
    k5PrefixGroup0011Row0097_mask_upper,
    k5PrefixGroup0011Row0098_mask_upper,
    k5PrefixGroup0011Row0099_mask_upper,
    k5PrefixGroup0011Row0100_mask_upper,
    k5PrefixGroup0011Row0101_mask_upper,
    k5PrefixGroup0011Row0102_mask_upper,
    k5PrefixGroup0011Row0103_mask_upper,
    k5PrefixGroup0011Row0104_mask_upper,
    k5PrefixGroup0011Row0105_mask_upper,
    k5PrefixGroup0011Row0106_mask_upper,
    k5PrefixGroup0011Row0107_mask_upper,
    k5PrefixGroup0011Row0108_mask_upper,
    k5PrefixGroup0011Row0109_mask_upper,
    k5PrefixGroup0011Row0110_mask_upper,
    k5PrefixGroup0011Row0111_mask_upper,
    k5PrefixGroup0011Row0112_mask_upper,
    k5PrefixGroup0011Row0113_mask_upper,
    k5PrefixGroup0011Row0114_mask_upper,
    k5PrefixGroup0011Row0115_mask_upper,
    k5PrefixGroup0011Row0116_mask_upper,
    k5PrefixGroup0011Row0117_mask_upper,
    k5PrefixGroup0011Row0118_mask_upper,
    k5PrefixGroup0011Row0119_mask_upper,
    k5PrefixGroup0011Row0120_mask_upper,
    k5PrefixGroup0011Row0121_mask_upper,
    k5PrefixGroup0011Row0122_mask_upper,
    k5PrefixGroup0011Row0123_mask_upper,
    k5PrefixGroup0011Row0124_mask_upper,
    k5PrefixGroup0011Row0125_mask_upper,
    k5PrefixGroup0011Row0126_mask_upper,
    k5PrefixGroup0011Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
