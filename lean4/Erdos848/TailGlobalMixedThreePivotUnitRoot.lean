import Erdos848.TailGlobalMixedThreePivotRootSum
import Erdos848.TailGlobalMixedThreePivotValuationGap
import Mathlib.Data.Nat.Totient

namespace Erdos848

/-!
# Unit-root aggregation for actual three-pivot fibres

Both actual high witness primes are larger than the literal pivot gap.  The
canonical determinant ratio is therefore a unit modulo the normalized gap.
This removes non-units from the root sum before the Pell capacity is paid.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedPrimitiveUnitRoots (delta : Nat) : Finset Nat :=
  (Finset.range delta).filter fun z => Nat.Coprime z delta

theorem globalMixedPrimitiveUnitRoots_card (delta : Nat) :
    (globalMixedPrimitiveUnitRoots delta).card = delta.totient := by
  simp [globalMixedPrimitiveUnitRoots, Nat.totient_eq_card_coprime,
    Nat.coprime_comm]

def globalMixedPrimitiveUnitRootClasses
    (x y r s : Nat) : Finset Nat :=
  (globalMixedPrimitiveRootClasses x y r s).filter fun z =>
    Nat.Coprime z (y / x.gcd y - x / x.gcd y)

/-- An actual high-high event occupies a genuine unit root.  In particular,
the quotient-root aggregate need not pay noninvertible residue classes. -/
theorem globalMixedDistinctHighHighPairPoint_mem_bounded_unitRootClass
    {N x y p q point : Nat}
    (hN : 5_000_000 ≤ N)
    (hxPos : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hxUpper : x ≤ N) (hyUpper : y ≤ N)
    (hpPrime : Nat.Prime p) (hqPrime : Nat.Prime q)
    (hpLarge : N / 55 < p) (hqLarge : N / 55 < q)
    (hpoint : point ∈
      globalMixedDistinctPrimePairPoints N x y p q) :
    ∃ r ∈ globalMixedDeterminantQuotientRange,
      ∃ s ∈ globalMixedDeterminantQuotientRange,
        p ^ 2 * r = x * point + 1 ∧
        q ^ 2 * s = y * point + 1 ∧
        primitiveDeterminantRatioRoot
            (y / x.gcd y - x / x.gcd y) p q ∈
          globalMixedPrimitiveUnitRootClasses x y r s := by
  obtain ⟨r, hrRange, s, hsRange, hrEquation, hsEquation, hzRoot⟩ :=
    globalMixedDistinctHighHighPairPoint_mem_bounded_rootClass
      hN hxPos hxy hspan hxUpper hyUpper hqPrime hpLarge hqLarge hpoint
  let delta := y / x.gcd y - x / x.gcd y
  let z := primitiveDeterminantRatioRoot delta p q
  have hcutLarge : 2627 < N / 55 := by omega
  have hpDifference : y - x < p := by omega
  have hqDifference : y - x < q := by omega
  have hpGap : Nat.Coprime p delta := by
    dsimp only [delta]
    exact prime_coprime_gcdQuotientGap_of_pivotDifference_lt
      hxy hpPrime hpDifference
  have hqGap : Nat.Coprime q delta := by
    dsimp only [delta]
    exact prime_coprime_gcdQuotientGap_of_pivotDifference_lt
      hxy hqPrime hqDifference
  have hzMul : z * q ≡ p [MOD delta] := by
    exact primitiveDeterminantRatioRoot_mul_modEq
      (by
        dsimp only [delta]
        exact gcdQuotientGap_pos hxy)
      hqGap
  have hzqGap : Nat.Coprime (z * q) delta := by
    rw [Nat.coprime_iff_gcd_eq_one, hzMul.gcd_eq]
    exact hpGap.gcd_eq_one
  have hzGap : Nat.Coprime z delta :=
    Nat.Coprime.of_dvd_left (dvd_mul_right z q) hzqGap
  refine ⟨r, hrRange, s, hsRange, hrEquation, hsEquation, ?_⟩
  apply Finset.mem_filter.mpr
  constructor
  · simpa [z, delta] using hzRoot
  · simpa [z, delta] using hzGap

def globalMixedPrimitiveUnitRootSum
    (delta : Nat) (left right : Finset Nat) : Nat :=
  ∑ r ∈ left, ∑ z ∈ globalMixedPrimitiveUnitRoots delta,
    (globalMixedPrimitiveRootRightFiber right delta r z).card

theorem globalMixedPrimitiveUnitRootSum_le_ceilDiv
    {K delta : Nat} {left right : Finset Nat}
    (hdelta : 0 < delta)
    (hright : ∀ s ∈ right, s ∈ Finset.Icc 1 K) :
    globalMixedPrimitiveUnitRootSum delta left right ≤
      left.card * delta.totient * (K ⌈/⌉ delta) := by
  unfold globalMixedPrimitiveUnitRootSum
  calc
    (∑ r ∈ left, ∑ z ∈ globalMixedPrimitiveUnitRoots delta,
        (globalMixedPrimitiveRootRightFiber right delta r z).card) ≤
      ∑ _r ∈ left, ∑ _z ∈ globalMixedPrimitiveUnitRoots delta,
        K ⌈/⌉ delta := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro z hz
      exact globalMixedPrimitiveRootRightFiber_card_le_ceilDiv
        hdelta hright
    _ = left.card * delta.totient * (K ⌈/⌉ delta) := by
      simp [globalMixedPrimitiveUnitRoots_card, mul_assoc]

