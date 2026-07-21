import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0063
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0064
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0065
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0066
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0067
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0068
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0069
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0070
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0064
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0065
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0066
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0067
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0068
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0069
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0070
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0071

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0064_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 257330 ≤ p)
    (hblockUpper : p < 259378)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0026.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0026.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0026.allPrimeRanks_holds
    rootJumpBlock0064_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0026.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0063 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0065_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 259378 ≤ p)
    (hblockUpper : p < 261426)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0027.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0027.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0027.allPrimeRanks_holds
    rootJumpBlock0065_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0027.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0064 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0066_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 261426 ≤ p)
    (hblockUpper : p < 263474)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0028.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0028.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0028.allPrimeRanks_holds
    rootJumpBlock0066_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0028.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0065 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0067_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 263474 ≤ p)
    (hblockUpper : p < 265522)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0029.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0029.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0029.allPrimeRanks_holds
    rootJumpBlock0067_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0029.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0066 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0068_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 265522 ≤ p)
    (hblockUpper : p < 267570)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0030.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0030.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0030.allPrimeRanks_holds
    rootJumpBlock0068_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0030.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0067 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0069_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 267570 ≤ p)
    (hblockUpper : p < 269618)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0031.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0031.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0031.allPrimeRanks_holds
    rootJumpBlock0069_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0031.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0068 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0070_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 269618 ≤ p)
    (hblockUpper : p < 271666)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0032.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0032.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0032.allPrimeRanks_holds
    rootJumpBlock0070_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0032.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0069 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0071_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 271666 ≤ p)
    (hblockUpper : p < 273714)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0033.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0033.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0033.allPrimeRanks_holds
    rootJumpBlock0071_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0033.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0070 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0008_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 257330 ≤ p)
    (hgroupUpper : p < 273714)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 259378
  · exact rootJumpBlock0064_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 261426
    · exact rootJumpBlock0065_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 263474
      · exact rootJumpBlock0066_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 265522
        · exact rootJumpBlock0067_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 267570
          · exact rootJumpBlock0068_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 269618
            · exact rootJumpBlock0069_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 271666
              · exact rootJumpBlock0070_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0071_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
