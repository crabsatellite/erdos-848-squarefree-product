import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0033 : List (List ℕ) :=
  [[3, 29, 61, 101],
     [3, 29, 61, 103],
     [3, 29, 61, 107],
     [3, 29, 61, 109],
     [3, 29, 61, 113],
     [3, 29, 61, 127],
     [3, 29, 61, 131],
     [3, 29, 67, 71],
     [3, 29, 67, 73],
     [3, 29, 67, 79],
     [3, 29, 67, 83],
     [3, 29, 67, 89],
     [3, 29, 67, 97],
     [3, 29, 67, 101],
     [3, 29, 67, 103],
     [3, 29, 67, 107],
     [3, 29, 67, 109],
     [3, 29, 67, 113],
     [3, 29, 71, 73],
     [3, 29, 71, 79],
     [3, 29, 71, 83],
     [3, 29, 71, 89],
     [3, 29, 71, 97],
     [3, 29, 71, 101],
     [3, 29, 71, 103],
     [3, 29, 71, 107],
     [3, 29, 71, 109],
     [3, 29, 71, 113],
     [3, 29, 73, 79],
     [3, 29, 73, 83],
     [3, 29, 73, 89],
     [3, 29, 73, 97],
     [3, 29, 73, 101],
     [3, 29, 73, 103],
     [3, 29, 73, 107],
     [3, 29, 73, 109],
     [3, 29, 73, 113],
     [3, 29, 79, 83],
     [3, 29, 79, 89],
     [3, 29, 79, 97],
     [3, 29, 79, 101],
     [3, 29, 79, 103],
     [3, 29, 79, 107],
     [3, 29, 79, 109],
     [3, 29, 83, 89],
     [3, 29, 83, 97],
     [3, 29, 83, 101],
     [3, 29, 83, 103],
     [3, 29, 83, 107],
     [3, 29, 83, 109],
     [3, 29, 89, 97],
     [3, 29, 89, 101],
     [3, 29, 89, 103],
     [3, 29, 89, 107],
     [3, 29, 89, 109],
     [3, 29, 97, 101],
     [3, 29, 97, 103],
     [3, 31, 37, 41],
     [3, 31, 37, 43],
     [3, 31, 37, 47],
     [3, 31, 37, 53],
     [3, 31, 37, 59],
     [3, 31, 37, 61],
     [3, 31, 37, 67],
     [3, 31, 37, 71],
     [3, 31, 37, 73],
     [3, 31, 37, 79],
     [3, 31, 37, 83],
     [3, 31, 37, 89],
     [3, 31, 37, 97],
     [3, 31, 37, 101],
     [3, 31, 37, 103],
     [3, 31, 37, 107],
     [3, 31, 37, 109],
     [3, 31, 37, 113],
     [3, 31, 37, 127],
     [3, 31, 37, 131],
     [3, 31, 37, 137],
     [3, 31, 37, 139],
     [3, 31, 37, 149],
     [3, 31, 37, 151],
     [3, 31, 37, 157],
     [3, 31, 37, 163],
     [3, 31, 41, 43],
     [3, 31, 41, 47],
     [3, 31, 41, 53],
     [3, 31, 41, 59],
     [3, 31, 41, 61],
     [3, 31, 41, 67],
     [3, 31, 41, 71],
     [3, 31, 41, 73],
     [3, 31, 41, 79],
     [3, 31, 41, 83],
     [3, 31, 41, 89],
     [3, 31, 41, 97],
     [3, 31, 41, 101],
     [3, 31, 41, 103],
     [3, 31, 41, 107],
     [3, 31, 41, 109],
     [3, 31, 41, 113],
     [3, 31, 41, 127],
     [3, 31, 41, 131],
     [3, 31, 41, 137],
     [3, 31, 41, 139],
     [3, 31, 41, 149],
     [3, 31, 41, 151],
     [3, 31, 43, 47],
     [3, 31, 43, 53],
     [3, 31, 43, 59],
     [3, 31, 43, 61],
     [3, 31, 43, 67],
     [3, 31, 43, 71],
     [3, 31, 43, 73],
     [3, 31, 43, 79],
     [3, 31, 43, 83],
     [3, 31, 43, 89],
     [3, 31, 43, 97],
     [3, 31, 43, 101],
     [3, 31, 43, 103],
     [3, 31, 43, 107],
     [3, 31, 43, 109],
     [3, 31, 43, 113],
     [3, 31, 43, 127],
     [3, 31, 43, 131],
     [3, 31, 43, 137],
     [3, 31, 43, 139],
     [3, 31, 43, 149],
     [3, 31, 43, 151]]

