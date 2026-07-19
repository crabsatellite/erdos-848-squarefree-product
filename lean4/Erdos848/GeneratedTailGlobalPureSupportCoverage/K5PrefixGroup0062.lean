import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0062 : List (List ℕ) :=
  [[17, 23, 29, 59],
     [17, 23, 29, 61],
     [17, 23, 29, 67],
     [17, 23, 29, 71],
     [17, 23, 29, 73],
     [17, 23, 29, 79],
     [17, 23, 29, 83],
     [17, 23, 31, 37],
     [17, 23, 31, 41],
     [17, 23, 31, 43],
     [17, 23, 31, 47],
     [17, 23, 31, 53],
     [17, 23, 31, 59],
     [17, 23, 31, 61],
     [17, 23, 31, 67],
     [17, 23, 31, 71],
     [17, 23, 31, 73],
     [17, 23, 31, 79],
     [17, 23, 31, 83],
     [17, 23, 37, 41],
     [17, 23, 37, 43],
     [17, 23, 37, 47],
     [17, 23, 37, 53],
     [17, 23, 37, 59],
     [17, 23, 37, 61],
     [17, 23, 37, 67],
     [17, 23, 37, 71],
     [17, 23, 37, 73],
     [17, 23, 37, 79],
     [17, 23, 41, 43],
     [17, 23, 41, 47],
     [17, 23, 41, 53],
     [17, 23, 41, 59],
     [17, 23, 41, 61],
     [17, 23, 41, 67],
     [17, 23, 41, 71],
     [17, 23, 41, 73],
     [17, 23, 43, 47],
     [17, 23, 43, 53],
     [17, 23, 43, 59],
     [17, 23, 43, 61],
     [17, 23, 43, 67],
     [17, 23, 43, 71],
     [17, 23, 47, 53],
     [17, 23, 47, 59],
     [17, 23, 47, 61],
     [17, 23, 47, 67],
     [17, 23, 47, 71],
     [17, 23, 53, 59],
     [17, 23, 53, 61],
     [17, 23, 59, 61],
     [17, 29, 31, 37],
     [17, 29, 31, 41],
     [17, 29, 31, 43],
     [17, 29, 31, 47],
     [17, 29, 31, 53],
     [17, 29, 31, 59],
     [17, 29, 31, 61],
     [17, 29, 31, 67],
     [17, 29, 31, 71],
     [17, 29, 31, 73],
     [17, 29, 37, 41],
     [17, 29, 37, 43],
     [17, 29, 37, 47],
     [17, 29, 37, 53],
     [17, 29, 37, 59],
     [17, 29, 37, 61],
     [17, 29, 37, 67],
     [17, 29, 37, 71],
     [17, 29, 41, 43],
     [17, 29, 41, 47],
     [17, 29, 41, 53],
     [17, 29, 41, 59],
     [17, 29, 41, 61],
     [17, 29, 41, 67],
     [17, 29, 43, 47],
     [17, 29, 43, 53],
     [17, 29, 43, 59],
     [17, 29, 43, 61],
     [17, 29, 47, 53],
     [17, 29, 47, 59],
     [17, 29, 47, 61],
     [17, 29, 53, 59],
     [17, 31, 37, 41],
     [17, 31, 37, 43],
     [17, 31, 37, 47],
     [17, 31, 37, 53],
     [17, 31, 37, 59],
     [17, 31, 37, 61],
     [17, 31, 37, 67],
     [17, 31, 41, 43],
     [17, 31, 41, 47],
     [17, 31, 41, 53],
     [17, 31, 41, 59],
     [17, 31, 41, 61],
     [17, 31, 43, 47],
     [17, 31, 43, 53],
     [17, 31, 43, 59],
     [17, 31, 43, 61],
     [17, 31, 47, 53],
     [17, 31, 47, 59],
     [17, 37, 41, 43],
     [17, 37, 41, 47],
     [17, 37, 41, 53],
     [17, 37, 41, 59],
     [17, 37, 43, 47],
     [17, 37, 43, 53],
     [17, 37, 47, 53],
     [17, 41, 43, 47],
     [17, 41, 43, 53],
     [19, 23, 29, 31],
     [19, 23, 29, 37],
     [19, 23, 29, 41],
     [19, 23, 29, 43],
     [19, 23, 29, 47],
     [19, 23, 29, 53],
     [19, 23, 29, 59],
     [19, 23, 29, 61],
     [19, 23, 29, 67],
     [19, 23, 29, 71],
     [19, 23, 29, 73],
     [19, 23, 29, 79],
     [19, 23, 29, 83],
     [19, 23, 31, 37],
     [19, 23, 31, 41],
     [19, 23, 31, 43],
     [19, 23, 31, 47],
     [19, 23, 31, 53]]

