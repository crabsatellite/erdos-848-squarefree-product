import Erdos848.TailFiveMillionReciprocal

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedHundredTermUpper1000 : List ℕ :=
  [200, 133, 100, 80, 67, 58, 50, 45, 40, 37, 34, 31, 29, 27,
    25, 24, 23, 22, 20, 20, 19, 18, 17, 16, 16, 15, 15, 14, 14]

def globalMixedHundredTermUpper (j : ℕ) : ℚ :=
  (globalMixedHundredTermUpper1000.getD j 0 : ℚ) / 1000

theorem globalMixedHundredTerm_le_upper
    (j : ℕ) (hj : j < 29) :
    (40 : ℚ) / (201 + 100 * j) ≤ globalMixedHundredTermUpper j := by
  interval_cases j <;> norm_num [globalMixedHundredTermUpper,
    globalMixedHundredTermUpper1000]

theorem globalMixedHundredTermUpper_sum :
    (∑ j ∈ Finset.range 29, globalMixedHundredTermUpper j) =
      (1209 : ℚ) / 1000 := by
  norm_num [globalMixedHundredTermUpper, globalMixedHundredTermUpper1000,
    Finset.sum_range_succ]

theorem globalMixedModFiveCoset_tail_bound_lt :
    (∑ j ∈ Finset.range 29, (40 : ℚ) / (201 + 100 * j)) <
      5 / 4 := by
  have hsum :
      (∑ j ∈ Finset.range 29, (40 : ℚ) / (201 + 100 * j)) ≤
        ∑ j ∈ Finset.range 29, globalMixedHundredTermUpper j := by
    apply Finset.sum_le_sum
    intro j hj
    exact globalMixedHundredTerm_le_upper j (Finset.mem_range.mp hj)
  rw [globalMixedHundredTermUpper_sum] at hsum
  exact hsum.trans_lt (by norm_num)

#print axioms globalMixedModFiveCoset_tail_bound_lt

end Erdos848
