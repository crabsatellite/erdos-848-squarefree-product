import Erdos848.GeneratedTailR263EvenOneRoot23.Certificate
import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailFiveMillionRootProfileComplete
import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.TailR263EvenOneRoot23Sound

namespace Erdos848

/-! # Sharp cutoff-23 root rows for actual supports and pivots -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem actualSupport_evenOneRoot23Rows
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N) :
    FiveMillionR263EvenOneRoot23RowBound
        support.length support.dropLast false false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        support.length support.dropLast false true N ∧
      FiveMillionR263EvenOneRoot23RowBound
        support.length support.dropLast true false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        support.length support.dropLast true true N := by
  have hProductTen : support.prod ≤ 10_000_000 := by omega
  have hcase :=
    fiveMillionOddRootSupport_profileCase
      hPrimes hIncreasing hProductTen
  have hpass :=
    GeneratedTailR263EvenOneRoot23.profileCase_root23_pass hcase
  have hUpperK : support.length ≤ 6 :=
    supportPrimeList_length_le_six hPrimes hIncreasing hProductTen
  have hFinite :
      support.prod <
        globalMixedSupportProductThreshold support.length := by
    unfold globalMixedSupportProductThreshold
    have hpowPos : 0 < 2 ^ support.length := pow_pos (by norm_num) _
    have hpow : 1 ≤ 2 ^ support.length := by omega
    nlinarith
  have hRetained : ∀ p ∈ support.dropLast, p < 9161 :=
    mixedSupport_dropLast_lt_9161
      (hUpperK.trans (by norm_num)) support rfl hPrimes
      hIncreasing hFinite
  have hDomain :
      ∀ p ∈ support.dropLast,
        p ∈
          GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes := by
    intro p hp
    have hpSupport : p ∈ support := List.dropLast_subset support hp
    have hpLt : p < 9161 := hRetained p hp
    have hpKernel := mem_globalMixedKernelSupportPrimes_of_supportPrime
      (hPrimes p hpSupport) (show p ≤ 9161 by omega)
    rcases List.mem_append.mp hpKernel with hpMixed | hpSentinel
    · exact hpMixed
    · simp only [List.mem_singleton] at hpSentinel
      omega
  have hEndpoint :
      globalMixedSupportEndpoint support.dropLast ≤ N :=
    globalMixedSupportEndpoint_le support hN hPrimes hIncreasing
      hProduct hDomain
  exact fiveMillionR263EvenOneRoot23PrefixPasses_sound
    hN hUpper hEndpoint hpass

theorem globalMixedActualPivot_evenOneRoot23Rows
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hN : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    FiveMillionR263EvenOneRoot23RowBound
        (fiveMillionPivotSupport pivot).length
        (fiveMillionPivotSupport pivot).dropLast false false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        (fiveMillionPivotSupport pivot).length
        (fiveMillionPivotSupport pivot).dropLast false true N ∧
      FiveMillionR263EvenOneRoot23RowBound
        (fiveMillionPivotSupport pivot).length
        (fiveMillionPivotSupport pivot).dropLast true false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        (fiveMillionPivotSupport pivot).length
        (fiveMillionPivotSupport pivot).dropLast true true N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  exact actualSupport_evenOneRoot23Rows
    (support := fiveMillionPivotSupport pivot) hN hUpper
    (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot)
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2)

#print axioms actualSupport_evenOneRoot23Rows
#print axioms globalMixedActualPivot_evenOneRoot23Rows

end Erdos848
