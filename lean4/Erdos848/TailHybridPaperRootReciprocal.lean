import Erdos848.TailHybridPaperRootSurvivorSemantic
import Erdos848.TailTwentyMillionRootReciprocal

namespace Erdos848

/-! # Reciprocal mass of a hybrid paper root survivor set -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridPaperRootSurvivor_reciprocal_sum_le
    (normalProvider : HybridPaperRootCertificateProvider)
    (lookup : Nat → List Nat)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat) :
    (∑ m ∈ hybridPaperRootSurvivorFinset
        lookup regime squareCoset support,
        (1 : Rat) / m) ≤
      4 +
        ((hybridPaperRootSurvivorFinset
          lookup regime squareCoset support).card : Rat) / 3026 := by
  apply reciprocal_sum_le_four_add_card_div_3026
  · intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  · intro m hm
    have hmem :=
      hybridPaperRootSurvivorFinset_subset_coset
        normalProvider lookup regime squareCoset support hm
    exact (Finset.mem_filter.mp hmem).2

theorem hybridPaperRootSurvivor_reciprocal_sum_le_target
    (normalProvider : HybridPaperRootCertificateProvider)
    {lookup : Nat → List Nat}
    {regime : HybridPaperDiagonalRegime}
    {squareCoset : Bool} {support : List Nat} {ceiling : Nat}
    (hcard :
      (hybridPaperRootSurvivorFinset
        lookup regime squareCoset support).card ≤
        ceiling) :
    (∑ m ∈ hybridPaperRootSurvivorFinset
        lookup regime squareCoset support,
        (1 : Rat) / m) ≤
      4 + (ceiling : Rat) / 3026 := by
  have hcardRat :
      ((hybridPaperRootSurvivorFinset
        lookup regime squareCoset support).card : Rat) ≤
        (ceiling : Rat) := by
    exact_mod_cast hcard
  exact
    (hybridPaperRootSurvivor_reciprocal_sum_le
      normalProvider lookup regime squareCoset support).trans
      (add_le_add (le_refl (4 : Rat))
        (div_le_div_of_nonneg_right hcardRat (by norm_num)))

#print axioms hybridPaperRootSurvivor_reciprocal_sum_le
#print axioms hybridPaperRootSurvivor_reciprocal_sum_le_target

end Erdos848
