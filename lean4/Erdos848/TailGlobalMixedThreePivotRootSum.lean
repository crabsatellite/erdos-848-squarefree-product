import Erdos848.TailGlobalMixedThreePivotFibreCapacity
import Erdos848.TailPrimeProgressionCounting

namespace Erdos848

/-!
# Aggregate primitive determinant root classes

The primitive determinant cancellation makes the quotient-root condition
coefficient-free:

`r * z^2 ≡ s (mod delta)`.

This module sums the literal root classes before any Pell-orbit payment.  For
fixed `r` and `z`, all admissible right quotients occupy one residue class
modulo `delta`; hence the endpoint is paid once per root, not once per witness
prime pair.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedPrimitiveRootRightFiber
    (right : Finset Nat) (delta r z : Nat) : Finset Nat :=
  right.filter fun s => r * z ^ 2 ≡ s [MOD delta]

def globalMixedPrimitiveRootSum
    (delta : Nat) (left right : Finset Nat) : Nat :=
  ∑ r ∈ left, ∑ z ∈ Finset.range delta,
    (globalMixedPrimitiveRootRightFiber right delta r z).card

/-- For fixed left quotient and primitive root, the right quotients lie in one
literal residue class modulo the normalized pivot gap. -/
theorem globalMixedPrimitiveRootRightFiber_card_le_ceilDiv
    {K delta r z : Nat} {right : Finset Nat}
    (hdelta : 0 < delta)
    (hright : ∀ s ∈ right, s ∈ Finset.Icc 1 K) :
    (globalMixedPrimitiveRootRightFiber right delta r z).card ≤
      K ⌈/⌉ delta := by
  apply tail_card_le_ceilDiv_of_pairwise_modEq
    (globalMixedPrimitiveRootRightFiber right delta r z)
      K delta hdelta
  · intro s hs
    exact hright s (Finset.mem_filter.mp hs).1
  · intro s₁ hs₁ s₂ hs₂
    exact (Finset.mem_filter.mp hs₁).2.symm.trans
      (Finset.mem_filter.mp hs₂).2

/-- Exact one-sided aggregate root bound.  It is the integer-ceiling version
of `|R| * (K + delta)` and retains the actual normalized gap. -/
theorem globalMixedPrimitiveRootSum_le_ceilDiv
    {K delta : Nat} {left right : Finset Nat}
    (hdelta : 0 < delta)
    (hright : ∀ s ∈ right, s ∈ Finset.Icc 1 K) :
    globalMixedPrimitiveRootSum delta left right ≤
      left.card * delta * (K ⌈/⌉ delta) := by
  unfold globalMixedPrimitiveRootSum
  calc
    (∑ r ∈ left, ∑ z ∈ Finset.range delta,
        (globalMixedPrimitiveRootRightFiber right delta r z).card) ≤
      ∑ _r ∈ left, ∑ _z ∈ Finset.range delta, K ⌈/⌉ delta := by
        apply Finset.sum_le_sum
        intro r hr
        apply Finset.sum_le_sum
        intro z hz
        exact globalMixedPrimitiveRootRightFiber_card_le_ceilDiv
          hdelta hright
    _ = left.card * delta * (K ⌈/⌉ delta) := by
      simp [mul_assoc]

/-- The simultaneous crude bound keeps the actual right-support cardinality.
Together with the ceiling theorem, callers may take the sharper of the two
without expanding a witness-prime union. -/
theorem globalMixedPrimitiveRootSum_le_card
    (delta : Nat) (left right : Finset Nat) :
    globalMixedPrimitiveRootSum delta left right ≤
      left.card * delta * right.card := by
  unfold globalMixedPrimitiveRootSum
  calc
    (∑ r ∈ left, ∑ z ∈ Finset.range delta,
        (globalMixedPrimitiveRootRightFiber right delta r z).card) ≤
      ∑ _r ∈ left, ∑ _z ∈ Finset.range delta, right.card := by
        apply Finset.sum_le_sum
        intro r hr
        apply Finset.sum_le_sum
        intro z hz
        exact Finset.card_le_card (Finset.filter_subset _ _)
    _ = left.card * delta * right.card := by
      simp [mul_assoc]

/-- Total literal point count over all actual determinant fibres indexed by
the coefficient-free primitive root classes. -/
def globalMixedPrimitiveActualPointSum
    (N x y : Nat) (left right : Finset Nat)
    (fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z) : Nat :=
  let delta := y / x.gcd y - x / x.gcd y
  ∑ r ∈ left, ∑ z ∈ Finset.range delta,
    ∑ s ∈ globalMixedPrimitiveRootRightFiber right delta r z,
      (fibres r s z).points.card

