import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.PrimePrefixCoverage
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0024
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0025
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0026
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0027
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0028
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0029
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0030
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0031

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0024_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 176130 ≤ p)
    (hblockUpper : p < 178178)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086.allPrimeRanks_holds
    rootJumpBlock0024_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_176129 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0025_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 178178 ≤ p)
    (hblockUpper : p < 180226)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087.allPrimeRanks_holds
    rootJumpBlock0025_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_178177 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0026_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 180226 ≤ p)
    (hblockUpper : p < 182274)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088.allPrimeRanks_holds
    rootJumpBlock0026_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_180225 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0027_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 182274 ≤ p)
    (hblockUpper : p < 184322)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089.allPrimeRanks_holds
    rootJumpBlock0027_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_182273 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0028_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 184322 ≤ p)
    (hblockUpper : p < 186370)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090.allPrimeRanks_holds
    rootJumpBlock0028_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_184321 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0029_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 186370 ≤ p)
    (hblockUpper : p < 188418)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091.allPrimeRanks_holds
    rootJumpBlock0029_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_186369 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0030_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 188418 ≤ p)
    (hblockUpper : p < 190466)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092.allPrimeRanks_holds
    rootJumpBlock0030_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_188417 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0031_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 190466 ≤ p)
    (hblockUpper : p < 192514)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093.allPrimeRanks_holds
    rootJumpBlock0031_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_190465 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0003_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 176130 ≤ p)
    (hgroupUpper : p < 192514)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 178178
  · exact rootJumpBlock0024_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 180226
    · exact rootJumpBlock0025_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 182274
      · exact rootJumpBlock0026_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 184322
        · exact rootJumpBlock0027_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 186370
          · exact rootJumpBlock0028_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 188418
            · exact rootJumpBlock0029_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 190466
              · exact rootJumpBlock0030_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0031_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
