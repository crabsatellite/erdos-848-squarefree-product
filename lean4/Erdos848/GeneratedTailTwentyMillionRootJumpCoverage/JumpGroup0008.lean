import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0092
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0093
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0094
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0095
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0096
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0097
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0098
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0099

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0092_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0092.allPrimeRanks 33273
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0092_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 392498 ≤ p)
    (hblockUpper : p < 394546)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0092.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0092.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0092.allPrimeRanks_holds
    rootJumpBlock0092_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0092.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0091 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0093_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0093.allPrimeRanks 33437
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0093_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 394546 ≤ p)
    (hblockUpper : p < 396594)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0093.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0093.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0093.allPrimeRanks_holds
    rootJumpBlock0093_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0093.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0092 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0094_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0094.allPrimeRanks 33594
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0094_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 396594 ≤ p)
    (hblockUpper : p < 398642)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0094.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0094.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0094.allPrimeRanks_holds
    rootJumpBlock0094_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0094.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0093 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0095_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0095.allPrimeRanks 33755
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0095_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 398642 ≤ p)
    (hblockUpper : p < 400690)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0095.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0095.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0095.allPrimeRanks_holds
    rootJumpBlock0095_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0095.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0094 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0096_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0096.allPrimeRanks 33910
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0096_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 400690 ≤ p)
    (hblockUpper : p < 402738)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0096.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0096.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0096.allPrimeRanks_holds
    rootJumpBlock0096_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0096.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0095 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0097_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0097.allPrimeRanks 34055
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0097_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 402738 ≤ p)
    (hblockUpper : p < 404786)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0097.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0097.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0097.allPrimeRanks_holds
    rootJumpBlock0097_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0097.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0096 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0098_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0098.allPrimeRanks 34209
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0098_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 404786 ≤ p)
    (hblockUpper : p < 406834)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0098.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0098.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0098.allPrimeRanks_holds
    rootJumpBlock0098_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0098.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0097 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0099_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0099.allPrimeRanks 34363
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0099_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 406834 ≤ p)
    (hblockUpper : p < 408882)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0099.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0099.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0099.allPrimeRanks_holds
    rootJumpBlock0099_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0099.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0098 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0008_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 392498 ≤ p)
    (hgroupUpper : p < 408882)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 394546
  · exact rootJumpBlock0092_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 396594
    · exact rootJumpBlock0093_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 398642
      · exact rootJumpBlock0094_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 400690
        · exact rootJumpBlock0095_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 402738
          · exact rootJumpBlock0096_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 404786
            · exact rootJumpBlock0097_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 406834
              · exact rootJumpBlock0098_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0099_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
