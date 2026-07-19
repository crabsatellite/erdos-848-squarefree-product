import Erdos848.TailSupportDomainChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848

/-!
# Kernel checker for mixed-support successor primes

The generated mixed-support leaves use a direct table for the least admissible
support prime above the final prime in a prefix.  This module gives the small
generic soundness argument behind the table certificate.  Each generated row
checks primality, strict growth, and the finite open gap; no ambient interval
of values of `N` is involved.
-/

def globalMixedExtensionGapValues (lower upper : ℕ) : List ℕ :=
  (List.range (upper - lower - 1)).map fun offset => lower + offset + 1

def globalMixedExtensionRowPasses (row : ℕ × ℕ) : Bool :=
  decide (Nat.Prime row.2) &&
    decide (row.1 < row.2) &&
    (globalMixedExtensionGapValues row.1 row.2).all fun candidate =>
      decide (¬ FiveMillionSupportPrime candidate)

def globalMixedExtensionCertificateRowPasses (row : ℕ × ℕ) : Bool :=
  globalMixedExtensionRowPasses row &&
    decide (
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime row.1 =
        row.2)

private theorem mem_globalMixedExtensionGapValues
    {lower upper candidate : ℕ}
    (hlower : lower < candidate) (hupper : candidate < upper) :
    candidate ∈ globalMixedExtensionGapValues lower upper := by
  rw [globalMixedExtensionGapValues]
  apply List.mem_map.mpr
  refine ⟨candidate - lower - 1, List.mem_range.mpr ?_, ?_⟩
  · omega
  · omega

theorem globalMixedExtensionRowPasses_sound
    {lower upper : ℕ}
    (hpass : globalMixedExtensionRowPasses (lower, upper) = true) :
    Nat.Prime upper ∧
      lower < upper ∧
      ∀ candidate, FiveMillionSupportPrime candidate →
        lower < candidate → upper ≤ candidate := by
  have hparts :
      (decide (Nat.Prime upper) = true ∧
        decide (lower < upper) = true) ∧
        (globalMixedExtensionGapValues lower upper).all
          (fun candidate => decide (¬ FiveMillionSupportPrime candidate)) =
            true := by
    simpa only [globalMixedExtensionRowPasses, Bool.and_eq_true] using hpass
  refine ⟨of_decide_eq_true hparts.1.1,
    of_decide_eq_true hparts.1.2, ?_⟩
  intro candidate hprime hlower
  by_contra hnot
  have hupper : candidate < upper := Nat.lt_of_not_ge hnot
  have hmem :=
    mem_globalMixedExtensionGapValues hlower hupper
  have hnotPrime :
      ¬ FiveMillionSupportPrime candidate :=
    of_decide_eq_true
      ((List.all_eq_true.mp hparts.2) candidate hmem)
  exact hnotPrime hprime

theorem globalMixedExtensionCertificateRowPasses_sound
    {lower upper : ℕ}
    (hpass :
      globalMixedExtensionCertificateRowPasses (lower, upper) = true) :
    Nat.Prime
        (GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
          lower) ∧
      lower <
        GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
          lower ∧
      ∀ candidate, FiveMillionSupportPrime candidate →
        lower < candidate →
        GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
            lower ≤ candidate := by
  have hparts :
      globalMixedExtensionRowPasses (lower, upper) = true ∧
        decide (
          GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
              lower = upper) = true := by
    simpa only [globalMixedExtensionCertificateRowPasses, Bool.and_eq_true]
      using hpass
  have hrow := globalMixedExtensionRowPasses_sound hparts.1
  have heq :
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
          lower = upper :=
    of_decide_eq_true hparts.2
  simpa only [heq] using hrow

#print axioms globalMixedExtensionCertificateRowPasses_sound

end Erdos848
