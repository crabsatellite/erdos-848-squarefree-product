import Erdos848.TailGlobalMixedReciprocalHundredCard

namespace Erdos848

set_option maxHeartbeats 0

theorem globalMixedModFiveCosetHundredBlock_sum_le
    (squareCoset : Bool) (j : ℕ) (hj : j < 29) :
    (∑ m ∈ Finset.Ico (201 + 100 * j) (201 + 100 * j + 100),
        modFiveReciprocalTerm squareCoset m) ≤
      (40 : ℚ) / (201 + 100 * j) := by
  rw [modFiveReciprocalSum_eq_filter]
  let block := modFiveCosetBlock squareCoset (201 + 100 * j) 100
  have hstartPos : (0 : ℚ) < 201 + 100 * j := by positivity
  calc
    (∑ m ∈ block, (1 : ℚ) / m) ≤
        ∑ _m ∈ block, (1 : ℚ) / (201 + 100 * j) := by
      apply Finset.sum_le_sum
      intro m hm
      have hmIco : m ∈ Finset.Ico (201 + 100 * j)
          (201 + 100 * j + 100) := (Finset.mem_filter.mp hm).1
      have hleQ : ((201 + 100 * j : ℕ) : ℚ) ≤ m := by
        exact_mod_cast (Finset.mem_Ico.mp hmIco).1
      push_cast at hleQ
      exact one_div_le_one_div_of_le hstartPos hleQ
    _ = (block.card : ℚ) / (201 + 100 * j) := by
      simp [div_eq_mul_inv]
    _ = (40 : ℚ) / (201 + 100 * j) := by
      rw [globalMixedModFiveCosetHundredBlock_card squareCoset j hj]
      norm_num

#print axioms globalMixedModFiveCosetHundredBlock_sum_le

end Erdos848
