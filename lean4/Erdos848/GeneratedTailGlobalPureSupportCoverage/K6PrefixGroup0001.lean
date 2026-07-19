import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 23, 41],
     [3, 7, 11, 23, 43],
     [3, 7, 11, 23, 47],
     [3, 7, 11, 23, 53],
     [3, 7, 11, 23, 59],
     [3, 7, 11, 23, 61],
     [3, 7, 11, 23, 67],
     [3, 7, 11, 23, 71],
     [3, 7, 11, 23, 73],
     [3, 7, 11, 23, 79],
     [3, 7, 11, 23, 83],
     [3, 7, 11, 23, 89],
     [3, 7, 11, 23, 97],
     [3, 7, 11, 23, 101],
     [3, 7, 11, 23, 103],
     [3, 7, 11, 23, 107],
     [3, 7, 11, 23, 109],
     [3, 7, 11, 23, 113],
     [3, 7, 11, 23, 127],
     [3, 7, 11, 23, 131],
     [3, 7, 11, 23, 137],
     [3, 7, 11, 23, 139],
     [3, 7, 11, 23, 149],
     [3, 7, 11, 23, 151],
     [3, 7, 11, 23, 157],
     [3, 7, 11, 23, 163],
     [3, 7, 11, 23, 167],
     [3, 7, 11, 23, 173],
     [3, 7, 11, 23, 179],
     [3, 7, 11, 23, 181],
     [3, 7, 11, 29, 31],
     [3, 7, 11, 29, 37],
     [3, 7, 11, 29, 41],
     [3, 7, 11, 29, 43],
     [3, 7, 11, 29, 47],
     [3, 7, 11, 29, 53],
     [3, 7, 11, 29, 59],
     [3, 7, 11, 29, 61],
     [3, 7, 11, 29, 67],
     [3, 7, 11, 29, 71],
     [3, 7, 11, 29, 73],
     [3, 7, 11, 29, 79],
     [3, 7, 11, 29, 83],
     [3, 7, 11, 29, 89],
     [3, 7, 11, 29, 97],
     [3, 7, 11, 29, 101],
     [3, 7, 11, 29, 103],
     [3, 7, 11, 29, 107],
     [3, 7, 11, 29, 109],
     [3, 7, 11, 29, 113],
     [3, 7, 11, 29, 127],
     [3, 7, 11, 29, 131],
     [3, 7, 11, 29, 137],
     [3, 7, 11, 29, 139],
     [3, 7, 11, 29, 149],
     [3, 7, 11, 29, 151],
     [3, 7, 11, 29, 157],
     [3, 7, 11, 29, 163],
     [3, 7, 11, 31, 37],
     [3, 7, 11, 31, 41],
     [3, 7, 11, 31, 43],
     [3, 7, 11, 31, 47],
     [3, 7, 11, 31, 53],
     [3, 7, 11, 31, 59],
     [3, 7, 11, 31, 61],
     [3, 7, 11, 31, 67],
     [3, 7, 11, 31, 71],
     [3, 7, 11, 31, 73],
     [3, 7, 11, 31, 79],
     [3, 7, 11, 31, 83],
     [3, 7, 11, 31, 89],
     [3, 7, 11, 31, 97],
     [3, 7, 11, 31, 101],
     [3, 7, 11, 31, 103],
     [3, 7, 11, 31, 107],
     [3, 7, 11, 31, 109],
     [3, 7, 11, 31, 113],
     [3, 7, 11, 31, 127],
     [3, 7, 11, 31, 131],
     [3, 7, 11, 31, 137],
     [3, 7, 11, 31, 139],
     [3, 7, 11, 31, 149],
     [3, 7, 11, 31, 151],
     [3, 7, 11, 31, 157],
     [3, 7, 11, 37, 41],
     [3, 7, 11, 37, 43],
     [3, 7, 11, 37, 47],
     [3, 7, 11, 37, 53],
     [3, 7, 11, 37, 59],
     [3, 7, 11, 37, 61],
     [3, 7, 11, 37, 67],
     [3, 7, 11, 37, 71],
     [3, 7, 11, 37, 73],
     [3, 7, 11, 37, 79],
     [3, 7, 11, 37, 83],
     [3, 7, 11, 37, 89],
     [3, 7, 11, 37, 97],
     [3, 7, 11, 37, 101],
     [3, 7, 11, 37, 103],
     [3, 7, 11, 37, 107],
     [3, 7, 11, 37, 109],
     [3, 7, 11, 37, 113],
     [3, 7, 11, 37, 127],
     [3, 7, 11, 37, 131],
     [3, 7, 11, 37, 137],
     [3, 7, 11, 37, 139],
     [3, 7, 11, 37, 149],
     [3, 7, 11, 41, 43],
     [3, 7, 11, 41, 47],
     [3, 7, 11, 41, 53],
     [3, 7, 11, 41, 59],
     [3, 7, 11, 41, 61],
     [3, 7, 11, 41, 67],
     [3, 7, 11, 41, 71],
     [3, 7, 11, 41, 73],
     [3, 7, 11, 41, 79],
     [3, 7, 11, 41, 83],
     [3, 7, 11, 41, 89],
     [3, 7, 11, 41, 97],
     [3, 7, 11, 41, 101],
     [3, 7, 11, 41, 103],
     [3, 7, 11, 41, 107],
     [3, 7, 11, 41, 109],
     [3, 7, 11, 41, 113],
     [3, 7, 11, 41, 127],
     [3, 7, 11, 41, 131],
     [3, 7, 11, 41, 137],
     [3, 7, 11, 43, 47]]

