import Erdos848.GeneratedTailPureSupportCoverage.Certificate
import Erdos848.TailFiveMillionRootProfileComplete
import Erdos848.TailPureFiveMillionBudget

namespace Erdos848

/-!
# Semantic support bound for the five-million pure certificate

The generated certificate checks the first 676 odd quotient positions for
every structurally feasible support prefix.  This file turns those Boolean
table checks into the uniform rational root payment used by the endpoint
budget.
-/

private theorem pureSurvivor_bound_of_coset
    {support : List ℕ} {bound : ℕ} {squareCoset : Bool}
    (hBound :
      oddRootWordSurvivorCountThrough support true 676 ≤ bound ∧
      oddRootWordSurvivorCountThrough support false 676 ≤ bound) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ bound := by
  cases squareCoset
  · exact hBound.2
  · exact hBound.1

theorem pureFiveMillionK2_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK2FeasiblePrefixes)
    (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 83 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailPureSupportCoverage.k2FeasiblePrefixes_pass)
    support hSupport
  apply pureSurvivor_bound_of_coset
  simpa [pureFiveMillionSupportPrefixPasses] using hpass

theorem pureFiveMillionK3_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK3FeasiblePrefixes)
    (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 47 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailPureSupportCoverage.k3FeasiblePrefixes_pass)
    support hSupport
  apply pureSurvivor_bound_of_coset
  simpa [pureFiveMillionSupportPrefixPasses] using hpass

theorem pureFiveMillionK4_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK4FeasiblePrefixes)
    (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 27 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailPureSupportCoverage.k4FeasiblePrefixes_pass)
    support hSupport
  apply pureSurvivor_bound_of_coset
  simpa [pureFiveMillionSupportPrefixPasses] using hpass

theorem pureFiveMillionK5_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootFeasiblePrefixes)
    (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 13 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailPureSupportCoverage.k5FeasiblePrefixes_pass)
    support hSupport
  apply pureSurvivor_bound_of_coset
  simpa [pureFiveMillionSupportPrefixPasses] using hpass

theorem pureFiveMillionK6_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK6FeasiblePrefixes)
    (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 6 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailPureSupportCoverage.k6FeasiblePrefixes_pass)
    support hSupport
  apply pureSurvivor_bound_of_coset
  simpa [pureFiveMillionSupportPrefixPasses] using hpass

/-- Every one of the seven structural rows fits under the exact rational root
envelope.  The extra factor four is the worst valuation multiplicity, so this
single inequality is safe for every root modulus represented by the row. -/
theorem pureFiveMillionProfile_root_payment_le
    (k : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hCase : FiveMillionOddRootProfileCase k support) :
    (4 * (2 : ℚ) ^ (k + 1)) *
        ((oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) +
          26_001 / 25_000) ≤
      pureFiveMillionRootEnvelope := by
  cases hCase with
  | k0 =>
      have hBounds :
          oddRootWordSurvivorCountThrough [] true 676 ≤ 135 ∧
            oddRootWordSurvivorCountThrough [] false 676 ≤ 135 := by
        obtain ⟨hTrue, hFalse⟩ := pureFiveMillionEmptySupport_prefix_exact
        omega
      have h := pureSurvivor_bound_of_coset
        (bound := 135) (squareCoset := squareCoset)
        hBounds
      have hq :
          (oddRootWordSurvivorCountThrough [] squareCoset 676 : ℚ) ≤ 135 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k1 =>
      have hBounds :
          oddRootWordSurvivorCountThrough [] true 676 ≤ 135 ∧
            oddRootWordSurvivorCountThrough [] false 676 ≤ 135 := by
        obtain ⟨hTrue, hFalse⟩ := pureFiveMillionEmptySupport_prefix_exact
        omega
      have h := pureSurvivor_bound_of_coset
        (bound := 135) (squareCoset := squareCoset)
        hBounds
      have hq :
          (oddRootWordSurvivorCountThrough [] squareCoset 676 : ℚ) ≤ 135 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k2 hSupport =>
      have h := pureFiveMillionK2_support_bound hSupport squareCoset
      have hq :
          (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) ≤ 83 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k3 hSupport =>
      have h := pureFiveMillionK3_support_bound hSupport squareCoset
      have hq :
          (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) ≤ 47 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k4 hSupport =>
      have h := pureFiveMillionK4_support_bound hSupport squareCoset
      have hq :
          (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) ≤ 27 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k5 hSupport =>
      have h := pureFiveMillionK5_support_bound hSupport squareCoset
      have hq :
          (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) ≤ 13 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith
  | k6 hSupport =>
      have h := pureFiveMillionK6_support_bound hSupport squareCoset
      have hq :
          (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) ≤ 6 := by
        exact_mod_cast h
      norm_num [pureFiveMillionRootEnvelope]
      linarith

/-- The table statement specialized to an actual increasing prime support. -/
theorem pureFiveMillionActualSupport_root_payment_le
    (support : List ℕ) (squareCoset : Bool)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ 10_000_000) :
    (4 * (2 : ℚ) ^ (support.length + 1)) *
        ((oddRootWordSurvivorCountThrough support.dropLast squareCoset 676 : ℚ) +
          26_001 / 25_000) ≤
      pureFiveMillionRootEnvelope := by
  exact pureFiveMillionProfile_root_payment_le
    support.length support.dropLast squareCoset
    (fiveMillionOddRootSupport_profileCase hPrimes hIncreasing hProduct)

#print axioms pureFiveMillionProfile_root_payment_le
#print axioms pureFiveMillionActualSupport_root_payment_le

end Erdos848
