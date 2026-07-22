import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0076
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0077
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0078
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0079
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0080
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0081
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0082
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0083

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0076_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 359730 ≤ p)
    (hblockUpper : p < 361778)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0076.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0076.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0076.allPrimeRanks_holds
    rootJumpBlock0076_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0076.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0075 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0077_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 361778 ≤ p)
    (hblockUpper : p < 363826)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0077.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0077.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0077.allPrimeRanks_holds
    rootJumpBlock0077_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0077.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0076 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0078_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 363826 ≤ p)
    (hblockUpper : p < 365874)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0078.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0078.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0078.allPrimeRanks_holds
    rootJumpBlock0078_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0078.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0077 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0079_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 365874 ≤ p)
    (hblockUpper : p < 367922)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0079.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0079.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0079.allPrimeRanks_holds
    rootJumpBlock0079_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0079.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0078 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0080_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 367922 ≤ p)
    (hblockUpper : p < 369970)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0080.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0080.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0080.allPrimeRanks_holds
    rootJumpBlock0080_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0080.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0079 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0081_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 369970 ≤ p)
    (hblockUpper : p < 372018)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0081.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0081.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0081.allPrimeRanks_holds
    rootJumpBlock0081_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0081.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0080 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0082_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 372018 ≤ p)
    (hblockUpper : p < 374066)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0082.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0082.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0082.allPrimeRanks_holds
    rootJumpBlock0082_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0082.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0081 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0083_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 374066 ≤ p)
    (hblockUpper : p < 376114)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0083.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0083.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0083.allPrimeRanks_holds
    rootJumpBlock0083_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0083.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0082 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0006_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 359730 ≤ p)
    (hgroupUpper : p < 376114)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 361778
  · exact rootJumpBlock0076_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 363826
    · exact rootJumpBlock0077_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 365874
      · exact rootJumpBlock0078_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 367922
        · exact rootJumpBlock0079_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 369970
          · exact rootJumpBlock0080_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 372018
            · exact rootJumpBlock0081_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 374066
              · exact rootJumpBlock0082_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0083_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