theorem k6PrefixGroup0001Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 163] = true := by
  decide

theorem k6PrefixGroup0001Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 163] = true := by
  decide

theorem k6PrefixGroup0001Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 167] = true := by
  decide

theorem k6PrefixGroup0001Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 167] = true := by
  decide

theorem k6PrefixGroup0001Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 173] = true := by
  decide

theorem k6PrefixGroup0001Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 173] = true := by
  decide

theorem k6PrefixGroup0001Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 179] = true := by
  decide

theorem k6PrefixGroup0001Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 179] = true := by
  decide

theorem k6PrefixGroup0001Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 23, 181] = true := by
  decide

theorem k6PrefixGroup0001Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 181] = true := by
  decide

theorem k6PrefixGroup0001Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 31] = true := by
  decide

theorem k6PrefixGroup0001Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 31] = true := by
  decide

theorem k6PrefixGroup0001Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 37] = true := by
  decide

theorem k6PrefixGroup0001Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 37] = true := by
  decide

theorem k6PrefixGroup0001Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 29, 163] = true := by
  decide

theorem k6PrefixGroup0001Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 29, 163] = true := by
  decide

theorem k6PrefixGroup0001Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 37] = true := by
  decide

theorem k6PrefixGroup0001Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 37] = true := by
  decide

theorem k6PrefixGroup0001Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 151] = true := by
  decide

theorem k6PrefixGroup0001Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 31, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 31, 157] = true := by
  decide

theorem k6PrefixGroup0001Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 41] = true := by
  decide

theorem k6PrefixGroup0001Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 139] = true := by
  decide

theorem k6PrefixGroup0001Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 37, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 37, 149] = true := by
  decide

theorem k6PrefixGroup0001Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 43] = true := by
  decide

theorem k6PrefixGroup0001Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 53] = true := by
  decide

theorem k6PrefixGroup0001Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 59] = true := by
  decide

theorem k6PrefixGroup0001Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 61] = true := by
  decide

theorem k6PrefixGroup0001Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 67] = true := by
  decide

theorem k6PrefixGroup0001Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 71] = true := by
  decide

theorem k6PrefixGroup0001Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 73] = true := by
  decide

theorem k6PrefixGroup0001Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 79] = true := by
  decide

