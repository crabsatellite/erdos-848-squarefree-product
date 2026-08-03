import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3K5ScanDefs
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard00
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard01
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard02
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard03
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard04
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard05
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard06
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard07
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard08
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard09
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard10
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard11
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard12
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard13
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard14
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedBlock3NonsquareK5Shard15

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

private theorem unifiedBlock3NonsquareK5Split00 :
    unifiedBlock3K5ScanAt 4 1 0 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 3 1
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 3) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 1 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 0 =
      3 :: supportPrimes.drop 1 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split01 :
    unifiedBlock3K5ScanAt 4 1 1 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 7 2
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 7) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 2 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 1 =
      7 :: supportPrimes.drop 2 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split02 :
    unifiedBlock3K5ScanAt 4 1 2 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 11 3
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 11) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 3 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 2 =
      11 :: supportPrimes.drop 3 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split03 :
    unifiedBlock3K5ScanAt 4 1 3 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 13 4
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 13) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 4 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 3 =
      13 :: supportPrimes.drop 4 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split04 :
    unifiedBlock3K5ScanAt 4 1 4 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 17 5
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 17) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 5 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 4 =
      17 :: supportPrimes.drop 5 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split05 :
    unifiedBlock3K5ScanAt 4 1 5 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 19 6
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 19) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 6 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 5 =
      19 :: supportPrimes.drop 6 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split06 :
    unifiedBlock3K5ScanAt 4 1 6 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 23 7
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 23) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 7 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 6 =
      23 :: supportPrimes.drop 7 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split07 :
    unifiedBlock3K5ScanAt 4 1 7 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 29 8
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 29) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 8 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 7 =
      29 :: supportPrimes.drop 8 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split08 :
    unifiedBlock3K5ScanAt 4 1 8 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 31 9
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 31) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 9 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 8 =
      31 :: supportPrimes.drop 9 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split09 :
    unifiedBlock3K5ScanAt 4 1 9 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 37 10
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 37) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 10 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 9 =
      37 :: supportPrimes.drop 10 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split10 :
    unifiedBlock3K5ScanAt 4 1 10 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 41 11
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 41) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 11 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 10 =
      41 :: supportPrimes.drop 11 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split11 :
    unifiedBlock3K5ScanAt 4 1 11 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 43 12
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 43) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 12 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 11 =
      43 :: supportPrimes.drop 12 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split12 :
    unifiedBlock3K5ScanAt 4 1 12 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 47 13
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 47) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 13 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 12 =
      47 :: supportPrimes.drop 13 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split13 :
    unifiedBlock3K5ScanAt 4 1 13 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 53 14
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 53) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 14 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 13 =
      53 :: supportPrimes.drop 14 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split14 :
    unifiedBlock3K5ScanAt 4 1 14 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 59 15
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 59) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 15 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 14 =
      59 :: supportPrimes.drop 15 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Split15 :
    unifiedBlock3K5ScanAt 4 1 15 block3NonsquareBaseWords =
      (unifiedBlock3K5ScanAt 3 61 16
          (Erdos848.globalMixedCoreIntersectWords ((Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion) 61) block3NonsquareBaseWords) &&
        unifiedBlock3K5ScanAt 4 1 16 block3NonsquareBaseWords) := by
  unfold unifiedBlock3K5ScanAt
  rw [show
    supportPrimes.drop 15 =
      61 :: supportPrimes.drop 16 by rfl]
  apply unifiedBlock3K5ScanStep
  · norm_num [supportPrimes]
  · rfl

private theorem unifiedBlock3NonsquareK5Residual :
    unifiedBlock3K5ScanAt 4 1 16 block3NonsquareBaseWords = true := by
  rfl

theorem unifiedBlock3NonsquareK5ScanPasses :
    Erdos848.hybridPaperRootScanPasses
      (Erdos848.HybridPaperDiagonalRegime.rootLookup .oneToTwoBillion)
      (Erdos848.HybridPaperDiagonalRegime.rootTarget
        .oneToTwoBillion 5)
      2000000000 4 1 supportPrimes
      block3NonsquareBaseWords = true := by
  change unifiedBlock3K5ScanAt 4 1 0 block3NonsquareBaseWords = true
  rw [unifiedBlock3NonsquareK5Split00,
    unifiedBlock3NonsquareK5Shard00Passes,
    unifiedBlock3NonsquareK5Split01,
    unifiedBlock3NonsquareK5Shard01Passes,
    unifiedBlock3NonsquareK5Split02,
    unifiedBlock3NonsquareK5Shard02Passes,
    unifiedBlock3NonsquareK5Split03,
    unifiedBlock3NonsquareK5Shard03Passes,
    unifiedBlock3NonsquareK5Split04,
    unifiedBlock3NonsquareK5Shard04Passes,
    unifiedBlock3NonsquareK5Split05,
    unifiedBlock3NonsquareK5Shard05Passes,
    unifiedBlock3NonsquareK5Split06,
    unifiedBlock3NonsquareK5Shard06Passes,
    unifiedBlock3NonsquareK5Split07,
    unifiedBlock3NonsquareK5Shard07Passes,
    unifiedBlock3NonsquareK5Split08,
    unifiedBlock3NonsquareK5Shard08Passes,
    unifiedBlock3NonsquareK5Split09,
    unifiedBlock3NonsquareK5Shard09Passes,
    unifiedBlock3NonsquareK5Split10,
    unifiedBlock3NonsquareK5Shard10Passes,
    unifiedBlock3NonsquareK5Split11,
    unifiedBlock3NonsquareK5Shard11Passes,
    unifiedBlock3NonsquareK5Split12,
    unifiedBlock3NonsquareK5Shard12Passes,
    unifiedBlock3NonsquareK5Split13,
    unifiedBlock3NonsquareK5Shard13Passes,
    unifiedBlock3NonsquareK5Split14,
    unifiedBlock3NonsquareK5Shard14Passes,
    unifiedBlock3NonsquareK5Split15,
    unifiedBlock3NonsquareK5Shard15Passes,
    unifiedBlock3NonsquareK5Residual]
  rfl

end Erdos848.GeneratedHybridPaperRootCoverage
