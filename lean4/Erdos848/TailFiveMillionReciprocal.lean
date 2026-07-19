import Erdos848.TailSupportWordBridge
import Erdos848.TailTransformedRootCounting

namespace Erdos848

/-!
# Reciprocal mass of the two mod-five survivor cosets

The transformed-root spacing sum needs only the uniform estimate
`∑ 1/m ≤ 4`.  Every ordinary or five-twist survivor lies in one of the two
nonzero square cosets modulo five, so it is enough to prove the estimate for
the complete coset through the raw quotient cutoff `2401`.

The proof below is symbolic except for two tiny, kernel-reduced finite facts:
the first hundred terms and the fact that every aligned block of one hundred
integers contains forty members of either coset.  No value of `N` is scanned.
-/

def modFiveReciprocalTerm (squareCoset : Bool) (m : ℕ) : ℚ :=
  if modFiveCosetAccepts squareCoset m then (1 : ℚ) / m else 0

def modFiveCosetBlock
    (squareCoset : Bool) (start count : ℕ) : Finset ℕ :=
  (Finset.Ico start (start + count)).filter fun m =>
    modFiveCosetAccepts squareCoset m

theorem modFiveReciprocalSum_eq_filter
    (squareCoset : Bool) (start count : ℕ) :
    (∑ m ∈ Finset.Ico start (start + count),
        modFiveReciprocalTerm squareCoset m) =
      ∑ m ∈ modFiveCosetBlock squareCoset start count,
        (1 : ℚ) / m := by
  classical
  rw [modFiveCosetBlock]
  rw [Finset.sum_filter]
  simp [modFiveReciprocalTerm]

/-- Every aligned hundred-term block used in the proof has exactly forty
members of either mod-five coset.  `interval_cases` produces 46 small kernel
computations, each over only one hundred booleans. -/
theorem modFiveCosetHundredBlock_card
    (squareCoset : Bool) (j : ℕ) (hj : j < 23) :
    (modFiveCosetBlock squareCoset (101 + 100 * j) 100).card = 40 := by
  cases squareCoset <;> interval_cases j <;>
    decide

/-- A hundred-term block is paid by forty copies of its left-endpoint
reciprocal. -/
theorem modFiveCosetHundredBlock_sum_le
    (squareCoset : Bool) (j : ℕ) (hj : j < 23) :
    (∑ m ∈ Finset.Ico (101 + 100 * j) (101 + 100 * j + 100),
        modFiveReciprocalTerm squareCoset m) ≤
      (40 : ℚ) / (101 + 100 * j) := by
  rw [modFiveReciprocalSum_eq_filter]
  let block := modFiveCosetBlock squareCoset (101 + 100 * j) 100
  have hstartPos : (0 : ℚ) < 101 + 100 * j := by positivity
  calc
    (∑ m ∈ block, (1 : ℚ) / m) ≤
        ∑ _m ∈ block, (1 : ℚ) / (101 + 100 * j) := by
      apply Finset.sum_le_sum
      intro m hm
      have hmIco : m ∈ Finset.Ico (101 + 100 * j)
          (101 + 100 * j + 100) :=
        (Finset.mem_filter.mp hm).1
      have hleQ : ((101 + 100 * j : ℕ) : ℚ) ≤ m := by
        exact_mod_cast (Finset.mem_Ico.mp hmIco).1
      push_cast at hleQ
      exact one_div_le_one_div_of_le hstartPos hleQ
    _ = (block.card : ℚ) / (101 + 100 * j) := by
      simp [div_eq_mul_inv]
    _ = (40 : ℚ) / (101 + 100 * j) := by
      rw [modFiveCosetHundredBlock_card squareCoset j hj]
      norm_num

