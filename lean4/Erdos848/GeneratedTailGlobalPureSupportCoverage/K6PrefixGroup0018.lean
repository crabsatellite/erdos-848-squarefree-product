import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0018 : List (List ℕ) :=
  [[7, 11, 17, 19, 79],
     [7, 11, 17, 19, 83],
     [7, 11, 17, 23, 29],
     [7, 11, 17, 23, 31],
     [7, 11, 17, 23, 37],
     [7, 11, 17, 23, 41],
     [7, 11, 17, 23, 43],
     [7, 11, 17, 23, 47],
     [7, 11, 17, 23, 53],
     [7, 11, 17, 23, 59],
     [7, 11, 17, 23, 61],
     [7, 11, 17, 23, 67],
     [7, 11, 17, 23, 71],
     [7, 11, 17, 23, 73],
     [7, 11, 17, 29, 31],
     [7, 11, 17, 29, 37],
     [7, 11, 17, 29, 41],
     [7, 11, 17, 29, 43],
     [7, 11, 17, 29, 47],
     [7, 11, 17, 29, 53],
     [7, 11, 17, 29, 59],
     [7, 11, 17, 29, 61],
     [7, 11, 17, 29, 67],
     [7, 11, 17, 31, 37],
     [7, 11, 17, 31, 41],
     [7, 11, 17, 31, 43],
     [7, 11, 17, 31, 47],
     [7, 11, 17, 31, 53],
     [7, 11, 17, 31, 59],
     [7, 11, 17, 31, 61],
     [7, 11, 17, 31, 67],
     [7, 11, 17, 37, 41],
     [7, 11, 17, 37, 43],
     [7, 11, 17, 37, 47],
     [7, 11, 17, 37, 53],
     [7, 11, 17, 37, 59],
     [7, 11, 17, 41, 43],
     [7, 11, 17, 41, 47],
     [7, 11, 17, 41, 53],
     [7, 11, 17, 41, 59],
     [7, 11, 17, 43, 47],
     [7, 11, 17, 43, 53],
     [7, 11, 17, 47, 53],
     [7, 11, 19, 23, 29],
     [7, 11, 19, 23, 31],
     [7, 11, 19, 23, 37],
     [7, 11, 19, 23, 41],
     [7, 11, 19, 23, 43],
     [7, 11, 19, 23, 47],
     [7, 11, 19, 23, 53],
     [7, 11, 19, 23, 59],
     [7, 11, 19, 23, 61],
     [7, 11, 19, 23, 67],
     [7, 11, 19, 23, 71],
     [7, 11, 19, 29, 31],
     [7, 11, 19, 29, 37],
     [7, 11, 19, 29, 41],
     [7, 11, 19, 29, 43],
     [7, 11, 19, 29, 47],
     [7, 11, 19, 29, 53],
     [7, 11, 19, 29, 59],
     [7, 11, 19, 29, 61],
     [7, 11, 19, 31, 37],
     [7, 11, 19, 31, 41],
     [7, 11, 19, 31, 43],
     [7, 11, 19, 31, 47],
     [7, 11, 19, 31, 53],
     [7, 11, 19, 31, 59],
     [7, 11, 19, 31, 61],
     [7, 11, 19, 37, 41],
     [7, 11, 19, 37, 43],
     [7, 11, 19, 37, 47],
     [7, 11, 19, 37, 53],
     [7, 11, 19, 41, 43],
     [7, 11, 19, 41, 47],
     [7, 11, 19, 41, 53],
     [7, 11, 19, 43, 47],
     [7, 11, 23, 29, 31],
     [7, 11, 23, 29, 37],
     [7, 11, 23, 29, 41],
     [7, 11, 23, 29, 43],
     [7, 11, 23, 29, 47],
     [7, 11, 23, 29, 53],
     [7, 11, 23, 29, 59],
     [7, 11, 23, 31, 37],
     [7, 11, 23, 31, 41],
     [7, 11, 23, 31, 43],
     [7, 11, 23, 31, 47],
     [7, 11, 23, 31, 53],
     [7, 11, 23, 37, 41],
     [7, 11, 23, 37, 43],
     [7, 11, 23, 37, 47],
     [7, 11, 23, 41, 43],
     [7, 11, 23, 41, 47],
     [7, 11, 23, 43, 47],
     [7, 11, 29, 31, 37],
     [7, 11, 29, 31, 41],
     [7, 11, 29, 31, 43],
     [7, 11, 29, 31, 47],
     [7, 11, 29, 37, 41],
     [7, 11, 29, 37, 43],
     [7, 11, 29, 41, 43],
     [7, 11, 31, 37, 41],
     [7, 11, 31, 37, 43],
     [7, 13, 17, 19, 23],
     [7, 13, 17, 19, 29],
     [7, 13, 17, 19, 31],
     [7, 13, 17, 19, 37],
     [7, 13, 17, 19, 41],
     [7, 13, 17, 19, 43],
     [7, 13, 17, 19, 47],
     [7, 13, 17, 19, 53],
     [7, 13, 17, 19, 59],
     [7, 13, 17, 19, 61],
     [7, 13, 17, 19, 67],
     [7, 13, 17, 19, 71],
     [7, 13, 17, 19, 73],
     [7, 13, 17, 19, 79],
     [7, 13, 17, 23, 29],
     [7, 13, 17, 23, 31],
     [7, 13, 17, 23, 37],
     [7, 13, 17, 23, 41],
     [7, 13, 17, 23, 43],
     [7, 13, 17, 23, 47],
     [7, 13, 17, 23, 53],
     [7, 13, 17, 23, 59],
     [7, 13, 17, 23, 61],
     [7, 13, 17, 23, 67]]

