import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.TailTenMillionKernelRootProfileChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.PrimePrefixCoverage
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.BoundaryCertificate
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0094
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0095
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0096
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0097
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0098
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0099
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0000
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Block0001

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0032_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.allPrimeRanks 17369
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0032_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 192514 ≤ p)
    (hblockUpper : p < 194562)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.allPrimeRanks_holds
    rootJumpBlock0032_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_192513 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0033_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.allPrimeRanks 17536
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0033_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 194562 ≤ p)
    (hblockUpper : p < 196610)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.allPrimeRanks_holds
    rootJumpBlock0033_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_194561 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0034_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.allPrimeRanks 17704
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0034_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 196610 ≤ p)
    (hblockUpper : p < 198658)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.allPrimeRanks_holds
    rootJumpBlock0034_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_196609 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0035_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.allPrimeRanks 17877
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0035_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 198658 ≤ p)
    (hblockUpper : p < 200706)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.allPrimeRanks_holds
    rootJumpBlock0035_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_198657 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0036_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.allPrimeRanks 18038
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0036_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 200706 ≤ p)
    (hblockUpper : p < 202754)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.allPrimeRanks_holds
    rootJumpBlock0036_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_200705 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0037_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.allPrimeRanks 18206
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0037_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 202754 ≤ p)
    (hblockUpper : p < 204082)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.listed :=
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.allPrimeRanks_holds
    rootJumpBlock0037_passes hpListed
  have hcount := Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_202753 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0038_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000.allPrimeRanks 18311
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0038_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 204082 ≤ p)
    (hblockUpper : p < 206130)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000.allPrimeRanks_holds
    rootJumpBlock0038_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000.primeCounting_eq_before_add_localRank
    (by omega) Erdos848.GeneratedTailGlobalMixedSupportCoverage.primeCounting_204081 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpBlock0039_passes :
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001.allPrimeRanks 18476
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

theorem rootJumpBlock0039_sound
    (p : Nat) (hp : Nat.Prime p)
    (hblockLower : 206130 ≤ p)
    (hblockUpper : p < 208178)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  have hpListed : p ∈ Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001.listed :=
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001.prime_mem_listed hblockLower hblockUpper hp
  have hpassLocal := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001.allPrimeRanks_holds
    rootJumpBlock0039_passes hpListed
  have hcount := Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001.primeCounting_eq_before_add_localRank
    (by omega) primeCounting_blockEnd0038 hpListed
  apply Erdos848.tenMillionKernelRootPrimeJumpPasses_sound
    (row := row) (supportLength := supportLength)
    (p := p) (primeCount := Nat.primeCounting p)
    (hrow := hrow) (hLength := hLength)
    (hLower := hLower) (hUpper := hUpper)
  rw [hcount]
  exact hpassLocal

theorem rootJumpGroup0004_sound
    (p : Nat) (hp : Nat.Prime p)
    (hgroupLower : 192514 ≤ p)
    (hgroupUpper : p < 208178)
    (row : Erdos848.TenMillionKernelRootRow)
    (hrow : row ∈ Erdos848.tenMillionKernelRootProfileRows)
    (supportLength : Nat) (hLength : supportLength < 7)
    (hLower : Erdos848.tenMillionLower ≤ row.split * p)
    (hUpper : row.split * p < Erdos848.tenMillionUpper) :
    Erdos848.tenMillionKernelRootSmoothProfileAt
        row supportLength p (Nat.primeCounting p) ≤
      row.envelope := by
  by_cases hpiece0000 : p < 194562
  · exact rootJumpBlock0032_sound p hp (by omega) hpiece0000 row hrow supportLength hLength hLower hUpper
  · by_cases hpiece0001 : p < 196610
    · exact rootJumpBlock0033_sound p hp (by omega) hpiece0001 row hrow supportLength hLength hLower hUpper
    · by_cases hpiece0002 : p < 198658
      · exact rootJumpBlock0034_sound p hp (by omega) hpiece0002 row hrow supportLength hLength hLower hUpper
      · by_cases hpiece0003 : p < 200706
        · exact rootJumpBlock0035_sound p hp (by omega) hpiece0003 row hrow supportLength hLength hLower hUpper
        · by_cases hpiece0004 : p < 202754
          · exact rootJumpBlock0036_sound p hp (by omega) hpiece0004 row hrow supportLength hLength hLower hUpper
          · by_cases hpiece0005 : p < 204082
            · exact rootJumpBlock0037_sound p hp (by omega) hpiece0005 row hrow supportLength hLength hLower hUpper
            · by_cases hpiece0006 : p < 206130
              · exact rootJumpBlock0038_sound p hp (by omega) hpiece0006 row hrow supportLength hLength hLower hUpper
              · exact rootJumpBlock0039_sound p hp (by omega) (by omega) row hrow supportLength hLength hLower hUpper

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
