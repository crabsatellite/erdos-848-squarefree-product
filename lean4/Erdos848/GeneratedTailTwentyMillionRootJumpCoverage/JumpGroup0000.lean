import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0028
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0029
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0030
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0031
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0032
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0033
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0034
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0035

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0028_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 261426 ≤ p)
    (hblockUpper : p < 263474)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0028.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0028.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0028.allPrimeRanks_holds
    rootJumpBlock0028_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0028.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0027 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0029_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 263474 ≤ p)
    (hblockUpper : p < 265522)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0029.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0029.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0029.allPrimeRanks_holds
    rootJumpBlock0029_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0029.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0028 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0030_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 265522 ≤ p)
    (hblockUpper : p < 267570)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0030.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0030.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0030.allPrimeRanks_holds
    rootJumpBlock0030_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0030.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0029 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0031_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 267570 ≤ p)
    (hblockUpper : p < 269618)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0031.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0031.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0031.allPrimeRanks_holds
    rootJumpBlock0031_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0031.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0030 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0032_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 269618 ≤ p)
    (hblockUpper : p < 271666)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0032.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0032.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0032.allPrimeRanks_holds
    rootJumpBlock0032_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0032.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0031 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0033_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 271666 ≤ p)
    (hblockUpper : p < 273714)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0033.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0033.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0033.allPrimeRanks_holds
    rootJumpBlock0033_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0033.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0032 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0034_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 273714 ≤ p)
    (hblockUpper : p < 275762)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0034.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0034.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0034.allPrimeRanks_holds
    rootJumpBlock0034_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0034.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0033 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0035_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 275762 ≤ p)
    (hblockUpper : p < 277810)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0035.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0035.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0035.allPrimeRanks_holds
    rootJumpBlock0035_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0035.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0034 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0000_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 261426 ≤ p)
    (hgroupUpper : p < 277810)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 263474
  · exact rootJumpBlock0028_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 265522
    · exact rootJumpBlock0029_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 267570
      · exact rootJumpBlock0030_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 269618
        · exact rootJumpBlock0031_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 271666
          · exact rootJumpBlock0032_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 273714
            · exact rootJumpBlock0033_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 275762
              · exact rootJumpBlock0034_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0035_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
