import Erdos848.TailTransformedRootCounting

namespace Erdos848

/-!
# Transformed-root counting with an explicit reciprocal budget

The older global theorem specialized the reciprocal mass to `4`.  The
twenty-million words extend beyond `3025`, so their rigorous budget is
`4 + survivorCeiling / 3026`.  Keeping that quantity as a parameter avoids
repeating the fibre-spacing argument in every valuation row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem transformedRoot_card_le_of_fibre_spacing_reciprocal
    {α : Type*} [DecidableEq α]
    (points : Finset α) (survivors : Finset Nat)
    (roots : Nat → Finset Nat) (fibre : Nat → Nat → Finset α)
    (X Y height : Nat) (reciprocalBudget : Rat)
    (hY : 0 < Y)
    (hcover : points ⊆ survivors.biUnion fun m =>
      (roots m).biUnion fun r => fibre m r)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors, (roots m).card ≤ height)
    (hfibre : ∀ m ∈ survivors, ∀ r ∈ roots m,
      ((fibre m r).card : Rat) ≤
        1 + (X : Rat) / (2 * m * Y))
    (hreciprocal :
      ∑ m ∈ survivors, (1 : Rat) / m ≤ reciprocalBudget) :
    (points.card : Rat) ≤
      height * ((survivors.card : Rat) +
        (X : Rat) / (2 * Y) * reciprocalBudget) := by
  have hYQ : (0 : Rat) < Y := by exact_mod_cast hY
  have hsum := card_le_sum_biUnion_fibres
    points survivors roots fibre hcover
  calc
    (points.card : Rat) ≤
        ∑ m ∈ survivors, ∑ r ∈ roots m, ((fibre m r).card : Rat) := hsum
    _ ≤ ∑ m ∈ survivors, ∑ _r ∈ roots m,
          (1 + (X : Rat) / (2 * m * Y)) := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro r hr
      exact hfibre m hm r hr
    _ = ∑ m ∈ survivors,
          ((roots m).card : Rat) *
            (1 + (X : Rat) / (2 * m * Y)) := by
      apply Finset.sum_congr rfl
      intro m hm
      simp
      ring
    _ ≤ ∑ m ∈ survivors,
          (height : Rat) * (1 + (X : Rat) / (2 * m * Y)) := by
      apply Finset.sum_le_sum
      intro m hm
      have hmQ : (0 : Rat) < m := by exact_mod_cast hmPos m hm
      have hrootQ : ((roots m).card : Rat) ≤ height := by
        exact_mod_cast hroots m hm
      gcongr
    _ = (height : Rat) *
          ((survivors.card : Rat) +
            (X : Rat) / (2 * Y) *
              (∑ m ∈ survivors, (1 : Rat) / m)) := by
      calc
        ∑ m ∈ survivors,
            (height : Rat) * (1 + (X : Rat) / (2 * m * Y)) =
            ∑ m ∈ survivors,
              ((height : Rat) +
                height * ((X : Rat) / (2 * Y) * ((1 : Rat) / m))) := by
          apply Finset.sum_congr rfl
          intro m hm
          have hmQ : (m : Rat) ≠ 0 := by
            exact_mod_cast (Nat.ne_of_gt (hmPos m hm))
          field_simp
        _ = (height : Rat) * (survivors.card : Rat) +
              height * ((X : Rat) / (2 * Y) *
                (∑ m ∈ survivors, (1 : Rat) / m)) := by
          rw [Finset.sum_add_distrib]
          simp only [Finset.sum_const, nsmul_eq_mul]
          rw [Finset.mul_sum]
          rw [Finset.mul_sum]
          ring
        _ = (height : Rat) *
              ((survivors.card : Rat) +
                (X : Rat) / (2 * Y) *
                  (∑ m ∈ survivors, (1 : Rat) / m)) := by
          rw [mul_add]
    _ ≤ (height : Rat) *
          ((survivors.card : Rat) +
            (X : Rat) / (2 * Y) * reciprocalBudget) := by
      gcongr

theorem transformedParameterSet_card_le_reciprocal
    {X Y modulus constant height : Nat}
    (survivors : Finset Nat) (reciprocalBudget : Rat)
    (hY : 0 < Y) (hmodulus : 0 < modulus)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors,
      (transformedRootResidues m modulus constant).card ≤ height)
    (hreciprocal :
      ∑ m ∈ survivors, (1 : Rat) / m ≤ reciprocalBudget) :
    ((transformedParameterSet X Y modulus constant survivors).card : Rat) ≤
      height * ((survivors.card : Rat) +
        (X : Rat) / (2 * Y) * reciprocalBudget) := by
  exact transformedRoot_card_le_of_fibre_spacing_reciprocal
    (transformedParameterSet X Y modulus constant survivors)
    survivors (fun m => transformedRootResidues m modulus constant)
    (fun m residue =>
      transformedParameterFibre X Y m modulus constant residue)
    X Y height reciprocalBudget hY
    (transformedParameterSet_subset_root_fibres survivors hmodulus)
    hmPos hroots
    (fun m hm residue hresidue =>
      transformedParameterFibre_card_le hY (hmPos m hm) hmodulus)
    hreciprocal

#print axioms transformedRoot_card_le_of_fibre_spacing_reciprocal
#print axioms transformedParameterSet_card_le_reciprocal

end Erdos848