/-- Iteration of the hundred-block estimate over the first `n` aligned
blocks. -/
theorem modFiveCosetHundredBlocks_sum_le
    (squareCoset : Bool) :
    ∀ n ≤ 23,
      (∑ m ∈ Finset.Ico 101 (101 + 100 * n),
          modFiveReciprocalTerm squareCoset m) ≤
        ∑ j ∈ Finset.range n, (40 : ℚ) / (101 + 100 * j) := by
  intro n hn
  induction n with
  | zero => simp
  | succ n ih =>
      have hn : n < 23 := by omega
      have ih' := ih (by omega)
      have hsplit := Finset.sum_Ico_consecutive
        (modFiveReciprocalTerm squareCoset)
        (show 101 ≤ 101 + 100 * n by omega)
        (show 101 + 100 * n ≤ 101 + 100 * (n + 1) by omega)
      rw [← hsplit]
      rw [Finset.sum_range_succ]
      exact add_le_add ih'
        (by simpa [Nat.succ_eq_add_one, Nat.mul_add, Nat.add_assoc,
              Nat.add_comm, Nat.add_left_comm] using
          modFiveCosetHundredBlock_sum_le squareCoset n hn)

theorem modFiveCosetHundredBlock_bound_sum_lt :
    (∑ j ∈ Finset.range 23, (40 : ℚ) / (101 + 100 * j)) < 3 / 2 := by
  norm_num

theorem modFiveSquareCoset_firstHundred_le :
    (∑ m ∈ Finset.Ico 1 101, modFiveReciprocalTerm true m) ≤ 49 / 20 := by
  norm_num [Finset.sum_Ico_succ_top, modFiveReciprocalTerm,
    modFiveCosetAccepts]

theorem modFiveNonsquareCoset_firstHundred_le :
    (∑ m ∈ Finset.Ico 1 101, modFiveReciprocalTerm false m) ≤ 203 / 100 := by
  norm_num [Finset.sum_Ico_succ_top, modFiveReciprocalTerm,
    modFiveCosetAccepts]

/-- Uniform reciprocal bound for either complete nonzero square coset through
`2401`. -/
theorem modFiveCoset_reciprocal_sum_le_four (squareCoset : Bool) :
    (∑ m ∈ Finset.Ico 1 2402, modFiveReciprocalTerm squareCoset m) ≤ 4 := by
  have htail := modFiveCosetHundredBlocks_sum_le squareCoset 23 (by norm_num)
  have htail' :
      (∑ m ∈ Finset.Ico 101 2401, modFiveReciprocalTerm squareCoset m) <
        3 / 2 := by
    have hbound := modFiveCosetHundredBlock_bound_sum_lt
    have htailRange :
        (∑ m ∈ Finset.Ico 101 2401,
            modFiveReciprocalTerm squareCoset m) ≤
          ∑ j ∈ Finset.range 23, (40 : ℚ) / (101 + 100 * j) := by
      convert htail using 1 <;> norm_num
    exact lt_of_le_of_lt htailRange hbound
  have hsplit := Finset.sum_Ico_consecutive
    (modFiveReciprocalTerm squareCoset)
    (show 1 ≤ 101 by norm_num) (show 101 ≤ 2401 by norm_num)
  have hlast := Finset.sum_Ico_succ_top
    (show 1 ≤ 2401 by norm_num) (modFiveReciprocalTerm squareCoset)
  have hlast' :
      (∑ m ∈ Finset.Ico 1 2402, modFiveReciprocalTerm squareCoset m) =
        (∑ m ∈ Finset.Ico 1 2401, modFiveReciprocalTerm squareCoset m) +
          modFiveReciprocalTerm squareCoset 2401 := by
    simpa only [Nat.reduceAdd] using hlast
  cases squareCoset with
  | false =>
      have hfirst := modFiveNonsquareCoset_firstHundred_le
      have hlastTerm : modFiveReciprocalTerm false 2401 = 0 := by
        norm_num [modFiveReciprocalTerm, modFiveCosetAccepts]
      rw [hlast', ← hsplit, hlastTerm]
      linarith
  | true =>
      have hfirst := modFiveSquareCoset_firstHundred_le
      have hlastTerm : modFiveReciprocalTerm true 2401 = (1 : ℚ) / 2401 := by
        norm_num [modFiveReciprocalTerm, modFiveCosetAccepts]
      rw [hlast', ← hsplit, hlastTerm]
      linarith

/-! ## Actual survivor subsets -/

def oddRootWordSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 2402).filter fun m =>
    oddRootWordPointAccepts support squareCoset m

def oddRootFiveTwistSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 481).filter fun m =>
    oddRootFiveTwistSupportAccepts support squareCoset m

