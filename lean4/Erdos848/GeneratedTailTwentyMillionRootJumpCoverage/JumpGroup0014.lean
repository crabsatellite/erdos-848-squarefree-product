import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0140
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0141
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0142
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0143
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0144
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0145
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0146
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.JumpBlock0147

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0140_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 490802 ≤ p)
    (hblockUpper : p < 492850)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0140.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0140.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0140.allPrimeRanks_holds
    rootJumpBlock0140_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0140.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0139 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0141_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 492850 ≤ p)
    (hblockUpper : p < 494898)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0141.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0141.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0141.allPrimeRanks_holds
    rootJumpBlock0141_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0141.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0140 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0142_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 494898 ≤ p)
    (hblockUpper : p < 496946)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0142.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0142.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0142.allPrimeRanks_holds
    rootJumpBlock0142_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0142.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0141 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0143_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 496946 ≤ p)
    (hblockUpper : p < 498994)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0143.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0143.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0143.allPrimeRanks_holds
    rootJumpBlock0143_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0143.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0142 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0144_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 498994 ≤ p)
    (hblockUpper : p < 501042)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0144.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0144.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0144.allPrimeRanks_holds
    rootJumpBlock0144_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0144.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0143 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0145_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 501042 ≤ p)
    (hblockUpper : p < 503090)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0145.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0145.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0145.allPrimeRanks_holds
    rootJumpBlock0145_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0145.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0144 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0146_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 503090 ≤ p)
    (hblockUpper : p < 505138)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0146.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0146.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0146.allPrimeRanks_holds
    rootJumpBlock0146_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0146.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0145 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0147_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 505138 ≤ p)
    (hblockUpper : p < 507186)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0147.listed :=
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0147.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0147.allPrimeRanks_holds
    rootJumpBlock0147_passes hpListed
  have hcount := Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0147.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0146 hpListed
  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0014_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 490802 ≤ p)
    (hgroupUpper : p < 507186)
    (row : Erdos848.TwentyMillionRootRow)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 8)
    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :
    Erdos848.twentyMillionRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 492850
  · exact rootJumpBlock0140_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 494898
    · exact rootJumpBlock0141_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 496946
      · exact rootJumpBlock0142_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 498994
        · exact rootJumpBlock0143_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 501042
          · exact rootJumpBlock0144_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 503090
            · exact rootJumpBlock0145_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 505138
              · exact rootJumpBlock0146_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0147_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
