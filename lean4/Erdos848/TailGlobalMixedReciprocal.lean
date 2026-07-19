import Erdos848.TailGlobalMixedSurvivorSemantic
import Erdos848.TailGlobalMixedReciprocalFiveBlocks
import Erdos848.TailGlobalMixedReciprocalHundredBlocks

namespace Erdos848

/-!
# Reciprocal mass for the fixed-cut global mixed rows

The normal row uses `1 ≤ m ≤ 3025`, while the five-twist row uses the
smaller range `1 ≤ m ≤ 605`.  Both are subsets of one of the two
nonzero mod-five cosets.  The fixed block certificates live in two separate
kernel leaves so that publication builds never repeat their elaboration.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Uniform reciprocal bound through the global normal cutoff `3025`. -/
theorem globalMixedModFiveCoset_reciprocal_sum_le_four
    (squareCoset : Bool) :
    (∑ m ∈ Finset.Ico 1 (globalMixedNormalBound + 1),
        modFiveReciprocalTerm squareCoset m) ≤ 4 := by
  have hfirst := globalMixedModFiveCoset_firstTwoHundred_le squareCoset
  have hmiddle :=
    globalMixedModFiveCosetHundredBlocks_sum_le squareCoset 29 (by norm_num)
  have hend : 201 + 100 * 29 = 3101 := by norm_num
  rw [hend] at hmiddle
  have htail := globalMixedModFiveCoset_tail_bound_lt
  have hsplitFirst := Finset.sum_Ico_consecutive
    (modFiveReciprocalTerm squareCoset)
    (show 1 ≤ 201 by norm_num) (show 201 ≤ 3101 by norm_num)
  have hfull :
      (∑ m ∈ Finset.Ico 1 3101,
          modFiveReciprocalTerm squareCoset m) ≤ 4 := by
    rw [← hsplitFirst]
    linarith
  have hsubset :
      Finset.Ico 1 (globalMixedNormalBound + 1) ⊆ Finset.Ico 1 3101 := by
    intro m hm
    have hmIco := Finset.mem_Ico.mp hm
    apply Finset.mem_Ico.mpr
    refine ⟨hmIco.1, ?_⟩
    dsimp [globalMixedNormalBound] at hmIco ⊢
    omega
  have hmono :
      (∑ m ∈ Finset.Ico 1 (globalMixedNormalBound + 1),
          modFiveReciprocalTerm squareCoset m) ≤
        ∑ m ∈ Finset.Ico 1 3101,
          modFiveReciprocalTerm squareCoset m := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset (by
      intro m hm _hnot
      unfold modFiveReciprocalTerm
      split <;> positivity)
  exact hmono.trans hfull

theorem globalMixedNormalSurvivor_reciprocal_sum_le_four
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ globalMixedNormalSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤ 4 := by
  have hsubset := globalMixedNormalSurvivorFinset_subset_coset
    support squareCoset
  have hmono :
      (∑ m ∈ globalMixedNormalSurvivorFinset support squareCoset,
          (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
          (1 : ℚ) / m := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset
      (by intro m hm _hnot; positivity)
  calc
    (∑ m ∈ globalMixedNormalSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
          (1 : ℚ) / m := hmono
    _ = ∑ m ∈ Finset.Ico 1 (globalMixedNormalBound + 1),
          modFiveReciprocalTerm squareCoset m := by
      simpa using
        (modFiveReciprocalSum_eq_filter squareCoset 1
          globalMixedNormalBound).symm
    _ ≤ 4 := globalMixedModFiveCoset_reciprocal_sum_le_four squareCoset

theorem globalMixedTwistSurvivor_reciprocal_sum_le_four
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ globalMixedTwistSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤ 4 := by
  have hsubsetSmall := globalMixedTwistSurvivorFinset_subset_coset
    support squareCoset
  have hsubsetLarge :
      globalMixedTwistSurvivorFinset support squareCoset ⊆
        modFiveCosetBlock squareCoset 1 globalMixedNormalBound := by
    intro m hm
    have hmSmall := hsubsetSmall hm
    have hparts := Finset.mem_filter.mp hmSmall
    apply Finset.mem_filter.mpr
    refine ⟨?_, hparts.2⟩
    have hmIco := Finset.mem_Ico.mp hparts.1
    exact Finset.mem_Ico.mpr (by
      dsimp [globalMixedTwistBound, globalMixedNormalBound] at hmIco ⊢
      omega)
  have hmono :
      (∑ m ∈ globalMixedTwistSurvivorFinset support squareCoset,
          (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
          (1 : ℚ) / m := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubsetLarge
      (by intro m hm _hnot; positivity)
  calc
    (∑ m ∈ globalMixedTwistSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 globalMixedNormalBound,
          (1 : ℚ) / m := hmono
    _ = ∑ m ∈ Finset.Ico 1 (globalMixedNormalBound + 1),
          modFiveReciprocalTerm squareCoset m := by
      simpa using
        (modFiveReciprocalSum_eq_filter squareCoset 1
          globalMixedNormalBound).symm
    _ ≤ 4 := globalMixedModFiveCoset_reciprocal_sum_le_four squareCoset

#print axioms globalMixedModFiveCoset_reciprocal_sum_le_four
#print axioms globalMixedNormalSurvivor_reciprocal_sum_le_four
#print axioms globalMixedTwistSurvivor_reciprocal_sum_le_four

end Erdos848
