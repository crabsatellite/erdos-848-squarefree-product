import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0052
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0053
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0054
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0055
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0056
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0057
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0058
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0059

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0052_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0052.allPrimeRanks 26847
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0052_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 310578 ≤ p)
    (hblockUpper : p < 312626)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0052.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0052.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0052.allPrimeRanks_holds
    rootJumpBlock0052_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0052.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0051 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0053_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0053.allPrimeRanks 27005
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0053_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 312626 ≤ p)
    (hblockUpper : p < 314674)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0053.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0053.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0053.allPrimeRanks_holds
    rootJumpBlock0053_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0053.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0052 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0054_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0054.allPrimeRanks 27173
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0054_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 314674 ≤ p)
    (hblockUpper : p < 316722)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0054.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0054.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0054.allPrimeRanks_holds
    rootJumpBlock0054_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0054.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0053 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0055_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0055.allPrimeRanks 27334
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0055_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 316722 ≤ p)
    (hblockUpper : p < 318770)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0055.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0055.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0055.allPrimeRanks_holds
    rootJumpBlock0055_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0055.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0054 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0056_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0056.allPrimeRanks 27504
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0056_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 318770 ≤ p)
    (hblockUpper : p < 320818)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0056.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0056.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0056.allPrimeRanks_holds
    rootJumpBlock0056_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0056.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0055 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0057_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0057.allPrimeRanks 27673
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0057_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 320818 ≤ p)
    (hblockUpper : p < 322866)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0057.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0057.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0057.allPrimeRanks_holds
    rootJumpBlock0057_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0057.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0056 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0058_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0058.allPrimeRanks 27836
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0058_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 322866 ≤ p)
    (hblockUpper : p < 324914)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0058.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0058.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0058.allPrimeRanks_holds
    rootJumpBlock0058_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0058.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0057 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0059_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0059.allPrimeRanks 27997
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0059_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 324914 ≤ p)
    (hblockUpper : p < 326962)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0059.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0059.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0059.allPrimeRanks_holds
    rootJumpBlock0059_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0059.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0058 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0003_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 310578 ≤ p)
    (hgroupUpper : p < 326962)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 312626
  · exact rootJumpBlock0052_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 314674
    · exact rootJumpBlock0053_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 316722
      · exact rootJumpBlock0054_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 318770
        · exact rootJumpBlock0055_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 320818
          · exact rootJumpBlock0056_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 322866
            · exact rootJumpBlock0057_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 324914
              · exact rootJumpBlock0058_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0059_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