theorem k5PrefixGroup0062Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 31, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 31, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 37, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 37, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 41, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 41, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 43, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 43, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 47, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 47, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 47, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 47, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 47, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 47, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 53, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 53, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 53, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 53, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 23, 59, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 23, 59, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 31, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 31, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 37, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 37, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 41, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 41, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 47, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 29, 53, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 31, 47, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 41, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 41, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 41, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 41, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 37, 47, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 41, 43, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [17, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [17, 41, 43, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 31] = true := by
  decide

theorem k5PrefixGroup0062Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 31] = true := by
  decide

theorem k5PrefixGroup0062Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 59] = true := by
  decide

theorem k5PrefixGroup0062Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 61] = true := by
  decide

theorem k5PrefixGroup0062Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 67] = true := by
  decide

theorem k5PrefixGroup0062Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 71] = true := by
  decide

theorem k5PrefixGroup0062Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 73] = true := by
  decide

theorem k5PrefixGroup0062Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 79] = true := by
  decide

theorem k5PrefixGroup0062Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 29, 83] = true := by
  decide

theorem k5PrefixGroup0062Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 31, 37] = true := by
  decide

theorem k5PrefixGroup0062Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 31, 41] = true := by
  decide

theorem k5PrefixGroup0062Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 31, 43] = true := by
  decide

theorem k5PrefixGroup0062Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 31, 47] = true := by
  decide

