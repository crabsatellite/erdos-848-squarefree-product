import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTenMillionKernelRootProfileChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0042
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0043
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0044
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0045
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0046
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0047
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0048
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0049

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0080_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0042.allPrimeRanks 25234
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0080_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 290098 ≤ p)
    (hblockUpper : p < 292146)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0042.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0042.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0042.allPrimeRanks_holds
    rootJumpBlock0080_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0042.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0079 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0081_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0043.allPrimeRanks 25396
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0081_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 292146 ≤ p)
    (hblockUpper : p < 294194)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0043.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0043.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0043.allPrimeRanks_holds
    rootJumpBlock0081_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0043.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0080 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0082_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0044.allPrimeRanks 25548
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0082_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 294194 ≤ p)
    (hblockUpper : p < 296242)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0044.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0044.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0044.allPrimeRanks_holds
    rootJumpBlock0082_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0044.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0081 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0083_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0045.allPrimeRanks 25708
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0083_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 296242 ≤ p)
    (hblockUpper : p < 298290)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0045.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0045.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0045.allPrimeRanks_holds
    rootJumpBlock0083_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0045.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0082 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0084_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0046.allPrimeRanks 25869
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0084_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 298290 ≤ p)
    (hblockUpper : p < 300338)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0046.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0046.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0046.allPrimeRanks_holds
    rootJumpBlock0084_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0046.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0083 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0085_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0047.allPrimeRanks 26024
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0085_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 300338 ≤ p)
    (hblockUpper : p < 302386)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0047.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0047.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0047.allPrimeRanks_holds
    rootJumpBlock0085_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0047.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0084 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0086_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0048.allPrimeRanks 26186
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0086_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 302386 ≤ p)
    (hblockUpper : p < 304434)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0048.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0048.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0048.allPrimeRanks_holds
    rootJumpBlock0086_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0048.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0085 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0087_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0049.allPrimeRanks 26358
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0087_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 304434 ≤ p)
    (hblockUpper : p < 306482)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0049.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0049.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0049.allPrimeRanks_holds
    rootJumpBlock0087_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0049.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0086 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0010_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 290098 ≤ p)
    (hgroupUpper : p < 306482)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 292146
  · exact rootJumpBlock0080_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 294194
    · exact rootJumpBlock0081_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 296242
      · exact rootJumpBlock0082_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 298290
        · exact rootJumpBlock0083_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 300338
          · exact rootJumpBlock0084_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 302386
            · exact rootJumpBlock0085_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 304434
              · exact rootJumpBlock0086_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0087_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
