import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17, 19],
     [3, 7, 11, 13, 17, 23],
     [3, 7, 11, 13, 17, 29],
     [3, 7, 11, 13, 17, 31],
     [3, 7, 11, 13, 17, 37],
     [3, 7, 11, 13, 17, 41],
     [3, 7, 11, 13, 17, 43],
     [3, 7, 11, 13, 17, 47],
     [3, 7, 11, 13, 17, 53],
     [3, 7, 11, 13, 17, 59],
     [3, 7, 11, 13, 17, 61],
     [3, 7, 11, 13, 17, 67],
     [3, 7, 11, 13, 17, 71],
     [3, 7, 11, 13, 17, 73],
     [3, 7, 11, 13, 17, 79],
     [3, 7, 11, 13, 17, 83],
     [3, 7, 11, 13, 19, 23],
     [3, 7, 11, 13, 19, 29],
     [3, 7, 11, 13, 19, 31],
     [3, 7, 11, 13, 19, 37],
     [3, 7, 11, 13, 19, 41],
     [3, 7, 11, 13, 19, 43],
     [3, 7, 11, 13, 19, 47],
     [3, 7, 11, 13, 19, 53],
     [3, 7, 11, 13, 19, 59],
     [3, 7, 11, 13, 19, 61],
     [3, 7, 11, 13, 19, 67],
     [3, 7, 11, 13, 19, 71],
     [3, 7, 11, 13, 19, 73],
     [3, 7, 11, 13, 19, 79],
     [3, 7, 11, 13, 23, 29],
     [3, 7, 11, 13, 23, 31],
     [3, 7, 11, 13, 23, 37],
     [3, 7, 11, 13, 23, 41],
     [3, 7, 11, 13, 23, 43],
     [3, 7, 11, 13, 23, 47],
     [3, 7, 11, 13, 23, 53],
     [3, 7, 11, 13, 23, 59],
     [3, 7, 11, 13, 23, 61],
     [3, 7, 11, 13, 23, 67],
     [3, 7, 11, 13, 23, 71],
     [3, 7, 11, 13, 29, 31],
     [3, 7, 11, 13, 29, 37],
     [3, 7, 11, 13, 29, 41],
     [3, 7, 11, 13, 29, 43],
     [3, 7, 11, 13, 29, 47],
     [3, 7, 11, 13, 29, 53],
     [3, 7, 11, 13, 29, 59],
     [3, 7, 11, 13, 29, 61],
     [3, 7, 11, 13, 31, 37],
     [3, 7, 11, 13, 31, 41],
     [3, 7, 11, 13, 31, 43],
     [3, 7, 11, 13, 31, 47],
     [3, 7, 11, 13, 31, 53],
     [3, 7, 11, 13, 31, 59],
     [3, 7, 11, 13, 31, 61],
     [3, 7, 11, 13, 37, 41],
     [3, 7, 11, 13, 37, 43],
     [3, 7, 11, 13, 37, 47],
     [3, 7, 11, 13, 37, 53],
     [3, 7, 11, 13, 41, 43],
     [3, 7, 11, 13, 41, 47],
     [3, 7, 11, 13, 41, 53],
     [3, 7, 11, 13, 43, 47],
     [3, 7, 11, 17, 19, 23],
     [3, 7, 11, 17, 19, 29],
     [3, 7, 11, 17, 19, 31],
     [3, 7, 11, 17, 19, 37],
     [3, 7, 11, 17, 19, 41],
     [3, 7, 11, 17, 19, 43],
     [3, 7, 11, 17, 19, 47],
     [3, 7, 11, 17, 19, 53],
     [3, 7, 11, 17, 19, 59],
     [3, 7, 11, 17, 19, 61],
     [3, 7, 11, 17, 19, 67],
     [3, 7, 11, 17, 23, 29],
     [3, 7, 11, 17, 23, 31],
     [3, 7, 11, 17, 23, 37],
     [3, 7, 11, 17, 23, 41],
     [3, 7, 11, 17, 23, 43],
     [3, 7, 11, 17, 23, 47],
     [3, 7, 11, 17, 23, 53],
     [3, 7, 11, 17, 23, 59],
     [3, 7, 11, 17, 23, 61],
     [3, 7, 11, 17, 29, 31],
     [3, 7, 11, 17, 29, 37],
     [3, 7, 11, 17, 29, 41],
     [3, 7, 11, 17, 29, 43],
     [3, 7, 11, 17, 29, 47],
     [3, 7, 11, 17, 29, 53],
     [3, 7, 11, 17, 31, 37],
     [3, 7, 11, 17, 31, 41],
     [3, 7, 11, 17, 31, 43],
     [3, 7, 11, 17, 31, 47],
     [3, 7, 11, 17, 31, 53],
     [3, 7, 11, 17, 37, 41],
     [3, 7, 11, 17, 37, 43],
     [3, 7, 11, 17, 37, 47],
     [3, 7, 11, 17, 41, 43],
     [3, 7, 11, 19, 23, 29],
     [3, 7, 11, 19, 23, 31],
     [3, 7, 11, 19, 23, 37],
     [3, 7, 11, 19, 23, 41],
     [3, 7, 11, 19, 23, 43],
     [3, 7, 11, 19, 23, 47],
     [3, 7, 11, 19, 23, 53],
     [3, 7, 11, 19, 23, 59],
     [3, 7, 11, 19, 29, 31],
     [3, 7, 11, 19, 29, 37],
     [3, 7, 11, 19, 29, 41],
     [3, 7, 11, 19, 29, 43],
     [3, 7, 11, 19, 29, 47],
     [3, 7, 11, 19, 31, 37],
     [3, 7, 11, 19, 31, 41],
     [3, 7, 11, 19, 31, 43],
     [3, 7, 11, 19, 31, 47],
     [3, 7, 11, 19, 37, 41],
     [3, 7, 11, 19, 37, 43],
     [3, 7, 11, 19, 41, 43],
     [3, 7, 11, 23, 29, 31],
     [3, 7, 11, 23, 29, 37],
     [3, 7, 11, 23, 29, 41],
     [3, 7, 11, 23, 29, 43],
     [3, 7, 11, 23, 29, 47],
     [3, 7, 11, 23, 31, 37],
     [3, 7, 11, 23, 31, 41],
     [3, 7, 11, 23, 31, 43],
     [3, 7, 11, 23, 37, 41]]