theorem k5PrefixGroup0062Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [19, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [19, 23, 31, 53] = true := by
  decide

theorem k5PrefixGroup0062_passes :
    k5PrefixGroup0062.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0062, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0062Row0000_passes,
    k5PrefixGroup0062Row0001_passes,
    k5PrefixGroup0062Row0002_passes,
    k5PrefixGroup0062Row0003_passes,
    k5PrefixGroup0062Row0004_passes,
    k5PrefixGroup0062Row0005_passes,
    k5PrefixGroup0062Row0006_passes,
    k5PrefixGroup0062Row0007_passes,
    k5PrefixGroup0062Row0008_passes,
    k5PrefixGroup0062Row0009_passes,
    k5PrefixGroup0062Row0010_passes,
    k5PrefixGroup0062Row0011_passes,
    k5PrefixGroup0062Row0012_passes,
    k5PrefixGroup0062Row0013_passes,
    k5PrefixGroup0062Row0014_passes,
    k5PrefixGroup0062Row0015_passes,
    k5PrefixGroup0062Row0016_passes,
    k5PrefixGroup0062Row0017_passes,
    k5PrefixGroup0062Row0018_passes,
    k5PrefixGroup0062Row0019_passes,
    k5PrefixGroup0062Row0020_passes,
    k5PrefixGroup0062Row0021_passes,
    k5PrefixGroup0062Row0022_passes,
    k5PrefixGroup0062Row0023_passes,
    k5PrefixGroup0062Row0024_passes,
    k5PrefixGroup0062Row0025_passes,
    k5PrefixGroup0062Row0026_passes,
    k5PrefixGroup0062Row0027_passes,
    k5PrefixGroup0062Row0028_passes,
    k5PrefixGroup0062Row0029_passes,
    k5PrefixGroup0062Row0030_passes,
    k5PrefixGroup0062Row0031_passes,
    k5PrefixGroup0062Row0032_passes,
    k5PrefixGroup0062Row0033_passes,
    k5PrefixGroup0062Row0034_passes,
    k5PrefixGroup0062Row0035_passes,
    k5PrefixGroup0062Row0036_passes,
    k5PrefixGroup0062Row0037_passes,
    k5PrefixGroup0062Row0038_passes,
    k5PrefixGroup0062Row0039_passes,
    k5PrefixGroup0062Row0040_passes,
    k5PrefixGroup0062Row0041_passes,
    k5PrefixGroup0062Row0042_passes,
    k5PrefixGroup0062Row0043_passes,
    k5PrefixGroup0062Row0044_passes,
    k5PrefixGroup0062Row0045_passes,
    k5PrefixGroup0062Row0046_passes,
    k5PrefixGroup0062Row0047_passes,
    k5PrefixGroup0062Row0048_passes,
    k5PrefixGroup0062Row0049_passes,
    k5PrefixGroup0062Row0050_passes,
    k5PrefixGroup0062Row0051_passes,
    k5PrefixGroup0062Row0052_passes,
    k5PrefixGroup0062Row0053_passes,
    k5PrefixGroup0062Row0054_passes,
    k5PrefixGroup0062Row0055_passes,
    k5PrefixGroup0062Row0056_passes,
    k5PrefixGroup0062Row0057_passes,
    k5PrefixGroup0062Row0058_passes,
    k5PrefixGroup0062Row0059_passes,
    k5PrefixGroup0062Row0060_passes,
    k5PrefixGroup0062Row0061_passes,
    k5PrefixGroup0062Row0062_passes,
    k5PrefixGroup0062Row0063_passes,
    k5PrefixGroup0062Row0064_passes,
    k5PrefixGroup0062Row0065_passes,
    k5PrefixGroup0062Row0066_passes,
    k5PrefixGroup0062Row0067_passes,
    k5PrefixGroup0062Row0068_passes,
    k5PrefixGroup0062Row0069_passes,
    k5PrefixGroup0062Row0070_passes,
    k5PrefixGroup0062Row0071_passes,
    k5PrefixGroup0062Row0072_passes,
    k5PrefixGroup0062Row0073_passes,
    k5PrefixGroup0062Row0074_passes,
    k5PrefixGroup0062Row0075_passes,
    k5PrefixGroup0062Row0076_passes,
    k5PrefixGroup0062Row0077_passes,
    k5PrefixGroup0062Row0078_passes,
    k5PrefixGroup0062Row0079_passes,
    k5PrefixGroup0062Row0080_passes,
    k5PrefixGroup0062Row0081_passes,
    k5PrefixGroup0062Row0082_passes,
    k5PrefixGroup0062Row0083_passes,
    k5PrefixGroup0062Row0084_passes,
    k5PrefixGroup0062Row0085_passes,
    k5PrefixGroup0062Row0086_passes,
    k5PrefixGroup0062Row0087_passes,
    k5PrefixGroup0062Row0088_passes,
    k5PrefixGroup0062Row0089_passes,
    k5PrefixGroup0062Row0090_passes,
    k5PrefixGroup0062Row0091_passes,
    k5PrefixGroup0062Row0092_passes,
    k5PrefixGroup0062Row0093_passes,
    k5PrefixGroup0062Row0094_passes,
    k5PrefixGroup0062Row0095_passes,
    k5PrefixGroup0062Row0096_passes,
    k5PrefixGroup0062Row0097_passes,
    k5PrefixGroup0062Row0098_passes,
    k5PrefixGroup0062Row0099_passes,
    k5PrefixGroup0062Row0100_passes,
    k5PrefixGroup0062Row0101_passes,
    k5PrefixGroup0062Row0102_passes,
    k5PrefixGroup0062Row0103_passes,
    k5PrefixGroup0062Row0104_passes,
    k5PrefixGroup0062Row0105_passes,
    k5PrefixGroup0062Row0106_passes,
    k5PrefixGroup0062Row0107_passes,
    k5PrefixGroup0062Row0108_passes,
    k5PrefixGroup0062Row0109_passes,
    k5PrefixGroup0062Row0110_passes,
    k5PrefixGroup0062Row0111_passes,
    k5PrefixGroup0062Row0112_passes,
    k5PrefixGroup0062Row0113_passes,
    k5PrefixGroup0062Row0114_passes,
    k5PrefixGroup0062Row0115_passes,
    k5PrefixGroup0062Row0116_passes,
    k5PrefixGroup0062Row0117_passes,
    k5PrefixGroup0062Row0118_passes,
    k5PrefixGroup0062Row0119_passes,
    k5PrefixGroup0062Row0120_passes,
    k5PrefixGroup0062Row0121_passes,
    k5PrefixGroup0062Row0122_passes,
    k5PrefixGroup0062Row0123_passes,
    k5PrefixGroup0062Row0124_passes,
    k5PrefixGroup0062Row0125_passes,
    k5PrefixGroup0062Row0126_passes,
    k5PrefixGroup0062Row0127_passes]

