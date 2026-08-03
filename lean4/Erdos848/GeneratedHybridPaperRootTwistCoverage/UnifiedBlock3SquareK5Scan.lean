import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3K5ScanDefs
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard00
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard01
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard02
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard03
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard04
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard05
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard06
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard07
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard08
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard09
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard10
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard11
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard12
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard13
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard14
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedBlock3SquareK5Shard15

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

private theorem unifiedBlock3SquareK5Split00 :
    unifiedBlock3K5ScanAt 4 1 0 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 3 1
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 3) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 1 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 0 =
      3 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 1 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split01 :
    unifiedBlock3K5ScanAt 4 1 1 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 7 2
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 7) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 2 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 1 =
      7 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 2 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split02 :
    unifiedBlock3K5ScanAt 4 1 2 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 11 3
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 11) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 3 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 2 =
      11 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 3 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split03 :
    unifiedBlock3K5ScanAt 4 1 3 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 13 4
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 13) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 4 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 3 =
      13 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 4 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split04 :
    unifiedBlock3K5ScanAt 4 1 4 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 17 5
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 17) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 5 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 4 =
      17 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 5 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split05 :
    unifiedBlock3K5ScanAt 4 1 5 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 19 6
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 19) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 6 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 5 =
      19 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 6 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split06 :
    unifiedBlock3K5ScanAt 4 1 6 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 23 7
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 23) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 7 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 6 =
      23 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 7 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split07 :
    unifiedBlock3K5ScanAt 4 1 7 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 29 8
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 29) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 8 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 7 =
      29 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 8 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split08 :
    unifiedBlock3K5ScanAt 4 1 8 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 31 9
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 31) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 9 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 8 =
      31 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 9 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split09 :
    unifiedBlock3K5ScanAt 4 1 9 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 37 10
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 37) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 10 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 9 =
      37 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 10 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split10 :
    unifiedBlock3K5ScanAt 4 1 10 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 41 11
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 41) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 11 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 10 =
      41 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 11 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split11 :
    unifiedBlock3K5ScanAt 4 1 11 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 43 12
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 43) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 12 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 11 =
      43 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 12 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split12 :
    unifiedBlock3K5ScanAt 4 1 12 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 47 13
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 47) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 13 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 12 =
      47 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 13 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split13 :
    unifiedBlock3K5ScanAt 4 1 13 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 53 14
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 53) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 14 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 13 =
      53 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 14 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split14 :
    unifiedBlock3K5ScanAt 4 1 14 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 59 15
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 59) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 15 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 14 =
      59 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 15 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Split15 :
    unifiedBlock3K5ScanAt 4 1 15 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords =
      (unifiedBlock3K5ScanAt 3 61 16
          (Erdos848.globalMixedCoreIntersectWords ((unifiedLookup .oneToTwoBillion) 61) Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 16 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 15 =
      61 :: Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop 16 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]
  · rfl

private theorem unifiedBlock3SquareK5Residual :
    unifiedBlock3K5ScanAt 4 1 16 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords = true := by
  rfl

theorem unifiedBlock3SquareK5ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup .oneToTwoBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .oneToTwoBillion 5)
      2000000000 4 1 Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords = true := by
  change unifiedBlock3K5ScanAt 4 1 0 Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords = true
  rw [unifiedBlock3SquareK5Split00,
    unifiedBlock3SquareK5Shard00Passes,
    unifiedBlock3SquareK5Split01,
    unifiedBlock3SquareK5Shard01Passes,
    unifiedBlock3SquareK5Split02,
    unifiedBlock3SquareK5Shard02Passes,
    unifiedBlock3SquareK5Split03,
    unifiedBlock3SquareK5Shard03Passes,
    unifiedBlock3SquareK5Split04,
    unifiedBlock3SquareK5Shard04Passes,
    unifiedBlock3SquareK5Split05,
    unifiedBlock3SquareK5Shard05Passes,
    unifiedBlock3SquareK5Split06,
    unifiedBlock3SquareK5Shard06Passes,
    unifiedBlock3SquareK5Split07,
    unifiedBlock3SquareK5Shard07Passes,
    unifiedBlock3SquareK5Split08,
    unifiedBlock3SquareK5Shard08Passes,
    unifiedBlock3SquareK5Split09,
    unifiedBlock3SquareK5Shard09Passes,
    unifiedBlock3SquareK5Split10,
    unifiedBlock3SquareK5Shard10Passes,
    unifiedBlock3SquareK5Split11,
    unifiedBlock3SquareK5Shard11Passes,
    unifiedBlock3SquareK5Split12,
    unifiedBlock3SquareK5Shard12Passes,
    unifiedBlock3SquareK5Split13,
    unifiedBlock3SquareK5Shard13Passes,
    unifiedBlock3SquareK5Split14,
    unifiedBlock3SquareK5Shard14Passes,
    unifiedBlock3SquareK5Split15,
    unifiedBlock3SquareK5Shard15Passes,
    unifiedBlock3SquareK5Residual]
  rfl

end Erdos848.GeneratedHybridPaperRootTwistCoverage