theorem k6PrefixGroup0018Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 19, 79] = true := by
  decide

theorem k6PrefixGroup0018Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 19, 79] = true := by
  decide

theorem k6PrefixGroup0018Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 19, 83] = true := by
  decide

theorem k6PrefixGroup0018Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 19, 83] = true := by
  decide

theorem k6PrefixGroup0018Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 23, 73] = true := by
  decide

theorem k6PrefixGroup0018Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 23, 73] = true := by
  decide

theorem k6PrefixGroup0018Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 29, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 29, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 31, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 31, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 37, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 37, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 37, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 37, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 41, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 41, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 41, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 41, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 43, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 43, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 17, 47, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 17, 47, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 23, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 23, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 29, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 29, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 31, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 31, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 37, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 37, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 41, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 41, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 19, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 19, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 29, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 31, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 37, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 41, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 23, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 23, 43, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 31, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 31, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 31, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 31, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 29, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 29, 41, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 31, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 31, 37, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 11, 31, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 11, 31, 37, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 23] = true := by
  decide

theorem k6PrefixGroup0018Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 23] = true := by
  decide

theorem k6PrefixGroup0018Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 71] = true := by
  decide

theorem k6PrefixGroup0018Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 73] = true := by
  decide

theorem k6PrefixGroup0018Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 73] = true := by
  decide

theorem k6PrefixGroup0018Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 19, 79] = true := by
  decide

theorem k6PrefixGroup0018Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 19, 79] = true := by
  decide

theorem k6PrefixGroup0018Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 29] = true := by
  decide

theorem k6PrefixGroup0018Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 31] = true := by
  decide

theorem k6PrefixGroup0018Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 37] = true := by
  decide

theorem k6PrefixGroup0018Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 41] = true := by
  decide

theorem k6PrefixGroup0018Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 43] = true := by
  decide

theorem k6PrefixGroup0018Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 47] = true := by
  decide

theorem k6PrefixGroup0018Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 53] = true := by
  decide

theorem k6PrefixGroup0018Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 59] = true := by
  decide

theorem k6PrefixGroup0018Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 61] = true := by
  decide

