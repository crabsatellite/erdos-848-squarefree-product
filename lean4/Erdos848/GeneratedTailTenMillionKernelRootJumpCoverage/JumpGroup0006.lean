import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTenMillionKernelRootProfileChecker
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0010
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0011
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0012
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0013
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0014
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0015
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0016
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0017

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0048_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010.allPrimeRanks 19983
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0048_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 224562 ≤ p)
    (hblockUpper : p < 226610)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010.allPrimeRanks_holds
    rootJumpBlock0048_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0047 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0049_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011.allPrimeRanks 20150
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0049_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 226610 ≤ p)
    (hblockUpper : p < 228658)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011.allPrimeRanks_holds
    rootJumpBlock0049_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0048 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0050_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012.allPrimeRanks 20318
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0050_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 228658 ≤ p)
    (hblockUpper : p < 230706)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012.allPrimeRanks_holds
    rootJumpBlock0050_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0049 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0051_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013.allPrimeRanks 20496
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0051_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 230706 ≤ p)
    (hblockUpper : p < 232754)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013.allPrimeRanks_holds
    rootJumpBlock0051_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0050 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0052_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014.allPrimeRanks 20657
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0052_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 232754 ≤ p)
    (hblockUpper : p < 234802)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014.allPrimeRanks_holds
    rootJumpBlock0052_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0051 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0053_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015.allPrimeRanks 20814
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0053_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 234802 ≤ p)
    (hblockUpper : p < 236850)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015.allPrimeRanks_holds
    rootJumpBlock0053_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0052 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0054_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016.allPrimeRanks 20969
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0054_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 236850 ≤ p)
    (hblockUpper : p < 238898)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016.allPrimeRanks_holds
    rootJumpBlock0054_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0053 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0055_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017.allPrimeRanks 21135
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0055_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 238898 ≤ p)
    (hblockUpper : p < 240946)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017.allPrimeRanks_holds
    rootJumpBlock0055_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0054 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0006_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 224562 ≤ p)
    (hgroupUpper : p < 240946)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 226610
  · exact rootJumpBlock0048_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 228658
    · exact rootJumpBlock0049_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 230706
      · exact rootJumpBlock0050_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 232754
        · exact rootJumpBlock0051_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 234802
          · exact rootJumpBlock0052_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 236850
            · exact rootJumpBlock0053_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 238898
              · exact rootJumpBlock0054_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0055_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