theorem k5PrefixGroup0033Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0004_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0004_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0005_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0005_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0006_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 61, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0006_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 61, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0007_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0007_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0008_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0008_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0009_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0009_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0010_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0010_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0011_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0011_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0012_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0012_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0013_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0013_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0014_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0014_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0015_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0015_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0016_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0016_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0017_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 67, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0017_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 67, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0018_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0018_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0019_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0019_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0020_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0020_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0021_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0021_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0022_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0022_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0023_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0023_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0024_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0024_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0025_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0025_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0026_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0026_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0027_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 71, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0027_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 71, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0028_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0028_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0029_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0029_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0030_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0030_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0031_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0031_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0032_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0032_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0033_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0033_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0034_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0034_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0035_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0035_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0036_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 73, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0036_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 73, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0037_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0037_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0038_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0038_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0039_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0039_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0040_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0040_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0041_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0041_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0042_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0042_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0043_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 79, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0043_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 79, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0044_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0044_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0045_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0045_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0046_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0046_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0047_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0047_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0048_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0048_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0049_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 83, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0049_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 83, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0050_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 89, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0050_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 89, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0051_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 89, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0051_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 89, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0052_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 89, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0052_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 89, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0053_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 89, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0053_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 89, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0054_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 89, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0054_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 89, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0055_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 97, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0055_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 97, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0056_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 29, 97, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0056_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 29, 97, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0057_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0033Row0057_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 41] = true := by
  decide

theorem k5PrefixGroup0033Row0058_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0033Row0058_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 43] = true := by
  decide

theorem k5PrefixGroup0033Row0059_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0059_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0060_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0060_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0061_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0061_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0062_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0062_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0063_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0063_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0064_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0064_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0065_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0065_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0066_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0066_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0067_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0067_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0068_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0068_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0069_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0069_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0070_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0070_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0071_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0071_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0072_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0072_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0073_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0073_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0074_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0074_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0075_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0075_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0076_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0076_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0077_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0077_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0078_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0078_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0079_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0079_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0080_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 151] = true := by
  decide

theorem k5PrefixGroup0033Row0080_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 151] = true := by
  decide

theorem k5PrefixGroup0033Row0081_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 157] = true := by
  decide

theorem k5PrefixGroup0033Row0081_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 157] = true := by
  decide

theorem k5PrefixGroup0033Row0082_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 37, 163] = true := by
  decide

theorem k5PrefixGroup0033Row0082_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 37, 163] = true := by
  decide

theorem k5PrefixGroup0033Row0083_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0033Row0083_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 43] = true := by
  decide

theorem k5PrefixGroup0033Row0084_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0084_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0085_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0085_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0086_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0086_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0087_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0087_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0088_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0088_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0089_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0089_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0090_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0090_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0091_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0091_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0092_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0092_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0093_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0093_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0094_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0094_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0095_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0095_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0096_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0096_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0097_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0097_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0098_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0098_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0099_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0099_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0100_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0100_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0101_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0101_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0102_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0102_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0103_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0103_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0104_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0104_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0105_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 41, 151] = true := by
  decide

theorem k5PrefixGroup0033Row0105_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 41, 151] = true := by
  decide

theorem k5PrefixGroup0033Row0106_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0106_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 47] = true := by
  decide

theorem k5PrefixGroup0033Row0107_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0107_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 53] = true := by
  decide

theorem k5PrefixGroup0033Row0108_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0108_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 59] = true := by
  decide

theorem k5PrefixGroup0033Row0109_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0109_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 61] = true := by
  decide

theorem k5PrefixGroup0033Row0110_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0110_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 67] = true := by
  decide

