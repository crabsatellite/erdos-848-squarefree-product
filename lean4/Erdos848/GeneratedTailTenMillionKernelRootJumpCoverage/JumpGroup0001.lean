import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.PrimePrefixCoverage
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0008
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0009
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0010
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0011
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0012
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0013
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0014
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0015

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0008_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 143362 ≤ p)
    (hblockUpper : p < 145410)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070.allPrimeRanks_holds
    rootJumpBlock0008_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_143361 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0009_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 145410 ≤ p)
    (hblockUpper : p < 147458)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071.allPrimeRanks_holds
    rootJumpBlock0009_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_145409 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0010_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 147458 ≤ p)
    (hblockUpper : p < 149506)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072.allPrimeRanks_holds
    rootJumpBlock0010_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_147457 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0011_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 149506 ≤ p)
    (hblockUpper : p < 151554)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.allPrimeRanks_holds
    rootJumpBlock0011_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_149505 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0012_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 151554 ≤ p)
    (hblockUpper : p < 153602)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074.allPrimeRanks_holds
    rootJumpBlock0012_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_151553 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0013_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 153602 ≤ p)
    (hblockUpper : p < 155650)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075.allPrimeRanks_holds
    rootJumpBlock0013_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_153601 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0014_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 155650 ≤ p)
    (hblockUpper : p < 157698)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076.allPrimeRanks_holds
    rootJumpBlock0014_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_155649 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0015_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 157698 ≤ p)
    (hblockUpper : p < 159746)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077.allPrimeRanks_holds
    rootJumpBlock0015_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_157697 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0001_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 143362 ≤ p)
    (hgroupUpper : p < 159746)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 145410
  · exact rootJumpBlock0008_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 147458
    · exact rootJumpBlock0009_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 149506
      · exact rootJumpBlock0010_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 151554
        · exact rootJumpBlock0011_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 153602
          · exact rootJumpBlock0012_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 155650
            · exact rootJumpBlock0013_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 157698
              · exact rootJumpBlock0014_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0015_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