theorem k6PrefixGroup0001Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 83] = true := by
  decide

theorem k6PrefixGroup0001Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 89] = true := by
  decide

theorem k6PrefixGroup0001Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 97] = true := by
  decide

theorem k6PrefixGroup0001Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 101] = true := by
  decide

theorem k6PrefixGroup0001Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 103] = true := by
  decide

theorem k6PrefixGroup0001Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 107] = true := by
  decide

theorem k6PrefixGroup0001Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 109] = true := by
  decide

theorem k6PrefixGroup0001Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 113] = true := by
  decide

theorem k6PrefixGroup0001Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 127] = true := by
  decide

theorem k6PrefixGroup0001Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 131] = true := by
  decide

theorem k6PrefixGroup0001Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 41, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 41, 137] = true := by
  decide

theorem k6PrefixGroup0001Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [3, 7, 11, 43, 47] = true := by
  decide

theorem k6PrefixGroup0001Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 43, 47] = true := by
  decide

theorem k6PrefixGroup0001_passes :
    k6PrefixGroup0001.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6PrefixGroup0001, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0001Row0000_passes,
    k6PrefixGroup0001Row0001_passes,
    k6PrefixGroup0001Row0002_passes,
    k6PrefixGroup0001Row0003_passes,
    k6PrefixGroup0001Row0004_passes,
    k6PrefixGroup0001Row0005_passes,
    k6PrefixGroup0001Row0006_passes,
    k6PrefixGroup0001Row0007_passes,
    k6PrefixGroup0001Row0008_passes,
    k6PrefixGroup0001Row0009_passes,
    k6PrefixGroup0001Row0010_passes,
    k6PrefixGroup0001Row0011_passes,
    k6PrefixGroup0001Row0012_passes,
    k6PrefixGroup0001Row0013_passes,
    k6PrefixGroup0001Row0014_passes,
    k6PrefixGroup0001Row0015_passes,
    k6PrefixGroup0001Row0016_passes,
    k6PrefixGroup0001Row0017_passes,
    k6PrefixGroup0001Row0018_passes,
    k6PrefixGroup0001Row0019_passes,
    k6PrefixGroup0001Row0020_passes,
    k6PrefixGroup0001Row0021_passes,
    k6PrefixGroup0001Row0022_passes,
    k6PrefixGroup0001Row0023_passes,
    k6PrefixGroup0001Row0024_passes,
    k6PrefixGroup0001Row0025_passes,
    k6PrefixGroup0001Row0026_passes,
    k6PrefixGroup0001Row0027_passes,
    k6PrefixGroup0001Row0028_passes,
    k6PrefixGroup0001Row0029_passes,
    k6PrefixGroup0001Row0030_passes,
    k6PrefixGroup0001Row0031_passes,
    k6PrefixGroup0001Row0032_passes,
    k6PrefixGroup0001Row0033_passes,
    k6PrefixGroup0001Row0034_passes,
    k6PrefixGroup0001Row0035_passes,
    k6PrefixGroup0001Row0036_passes,
    k6PrefixGroup0001Row0037_passes,
    k6PrefixGroup0001Row0038_passes,
    k6PrefixGroup0001Row0039_passes,
    k6PrefixGroup0001Row0040_passes,
    k6PrefixGroup0001Row0041_passes,
    k6PrefixGroup0001Row0042_passes,
    k6PrefixGroup0001Row0043_passes,
    k6PrefixGroup0001Row0044_passes,
    k6PrefixGroup0001Row0045_passes,
    k6PrefixGroup0001Row0046_passes,
    k6PrefixGroup0001Row0047_passes,
    k6PrefixGroup0001Row0048_passes,
    k6PrefixGroup0001Row0049_passes,
    k6PrefixGroup0001Row0050_passes,
    k6PrefixGroup0001Row0051_passes,
    k6PrefixGroup0001Row0052_passes,
    k6PrefixGroup0001Row0053_passes,
    k6PrefixGroup0001Row0054_passes,
    k6PrefixGroup0001Row0055_passes,
    k6PrefixGroup0001Row0056_passes,
    k6PrefixGroup0001Row0057_passes,
    k6PrefixGroup0001Row0058_passes,
    k6PrefixGroup0001Row0059_passes,
    k6PrefixGroup0001Row0060_passes,
    k6PrefixGroup0001Row0061_passes,
    k6PrefixGroup0001Row0062_passes,
    k6PrefixGroup0001Row0063_passes,
    k6PrefixGroup0001Row0064_passes,
    k6PrefixGroup0001Row0065_passes,
    k6PrefixGroup0001Row0066_passes,
    k6PrefixGroup0001Row0067_passes,
    k6PrefixGroup0001Row0068_passes,
    k6PrefixGroup0001Row0069_passes,
    k6PrefixGroup0001Row0070_passes,
    k6PrefixGroup0001Row0071_passes,
    k6PrefixGroup0001Row0072_passes,
    k6PrefixGroup0001Row0073_passes,
    k6PrefixGroup0001Row0074_passes,
    k6PrefixGroup0001Row0075_passes,
    k6PrefixGroup0001Row0076_passes,
    k6PrefixGroup0001Row0077_passes,
    k6PrefixGroup0001Row0078_passes,
    k6PrefixGroup0001Row0079_passes,
    k6PrefixGroup0001Row0080_passes,
    k6PrefixGroup0001Row0081_passes,
    k6PrefixGroup0001Row0082_passes,
    k6PrefixGroup0001Row0083_passes,
    k6PrefixGroup0001Row0084_passes,
    k6PrefixGroup0001Row0085_passes,
    k6PrefixGroup0001Row0086_passes,
    k6PrefixGroup0001Row0087_passes,
    k6PrefixGroup0001Row0088_passes,
    k6PrefixGroup0001Row0089_passes,
    k6PrefixGroup0001Row0090_passes,
    k6PrefixGroup0001Row0091_passes,
    k6PrefixGroup0001Row0092_passes,
    k6PrefixGroup0001Row0093_passes,
    k6PrefixGroup0001Row0094_passes,
    k6PrefixGroup0001Row0095_passes,
    k6PrefixGroup0001Row0096_passes,
    k6PrefixGroup0001Row0097_passes,
    k6PrefixGroup0001Row0098_passes,
    k6PrefixGroup0001Row0099_passes,
    k6PrefixGroup0001Row0100_passes,
    k6PrefixGroup0001Row0101_passes,
    k6PrefixGroup0001Row0102_passes,
    k6PrefixGroup0001Row0103_passes,
    k6PrefixGroup0001Row0104_passes,
    k6PrefixGroup0001Row0105_passes,
    k6PrefixGroup0001Row0106_passes,
    k6PrefixGroup0001Row0107_passes,
    k6PrefixGroup0001Row0108_passes,
    k6PrefixGroup0001Row0109_passes,
    k6PrefixGroup0001Row0110_passes,
    k6PrefixGroup0001Row0111_passes,
    k6PrefixGroup0001Row0112_passes,
    k6PrefixGroup0001Row0113_passes,
    k6PrefixGroup0001Row0114_passes,
    k6PrefixGroup0001Row0115_passes,
    k6PrefixGroup0001Row0116_passes,
    k6PrefixGroup0001Row0117_passes,
    k6PrefixGroup0001Row0118_passes,
    k6PrefixGroup0001Row0119_passes,
    k6PrefixGroup0001Row0120_passes,
    k6PrefixGroup0001Row0121_passes,
    k6PrefixGroup0001Row0122_passes,
    k6PrefixGroup0001Row0123_passes,
    k6PrefixGroup0001Row0124_passes,
    k6PrefixGroup0001Row0125_passes,
    k6PrefixGroup0001Row0126_passes,
    k6PrefixGroup0001Row0127_passes]

