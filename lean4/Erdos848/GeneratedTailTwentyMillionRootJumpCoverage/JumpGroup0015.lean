import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0148
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0149
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0150
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0151
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0152
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0153
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0154
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0155

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0148_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0148.allPrimeRanks 42083
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0148_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 507186 ≤ p)
    (hblockUpper : p < 509234)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0148.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0148.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0148.allPrimeRanks_holds
    rootJumpBlock0148_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0148.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0147 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0149_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0149.allPrimeRanks 42230
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0149_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 509234 ≤ p)
    (hblockUpper : p < 511282)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0149.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0149.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0149.allPrimeRanks_holds
    rootJumpBlock0149_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0149.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0148 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0150_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0150.allPrimeRanks 42389
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0150_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 511282 ≤ p)
    (hblockUpper : p < 513330)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0150.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0150.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0150.allPrimeRanks_holds
    rootJumpBlock0150_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0150.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0149 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0151_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0151.allPrimeRanks 42544
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0151_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 513330 ≤ p)
    (hblockUpper : p < 515378)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0151.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0151.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0151.allPrimeRanks_holds
    rootJumpBlock0151_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0151.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0150 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0152_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0152.allPrimeRanks 42695
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0152_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 515378 ≤ p)
    (hblockUpper : p < 517426)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0152.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0152.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0152.allPrimeRanks_holds
    rootJumpBlock0152_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0152.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0151 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0153_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0153.allPrimeRanks 42861
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0153_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 517426 ≤ p)
    (hblockUpper : p < 519474)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0153.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0153.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0153.allPrimeRanks_holds
    rootJumpBlock0153_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0153.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0152 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0154_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0154.allPrimeRanks 43019
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0154_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 519474 ≤ p)
    (hblockUpper : p < 521522)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0154.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0154.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0154.allPrimeRanks_holds
    rootJumpBlock0154_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0154.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0153 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0155_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0155.allPrimeRanks 43177
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0155_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 521522 ≤ p)
    (hblockUpper : p < 523570)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0155.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0155.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0155.allPrimeRanks_holds
    rootJumpBlock0155_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0155.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0154 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0015_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 507186 ≤ p)
    (hgroupUpper : p < 523570)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 509234
  · exact rootJumpBlock0148_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 511282
    · exact rootJumpBlock0149_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 513330
      · exact rootJumpBlock0150_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 515378
        · exact rootJumpBlock0151_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 517426
          · exact rootJumpBlock0152_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 519474
            · exact rootJumpBlock0153_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 521522
              · exact rootJumpBlock0154_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0155_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
