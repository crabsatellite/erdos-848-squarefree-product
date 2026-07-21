import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.PrimePrefixCoverage
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0000
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0001
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0002
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0003
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0004
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0005
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0006
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0007

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0000_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 126978 ≤ p)
    (hblockUpper : p < 129026)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062.allPrimeRanks_holds
    rootJumpBlock0000_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_126977 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0001_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 129026 ≤ p)
    (hblockUpper : p < 131074)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063.allPrimeRanks_holds
    rootJumpBlock0001_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_129025 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0002_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 131074 ≤ p)
    (hblockUpper : p < 133122)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064.allPrimeRanks_holds
    rootJumpBlock0002_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_131073 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0003_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 133122 ≤ p)
    (hblockUpper : p < 135170)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065.allPrimeRanks_holds
    rootJumpBlock0003_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_133121 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0004_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 135170 ≤ p)
    (hblockUpper : p < 137218)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066.allPrimeRanks_holds
    rootJumpBlock0004_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_135169 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0005_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 137218 ≤ p)
    (hblockUpper : p < 139266)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067.allPrimeRanks_holds
    rootJumpBlock0005_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_137217 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0006_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 139266 ≤ p)
    (hblockUpper : p < 141314)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068.allPrimeRanks_holds
    rootJumpBlock0006_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_139265 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0007_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 141314 ≤ p)
    (hblockUpper : p < 143362)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069.allPrimeRanks_holds
    rootJumpBlock0007_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_141313 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0000_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 126978 ≤ p)
    (hgroupUpper : p < 143362)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 129026
  · exact rootJumpBlock0000_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 131074
    · exact rootJumpBlock0001_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 133122
      · exact rootJumpBlock0002_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 135170
        · exact rootJumpBlock0003_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 137218
          · exact rootJumpBlock0004_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 139266
            · exact rootJumpBlock0005_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 141314
              · exact rootJumpBlock0006_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0007_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
