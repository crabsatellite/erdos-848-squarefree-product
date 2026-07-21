import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0055
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0056
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0057
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0058
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0059
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0060
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0061
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0062
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0056
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0057
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0058
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0059
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0060
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0061
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0062
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0063

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0056_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 240946 ≤ p)
    (hblockUpper : p < 242994)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0018.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0018.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0018.allPrimeRanks_holds
    rootJumpBlock0056_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0018.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0055 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0057_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 242994 ≤ p)
    (hblockUpper : p < 245042)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0019.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0019.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0019.allPrimeRanks_holds
    rootJumpBlock0057_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0019.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0056 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0058_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 245042 ≤ p)
    (hblockUpper : p < 247090)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0020.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0020.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0020.allPrimeRanks_holds
    rootJumpBlock0058_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0020.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0057 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0059_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 247090 ≤ p)
    (hblockUpper : p < 249138)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0021.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0021.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0021.allPrimeRanks_holds
    rootJumpBlock0059_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0021.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0058 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0060_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 249138 ≤ p)
    (hblockUpper : p < 251186)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0022.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0022.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0022.allPrimeRanks_holds
    rootJumpBlock0060_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0022.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0059 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0061_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 251186 ≤ p)
    (hblockUpper : p < 253234)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0023.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0023.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0023.allPrimeRanks_holds
    rootJumpBlock0061_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0023.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0060 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0062_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 253234 ≤ p)
    (hblockUpper : p < 255282)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0024.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0024.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0024.allPrimeRanks_holds
    rootJumpBlock0062_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0024.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0061 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0063_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 255282 ≤ p)
    (hblockUpper : p < 257330)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0025.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0025.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0025.allPrimeRanks_holds
    rootJumpBlock0063_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0025.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0062 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0007_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 240946 ≤ p)
    (hgroupUpper : p < 257330)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 242994
  · exact rootJumpBlock0056_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 245042
    · exact rootJumpBlock0057_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 247090
      · exact rootJumpBlock0058_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 249138
        · exact rootJumpBlock0059_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 251186
          · exact rootJumpBlock0060_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 253234
            · exact rootJumpBlock0061_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 255282
              · exact rootJumpBlock0062_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0063_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