theorem k6PrefixGroup0018Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 6
      [7, 13, 17, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [7, 13, 17, 23, 67] = true := by
  decide

theorem k6PrefixGroup0018_passes :
    k6PrefixGroup0018.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6PrefixGroup0018, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0018Row0000_passes,
    k6PrefixGroup0018Row0001_passes,
    k6PrefixGroup0018Row0002_passes,
    k6PrefixGroup0018Row0003_passes,
    k6PrefixGroup0018Row0004_passes,
    k6PrefixGroup0018Row0005_passes,
    k6PrefixGroup0018Row0006_passes,
    k6PrefixGroup0018Row0007_passes,
    k6PrefixGroup0018Row0008_passes,
    k6PrefixGroup0018Row0009_passes,
    k6PrefixGroup0018Row0010_passes,
    k6PrefixGroup0018Row0011_passes,
    k6PrefixGroup0018Row0012_passes,
    k6PrefixGroup0018Row0013_passes,
    k6PrefixGroup0018Row0014_passes,
    k6PrefixGroup0018Row0015_passes,
    k6PrefixGroup0018Row0016_passes,
    k6PrefixGroup0018Row0017_passes,
    k6PrefixGroup0018Row0018_passes,
    k6PrefixGroup0018Row0019_passes,
    k6PrefixGroup0018Row0020_passes,
    k6PrefixGroup0018Row0021_passes,
    k6PrefixGroup0018Row0022_passes,
    k6PrefixGroup0018Row0023_passes,
    k6PrefixGroup0018Row0024_passes,
    k6PrefixGroup0018Row0025_passes,
    k6PrefixGroup0018Row0026_passes,
    k6PrefixGroup0018Row0027_passes,
    k6PrefixGroup0018Row0028_passes,
    k6PrefixGroup0018Row0029_passes,
    k6PrefixGroup0018Row0030_passes,
    k6PrefixGroup0018Row0031_passes,
    k6PrefixGroup0018Row0032_passes,
    k6PrefixGroup0018Row0033_passes,
    k6PrefixGroup0018Row0034_passes,
    k6PrefixGroup0018Row0035_passes,
    k6PrefixGroup0018Row0036_passes,
    k6PrefixGroup0018Row0037_passes,
    k6PrefixGroup0018Row0038_passes,
    k6PrefixGroup0018Row0039_passes,
    k6PrefixGroup0018Row0040_passes,
    k6PrefixGroup0018Row0041_passes,
    k6PrefixGroup0018Row0042_passes,
    k6PrefixGroup0018Row0043_passes,
    k6PrefixGroup0018Row0044_passes,
    k6PrefixGroup0018Row0045_passes,
    k6PrefixGroup0018Row0046_passes,
    k6PrefixGroup0018Row0047_passes,
    k6PrefixGroup0018Row0048_passes,
    k6PrefixGroup0018Row0049_passes,
    k6PrefixGroup0018Row0050_passes,
    k6PrefixGroup0018Row0051_passes,
    k6PrefixGroup0018Row0052_passes,
    k6PrefixGroup0018Row0053_passes,
    k6PrefixGroup0018Row0054_passes,
    k6PrefixGroup0018Row0055_passes,
    k6PrefixGroup0018Row0056_passes,
    k6PrefixGroup0018Row0057_passes,
    k6PrefixGroup0018Row0058_passes,
    k6PrefixGroup0018Row0059_passes,
    k6PrefixGroup0018Row0060_passes,
    k6PrefixGroup0018Row0061_passes,
    k6PrefixGroup0018Row0062_passes,
    k6PrefixGroup0018Row0063_passes,
    k6PrefixGroup0018Row0064_passes,
    k6PrefixGroup0018Row0065_passes,
    k6PrefixGroup0018Row0066_passes,
    k6PrefixGroup0018Row0067_passes,
    k6PrefixGroup0018Row0068_passes,
    k6PrefixGroup0018Row0069_passes,
    k6PrefixGroup0018Row0070_passes,
    k6PrefixGroup0018Row0071_passes,
    k6PrefixGroup0018Row0072_passes,
    k6PrefixGroup0018Row0073_passes,
    k6PrefixGroup0018Row0074_passes,
    k6PrefixGroup0018Row0075_passes,
    k6PrefixGroup0018Row0076_passes,
    k6PrefixGroup0018Row0077_passes,
    k6PrefixGroup0018Row0078_passes,
    k6PrefixGroup0018Row0079_passes,
    k6PrefixGroup0018Row0080_passes,
    k6PrefixGroup0018Row0081_passes,
    k6PrefixGroup0018Row0082_passes,
    k6PrefixGroup0018Row0083_passes,
    k6PrefixGroup0018Row0084_passes,
    k6PrefixGroup0018Row0085_passes,
    k6PrefixGroup0018Row0086_passes,
    k6PrefixGroup0018Row0087_passes,
    k6PrefixGroup0018Row0088_passes,
    k6PrefixGroup0018Row0089_passes,
    k6PrefixGroup0018Row0090_passes,
    k6PrefixGroup0018Row0091_passes,
    k6PrefixGroup0018Row0092_passes,
    k6PrefixGroup0018Row0093_passes,
    k6PrefixGroup0018Row0094_passes,
    k6PrefixGroup0018Row0095_passes,
    k6PrefixGroup0018Row0096_passes,
    k6PrefixGroup0018Row0097_passes,
    k6PrefixGroup0018Row0098_passes,
    k6PrefixGroup0018Row0099_passes,
    k6PrefixGroup0018Row0100_passes,
    k6PrefixGroup0018Row0101_passes,
    k6PrefixGroup0018Row0102_passes,
    k6PrefixGroup0018Row0103_passes,
    k6PrefixGroup0018Row0104_passes,
    k6PrefixGroup0018Row0105_passes,
    k6PrefixGroup0018Row0106_passes,
    k6PrefixGroup0018Row0107_passes,
    k6PrefixGroup0018Row0108_passes,
    k6PrefixGroup0018Row0109_passes,
    k6PrefixGroup0018Row0110_passes,
    k6PrefixGroup0018Row0111_passes,
    k6PrefixGroup0018Row0112_passes,
    k6PrefixGroup0018Row0113_passes,
    k6PrefixGroup0018Row0114_passes,
    k6PrefixGroup0018Row0115_passes,
    k6PrefixGroup0018Row0116_passes,
    k6PrefixGroup0018Row0117_passes,
    k6PrefixGroup0018Row0118_passes,
    k6PrefixGroup0018Row0119_passes,
    k6PrefixGroup0018Row0120_passes,
    k6PrefixGroup0018Row0121_passes,
    k6PrefixGroup0018Row0122_passes,
    k6PrefixGroup0018Row0123_passes,
    k6PrefixGroup0018Row0124_passes,
    k6PrefixGroup0018Row0125_passes,
    k6PrefixGroup0018Row0126_passes,
    k6PrefixGroup0018Row0127_passes]

