import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0044
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0045
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0046
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0047
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0048
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0049
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0050
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0051

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0044_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 294194 ≤ p)
    (hblockUpper : p < 296242)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0044.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0044.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0044.allPrimeRanks_holds
    rootJumpBlock0044_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0044.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0043 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0045_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 296242 ≤ p)
    (hblockUpper : p < 298290)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0045.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0045.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0045.allPrimeRanks_holds
    rootJumpBlock0045_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0045.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0044 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0046_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 298290 ≤ p)
    (hblockUpper : p < 300338)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0046.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0046.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0046.allPrimeRanks_holds
    rootJumpBlock0046_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0046.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0045 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0047_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 300338 ≤ p)
    (hblockUpper : p < 302386)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0047.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0047.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0047.allPrimeRanks_holds
    rootJumpBlock0047_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0047.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0046 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0048_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 302386 ≤ p)
    (hblockUpper : p < 304434)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0048.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0048.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0048.allPrimeRanks_holds
    rootJumpBlock0048_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0048.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0047 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0049_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 304434 ≤ p)
    (hblockUpper : p < 306482)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0049.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0049.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0049.allPrimeRanks_holds
    rootJumpBlock0049_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0049.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0048 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0050_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 306482 ≤ p)
    (hblockUpper : p < 308530)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0050.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0050.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0050.allPrimeRanks_holds
    rootJumpBlock0050_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0050.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0049 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0051_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 308530 ≤ p)
    (hblockUpper : p < 310578)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0051.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0051.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0051.allPrimeRanks_holds
    rootJumpBlock0051_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0051.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0050 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0002_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 294194 ≤ p)
    (hgroupUpper : p < 310578)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 296242
  · exact rootJumpBlock0044_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 298290
    · exact rootJumpBlock0045_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 300338
      · exact rootJumpBlock0046_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 302386
        · exact rootJumpBlock0047_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 304434
          · exact rootJumpBlock0048_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 306482
            · exact rootJumpBlock0049_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 308530
              · exact rootJumpBlock0050_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0051_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
