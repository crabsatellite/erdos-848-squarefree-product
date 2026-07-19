import Erdos848.TailFiveMillionReciprocal

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedModFiveCosetFiveBlock_card
    (squareCoset : Bool) (j : ℕ) (hj : j < 20) :
    (modFiveCosetBlock squareCoset (101 + 5 * j) 5).card = 2 := by
  cases squareCoset <;> interval_cases j <;> decide

theorem globalMixedModFiveCosetFiveBlock_sum_le
    (squareCoset : Bool) (j : ℕ) (hj : j < 20) :
    (∑ m ∈ Finset.Ico (101 + 5 * j) (101 + 5 * j + 5),
        modFiveReciprocalTerm squareCoset m) ≤
      (2 : ℚ) / (101 + 5 * j) := by
  rw [modFiveReciprocalSum_eq_filter]
  let block := modFiveCosetBlock squareCoset (101 + 5 * j) 5
  have hstartPos : (0 : ℚ) < 101 + 5 * j := by positivity
  calc
    (∑ m ∈ block, (1 : ℚ) / m) ≤
        ∑ _m ∈ block, (1 : ℚ) / (101 + 5 * j) := by
      apply Finset.sum_le_sum
      intro m hm
      have hmIco : m ∈ Finset.Ico (101 + 5 * j)
          (101 + 5 * j + 5) := (Finset.mem_filter.mp hm).1
      have hleQ : ((101 + 5 * j : ℕ) : ℚ) ≤ m := by
        exact_mod_cast (Finset.mem_Ico.mp hmIco).1
      push_cast at hleQ
      exact one_div_le_one_div_of_le hstartPos hleQ
    _ = (block.card : ℚ) / (101 + 5 * j) := by
      simp [div_eq_mul_inv]
    _ = (2 : ℚ) / (101 + 5 * j) := by
      rw [globalMixedModFiveCosetFiveBlock_card squareCoset j hj]
      norm_num

theorem globalMixedModFiveCosetFiveBlocks_sum_le
    (squareCoset : Bool) :
    ∀ n ≤ 20,
      (∑ m ∈ Finset.Ico 101 (101 + 5 * n),
          modFiveReciprocalTerm squareCoset m) ≤
        ∑ j ∈ Finset.range n, (2 : ℚ) / (101 + 5 * j) := by
  intro n hn
  induction n with
  | zero => simp
  | succ n ih =>
      have hn : n < 20 := by omega
      have ih' := ih (by omega)
      have hsplit := Finset.sum_Ico_consecutive
        (modFiveReciprocalTerm squareCoset)
        (show 101 ≤ 101 + 5 * n by omega)
        (show 101 + 5 * n ≤ 101 + 5 * (n + 1) by omega)
      rw [← hsplit, Finset.sum_range_succ]
      exact add_le_add ih'
        (by simpa [Nat.succ_eq_add_one, Nat.mul_add, Nat.add_assoc,
              Nat.add_comm, Nat.add_left_comm] using
          globalMixedModFiveCosetFiveBlock_sum_le squareCoset n hn)

theorem globalMixedModFiveCosetFiveBlock_bound_sum_lt :
    (∑ j ∈ Finset.range 20, (2 : ℚ) / (101 + 5 * j)) < 29 / 100 := by
  norm_num

theorem globalMixedModFiveCoset_secondHundred_lt
    (squareCoset : Bool) :
    (∑ m ∈ Finset.Ico 101 201,
        modFiveReciprocalTerm squareCoset m) < 29 / 100 := by
  have hblocks :=
    globalMixedModFiveCosetFiveBlocks_sum_le squareCoset 20 (by norm_num)
  have hblocks' :
      (∑ m ∈ Finset.Ico 101 201,
          modFiveReciprocalTerm squareCoset m) ≤
        ∑ j ∈ Finset.range 20, (2 : ℚ) / (101 + 5 * j) := by
    convert hblocks using 1 <;> norm_num
  exact hblocks'.trans_lt globalMixedModFiveCosetFiveBlock_bound_sum_lt

theorem globalMixedModFiveCoset_firstTwoHundred_le
    (squareCoset : Bool) :
    (∑ m ∈ Finset.Ico 1 201,
        modFiveReciprocalTerm squareCoset m) ≤ 137 / 50 := by
  have hsplit := Finset.sum_Ico_consecutive
    (modFiveReciprocalTerm squareCoset)
    (show 1 ≤ 101 by norm_num) (show 101 ≤ 201 by norm_num)
  have hsecond := globalMixedModFiveCoset_secondHundred_lt squareCoset
  cases squareCoset with
  | false =>
      have hfirst := modFiveNonsquareCoset_firstHundred_le
      rw [← hsplit]
      linarith
  | true =>
      have hfirst := modFiveSquareCoset_firstHundred_le
      rw [← hsplit]
      linarith

#print axioms globalMixedModFiveCoset_firstTwoHundred_le

end Erdos848