/-- The actual point count pays at most six Pell layers per primitive root
class.  There is no witness-pair union and no interval enumeration. -/
theorem globalMixedPrimitiveActualPointSum_le_six_mul_rootSum
    {N x y : Nat} {left right : Finset Nat}
    {fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627) :
    globalMixedPrimitiveActualPointSum N x y left right fibres ≤
      6 * globalMixedPrimitiveRootSum
        (y / x.gcd y - x / x.gcd y) left right := by
  unfold globalMixedPrimitiveActualPointSum globalMixedPrimitiveRootSum
  dsimp only
  calc
    (∑ r ∈ left,
        ∑ z ∈ Finset.range (y / x.gcd y - x / x.gcd y),
          ∑ s ∈ globalMixedPrimitiveRootRightFiber right
              (y / x.gcd y - x / x.gcd y) r z,
            (fibres r s z).points.card) ≤
        ∑ r ∈ left,
          ∑ z ∈ Finset.range (y / x.gcd y - x / x.gcd y),
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
          ∑ z ∈ Finset.range (y / x.gcd y - x / x.gcd y),
            (globalMixedPrimitiveRootRightFiber right
              (y / x.gcd y - x / x.gcd y) r z).card) := by
      simp [Finset.mul_sum, mul_comm]

/-- Closed ceiling budget for all actual points in the primitive root
decomposition. -/
theorem globalMixedPrimitiveActualPointSum_le_six_mul_ceilDiv
    {N x y K : Nat} {left right : Finset Nat}
    {fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hright : ∀ s ∈ right, s ∈ Finset.Icc 1 K) :
    globalMixedPrimitiveActualPointSum N x y left right fibres ≤
      6 * left.card * (y / x.gcd y - x / x.gcd y) *
        (K ⌈/⌉ (y / x.gcd y - x / x.gcd y)) := by
  have hgap : 0 < y / x.gcd y - x / x.gcd y :=
    gcdQuotientGap_pos hxy
  calc
    globalMixedPrimitiveActualPointSum N x y left right fibres ≤
        6 * globalMixedPrimitiveRootSum
          (y / x.gcd y - x / x.gcd y) left right :=
      globalMixedPrimitiveActualPointSum_le_six_mul_rootSum
        hN hx hxy hspan
    _ ≤ 6 *
        (left.card * (y / x.gcd y - x / x.gcd y) *
          (K ⌈/⌉ (y / x.gcd y - x / x.gcd y))) :=
      Nat.mul_le_mul_left 6
        (globalMixedPrimitiveRootSum_le_ceilDiv hgap hright)
    _ = 6 * left.card * (y / x.gcd y - x / x.gcd y) *
        (K ⌈/⌉ (y / x.gcd y - x / x.gcd y)) := by ring

/-- Closed support-cardinality budget for the same actual point sum. -/
theorem globalMixedPrimitiveActualPointSum_le_six_mul_card
    {N x y : Nat} {left right : Finset Nat}
    {fibres : (r s z : Nat) →
      GlobalMixedDistinctHighHighFibre N x y r s z}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627) :
    globalMixedPrimitiveActualPointSum N x y left right fibres ≤
      6 * left.card * (y / x.gcd y - x / x.gcd y) * right.card := by
  calc
    globalMixedPrimitiveActualPointSum N x y left right fibres ≤
        6 * globalMixedPrimitiveRootSum
          (y / x.gcd y - x / x.gcd y) left right :=
      globalMixedPrimitiveActualPointSum_le_six_mul_rootSum
        hN hx hxy hspan
    _ ≤ 6 *
        (left.card * (y / x.gcd y - x / x.gcd y) * right.card) :=
      Nat.mul_le_mul_left 6
        (globalMixedPrimitiveRootSum_le_card
          (y / x.gcd y - x / x.gcd y) left right)
    _ = 6 * left.card * (y / x.gcd y - x / x.gcd y) * right.card := by ring

#print axioms globalMixedPrimitiveRootRightFiber_card_le_ceilDiv
#print axioms globalMixedPrimitiveRootSum_le_ceilDiv
#print axioms globalMixedPrimitiveRootSum_le_card
#print axioms globalMixedPrimitiveActualPointSum_le_six_mul_rootSum
#print axioms globalMixedPrimitiveActualPointSum_le_six_mul_ceilDiv
#print axioms globalMixedPrimitiveActualPointSum_le_six_mul_card

end Erdos848
