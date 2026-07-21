import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0039
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0040
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0041
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0042
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0043
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0044
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0045
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0046
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0040
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0041
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0042
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0043
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0044
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0045
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0046
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0047

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0040_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 208178 ≤ p)
    (hblockUpper : p < 210226)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002.allPrimeRanks_holds
    rootJumpBlock0040_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0039 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0041_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 210226 ≤ p)
    (hblockUpper : p < 212274)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003.allPrimeRanks_holds
    rootJumpBlock0041_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0040 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0042_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 212274 ≤ p)
    (hblockUpper : p < 214322)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004.allPrimeRanks_holds
    rootJumpBlock0042_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0041 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0043_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 214322 ≤ p)
    (hblockUpper : p < 216370)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005.allPrimeRanks_holds
    rootJumpBlock0043_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0042 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0044_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 216370 ≤ p)
    (hblockUpper : p < 218418)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006.allPrimeRanks_holds
    rootJumpBlock0044_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0043 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0045_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 218418 ≤ p)
    (hblockUpper : p < 220466)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007.allPrimeRanks_holds
    rootJumpBlock0045_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0044 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0046_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 220466 ≤ p)
    (hblockUpper : p < 222514)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008.allPrimeRanks_holds
    rootJumpBlock0046_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0045 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0047_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 222514 ≤ p)
    (hblockUpper : p < 224562)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009.allPrimeRanks_holds
    rootJumpBlock0047_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0046 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0005_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 208178 ≤ p)
    (hgroupUpper : p < 224562)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 210226
  · exact rootJumpBlock0040_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 212274
    · exact rootJumpBlock0041_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 214322
      · exact rootJumpBlock0042_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 216370
        · exact rootJumpBlock0043_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 218418
          · exact rootJumpBlock0044_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 220466
            · exact rootJumpBlock0045_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 222514
              · exact rootJumpBlock0046_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0047_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
