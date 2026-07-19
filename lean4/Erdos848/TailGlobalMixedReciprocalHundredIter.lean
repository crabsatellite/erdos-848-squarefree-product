import Erdos848.TailGlobalMixedReciprocalHundredOneBlock

namespace Erdos848

set_option maxHeartbeats 0

theorem globalMixedModFiveCosetHundredBlocks_sum_le
    (squareCoset : Bool) :
    ∀ n ≤ 29,
      (∑ m ∈ Finset.Ico 201 (201 + 100 * n),
          modFiveReciprocalTerm squareCoset m) ≤
        ∑ j ∈ Finset.range n, (40 : ℚ) / (201 + 100 * j) := by
  intro n hn
  induction n with
  | zero => simp
  | succ n ih =>
      have hn : n < 29 := by omega
      have ih' := ih (by omega)
      have hsplit := Finset.sum_Ico_consecutive
        (modFiveReciprocalTerm squareCoset)
        (show 201 ≤ 201 + 100 * n by omega)
        (show 201 + 100 * n ≤ 201 + 100 * (n + 1) by omega)
      rw [← hsplit, Finset.sum_range_succ]
      exact add_le_add ih'
        (by simpa [Nat.succ_eq_add_one, Nat.mul_add, Nat.add_assoc,
              Nat.add_comm, Nat.add_left_comm] using
          globalMixedModFiveCosetHundredBlock_sum_le squareCoset n hn)

#print axioms globalMixedModFiveCosetHundredBlocks_sum_le

end Erdos848
