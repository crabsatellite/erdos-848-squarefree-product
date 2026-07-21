import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0087
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0088
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0089
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0090
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0091
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0092
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0093
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryBlock0094
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0088
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0089
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0090
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0091
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0092
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0093
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0094
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.JumpBlock0095

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0088_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 306482 ≤ p)
    (hblockUpper : p < 308530)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0050.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0050.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0050.allPrimeRanks_holds
    rootJumpBlock0088_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0050.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0087 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0089_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 308530 ≤ p)
    (hblockUpper : p < 310578)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0051.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0051.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0051.allPrimeRanks_holds
    rootJumpBlock0089_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0051.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0088 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0090_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 310578 ≤ p)
    (hblockUpper : p < 312626)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0052.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0052.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0052.allPrimeRanks_holds
    rootJumpBlock0090_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0052.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0089 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0091_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 312626 ≤ p)
    (hblockUpper : p < 314674)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0053.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0053.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0053.allPrimeRanks_holds
    rootJumpBlock0091_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0053.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0090 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0092_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 314674 ≤ p)
    (hblockUpper : p < 316722)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0054.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0054.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0054.allPrimeRanks_holds
    rootJumpBlock0092_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0054.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0091 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0093_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 316722 ≤ p)
    (hblockUpper : p < 318770)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0055.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0055.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0055.allPrimeRanks_holds
    rootJumpBlock0093_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0055.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0092 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0094_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 318770 ≤ p)
    (hblockUpper : p < 320818)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0056.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0056.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0056.allPrimeRanks_holds
    rootJumpBlock0094_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0056.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0093 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0095_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 320818 ≤ p)
    (hblockUpper : p < 322581)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0057.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0057.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0057.allPrimeRanks_holds
    rootJumpBlock0095_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0057.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0094 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0011_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 306482 ≤ p)
    (hgroupUpper : p < 322581)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 308530
  · exact rootJumpBlock0088_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 310578
    · exact rootJumpBlock0089_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 312626
      · exact rootJumpBlock0090_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 314674
        · exact rootJumpBlock0091_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 316722
          · exact rootJumpBlock0092_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 318770
            · exact rootJumpBlock0093_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 320818
              · exact rootJumpBlock0094_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0095_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
