import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0071
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0072
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0073
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0074
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0075
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0076
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0077
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0078
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0072
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0073
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0074
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0075
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0076
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0077
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0078
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0079

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0072_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 273714 ≤ p)
    (hblockUpper : p < 275762)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0034.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0034.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0034.allPrimeRanks_holds
    rootJumpBlock0072_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0034.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0071 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0073_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 275762 ≤ p)
    (hblockUpper : p < 277810)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0035.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0035.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0035.allPrimeRanks_holds
    rootJumpBlock0073_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0035.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0072 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0074_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 277810 ≤ p)
    (hblockUpper : p < 279858)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0036.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0036.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0036.allPrimeRanks_holds
    rootJumpBlock0074_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0036.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0073 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0075_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 279858 ≤ p)
    (hblockUpper : p < 281906)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0037.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0037.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0037.allPrimeRanks_holds
    rootJumpBlock0075_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0037.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0074 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0076_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 281906 ≤ p)
    (hblockUpper : p < 283954)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0038.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0038.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0038.allPrimeRanks_holds
    rootJumpBlock0076_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0038.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0075 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0077_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 283954 ≤ p)
    (hblockUpper : p < 286002)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0039.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0039.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0039.allPrimeRanks_holds
    rootJumpBlock0077_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0039.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0076 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0078_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 286002 ≤ p)
    (hblockUpper : p < 288050)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0040.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0040.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0040.allPrimeRanks_holds
    rootJumpBlock0078_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0040.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0077 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0079_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 288050 ≤ p)
    (hblockUpper : p < 290098)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0041.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0041.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0041.allPrimeRanks_holds
    rootJumpBlock0079_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0041.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0078 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0009_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 273714 ≤ p)
    (hgroupUpper : p < 290098)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 275762
  · exact rootJumpBlock0072_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 277810
    · exact rootJumpBlock0073_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 279858
      · exact rootJumpBlock0074_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 281906
        · exact rootJumpBlock0075_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 283954
          · exact rootJumpBlock0076_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 286002
            · exact rootJumpBlock0077_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 288050
              · exact rootJumpBlock0078_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0079_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