theorem globalMixedPrimitiveUnitRootSum_le_card
    (delta : Nat) (left right : Finset Nat) :
    globalMixedPrimitiveUnitRootSum delta left right ≤
      left.card * delta.totient * right.card := by
  unfold globalMixedPrimitiveUnitRootSum
  calc
    (∑ r ∈ left, ∑ z ∈ globalMixedPrimitiveUnitRoots delta,
        (globalMixedPrimitiveRootRightFiber right delta r z).card) ≤
      ∑ _r ∈ left, ∑ _z ∈ globalMixedPrimitiveUnitRoots delta,
        right.card := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro z hz
      exact Finset.card_le_card (Finset.filter_subset _ _)
    _ = left.card * delta.totient * right.card := by
      simp [globalMixedPrimitiveUnitRoots_card, mul_assoc]

def globalMixedPrimitiveUnitActualPointSum
    (N x y : Nat) (left right : Finset Nat)
    (fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z) : Nat :=
  let delta := y / x.gcd y - x / x.gcd y
  ∑ r ∈ left, ∑ z ∈ globalMixedPrimitiveUnitRoots delta,
    ∑ s ∈ globalMixedPrimitiveRootRightFiber right delta r z,
      (fibres r s z).points.card

theorem globalMixedPrimitiveUnitActualPointSum_le_six_mul_rootSum
    {N x y : Nat} {left right : Finset Nat}
    {fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627) :
    globalMixedPrimitiveUnitActualPointSum N x y left right fibres ≤
      6 * globalMixedPrimitiveUnitRootSum
        (y / x.gcd y - x / x.gcd y) left right := by
  unfold globalMixedPrimitiveUnitActualPointSum
    globalMixedPrimitiveUnitRootSum
  dsimp only
  calc
    (∑ r ∈ left,
        ∑ z ∈ globalMixedPrimitiveUnitRoots
            (y / x.gcd y - x / x.gcd y),
          ∑ s ∈ globalMixedPrimitiveRootRightFiber right
              (y / x.gcd y - x / x.gcd y) r z,
            (fibres r s z).points.card) ≤
      ∑ r ∈ left,
        ∑ z ∈ globalMixedPrimitiveUnitRoots
            (y / x.gcd y - x / x.gcd y),
          ∑ _s ∈ globalMixedPrimitiveRootRightFiber right
              (y / x.gcd y - x / x.gcd y) r z, 6 := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro z hz
      apply Finset.sum_le_sum
      intro s hs
      exact (fibres r s z).card_le_six hN hx hxy hspan
    _ = 6 *
        (∑ r ∈ left,
          ∑ z ∈ globalMixedPrimitiveUnitRoots
              (y / x.gcd y - x / x.gcd y),
            (globalMixedPrimitiveRootRightFiber right
              (y / x.gcd y - x / x.gcd y) r z).card) := by
      simp [Finset.mul_sum, mul_comm]

theorem globalMixedPrimitiveUnitActualPointSum_le_six_mul_ceilDiv
    {N x y K : Nat} {left right : Finset Nat}
    {fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hright : ∀ s ∈ right, s ∈ Finset.Icc 1 K) :
    globalMixedPrimitiveUnitActualPointSum N x y left right fibres ≤
      6 * left.card *
        (y / x.gcd y - x / x.gcd y).totient *
        (K ⌈/⌉ (y / x.gcd y - x / x.gcd y)) := by
  have hgap : 0 < y / x.gcd y - x / x.gcd y :=
    gcdQuotientGap_pos hxy
  calc
    globalMixedPrimitiveUnitActualPointSum N x y left right fibres ≤
        6 * globalMixedPrimitiveUnitRootSum
          (y / x.gcd y - x / x.gcd y) left right :=
      globalMixedPrimitiveUnitActualPointSum_le_six_mul_rootSum
        hN hx hxy hspan
    _ ≤ 6 *
        (left.card * (y / x.gcd y - x / x.gcd y).totient *
          (K ⌈/⌉ (y / x.gcd y - x / x.gcd y))) :=
      Nat.mul_le_mul_left 6
        (globalMixedPrimitiveUnitRootSum_le_ceilDiv hgap hright)
    _ = 6 * left.card *
        (y / x.gcd y - x / x.gcd y).totient *
        (K ⌈/⌉ (y / x.gcd y - x / x.gcd y)) := by ring

#print axioms globalMixedDistinctHighHighPairPoint_mem_bounded_unitRootClass
#print axioms globalMixedPrimitiveUnitRootSum_le_ceilDiv
#print axioms globalMixedPrimitiveUnitActualPointSum_le_six_mul_ceilDiv

end Erdos848
