import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0108
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0109
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0110
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0111
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0112
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0113
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0114
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0115

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0108_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0108.allPrimeRanks 35797
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0108_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 425266 ≤ p)
    (hblockUpper : p < 427314)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0108.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0108.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0108.allPrimeRanks_holds
    rootJumpBlock0108_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0108.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0107 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0109_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0109.allPrimeRanks 35948
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0109_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 427314 ≤ p)
    (hblockUpper : p < 429362)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0109.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0109.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0109.allPrimeRanks_holds
    rootJumpBlock0109_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0109.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0108 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0110_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0110.allPrimeRanks 36100
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0110_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 429362 ≤ p)
    (hblockUpper : p < 431410)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0110.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0110.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0110.allPrimeRanks_holds
    rootJumpBlock0110_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0110.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0109 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0111_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0111.allPrimeRanks 36271
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0111_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 431410 ≤ p)
    (hblockUpper : p < 433458)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0111.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0111.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0111.allPrimeRanks_holds
    rootJumpBlock0111_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0111.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0110 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0112_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0112.allPrimeRanks 36442
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0112_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 433458 ≤ p)
    (hblockUpper : p < 435506)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0112.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0112.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0112.allPrimeRanks_holds
    rootJumpBlock0112_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0112.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0111 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0113_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0113.allPrimeRanks 36605
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0113_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 435506 ≤ p)
    (hblockUpper : p < 437554)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0113.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0113.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0113.allPrimeRanks_holds
    rootJumpBlock0113_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0113.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0112 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0114_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0114.allPrimeRanks 36763
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0114_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 437554 ≤ p)
    (hblockUpper : p < 439602)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0114.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0114.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0114.allPrimeRanks_holds
    rootJumpBlock0114_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0114.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0113 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0115_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0115.allPrimeRanks 36907
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0115_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 439602 ≤ p)
    (hblockUpper : p < 441650)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0115.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0115.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0115.allPrimeRanks_holds
    rootJumpBlock0115_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0115.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0114 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0010_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 425266 ≤ p)
    (hgroupUpper : p < 441650)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 427314
  · exact rootJumpBlock0108_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 429362
    · exact rootJumpBlock0109_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 431410
      · exact rootJumpBlock0110_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 433458
        · exact rootJumpBlock0111_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 435506
          · exact rootJumpBlock0112_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 437554
            · exact rootJumpBlock0113_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 439602
              · exact rootJumpBlock0114_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0115_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
