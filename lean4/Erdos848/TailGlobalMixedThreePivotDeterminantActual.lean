import Erdos848.TailGlobalMixedThreePivotDistinctPrimes
import Erdos848.TailGlobalMixedThreePivotDeterminant

namespace Erdos848

/-!
# Actual high-high witnesses in primitive determinant root classes

This module connects the lightweight determinant identity to the literal
distinct-prime point set used by the unchanged three-pivot Hall cut.  Both
complementary quotients are bounded by `55^2 = 3025`.  Since an actual high
prime is larger than `N / 55`, at `N ≥ 5,000,000` it is larger than the whole
`< 2627` pivot gap; hence the determinant modulus has no exceptional high
prime.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedDeterminantQuotientRange : Finset Nat :=
  Finset.Icc 1 3025

def globalMixedPrimitiveRootClasses
    (x y r s : Nat) : Finset Nat :=
  (Finset.range (y / x.gcd y - x / x.gcd y)).filter fun z =>
    r * z ^ 2 ≡ s [MOD y / x.gcd y - x / x.gcd y]

/-- A supplied square event above the fixed split has its own literal
complementary quotient in `1,…,3025`.  Unlike an existential high-tail lemma,
this keeps the caller's witness prime. -/
theorem globalMixedHighSquareEvent_has_bounded_quotient
    {N pivot point p : Nat}
    (hpivotUpper : pivot ≤ N) (hpointUpper : point ≤ N)
    (hpLarge : N / 55 < p)
    (hevent : p ^ 2 ∣ pivot * point + 1) :
    ∃ m ∈ globalMixedDeterminantQuotientRange,
      p ^ 2 * m = pivot * point + 1 := by
  obtain ⟨m, hm⟩ := hevent
  have hpPos : 0 < p := by omega
  have hNp : N < p * 55 :=
    (Nat.div_lt_iff_lt_mul (by norm_num : 0 < 55)).mp hpLarge
  have hNsq : N * N < (p * 55) * (p * 55) := by
    nlinarith
  have hNsqBound : N ^ 2 + 1 ≤ 3025 * p ^ 2 := by
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivotUpper hpointUpper
  have hnumerator : pivot * point + 1 ≤ 3025 * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ 3025 * p ^ 2 := hNsqBound
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmUpper : m ≤ 3025 := by
    have hmMul : p ^ 2 * m ≤ p ^ 2 * 3025 := by
      calc
        p ^ 2 * m = pivot * point + 1 := hm.symm
        _ ≤ 3025 * p ^ 2 := hnumerator
        _ = p ^ 2 * 3025 := by ring
    exact Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPos 2)
  exact ⟨m, Finset.mem_Icc.mpr ⟨hmPos, hmUpper⟩, hm.symm⟩

/-- Every actual high-high point on an ordered pivot edge enters one bounded
quotient pair and one genuine primitive root class.  There is no residual
exceptional-prime premise. -/
theorem globalMixedDistinctHighHighPairPoint_mem_bounded_rootClass
    {N x y p q point : Nat}
    (hN : 5_000_000 ≤ N)
    (hxPos : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hxUpper : x ≤ N) (hyUpper : y ≤ N)
    (hqPrime : Nat.Prime q)
    (hpLarge : N / 55 < p) (hqLarge : N / 55 < q)
    (hpoint : point ∈
      globalMixedDistinctPrimePairPoints N x y p q) :
    ∃ r ∈ globalMixedDeterminantQuotientRange,
      ∃ s ∈ globalMixedDeterminantQuotientRange,
        p ^ 2 * r = x * point + 1 ∧
        q ^ 2 * s = y * point + 1 ∧
        primitiveDeterminantRatioRoot
            (y / x.gcd y - x / x.gcd y) p q ∈
          globalMixedPrimitiveRootClasses x y r s := by
  have hparts := Finset.mem_filter.mp hpoint
  have hpointUpper : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨r, hrRange, hrEquation⟩ :=
    globalMixedHighSquareEvent_has_bounded_quotient
      hxUpper hpointUpper hpLarge hparts.2.1
  obtain ⟨s, hsRange, hsEquation⟩ :=
    globalMixedHighSquareEvent_has_bounded_quotient
      hyUpper hpointUpper hqLarge hparts.2.2
  have hqDifference : y - x < q := by
    have hcutLarge : 2627 < N / 55 := by omega
    omega
  have hqGap : Nat.Coprime q
      (y / x.gcd y - x / x.gcd y) :=
    prime_coprime_gcdQuotientGap_of_pivotDifference_lt
      hxy hqPrime hqDifference
  let z := primitiveDeterminantRatioRoot
    (y / x.gcd y - x / x.gcd y) p q
  have hzLt : z < y / x.gcd y - x / x.gcd y :=
    primitiveDeterminantRatioRoot_lt (gcdQuotientGap_pos hxy)
  have hzRoot :
      r * z ^ 2 ≡ s [MOD y / x.gcd y - x / x.gcd y] :=
    squareEvent_gcdQuotient_canonicalRoot_modEq
      hxPos hxy hrEquation hsEquation hqGap
  refine ⟨r, hrRange, s, hsRange, hrEquation, hsEquation, ?_⟩
  exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hzLt, hzRoot⟩

#print axioms globalMixedHighSquareEvent_has_bounded_quotient
#print axioms globalMixedDistinctHighHighPairPoint_mem_bounded_rootClass

end Erdos848