theorem k7PrefixGroup0000Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 19] = true := by
  decide

theorem k7PrefixGroup0000Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 19] = true := by
  decide

theorem k7PrefixGroup0000Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 73] = true := by
  decide

theorem k7PrefixGroup0000Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 73] = true := by
  decide

theorem k7PrefixGroup0000Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 79] = true := by
  decide

theorem k7PrefixGroup0000Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 79] = true := by
  decide

theorem k7PrefixGroup0000Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 17, 83] = true := by
  decide

theorem k7PrefixGroup0000Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 83] = true := by
  decide

theorem k7PrefixGroup0000Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 73] = true := by
  decide

theorem k7PrefixGroup0000Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 73] = true := by
  decide

theorem k7PrefixGroup0000Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 19, 79] = true := by
  decide

theorem k7PrefixGroup0000Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 19, 79] = true := by
  decide

theorem k7PrefixGroup0000Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 23, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 23, 71] = true := by
  decide

theorem k7PrefixGroup0000Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 29, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 29, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 31, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 31, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 37, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 37, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 37, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 37, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 41, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 41, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 41, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 41, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 13, 43, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 43, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 23] = true := by
  decide

theorem k7PrefixGroup0000Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 19, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 19, 67] = true := by
  decide

theorem k7PrefixGroup0000Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 23, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 23, 61] = true := by
  decide