theorem k5PrefixGroup0033Row0111_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0111_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 71] = true := by
  decide

theorem k5PrefixGroup0033Row0112_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0112_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 73] = true := by
  decide

theorem k5PrefixGroup0033Row0113_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0113_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 79] = true := by
  decide

theorem k5PrefixGroup0033Row0114_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0114_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 83] = true := by
  decide

theorem k5PrefixGroup0033Row0115_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0115_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 89] = true := by
  decide

theorem k5PrefixGroup0033Row0116_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0116_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 97] = true := by
  decide

theorem k5PrefixGroup0033Row0117_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0117_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 101] = true := by
  decide

theorem k5PrefixGroup0033Row0118_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0118_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 103] = true := by
  decide

theorem k5PrefixGroup0033Row0119_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0119_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 107] = true := by
  decide

theorem k5PrefixGroup0033Row0120_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0120_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 109] = true := by
  decide

theorem k5PrefixGroup0033Row0121_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0121_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 113] = true := by
  decide

theorem k5PrefixGroup0033Row0122_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0122_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 127] = true := by
  decide

theorem k5PrefixGroup0033Row0123_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0123_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 131] = true := by
  decide

theorem k5PrefixGroup0033Row0124_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0124_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 137] = true := by
  decide

theorem k5PrefixGroup0033Row0125_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0125_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 139] = true := by
  decide

theorem k5PrefixGroup0033Row0126_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0126_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 149] = true := by
  decide

theorem k5PrefixGroup0033Row0127_passes :
    Erdos848.globalPureSupportPrefixPasses 5
      [3, 31, 43, 151] = true := by
  decide

theorem k5PrefixGroup0033Row0127_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 31, 43, 151] = true := by
  decide

