import Erdos848.TailGlobalMixedReciprocal
import Erdos848.TailTenMillionKernelRootSurvivorSemantic

namespace Erdos848

/-!
# Reciprocal mass beyond the old 3025 cutoff

The old global mixed lemma gives reciprocal mass at most four through 3025.
For the larger transformed-root words, every remaining survivor contributes
at most `1 / 3026`.  Thus no unproved blanket four-bound is used.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionKernelRootSurvivorFinset_subset_coset
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) :
    tenMillionKernelRootSurvivorFinset
      normalLookup twistLookup row squareCoset support ⊆
      modFiveCosetBlock squareCoset 1 row.bound := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  have hmIco := Finset.mem_Ico.mp hparts.1
  have hbit := hparts.2
  rw [tenMillionKernelRootSupportWords_testBit] at hbit
  have hbaseBit := (Bool.and_eq_true_iff.mp hbit).2
  have hbase :=
    tenMillionKernelRootBaseWords_testBit_of_row_bound
      row squareCoset hmIco.1 (by omega)
  rw [hbase] at hbaseBit
  have hcoset := (Bool.and_eq_true_iff.mp hbaseBit).2
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_Ico.mpr ⟨hmIco.1, by omega⟩, hcoset⟩

theorem reciprocal_sum_le_four_add_card_div_3026
    (survivors : Finset Nat) (squareCoset : Bool)
    (hpositive : ∀ m ∈ survivors, 0 < m)
    (hcoset : ∀ m ∈ survivors,
      modFiveCosetAccepts squareCoset m = true) :
    (∑ m ∈ survivors, (1 : Rat) / m) ≤
      4 + (survivors.card : Rat) / 3026 := by
  let isLow : Nat → Prop := fun m => m ≤ globalMixedNormalBound
  let low := survivors.filter isLow
  let high := survivors.filter fun m => ¬ isLow m
  have hsplit :
      (∑ m ∈ survivors, (1 : Rat) / m) =
        (∑ m ∈ low, (1 : Rat) / m) +
          ∑ m ∈ high, (1 : Rat) / m := by
    exact (Finset.sum_filter_add_sum_filter_not
      survivors isLow (fun m => (1 : Rat) / m)).symm
  have hlowSubset :
      low ⊆ modFiveCosetBlock squareCoset 1 globalMixedNormalBound := by
    intro m hm
    have hmParts := Finset.mem_filter.mp hm
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Ico.mpr
      ⟨hpositive m hmParts.1, by
        dsimp [isLow] at hmParts
        omega⟩,
      hcoset m hmParts.1⟩
  have hlow :
      (∑ m ∈ low, (1 : Rat) / m) ≤ 4 := by
    have hmono :
        (∑ m ∈ low, (1 : Rat) / m) ≤
          ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
            (1 : Rat) / m := by
      exact Finset.sum_le_sum_of_subset_of_nonneg hlowSubset
        (by intro m hm _hnot; positivity)
    calc
      (∑ m ∈ low, (1 : Rat) / m) ≤
          ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
            (1 : Rat) / m := hmono
      _ = ∑ m ∈ Finset.Ico 1 (globalMixedNormalBound + 1),
            modFiveReciprocalTerm squareCoset m := by
        simpa using
          (modFiveReciprocalSum_eq_filter squareCoset 1
            globalMixedNormalBound).symm
      _ ≤ 4 :=
        globalMixedModFiveCoset_reciprocal_sum_le_four squareCoset
  have hhighTerm :
      ∀ m ∈ high, (1 : Rat) / m ≤ 1 / 3026 := by
    intro m hm
    have hmParts := Finset.mem_filter.mp hm
    have hmLarge : 3026 ≤ m := by
      dsimp [isLow, globalMixedNormalBound] at hmParts
      omega
    have hmRat : (3026 : Rat) ≤ m := by exact_mod_cast hmLarge
    exact one_div_le_one_div_of_le (by norm_num) hmRat
  have hhigh :
      (∑ m ∈ high, (1 : Rat) / m) ≤
        (survivors.card : Rat) / 3026 := by
    calc
      (∑ m ∈ high, (1 : Rat) / m) ≤
          ∑ _m ∈ high, (1 : Rat) / 3026 := by
        exact Finset.sum_le_sum fun m hm => hhighTerm m hm
      _ = (high.card : Rat) / 3026 := by
        simp [div_eq_mul_inv]
      _ ≤ (survivors.card : Rat) / 3026 := by
        apply div_le_div_of_nonneg_right
        · exact_mod_cast Finset.card_le_card (Finset.filter_subset _ _)
        · norm_num
  rw [hsplit]
  exact add_le_add hlow hhigh

theorem tenMillionKernelRootSurvivor_reciprocal_sum_le
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) :
    (∑ m ∈ tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support,
        (1 : Rat) / m) ≤
      4 +
        ((tenMillionKernelRootSurvivorFinset
          normalLookup twistLookup row squareCoset support).card : Rat) /
            3026 := by
  apply reciprocal_sum_le_four_add_card_div_3026
  · intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  · intro m hm
    have hmem := tenMillionKernelRootSurvivorFinset_subset_coset
      normalLookup twistLookup row squareCoset support hm
    exact (Finset.mem_filter.mp hmem).2

theorem tenMillionKernelRootSurvivor_reciprocal_sum_le_ceiling
    {normalLookup twistLookup : Nat → List Nat}
    {supportLength : Nat}
    {support : List Nat}
    (hpass :
      tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
        supportLength support = true)
    (row : TenMillionKernelRootRow) (squareCoset : Bool) :
    (∑ m ∈ tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support,
        (1 : Rat) / m) ≤
      4 + (row.survivorCeiling supportLength : Rat) / 3026 := by
  have hcardNat :=
    tenMillionKernelRootSurvivorFinset_card_le_ceiling
      hpass row squareCoset
  have hcardRat :
      ((tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card : Rat) ≤
        (row.survivorCeiling supportLength : Rat) := by
    exact_mod_cast hcardNat
  have hdiv :
      ((tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card : Rat) /
          3026 ≤
        (row.survivorCeiling supportLength : Rat) / 3026 :=
    div_le_div_of_nonneg_right hcardRat (by norm_num)
  exact (tenMillionKernelRootSurvivor_reciprocal_sum_le
    normalLookup twistLookup row squareCoset support).trans
      (add_le_add (le_refl (4 : Rat)) hdiv)

#print axioms reciprocal_sum_le_four_add_card_div_3026
#print axioms tenMillionKernelRootSurvivor_reciprocal_sum_le_ceiling

end Erdos848