theorem k5PrefixGroup0062_mask_upper :
    k5PrefixGroup0062.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0062, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0062Row0000_mask_upper,
    k5PrefixGroup0062Row0001_mask_upper,
    k5PrefixGroup0062Row0002_mask_upper,
    k5PrefixGroup0062Row0003_mask_upper,
    k5PrefixGroup0062Row0004_mask_upper,
    k5PrefixGroup0062Row0005_mask_upper,
    k5PrefixGroup0062Row0006_mask_upper,
    k5PrefixGroup0062Row0007_mask_upper,
    k5PrefixGroup0062Row0008_mask_upper,
    k5PrefixGroup0062Row0009_mask_upper,
    k5PrefixGroup0062Row0010_mask_upper,
    k5PrefixGroup0062Row0011_mask_upper,
    k5PrefixGroup0062Row0012_mask_upper,
    k5PrefixGroup0062Row0013_mask_upper,
    k5PrefixGroup0062Row0014_mask_upper,
    k5PrefixGroup0062Row0015_mask_upper,
    k5PrefixGroup0062Row0016_mask_upper,
    k5PrefixGroup0062Row0017_mask_upper,
    k5PrefixGroup0062Row0018_mask_upper,
    k5PrefixGroup0062Row0019_mask_upper,
    k5PrefixGroup0062Row0020_mask_upper,
    k5PrefixGroup0062Row0021_mask_upper,
    k5PrefixGroup0062Row0022_mask_upper,
    k5PrefixGroup0062Row0023_mask_upper,
    k5PrefixGroup0062Row0024_mask_upper,
    k5PrefixGroup0062Row0025_mask_upper,
    k5PrefixGroup0062Row0026_mask_upper,
    k5PrefixGroup0062Row0027_mask_upper,
    k5PrefixGroup0062Row0028_mask_upper,
    k5PrefixGroup0062Row0029_mask_upper,
    k5PrefixGroup0062Row0030_mask_upper,
    k5PrefixGroup0062Row0031_mask_upper,
    k5PrefixGroup0062Row0032_mask_upper,
    k5PrefixGroup0062Row0033_mask_upper,
    k5PrefixGroup0062Row0034_mask_upper,
    k5PrefixGroup0062Row0035_mask_upper,
    k5PrefixGroup0062Row0036_mask_upper,
    k5PrefixGroup0062Row0037_mask_upper,
    k5PrefixGroup0062Row0038_mask_upper,
    k5PrefixGroup0062Row0039_mask_upper,
    k5PrefixGroup0062Row0040_mask_upper,
    k5PrefixGroup0062Row0041_mask_upper,
    k5PrefixGroup0062Row0042_mask_upper,
    k5PrefixGroup0062Row0043_mask_upper,
    k5PrefixGroup0062Row0044_mask_upper,
    k5PrefixGroup0062Row0045_mask_upper,
    k5PrefixGroup0062Row0046_mask_upper,
    k5PrefixGroup0062Row0047_mask_upper,
    k5PrefixGroup0062Row0048_mask_upper,
    k5PrefixGroup0062Row0049_mask_upper,
    k5PrefixGroup0062Row0050_mask_upper,
    k5PrefixGroup0062Row0051_mask_upper,
    k5PrefixGroup0062Row0052_mask_upper,
    k5PrefixGroup0062Row0053_mask_upper,
    k5PrefixGroup0062Row0054_mask_upper,
    k5PrefixGroup0062Row0055_mask_upper,
    k5PrefixGroup0062Row0056_mask_upper,
    k5PrefixGroup0062Row0057_mask_upper,
    k5PrefixGroup0062Row0058_mask_upper,
    k5PrefixGroup0062Row0059_mask_upper,
    k5PrefixGroup0062Row0060_mask_upper,
    k5PrefixGroup0062Row0061_mask_upper,
    k5PrefixGroup0062Row0062_mask_upper,
    k5PrefixGroup0062Row0063_mask_upper,
    k5PrefixGroup0062Row0064_mask_upper,
    k5PrefixGroup0062Row0065_mask_upper,
    k5PrefixGroup0062Row0066_mask_upper,
    k5PrefixGroup0062Row0067_mask_upper,
    k5PrefixGroup0062Row0068_mask_upper,
    k5PrefixGroup0062Row0069_mask_upper,
    k5PrefixGroup0062Row0070_mask_upper,
    k5PrefixGroup0062Row0071_mask_upper,
    k5PrefixGroup0062Row0072_mask_upper,
    k5PrefixGroup0062Row0073_mask_upper,
    k5PrefixGroup0062Row0074_mask_upper,
    k5PrefixGroup0062Row0075_mask_upper,
    k5PrefixGroup0062Row0076_mask_upper,
    k5PrefixGroup0062Row0077_mask_upper,
    k5PrefixGroup0062Row0078_mask_upper,
    k5PrefixGroup0062Row0079_mask_upper,
    k5PrefixGroup0062Row0080_mask_upper,
    k5PrefixGroup0062Row0081_mask_upper,
    k5PrefixGroup0062Row0082_mask_upper,
    k5PrefixGroup0062Row0083_mask_upper,
    k5PrefixGroup0062Row0084_mask_upper,
    k5PrefixGroup0062Row0085_mask_upper,
    k5PrefixGroup0062Row0086_mask_upper,
    k5PrefixGroup0062Row0087_mask_upper,
    k5PrefixGroup0062Row0088_mask_upper,
    k5PrefixGroup0062Row0089_mask_upper,
    k5PrefixGroup0062Row0090_mask_upper,
    k5PrefixGroup0062Row0091_mask_upper,
    k5PrefixGroup0062Row0092_mask_upper,
    k5PrefixGroup0062Row0093_mask_upper,
    k5PrefixGroup0062Row0094_mask_upper,
    k5PrefixGroup0062Row0095_mask_upper,
    k5PrefixGroup0062Row0096_mask_upper,
    k5PrefixGroup0062Row0097_mask_upper,
    k5PrefixGroup0062Row0098_mask_upper,
    k5PrefixGroup0062Row0099_mask_upper,
    k5PrefixGroup0062Row0100_mask_upper,
    k5PrefixGroup0062Row0101_mask_upper,
    k5PrefixGroup0062Row0102_mask_upper,
    k5PrefixGroup0062Row0103_mask_upper,
    k5PrefixGroup0062Row0104_mask_upper,
    k5PrefixGroup0062Row0105_mask_upper,
    k5PrefixGroup0062Row0106_mask_upper,
    k5PrefixGroup0062Row0107_mask_upper,
    k5PrefixGroup0062Row0108_mask_upper,
    k5PrefixGroup0062Row0109_mask_upper,
    k5PrefixGroup0062Row0110_mask_upper,
    k5PrefixGroup0062Row0111_mask_upper,
    k5PrefixGroup0062Row0112_mask_upper,
    k5PrefixGroup0062Row0113_mask_upper,
    k5PrefixGroup0062Row0114_mask_upper,
    k5PrefixGroup0062Row0115_mask_upper,
    k5PrefixGroup0062Row0116_mask_upper,
    k5PrefixGroup0062Row0117_mask_upper,
    k5PrefixGroup0062Row0118_mask_upper,
    k5PrefixGroup0062Row0119_mask_upper,
    k5PrefixGroup0062Row0120_mask_upper,
    k5PrefixGroup0062Row0121_mask_upper,
    k5PrefixGroup0062Row0122_mask_upper,
    k5PrefixGroup0062Row0123_mask_upper,
    k5PrefixGroup0062Row0124_mask_upper,
    k5PrefixGroup0062Row0125_mask_upper,
    k5PrefixGroup0062Row0126_mask_upper,
    k5PrefixGroup0062Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
