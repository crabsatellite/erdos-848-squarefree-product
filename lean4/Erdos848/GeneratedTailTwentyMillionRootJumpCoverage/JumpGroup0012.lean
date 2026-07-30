import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0124
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0125
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0126
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0127
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0128
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0129
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0130
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0131

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0124_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0124.allPrimeRanks 38317
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0124_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 458034 ≤ p)
    (hblockUpper : p < 460082)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0124.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0124.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0124.allPrimeRanks_holds
    rootJumpBlock0124_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0124.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0123 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0125_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0125.allPrimeRanks 38465
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0125_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 460082 ≤ p)
    (hblockUpper : p < 462130)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0125.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0125.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0125.allPrimeRanks_holds
    rootJumpBlock0125_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0125.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0124 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0126_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0126.allPrimeRanks 38613
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0126_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 462130 ≤ p)
    (hblockUpper : p < 464178)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0126.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0126.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0126.allPrimeRanks_holds
    rootJumpBlock0126_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0126.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0125 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0127_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0127.allPrimeRanks 38771
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0127_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 464178 ≤ p)
    (hblockUpper : p < 466226)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0127.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0127.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0127.allPrimeRanks_holds
    rootJumpBlock0127_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0127.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0126 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0128_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0128.allPrimeRanks 38932
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0128_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 466226 ≤ p)
    (hblockUpper : p < 468274)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0128.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0128.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0128.allPrimeRanks_holds
    rootJumpBlock0128_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0128.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0127 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0129_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0129.allPrimeRanks 39091
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0129_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 468274 ≤ p)
    (hblockUpper : p < 470322)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0129.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0129.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0129.allPrimeRanks_holds
    rootJumpBlock0129_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0129.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0128 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0130_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0130.allPrimeRanks 39251
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0130_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 470322 ≤ p)
    (hblockUpper : p < 472370)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0130.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0130.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0130.allPrimeRanks_holds
    rootJumpBlock0130_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0130.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0129 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0131_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0131.allPrimeRanks 39418
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0131_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 472370 ≤ p)
    (hblockUpper : p < 474418)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0131.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0131.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0131.allPrimeRanks_holds
    rootJumpBlock0131_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0131.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0130 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0012_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 458034 ≤ p)
    (hgroupUpper : p < 474418)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 460082
  · exact rootJumpBlock0124_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 462130
    · exact rootJumpBlock0125_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 464178
      · exact rootJumpBlock0126_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 466226
        · exact rootJumpBlock0127_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 468274
          · exact rootJumpBlock0128_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 470322
            · exact rootJumpBlock0129_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 472370
              · exact rootJumpBlock0130_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0131_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