theorem k5PrefixGroup0033_passes :
    k5PrefixGroup0033.all
      (Erdos848.globalPureSupportPrefixPasses 5) = true := by
  simp only [k5PrefixGroup0033, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0033Row0000_passes,
    k5PrefixGroup0033Row0001_passes,
    k5PrefixGroup0033Row0002_passes,
    k5PrefixGroup0033Row0003_passes,
    k5PrefixGroup0033Row0004_passes,
    k5PrefixGroup0033Row0005_passes,
    k5PrefixGroup0033Row0006_passes,
    k5PrefixGroup0033Row0007_passes,
    k5PrefixGroup0033Row0008_passes,
    k5PrefixGroup0033Row0009_passes,
    k5PrefixGroup0033Row0010_passes,
    k5PrefixGroup0033Row0011_passes,
    k5PrefixGroup0033Row0012_passes,
    k5PrefixGroup0033Row0013_passes,
    k5PrefixGroup0033Row0014_passes,
    k5PrefixGroup0033Row0015_passes,
    k5PrefixGroup0033Row0016_passes,
    k5PrefixGroup0033Row0017_passes,
    k5PrefixGroup0033Row0018_passes,
    k5PrefixGroup0033Row0019_passes,
    k5PrefixGroup0033Row0020_passes,
    k5PrefixGroup0033Row0021_passes,
    k5PrefixGroup0033Row0022_passes,
    k5PrefixGroup0033Row0023_passes,
    k5PrefixGroup0033Row0024_passes,
    k5PrefixGroup0033Row0025_passes,
    k5PrefixGroup0033Row0026_passes,
    k5PrefixGroup0033Row0027_passes,
    k5PrefixGroup0033Row0028_passes,
    k5PrefixGroup0033Row0029_passes,
    k5PrefixGroup0033Row0030_passes,
    k5PrefixGroup0033Row0031_passes,
    k5PrefixGroup0033Row0032_passes,
    k5PrefixGroup0033Row0033_passes,
    k5PrefixGroup0033Row0034_passes,
    k5PrefixGroup0033Row0035_passes,
    k5PrefixGroup0033Row0036_passes,
    k5PrefixGroup0033Row0037_passes,
    k5PrefixGroup0033Row0038_passes,
    k5PrefixGroup0033Row0039_passes,
    k5PrefixGroup0033Row0040_passes,
    k5PrefixGroup0033Row0041_passes,
    k5PrefixGroup0033Row0042_passes,
    k5PrefixGroup0033Row0043_passes,
    k5PrefixGroup0033Row0044_passes,
    k5PrefixGroup0033Row0045_passes,
    k5PrefixGroup0033Row0046_passes,
    k5PrefixGroup0033Row0047_passes,
    k5PrefixGroup0033Row0048_passes,
    k5PrefixGroup0033Row0049_passes,
    k5PrefixGroup0033Row0050_passes,
    k5PrefixGroup0033Row0051_passes,
    k5PrefixGroup0033Row0052_passes,
    k5PrefixGroup0033Row0053_passes,
    k5PrefixGroup0033Row0054_passes,
    k5PrefixGroup0033Row0055_passes,
    k5PrefixGroup0033Row0056_passes,
    k5PrefixGroup0033Row0057_passes,
    k5PrefixGroup0033Row0058_passes,
    k5PrefixGroup0033Row0059_passes,
    k5PrefixGroup0033Row0060_passes,
    k5PrefixGroup0033Row0061_passes,
    k5PrefixGroup0033Row0062_passes,
    k5PrefixGroup0033Row0063_passes,
    k5PrefixGroup0033Row0064_passes,
    k5PrefixGroup0033Row0065_passes,
    k5PrefixGroup0033Row0066_passes,
    k5PrefixGroup0033Row0067_passes,
    k5PrefixGroup0033Row0068_passes,
    k5PrefixGroup0033Row0069_passes,
    k5PrefixGroup0033Row0070_passes,
    k5PrefixGroup0033Row0071_passes,
    k5PrefixGroup0033Row0072_passes,
    k5PrefixGroup0033Row0073_passes,
    k5PrefixGroup0033Row0074_passes,
    k5PrefixGroup0033Row0075_passes,
    k5PrefixGroup0033Row0076_passes,
    k5PrefixGroup0033Row0077_passes,
    k5PrefixGroup0033Row0078_passes,
    k5PrefixGroup0033Row0079_passes,
    k5PrefixGroup0033Row0080_passes,
    k5PrefixGroup0033Row0081_passes,
    k5PrefixGroup0033Row0082_passes,
    k5PrefixGroup0033Row0083_passes,
    k5PrefixGroup0033Row0084_passes,
    k5PrefixGroup0033Row0085_passes,
    k5PrefixGroup0033Row0086_passes,
    k5PrefixGroup0033Row0087_passes,
    k5PrefixGroup0033Row0088_passes,
    k5PrefixGroup0033Row0089_passes,
    k5PrefixGroup0033Row0090_passes,
    k5PrefixGroup0033Row0091_passes,
    k5PrefixGroup0033Row0092_passes,
    k5PrefixGroup0033Row0093_passes,
    k5PrefixGroup0033Row0094_passes,
    k5PrefixGroup0033Row0095_passes,
    k5PrefixGroup0033Row0096_passes,
    k5PrefixGroup0033Row0097_passes,
    k5PrefixGroup0033Row0098_passes,
    k5PrefixGroup0033Row0099_passes,
    k5PrefixGroup0033Row0100_passes,
    k5PrefixGroup0033Row0101_passes,
    k5PrefixGroup0033Row0102_passes,
    k5PrefixGroup0033Row0103_passes,
    k5PrefixGroup0033Row0104_passes,
    k5PrefixGroup0033Row0105_passes,
    k5PrefixGroup0033Row0106_passes,
    k5PrefixGroup0033Row0107_passes,
    k5PrefixGroup0033Row0108_passes,
    k5PrefixGroup0033Row0109_passes,
    k5PrefixGroup0033Row0110_passes,
    k5PrefixGroup0033Row0111_passes,
    k5PrefixGroup0033Row0112_passes,
    k5PrefixGroup0033Row0113_passes,
    k5PrefixGroup0033Row0114_passes,
    k5PrefixGroup0033Row0115_passes,
    k5PrefixGroup0033Row0116_passes,
    k5PrefixGroup0033Row0117_passes,
    k5PrefixGroup0033Row0118_passes,
    k5PrefixGroup0033Row0119_passes,
    k5PrefixGroup0033Row0120_passes,
    k5PrefixGroup0033Row0121_passes,
    k5PrefixGroup0033Row0122_passes,
    k5PrefixGroup0033Row0123_passes,
    k5PrefixGroup0033Row0124_passes,
    k5PrefixGroup0033Row0125_passes,
    k5PrefixGroup0033Row0126_passes,
    k5PrefixGroup0033Row0127_passes]

