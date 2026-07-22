import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0164
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0165
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0166
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0167
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0168
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0169
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0170
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0171

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0164_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 539954 ≤ p)
    (hblockUpper : p < 542002)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0164.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0164.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0164.allPrimeRanks_holds
    rootJumpBlock0164_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0164.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0163 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0165_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 542002 ≤ p)
    (hblockUpper : p < 544050)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0165.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0165.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0165.allPrimeRanks_holds
    rootJumpBlock0165_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0165.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0164 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0166_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 544050 ≤ p)
    (hblockUpper : p < 546098)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0166.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0166.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0166.allPrimeRanks_holds
    rootJumpBlock0166_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0166.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0165 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0167_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 546098 ≤ p)
    (hblockUpper : p < 548146)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0167.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0167.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0167.allPrimeRanks_holds
    rootJumpBlock0167_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0167.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0166 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0168_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 548146 ≤ p)
    (hblockUpper : p < 550194)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0168.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0168.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0168.allPrimeRanks_holds
    rootJumpBlock0168_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0168.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0167 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0169_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 550194 ≤ p)
    (hblockUpper : p < 552242)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0169.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0169.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0169.allPrimeRanks_holds
    rootJumpBlock0169_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0169.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0168 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0170_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 552242 ≤ p)
    (hblockUpper : p < 554290)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0170.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0170.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0170.allPrimeRanks_holds
    rootJumpBlock0170_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0170.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0169 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0171_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 554290 ≤ p)
    (hblockUpper : p < 556338)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0171.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0171.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0171.allPrimeRanks_holds
    rootJumpBlock0171_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0171.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0170 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0017_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 539954 ≤ p)
    (hgroupUpper : p < 556338)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 542002
  · exact rootJumpBlock0164_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 544050
    · exact rootJumpBlock0165_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 546098
      · exact rootJumpBlock0166_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 548146
        · exact rootJumpBlock0167_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 550194
          · exact rootJumpBlock0168_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 552242
            · exact rootJumpBlock0169_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 554290
              · exact rootJumpBlock0170_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0171_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
