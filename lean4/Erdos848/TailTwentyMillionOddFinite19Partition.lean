import Erdos848.TailTwentyMillionOddFinite19ActualCount

namespace Erdos848

/-! Structural decomposition of the prime-two coordinate from the odd roots. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem twentyMillionOddFinite19OddModulus_eq
    (index : TwentyMillionOddFinite19Index) (hindex : index ≠ 0) :
    twentyMillionOddFinite19OddModulus index =
      twentyMillionOddFinite19Modulus index := by
  fin_cases index <;>
    simp_all [twentyMillionOddFinite19OddModulus,
      twentyMillionOddFinite19Modulus]

theorem twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pivot : Fin 3) (q : Nat) :
    twentyMillionOddFinite19RootBad roots pivot q ↔
      q % 4 = twentyMillionOddFinite19RootNat roots pivot 0 ∨
        twentyMillionOddFinite19OddRootBad roots pivot q := by
  constructor
  · rintro ⟨index, hroot⟩
    by_cases hindex : index = 0
    · subst index
      left
      simpa [twentyMillionOddFinite19Modulus] using hroot
    · right
      refine ⟨index, hindex, ?_⟩
      simpa [twentyMillionOddFinite19OddModulus_eq index hindex] using
        hroot
  · rintro (hroot | ⟨index, hindex, hroot⟩)
    · exact ⟨0, by
        simpa [twentyMillionOddFinite19Modulus] using hroot⟩
    · refine ⟨index, ?_⟩
      simpa [twentyMillionOddFinite19OddModulus_eq index hindex] using
        hroot

theorem twentyMillionOddFinite19OddTwoOfThree_of_no_primeTwo
    (roots : TwentyMillionOddFinite19PivotRootFamily) (q : Nat)
    (hnone : ∀ i : Fin 3,
      q % 4 ≠ twentyMillionOddFinite19RootNat roots i 0)
    (hfull : 2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19RootBad roots) q) :
    2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19OddRootBad roots) q := by
  have hiff (i : Fin 3) :
      twentyMillionOddFinite19RootBad roots i q ↔
        twentyMillionOddFinite19OddRootBad roots i q := by
    rw [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd]
    simp [hnone i]
  simpa only [e1FiniteBadCount, hiff 0, hiff 1, hiff 2] using hfull

private theorem twentyMillionOddFinite19Pattern_firstSecond
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 =
        .firstSecond) :
    twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 1 0 ∧
      twentyMillionOddFinite19RootNat roots 0 0 ≠
        twentyMillionOddFinite19RootNat roots 2 0 := by
  by_cases h01 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 1 0 <;>
    by_cases h02 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 2 0 <;>
      by_cases h12 :
        twentyMillionOddFinite19RootNat roots 1 0 =
          twentyMillionOddFinite19RootNat roots 2 0 <;>
        simp_all [twentyMillionOddFinite19RootPatternAt,
          e1FiniteRootPatternOf] <;>
        aesop

private theorem twentyMillionOddFinite19Pattern_firstThird
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 =
        .firstThird) :
    twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 2 0 ∧
      twentyMillionOddFinite19RootNat roots 0 0 ≠
        twentyMillionOddFinite19RootNat roots 1 0 := by
  by_cases h01 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 1 0 <;>
    by_cases h02 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 2 0 <;>
      by_cases h12 :
        twentyMillionOddFinite19RootNat roots 1 0 =
          twentyMillionOddFinite19RootNat roots 2 0 <;>
        simp_all [twentyMillionOddFinite19RootPatternAt,
          e1FiniteRootPatternOf]

private theorem twentyMillionOddFinite19Pattern_secondThird
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 =
        .secondThird) :
    twentyMillionOddFinite19RootNat roots 1 0 =
        twentyMillionOddFinite19RootNat roots 2 0 ∧
      twentyMillionOddFinite19RootNat roots 1 0 ≠
        twentyMillionOddFinite19RootNat roots 0 0 := by
  by_cases h01 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 1 0 <;>
    by_cases h02 :
      twentyMillionOddFinite19RootNat roots 0 0 =
        twentyMillionOddFinite19RootNat roots 2 0 <;>
      by_cases h12 :
        twentyMillionOddFinite19RootNat roots 1 0 =
          twentyMillionOddFinite19RootNat roots 2 0 <;>
        simp_all [twentyMillionOddFinite19RootPatternAt,
          e1FiniteRootPatternOf] <;>
        aesop

theorem twentyMillionOddFinite19PairPattern_facts
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .secondThird) :
    let pair := twentyMillionOddFinite19ClosePair
      (twentyMillionOddFinite19RootPatternAt roots 0)
    (pair = 0 ∧
        twentyMillionOddFinite19RootNat roots 0 0 =
          twentyMillionOddFinite19RootNat roots 1 0 ∧
        twentyMillionOddFinite19RootNat roots 0 0 ≠
          twentyMillionOddFinite19RootNat roots 2 0) ∨
      (pair = 1 ∧
        twentyMillionOddFinite19RootNat roots 0 0 =
          twentyMillionOddFinite19RootNat roots 2 0 ∧
        twentyMillionOddFinite19RootNat roots 0 0 ≠
          twentyMillionOddFinite19RootNat roots 1 0) ∨
      (pair = 2 ∧
        twentyMillionOddFinite19RootNat roots 1 0 =
          twentyMillionOddFinite19RootNat roots 2 0 ∧
        twentyMillionOddFinite19RootNat roots 1 0 ≠
          twentyMillionOddFinite19RootNat roots 0 0) := by
  rcases hpattern with hpattern | hpattern | hpattern
  · left
    exact ⟨by simp [twentyMillionOddFinite19ClosePair, hpattern],
      twentyMillionOddFinite19Pattern_firstSecond roots hpattern⟩
  · right
    left
    exact ⟨by simp [twentyMillionOddFinite19ClosePair, hpattern],
      twentyMillionOddFinite19Pattern_firstThird roots hpattern⟩
  · right
    right
    exact ⟨by simp [twentyMillionOddFinite19ClosePair, hpattern],
      twentyMillionOddFinite19Pattern_secondThird roots hpattern⟩

#print axioms twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd
#print axioms twentyMillionOddFinite19OddTwoOfThree_of_no_primeTwo
#print axioms twentyMillionOddFinite19PairPattern_facts

end Erdos848