theorem k6PrefixGroup0018_mask_upper :
    k6PrefixGroup0018.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6PrefixGroup0018, List.all_cons, List.all_nil, Bool.true_and,
    k6PrefixGroup0018Row0000_mask_upper,
    k6PrefixGroup0018Row0001_mask_upper,
    k6PrefixGroup0018Row0002_mask_upper,
    k6PrefixGroup0018Row0003_mask_upper,
    k6PrefixGroup0018Row0004_mask_upper,
    k6PrefixGroup0018Row0005_mask_upper,
    k6PrefixGroup0018Row0006_mask_upper,
    k6PrefixGroup0018Row0007_mask_upper,
    k6PrefixGroup0018Row0008_mask_upper,
    k6PrefixGroup0018Row0009_mask_upper,
    k6PrefixGroup0018Row0010_mask_upper,
    k6PrefixGroup0018Row0011_mask_upper,
    k6PrefixGroup0018Row0012_mask_upper,
    k6PrefixGroup0018Row0013_mask_upper,
    k6PrefixGroup0018Row0014_mask_upper,
    k6PrefixGroup0018Row0015_mask_upper,
    k6PrefixGroup0018Row0016_mask_upper,
    k6PrefixGroup0018Row0017_mask_upper,
    k6PrefixGroup0018Row0018_mask_upper,
    k6PrefixGroup0018Row0019_mask_upper,
    k6PrefixGroup0018Row0020_mask_upper,
    k6PrefixGroup0018Row0021_mask_upper,
    k6PrefixGroup0018Row0022_mask_upper,
    k6PrefixGroup0018Row0023_mask_upper,
    k6PrefixGroup0018Row0024_mask_upper,
    k6PrefixGroup0018Row0025_mask_upper,
    k6PrefixGroup0018Row0026_mask_upper,
    k6PrefixGroup0018Row0027_mask_upper,
    k6PrefixGroup0018Row0028_mask_upper,
    k6PrefixGroup0018Row0029_mask_upper,
    k6PrefixGroup0018Row0030_mask_upper,
    k6PrefixGroup0018Row0031_mask_upper,
    k6PrefixGroup0018Row0032_mask_upper,
    k6PrefixGroup0018Row0033_mask_upper,
    k6PrefixGroup0018Row0034_mask_upper,
    k6PrefixGroup0018Row0035_mask_upper,
    k6PrefixGroup0018Row0036_mask_upper,
    k6PrefixGroup0018Row0037_mask_upper,
    k6PrefixGroup0018Row0038_mask_upper,
    k6PrefixGroup0018Row0039_mask_upper,
    k6PrefixGroup0018Row0040_mask_upper,
    k6PrefixGroup0018Row0041_mask_upper,
    k6PrefixGroup0018Row0042_mask_upper,
    k6PrefixGroup0018Row0043_mask_upper,
    k6PrefixGroup0018Row0044_mask_upper,
    k6PrefixGroup0018Row0045_mask_upper,
    k6PrefixGroup0018Row0046_mask_upper,
    k6PrefixGroup0018Row0047_mask_upper,
    k6PrefixGroup0018Row0048_mask_upper,
    k6PrefixGroup0018Row0049_mask_upper,
    k6PrefixGroup0018Row0050_mask_upper,
    k6PrefixGroup0018Row0051_mask_upper,
    k6PrefixGroup0018Row0052_mask_upper,
    k6PrefixGroup0018Row0053_mask_upper,
    k6PrefixGroup0018Row0054_mask_upper,
    k6PrefixGroup0018Row0055_mask_upper,
    k6PrefixGroup0018Row0056_mask_upper,
    k6PrefixGroup0018Row0057_mask_upper,
    k6PrefixGroup0018Row0058_mask_upper,
    k6PrefixGroup0018Row0059_mask_upper,
    k6PrefixGroup0018Row0060_mask_upper,
    k6PrefixGroup0018Row0061_mask_upper,
    k6PrefixGroup0018Row0062_mask_upper,
    k6PrefixGroup0018Row0063_mask_upper,
    k6PrefixGroup0018Row0064_mask_upper,
    k6PrefixGroup0018Row0065_mask_upper,
    k6PrefixGroup0018Row0066_mask_upper,
    k6PrefixGroup0018Row0067_mask_upper,
    k6PrefixGroup0018Row0068_mask_upper,
    k6PrefixGroup0018Row0069_mask_upper,
    k6PrefixGroup0018Row0070_mask_upper,
    k6PrefixGroup0018Row0071_mask_upper,
    k6PrefixGroup0018Row0072_mask_upper,
    k6PrefixGroup0018Row0073_mask_upper,
    k6PrefixGroup0018Row0074_mask_upper,
    k6PrefixGroup0018Row0075_mask_upper,
    k6PrefixGroup0018Row0076_mask_upper,
    k6PrefixGroup0018Row0077_mask_upper,
    k6PrefixGroup0018Row0078_mask_upper,
    k6PrefixGroup0018Row0079_mask_upper,
    k6PrefixGroup0018Row0080_mask_upper,
    k6PrefixGroup0018Row0081_mask_upper,
    k6PrefixGroup0018Row0082_mask_upper,
    k6PrefixGroup0018Row0083_mask_upper,
    k6PrefixGroup0018Row0084_mask_upper,
    k6PrefixGroup0018Row0085_mask_upper,
    k6PrefixGroup0018Row0086_mask_upper,
    k6PrefixGroup0018Row0087_mask_upper,
    k6PrefixGroup0018Row0088_mask_upper,
    k6PrefixGroup0018Row0089_mask_upper,
    k6PrefixGroup0018Row0090_mask_upper,
    k6PrefixGroup0018Row0091_mask_upper,
    k6PrefixGroup0018Row0092_mask_upper,
    k6PrefixGroup0018Row0093_mask_upper,
    k6PrefixGroup0018Row0094_mask_upper,
    k6PrefixGroup0018Row0095_mask_upper,
    k6PrefixGroup0018Row0096_mask_upper,
    k6PrefixGroup0018Row0097_mask_upper,
    k6PrefixGroup0018Row0098_mask_upper,
    k6PrefixGroup0018Row0099_mask_upper,
    k6PrefixGroup0018Row0100_mask_upper,
    k6PrefixGroup0018Row0101_mask_upper,
    k6PrefixGroup0018Row0102_mask_upper,
    k6PrefixGroup0018Row0103_mask_upper,
    k6PrefixGroup0018Row0104_mask_upper,
    k6PrefixGroup0018Row0105_mask_upper,
    k6PrefixGroup0018Row0106_mask_upper,
    k6PrefixGroup0018Row0107_mask_upper,
    k6PrefixGroup0018Row0108_mask_upper,
    k6PrefixGroup0018Row0109_mask_upper,
    k6PrefixGroup0018Row0110_mask_upper,
    k6PrefixGroup0018Row0111_mask_upper,
    k6PrefixGroup0018Row0112_mask_upper,
    k6PrefixGroup0018Row0113_mask_upper,
    k6PrefixGroup0018Row0114_mask_upper,
    k6PrefixGroup0018Row0115_mask_upper,
    k6PrefixGroup0018Row0116_mask_upper,
    k6PrefixGroup0018Row0117_mask_upper,
    k6PrefixGroup0018Row0118_mask_upper,
    k6PrefixGroup0018Row0119_mask_upper,
    k6PrefixGroup0018Row0120_mask_upper,
    k6PrefixGroup0018Row0121_mask_upper,
    k6PrefixGroup0018Row0122_mask_upper,
    k6PrefixGroup0018Row0123_mask_upper,
    k6PrefixGroup0018Row0124_mask_upper,
    k6PrefixGroup0018Row0125_mask_upper,
    k6PrefixGroup0018Row0126_mask_upper,
    k6PrefixGroup0018Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