theorem k7PrefixGroup0000Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 29, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 29, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 31, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 31, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 37, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 37, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 17, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 17, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 29] = true := by
  decide

theorem k7PrefixGroup0000Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 53] = true := by
  decide

theorem k7PrefixGroup0000Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 23, 59] = true := by
  decide

theorem k7PrefixGroup0000Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 31, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 37, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 19, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 19, 41, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29, 31] = true := by
  decide

theorem k7PrefixGroup0000Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 29, 47] = true := by
  decide

theorem k7PrefixGroup0000Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 31, 37] = true := by
  decide

theorem k7PrefixGroup0000Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 31, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 31, 43] = true := by
  decide

theorem k7PrefixGroup0000Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 7
      [3, 7, 11, 23, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 23, 37, 41] = true := by
  decide

theorem k7PrefixGroup0000_passes :
    k7PrefixGroup0000.all
      (Erdos848.globalPureSupportPrefixPasses 7) = true := by
  simp only [k7PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k7PrefixGroup0000Row0000_passes,
    k7PrefixGroup0000Row0001_passes,
    k7PrefixGroup0000Row0002_passes,
    k7PrefixGroup0000Row0003_passes,
    k7PrefixGroup0000Row0004_passes,
    k7PrefixGroup0000Row0005_passes,
    k7PrefixGroup0000Row0006_passes,
    k7PrefixGroup0000Row0007_passes,
    k7PrefixGroup0000Row0008_passes,
    k7PrefixGroup0000Row0009_passes,
    k7PrefixGroup0000Row0010_passes,
    k7PrefixGroup0000Row0011_passes,
    k7PrefixGroup0000Row0012_passes,
    k7PrefixGroup0000Row0013_passes,
    k7PrefixGroup0000Row0014_passes,
    k7PrefixGroup0000Row0015_passes,
    k7PrefixGroup0000Row0016_passes,
    k7PrefixGroup0000Row0017_passes,
    k7PrefixGroup0000Row0018_passes,
    k7PrefixGroup0000Row0019_passes,
    k7PrefixGroup0000Row0020_passes,
    k7PrefixGroup0000Row0021_passes,
    k7PrefixGroup0000Row0022_passes,
    k7PrefixGroup0000Row0023_passes,
    k7PrefixGroup0000Row0024_passes,
    k7PrefixGroup0000Row0025_passes,
    k7PrefixGroup0000Row0026_passes,
    k7PrefixGroup0000Row0027_passes,
    k7PrefixGroup0000Row0028_passes,
    k7PrefixGroup0000Row0029_passes,
    k7PrefixGroup0000Row0030_passes,
    k7PrefixGroup0000Row0031_passes,
    k7PrefixGroup0000Row0032_passes,
    k7PrefixGroup0000Row0033_passes,
    k7PrefixGroup0000Row0034_passes,
    k7PrefixGroup0000Row0035_passes,
    k7PrefixGroup0000Row0036_passes,
    k7PrefixGroup0000Row0037_passes,
    k7PrefixGroup0000Row0038_passes,
    k7PrefixGroup0000Row0039_passes,
    k7PrefixGroup0000Row0040_passes,
    k7PrefixGroup0000Row0041_passes,
    k7PrefixGroup0000Row0042_passes,
    k7PrefixGroup0000Row0043_passes,
    k7PrefixGroup0000Row0044_passes,
    k7PrefixGroup0000Row0045_passes,
    k7PrefixGroup0000Row0046_passes,
    k7PrefixGroup0000Row0047_passes,
    k7PrefixGroup0000Row0048_passes,
    k7PrefixGroup0000Row0049_passes,
    k7PrefixGroup0000Row0050_passes,
    k7PrefixGroup0000Row0051_passes,
    k7PrefixGroup0000Row0052_passes,
    k7PrefixGroup0000Row0053_passes,
    k7PrefixGroup0000Row0054_passes,
    k7PrefixGroup0000Row0055_passes,
    k7PrefixGroup0000Row0056_passes,
    k7PrefixGroup0000Row0057_passes,
    k7PrefixGroup0000Row0058_passes,
    k7PrefixGroup0000Row0059_passes,
    k7PrefixGroup0000Row0060_passes,
    k7PrefixGroup0000Row0061_passes,
    k7PrefixGroup0000Row0062_passes,
    k7PrefixGroup0000Row0063_passes,
    k7PrefixGroup0000Row0064_passes,
    k7PrefixGroup0000Row0065_passes,
    k7PrefixGroup0000Row0066_passes,
    k7PrefixGroup0000Row0067_passes,
    k7PrefixGroup0000Row0068_passes,
    k7PrefixGroup0000Row0069_passes,
    k7PrefixGroup0000Row0070_passes,
    k7PrefixGroup0000Row0071_passes,
    k7PrefixGroup0000Row0072_passes,
    k7PrefixGroup0000Row0073_passes,
    k7PrefixGroup0000Row0074_passes,
    k7PrefixGroup0000Row0075_passes,
    k7PrefixGroup0000Row0076_passes,
    k7PrefixGroup0000Row0077_passes,
    k7PrefixGroup0000Row0078_passes,
    k7PrefixGroup0000Row0079_passes,
    k7PrefixGroup0000Row0080_passes,
    k7PrefixGroup0000Row0081_passes,
    k7PrefixGroup0000Row0082_passes,
    k7PrefixGroup0000Row0083_passes,
    k7PrefixGroup0000Row0084_passes,
    k7PrefixGroup0000Row0085_passes,
    k7PrefixGroup0000Row0086_passes,
    k7PrefixGroup0000Row0087_passes,
    k7PrefixGroup0000Row0088_passes,
    k7PrefixGroup0000Row0089_passes,
    k7PrefixGroup0000Row0090_passes,
    k7PrefixGroup0000Row0091_passes,
    k7PrefixGroup0000Row0092_passes,
    k7PrefixGroup0000Row0093_passes,
    k7PrefixGroup0000Row0094_passes,
    k7PrefixGroup0000Row0095_passes,
    k7PrefixGroup0000Row0096_passes,
    k7PrefixGroup0000Row0097_passes,
    k7PrefixGroup0000Row0098_passes,
    k7PrefixGroup0000Row0099_passes,
    k7PrefixGroup0000Row0100_passes,
    k7PrefixGroup0000Row0101_passes,
    k7PrefixGroup0000Row0102_passes,
    k7PrefixGroup0000Row0103_passes,
    k7PrefixGroup0000Row0104_passes,
    k7PrefixGroup0000Row0105_passes,
    k7PrefixGroup0000Row0106_passes,
    k7PrefixGroup0000Row0107_passes,
    k7PrefixGroup0000Row0108_passes,
    k7PrefixGroup0000Row0109_passes,
    k7PrefixGroup0000Row0110_passes,
    k7PrefixGroup0000Row0111_passes,
    k7PrefixGroup0000Row0112_passes,
    k7PrefixGroup0000Row0113_passes,
    k7PrefixGroup0000Row0114_passes,
    k7PrefixGroup0000Row0115_passes,
    k7PrefixGroup0000Row0116_passes,
    k7PrefixGroup0000Row0117_passes,
    k7PrefixGroup0000Row0118_passes,
    k7PrefixGroup0000Row0119_passes,
    k7PrefixGroup0000Row0120_passes,
    k7PrefixGroup0000Row0121_passes,
    k7PrefixGroup0000Row0122_passes,
    k7PrefixGroup0000Row0123_passes,
    k7PrefixGroup0000Row0124_passes,
    k7PrefixGroup0000Row0125_passes,
    k7PrefixGroup0000Row0126_passes,
    k7PrefixGroup0000Row0127_passes]