theorem k5PrefixGroup0033_mask_upper :
    k5PrefixGroup0033.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k5PrefixGroup0033, List.all_cons, List.all_nil, Bool.true_and,
    k5PrefixGroup0033Row0000_mask_upper,
    k5PrefixGroup0033Row0001_mask_upper,
    k5PrefixGroup0033Row0002_mask_upper,
    k5PrefixGroup0033Row0003_mask_upper,
    k5PrefixGroup0033Row0004_mask_upper,
    k5PrefixGroup0033Row0005_mask_upper,
    k5PrefixGroup0033Row0006_mask_upper,
    k5PrefixGroup0033Row0007_mask_upper,
    k5PrefixGroup0033Row0008_mask_upper,
    k5PrefixGroup0033Row0009_mask_upper,
    k5PrefixGroup0033Row0010_mask_upper,
    k5PrefixGroup0033Row0011_mask_upper,
    k5PrefixGroup0033Row0012_mask_upper,
    k5PrefixGroup0033Row0013_mask_upper,
    k5PrefixGroup0033Row0014_mask_upper,
    k5PrefixGroup0033Row0015_mask_upper,
    k5PrefixGroup0033Row0016_mask_upper,
    k5PrefixGroup0033Row0017_mask_upper,
    k5PrefixGroup0033Row0018_mask_upper,
    k5PrefixGroup0033Row0019_mask_upper,
    k5PrefixGroup0033Row0020_mask_upper,
    k5PrefixGroup0033Row0021_mask_upper,
    k5PrefixGroup0033Row0022_mask_upper,
    k5PrefixGroup0033Row0023_mask_upper,
    k5PrefixGroup0033Row0024_mask_upper,
    k5PrefixGroup0033Row0025_mask_upper,
    k5PrefixGroup0033Row0026_mask_upper,
    k5PrefixGroup0033Row0027_mask_upper,
    k5PrefixGroup0033Row0028_mask_upper,
    k5PrefixGroup0033Row0029_mask_upper,
    k5PrefixGroup0033Row0030_mask_upper,
    k5PrefixGroup0033Row0031_mask_upper,
    k5PrefixGroup0033Row0032_mask_upper,
    k5PrefixGroup0033Row0033_mask_upper,
    k5PrefixGroup0033Row0034_mask_upper,
    k5PrefixGroup0033Row0035_mask_upper,
    k5PrefixGroup0033Row0036_mask_upper,
    k5PrefixGroup0033Row0037_mask_upper,
    k5PrefixGroup0033Row0038_mask_upper,
    k5PrefixGroup0033Row0039_mask_upper,
    k5PrefixGroup0033Row0040_mask_upper,
    k5PrefixGroup0033Row0041_mask_upper,
    k5PrefixGroup0033Row0042_mask_upper,
    k5PrefixGroup0033Row0043_mask_upper,
    k5PrefixGroup0033Row0044_mask_upper,
    k5PrefixGroup0033Row0045_mask_upper,
    k5PrefixGroup0033Row0046_mask_upper,
    k5PrefixGroup0033Row0047_mask_upper,
    k5PrefixGroup0033Row0048_mask_upper,
    k5PrefixGroup0033Row0049_mask_upper,
    k5PrefixGroup0033Row0050_mask_upper,
    k5PrefixGroup0033Row0051_mask_upper,
    k5PrefixGroup0033Row0052_mask_upper,
    k5PrefixGroup0033Row0053_mask_upper,
    k5PrefixGroup0033Row0054_mask_upper,
    k5PrefixGroup0033Row0055_mask_upper,
    k5PrefixGroup0033Row0056_mask_upper,
    k5PrefixGroup0033Row0057_mask_upper,
    k5PrefixGroup0033Row0058_mask_upper,
    k5PrefixGroup0033Row0059_mask_upper,
    k5PrefixGroup0033Row0060_mask_upper,
    k5PrefixGroup0033Row0061_mask_upper,
    k5PrefixGroup0033Row0062_mask_upper,
    k5PrefixGroup0033Row0063_mask_upper,
    k5PrefixGroup0033Row0064_mask_upper,
    k5PrefixGroup0033Row0065_mask_upper,
    k5PrefixGroup0033Row0066_mask_upper,
    k5PrefixGroup0033Row0067_mask_upper,
    k5PrefixGroup0033Row0068_mask_upper,
    k5PrefixGroup0033Row0069_mask_upper,
    k5PrefixGroup0033Row0070_mask_upper,
    k5PrefixGroup0033Row0071_mask_upper,
    k5PrefixGroup0033Row0072_mask_upper,
    k5PrefixGroup0033Row0073_mask_upper,
    k5PrefixGroup0033Row0074_mask_upper,
    k5PrefixGroup0033Row0075_mask_upper,
    k5PrefixGroup0033Row0076_mask_upper,
    k5PrefixGroup0033Row0077_mask_upper,
    k5PrefixGroup0033Row0078_mask_upper,
    k5PrefixGroup0033Row0079_mask_upper,
    k5PrefixGroup0033Row0080_mask_upper,
    k5PrefixGroup0033Row0081_mask_upper,
    k5PrefixGroup0033Row0082_mask_upper,
    k5PrefixGroup0033Row0083_mask_upper,
    k5PrefixGroup0033Row0084_mask_upper,
    k5PrefixGroup0033Row0085_mask_upper,
    k5PrefixGroup0033Row0086_mask_upper,
    k5PrefixGroup0033Row0087_mask_upper,
    k5PrefixGroup0033Row0088_mask_upper,
    k5PrefixGroup0033Row0089_mask_upper,
    k5PrefixGroup0033Row0090_mask_upper,
    k5PrefixGroup0033Row0091_mask_upper,
    k5PrefixGroup0033Row0092_mask_upper,
    k5PrefixGroup0033Row0093_mask_upper,
    k5PrefixGroup0033Row0094_mask_upper,
    k5PrefixGroup0033Row0095_mask_upper,
    k5PrefixGroup0033Row0096_mask_upper,
    k5PrefixGroup0033Row0097_mask_upper,
    k5PrefixGroup0033Row0098_mask_upper,
    k5PrefixGroup0033Row0099_mask_upper,
    k5PrefixGroup0033Row0100_mask_upper,
    k5PrefixGroup0033Row0101_mask_upper,
    k5PrefixGroup0033Row0102_mask_upper,
    k5PrefixGroup0033Row0103_mask_upper,
    k5PrefixGroup0033Row0104_mask_upper,
    k5PrefixGroup0033Row0105_mask_upper,
    k5PrefixGroup0033Row0106_mask_upper,
    k5PrefixGroup0033Row0107_mask_upper,
    k5PrefixGroup0033Row0108_mask_upper,
    k5PrefixGroup0033Row0109_mask_upper,
    k5PrefixGroup0033Row0110_mask_upper,
    k5PrefixGroup0033Row0111_mask_upper,
    k5PrefixGroup0033Row0112_mask_upper,
    k5PrefixGroup0033Row0113_mask_upper,
    k5PrefixGroup0033Row0114_mask_upper,
    k5PrefixGroup0033Row0115_mask_upper,
    k5PrefixGroup0033Row0116_mask_upper,
    k5PrefixGroup0033Row0117_mask_upper,
    k5PrefixGroup0033Row0118_mask_upper,
    k5PrefixGroup0033Row0119_mask_upper,
    k5PrefixGroup0033Row0120_mask_upper,
    k5PrefixGroup0033Row0121_mask_upper,
    k5PrefixGroup0033Row0122_mask_upper,
    k5PrefixGroup0033Row0123_mask_upper,
    k5PrefixGroup0033Row0124_mask_upper,
    k5PrefixGroup0033Row0125_mask_upper,
    k5PrefixGroup0033Row0126_mask_upper,
    k5PrefixGroup0033Row0127_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
