import Mathlib

namespace Erdos848

/-! Lightweight congruence restriction on finite survivor sets. -/

def globalMixedRestrictSurvivors
    (survivors : Finset Nat) (modulus residue : Nat) : Finset Nat :=
  survivors.filter fun m => m % modulus = residue

lemma globalMixedRestrictSurvivors_subset
    (survivors : Finset Nat) (modulus residue : Nat) :
    globalMixedRestrictSurvivors survivors modulus residue ⊆ survivors := by
  intro m hm
  exact (Finset.mem_filter.mp hm).1

lemma globalMixedRestrictSurvivors_mem
    {survivors : Finset Nat} {modulus residue m : Nat} :
    m ∈ globalMixedRestrictSurvivors survivors modulus residue ↔
      m ∈ survivors ∧ m % modulus = residue := by
  simp [globalMixedRestrictSurvivors]

lemma globalMixedRestrictSurvivors_card_le
    (survivors : Finset Nat) (modulus residue : Nat) :
    (globalMixedRestrictSurvivors survivors modulus residue).card ≤
      survivors.card :=
  Finset.card_le_card (globalMixedRestrictSurvivors_subset _ _ _)

lemma globalMixedRestrictSurvivors_reciprocal_sum_le
    {survivors : Finset Nat} {modulus residue : Nat} {bound : Rat}
    (hbound : (∑ m ∈ survivors, (1 : Rat) / m) ≤ bound) :
    (∑ m ∈ globalMixedRestrictSurvivors survivors modulus residue,
        (1 : Rat) / m) ≤ bound := by
  refine (Finset.sum_le_sum_of_subset_of_nonneg
    (globalMixedRestrictSurvivors_subset survivors modulus residue) ?_).trans
      hbound
  intro m hmSurvivor hmNotRestricted
  positivity

end Erdos848