theorem k7PrefixGroup0000_mask_upper :
    k7PrefixGroup0000.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k7PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k7PrefixGroup0000Row0000_mask_upper,
    k7PrefixGroup0000Row0001_mask_upper,
    k7PrefixGroup0000Row0002_mask_upper,
    k7PrefixGroup0000Row0003_mask_upper,
    k7PrefixGroup0000Row0004_mask_upper,
    k7PrefixGroup0000Row0005_mask_upper,
    k7PrefixGroup0000Row0006_mask_upper,
    k7PrefixGroup0000Row0007_mask_upper,
    k7PrefixGroup0000Row0008_mask_upper,
    k7PrefixGroup0000Row0009_mask_upper,
    k7PrefixGroup0000Row0010_mask_upper,
    k7PrefixGroup0000Row0011_mask_upper,
    k7PrefixGroup0000Row0012_mask_upper,
    k7PrefixGroup0000Row0013_mask_upper,
    k7PrefixGroup0000Row0014_mask_upper,
    k7PrefixGroup0000Row0015_mask_upper,
    k7PrefixGroup0000Row0016_mask_upper,
    k7PrefixGroup0000Row0017_mask_upper,
    k7PrefixGroup0000Row0018_mask_upper,
    k7PrefixGroup0000Row0019_mask_upper,
    k7PrefixGroup0000Row0020_mask_upper,
    k7PrefixGroup0000Row0021_mask_upper,
    k7PrefixGroup0000Row0022_mask_upper,
    k7PrefixGroup0000Row0023_mask_upper,
    k7PrefixGroup0000Row0024_mask_upper,
    k7PrefixGroup0000Row0025_mask_upper,
    k7PrefixGroup0000Row0026_mask_upper,
    k7PrefixGroup0000Row0027_mask_upper,
    k7PrefixGroup0000Row0028_mask_upper,
    k7PrefixGroup0000Row0029_mask_upper,
    k7PrefixGroup0000Row0030_mask_upper,
    k7PrefixGroup0000Row0031_mask_upper,
    k7PrefixGroup0000Row0032_mask_upper,
    k7PrefixGroup0000Row0033_mask_upper,
    k7PrefixGroup0000Row0034_mask_upper,
    k7PrefixGroup0000Row0035_mask_upper,
    k7PrefixGroup0000Row0036_mask_upper,
    k7PrefixGroup0000Row0037_mask_upper,
    k7PrefixGroup0000Row0038_mask_upper,
    k7PrefixGroup0000Row0039_mask_upper,
    k7PrefixGroup0000Row0040_mask_upper,
    k7PrefixGroup0000Row0041_mask_upper,
    k7PrefixGroup0000Row0042_mask_upper,
    k7PrefixGroup0000Row0043_mask_upper,
    k7PrefixGroup0000Row0044_mask_upper,
    k7PrefixGroup0000Row0045_mask_upper,
    k7PrefixGroup0000Row0046_mask_upper,
    k7PrefixGroup0000Row0047_mask_upper,
    k7PrefixGroup0000Row0048_mask_upper,
    k7PrefixGroup0000Row0049_mask_upper,
    k7PrefixGroup0000Row0050_mask_upper,
    k7PrefixGroup0000Row0051_mask_upper,
    k7PrefixGroup0000Row0052_mask_upper,
    k7PrefixGroup0000Row0053_mask_upper,
    k7PrefixGroup0000Row0054_mask_upper,
    k7PrefixGroup0000Row0055_mask_upper,
    k7PrefixGroup0000Row0056_mask_upper,
    k7PrefixGroup0000Row0057_mask_upper,
    k7PrefixGroup0000Row0058_mask_upper,
    k7PrefixGroup0000Row0059_mask_upper,
    k7PrefixGroup0000Row0060_mask_upper,
    k7PrefixGroup0000Row0061_mask_upper,
    k7PrefixGroup0000Row0062_mask_upper,
    k7PrefixGroup0000Row0063_mask_upper,
    k7PrefixGroup0000Row0064_mask_upper,
    k7PrefixGroup0000Row0065_mask_upper,
    k7PrefixGroup0000Row0066_mask_upper,
    k7PrefixGroup0000Row0067_mask_upper,
    k7PrefixGroup0000Row0068_mask_upper,
    k7PrefixGroup0000Row0069_mask_upper,
    k7PrefixGroup0000Row0070_mask_upper,
    k7PrefixGroup0000Row0071_mask_upper,
    k7PrefixGroup0000Row0072_mask_upper,
    k7PrefixGroup0000Row0073_mask_upper,
    k7PrefixGroup0000Row0074_mask_upper,
    k7PrefixGroup0000Row0075_mask_upper,
    k7PrefixGroup0000Row0076_mask_upper,
    k7PrefixGroup0000Row0077_mask_upper,
    k7PrefixGroup0000Row0078_mask_upper,
    k7PrefixGroup0000Row0079_mask_upper,
    k7PrefixGroup0000Row0080_mask_upper,
    k7PrefixGroup0000Row0081_mask_upper,
    k7PrefixGroup0000Row0082_mask_upper,
    k7PrefixGroup0000Row0083_mask_upper,
    k7PrefixGroup0000Row0084_mask_upper,
    k7PrefixGroup0000Row0085_mask_upper,
    k7PrefixGroup0000Row0086_mask_upper,
    k7PrefixGroup0000Row0087_mask_upper,
    k7PrefixGroup0000Row0088_mask_upper,
    k7PrefixGroup0000Row0089_mask_upper,
    k7PrefixGroup0000Row0090_mask_upper,
    k7PrefixGroup0000Row0091_mask_upper,
    k7PrefixGroup0000Row0092_mask_upper,
    k7PrefixGroup0000Row0093_mask_upper,
    k7PrefixGroup0000Row0094_mask_upper,
    k7PrefixGroup0000Row0095_mask_upper,
    k7PrefixGroup0000Row0096_mask_upper,
    k7PrefixGroup0000Row0097_mask_upper,
    k7PrefixGroup0000Row0098_mask_upper,
    k7PrefixGroup0000Row0099_mask_upper,
    k7PrefixGroup0000Row0100_mask_upper,
    k7PrefixGroup0000Row0101_mask_upper,
    k7PrefixGroup0000Row0102_mask_upper,
    k7PrefixGroup0000Row0103_mask_upper,
    k7PrefixGroup0000Row0104_mask_upper,
    k7PrefixGroup0000Row0105_mask_upper,
    k7PrefixGroup0000Row0106_mask_upper,
    k7PrefixGroup0000Row0107_mask_upper,
    k7PrefixGroup0000Row0108_mask_upper,
    k7PrefixGroup0000Row0109_mask_upper,
    k7PrefixGroup0000Row0110_mask_upper,
    k7PrefixGroup0000Row0111_mask_upper,
    k7PrefixGroup0000Row0112_mask_upper,
    k7PrefixGroup0000Row0113_mask_upper,
    k7PrefixGroup0000Row0114_mask_upper,
    k7PrefixGroup0000Row0115_mask_upper,
    k7PrefixGroup0000Row0116_mask_upper,
    k7PrefixGroup0000Row0117_mask_upper,
    k7PrefixGroup0000Row0118_mask_upper,
    k7PrefixGroup0000Row0119_mask_upper,
    k7PrefixGroup0000Row0120_mask_upper,
    k7PrefixGroup0000Row0121_mask_upper,
    k7PrefixGroup0000Row0122_mask_upper,
    k7PrefixGroup0000Row0123_mask_upper,
    k7PrefixGroup0000Row0124_mask_upper,
    k7PrefixGroup0000Row0125_mask_upper,
    k7PrefixGroup0000Row0126_mask_upper,
    k7PrefixGroup0000Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