theorem oddRootWordSurvivorFinset_card
    (support : List ℕ) (squareCoset : Bool) :
    (oddRootWordSurvivorFinset support squareCoset).card =
      oddRootWordSurvivorCount support squareCoset := by
  rw [oddRootWordSurvivorFinset,
    oddRootWordSurvivorCount_eq_countNatRange]
  simpa using
    (countNatRange_eq_card_filter_Ico
      (oddRootWordPointAccepts support squareCoset) 1 2401).symm

theorem oddRootFiveTwistSurvivorFinset_card
    (support : List ℕ) (squareCoset : Bool) :
    (oddRootFiveTwistSurvivorFinset support squareCoset).card =
      oddRootFiveTwistSurvivorCount support squareCoset := by
  simpa [oddRootFiveTwistSurvivorFinset,
    oddRootFiveTwistSurvivorCount] using
      (countNatRange_eq_card_filter_Ico
        (oddRootFiveTwistSupportAccepts support squareCoset) 1 480).symm

theorem oddRootWordSurvivorFinset_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    oddRootWordSurvivorFinset support squareCoset ⊆
      modFiveCosetBlock squareCoset 1 2401 := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  apply Finset.mem_filter.mpr
  refine ⟨hparts.1, ?_⟩
  have haccepts : modFiveCosetAccepts squareCoset m = true ∧
      support.all (fun q =>
        wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1)) =
        true := by
    simpa [oddRootWordPointAccepts] using hparts.2
  exact haccepts.1

theorem oddRootFiveTwistSurvivorFinset_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    oddRootFiveTwistSurvivorFinset support squareCoset ⊆
      modFiveCosetBlock squareCoset 1 2401 := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  apply Finset.mem_filter.mpr
  have haccepts : modFiveCosetAccepts squareCoset m = true ∧
      support.all (fun q =>
        wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q)
          (5 * m - 1)) = true := by
    simpa [oddRootFiveTwistSupportAccepts] using hparts.2
  refine ⟨?_, haccepts.1⟩
  have hmIco := Finset.mem_Ico.mp hparts.1
  exact Finset.mem_Ico.mpr (by omega)

theorem oddRootWordSurvivor_reciprocal_sum_le_four
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ oddRootWordSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤ 4 := by
  have hsubset := oddRootWordSurvivorFinset_subset_coset
    support squareCoset
  have hmono :
      (∑ m ∈ oddRootWordSurvivorFinset support squareCoset,
          (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 2401,
          (1 : ℚ) / m := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset
      (by intro m hm _hnot; positivity)
  calc
    (∑ m ∈ oddRootWordSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 2401,
          (1 : ℚ) / m := hmono
    _ = ∑ m ∈ Finset.Ico 1 2402,
          modFiveReciprocalTerm squareCoset m := by
      simpa using (modFiveReciprocalSum_eq_filter squareCoset 1 2401).symm
    _ ≤ 4 := modFiveCoset_reciprocal_sum_le_four squareCoset

theorem oddRootFiveTwistSurvivor_reciprocal_sum_le_four
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ oddRootFiveTwistSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤ 4 := by
  have hsubset := oddRootFiveTwistSurvivorFinset_subset_coset
    support squareCoset
  have hmono :
      (∑ m ∈ oddRootFiveTwistSurvivorFinset support squareCoset,
          (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 2401,
          (1 : ℚ) / m := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset
      (by intro m hm _hnot; positivity)
  calc
    (∑ m ∈ oddRootFiveTwistSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤
        ∑ m ∈ modFiveCosetBlock squareCoset 1 2401,
          (1 : ℚ) / m := hmono
    _ = ∑ m ∈ Finset.Ico 1 2402,
          modFiveReciprocalTerm squareCoset m := by
      simpa using (modFiveReciprocalSum_eq_filter squareCoset 1 2401).symm
    _ ≤ 4 := modFiveCoset_reciprocal_sum_le_four squareCoset

#print axioms modFiveCosetHundredBlock_card
#print axioms modFiveCoset_reciprocal_sum_le_four
#print axioms oddRootWordSurvivorFinset_card
#print axioms oddRootFiveTwistSurvivorFinset_card
#print axioms oddRootWordSurvivor_reciprocal_sum_le_four
#print axioms oddRootFiveTwistSurvivor_reciprocal_sum_le_four

end Erdos848