theorem k6PrefixGroup0001_mask_upper :
    k6PrefixGroup0001.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6PrefixGroup0001, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0001Row0000_mask_upper,
    k6PrefixGroup0001Row0001_mask_upper,
    k6PrefixGroup0001Row0002_mask_upper,
    k6PrefixGroup0001Row0003_mask_upper,
    k6PrefixGroup0001Row0004_mask_upper,
    k6PrefixGroup0001Row0005_mask_upper,
    k6PrefixGroup0001Row0006_mask_upper,
    k6PrefixGroup0001Row0007_mask_upper,
    k6PrefixGroup0001Row0008_mask_upper,
    k6PrefixGroup0001Row0009_mask_upper,
    k6PrefixGroup0001Row0010_mask_upper,
    k6PrefixGroup0001Row0011_mask_upper,
    k6PrefixGroup0001Row0012_mask_upper,
    k6PrefixGroup0001Row0013_mask_upper,
    k6PrefixGroup0001Row0014_mask_upper,
    k6PrefixGroup0001Row0015_mask_upper,
    k6PrefixGroup0001Row0016_mask_upper,
    k6PrefixGroup0001Row0017_mask_upper,
    k6PrefixGroup0001Row0018_mask_upper,
    k6PrefixGroup0001Row0019_mask_upper,
    k6PrefixGroup0001Row0020_mask_upper,
    k6PrefixGroup0001Row0021_mask_upper,
    k6PrefixGroup0001Row0022_mask_upper,
    k6PrefixGroup0001Row0023_mask_upper,
    k6PrefixGroup0001Row0024_mask_upper,
    k6PrefixGroup0001Row0025_mask_upper,
    k6PrefixGroup0001Row0026_mask_upper,
    k6PrefixGroup0001Row0027_mask_upper,
    k6PrefixGroup0001Row0028_mask_upper,
    k6PrefixGroup0001Row0029_mask_upper,
    k6PrefixGroup0001Row0030_mask_upper,
    k6PrefixGroup0001Row0031_mask_upper,
    k6PrefixGroup0001Row0032_mask_upper,
    k6PrefixGroup0001Row0033_mask_upper,
    k6PrefixGroup0001Row0034_mask_upper,
    k6PrefixGroup0001Row0035_mask_upper,
    k6PrefixGroup0001Row0036_mask_upper,
    k6PrefixGroup0001Row0037_mask_upper,
    k6PrefixGroup0001Row0038_mask_upper,
    k6PrefixGroup0001Row0039_mask_upper,
    k6PrefixGroup0001Row0040_mask_upper,
    k6PrefixGroup0001Row0041_mask_upper,
    k6PrefixGroup0001Row0042_mask_upper,
    k6PrefixGroup0001Row0043_mask_upper,
    k6PrefixGroup0001Row0044_mask_upper,
    k6PrefixGroup0001Row0045_mask_upper,
    k6PrefixGroup0001Row0046_mask_upper,
    k6PrefixGroup0001Row0047_mask_upper,
    k6PrefixGroup0001Row0048_mask_upper,
    k6PrefixGroup0001Row0049_mask_upper,
    k6PrefixGroup0001Row0050_mask_upper,
    k6PrefixGroup0001Row0051_mask_upper,
    k6PrefixGroup0001Row0052_mask_upper,
    k6PrefixGroup0001Row0053_mask_upper,
    k6PrefixGroup0001Row0054_mask_upper,
    k6PrefixGroup0001Row0055_mask_upper,
    k6PrefixGroup0001Row0056_mask_upper,
    k6PrefixGroup0001Row0057_mask_upper,
    k6PrefixGroup0001Row0058_mask_upper,
    k6PrefixGroup0001Row0059_mask_upper,
    k6PrefixGroup0001Row0060_mask_upper,
    k6PrefixGroup0001Row0061_mask_upper,
    k6PrefixGroup0001Row0062_mask_upper,
    k6PrefixGroup0001Row0063_mask_upper,
    k6PrefixGroup0001Row0064_mask_upper,
    k6PrefixGroup0001Row0065_mask_upper,
    k6PrefixGroup0001Row0066_mask_upper,
    k6PrefixGroup0001Row0067_mask_upper,
    k6PrefixGroup0001Row0068_mask_upper,
    k6PrefixGroup0001Row0069_mask_upper,
    k6PrefixGroup0001Row0070_mask_upper,
    k6PrefixGroup0001Row0071_mask_upper,
    k6PrefixGroup0001Row0072_mask_upper,
    k6PrefixGroup0001Row0073_mask_upper,
    k6PrefixGroup0001Row0074_mask_upper,
    k6PrefixGroup0001Row0075_mask_upper,
    k6PrefixGroup0001Row0076_mask_upper,
    k6PrefixGroup0001Row0077_mask_upper,
    k6PrefixGroup0001Row0078_mask_upper,
    k6PrefixGroup0001Row0079_mask_upper,
    k6PrefixGroup0001Row0080_mask_upper,
    k6PrefixGroup0001Row0081_mask_upper,
    k6PrefixGroup0001Row0082_mask_upper,
    k6PrefixGroup0001Row0083_mask_upper,
    k6PrefixGroup0001Row0084_mask_upper,
    k6PrefixGroup0001Row0085_mask_upper,
    k6PrefixGroup0001Row0086_mask_upper,
    k6PrefixGroup0001Row0087_mask_upper,
    k6PrefixGroup0001Row0088_mask_upper,
    k6PrefixGroup0001Row0089_mask_upper,
    k6PrefixGroup0001Row0090_mask_upper,
    k6PrefixGroup0001Row0091_mask_upper,
    k6PrefixGroup0001Row0092_mask_upper,
    k6PrefixGroup0001Row0093_mask_upper,
    k6PrefixGroup0001Row0094_mask_upper,
    k6PrefixGroup0001Row0095_mask_upper,
    k6PrefixGroup0001Row0096_mask_upper,
    k6PrefixGroup0001Row0097_mask_upper,
    k6PrefixGroup0001Row0098_mask_upper,
    k6PrefixGroup0001Row0099_mask_upper,
    k6PrefixGroup0001Row0100_mask_upper,
    k6PrefixGroup0001Row0101_mask_upper,
    k6PrefixGroup0001Row0102_mask_upper,
    k6PrefixGroup0001Row0103_mask_upper,
    k6PrefixGroup0001Row0104_mask_upper,
    k6PrefixGroup0001Row0105_mask_upper,
    k6PrefixGroup0001Row0106_mask_upper,
    k6PrefixGroup0001Row0107_mask_upper,
    k6PrefixGroup0001Row0108_mask_upper,
    k6PrefixGroup0001Row0109_mask_upper,
    k6PrefixGroup0001Row0110_mask_upper,
    k6PrefixGroup0001Row0111_mask_upper,
    k6PrefixGroup0001Row0112_mask_upper,
    k6PrefixGroup0001Row0113_mask_upper,
    k6PrefixGroup0001Row0114_mask_upper,
    k6PrefixGroup0001Row0115_mask_upper,
    k6PrefixGroup0001Row0116_mask_upper,
    k6PrefixGroup0001Row0117_mask_upper,
    k6PrefixGroup0001Row0118_mask_upper,
    k6PrefixGroup0001Row0119_mask_upper,
    k6PrefixGroup0001Row0120_mask_upper,
    k6PrefixGroup0001Row0121_mask_upper,
    k6PrefixGroup0001Row0122_mask_upper,
    k6PrefixGroup0001Row0123_mask_upper,
    k6PrefixGroup0001Row0124_mask_upper,
    k6PrefixGroup0001Row0125_mask_upper,
    k6PrefixGroup0001Row0126_mask_upper,
    k6PrefixGroup0001Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
