import Erdos848.TailHybridSmallPrimeList

namespace Erdos848

/-!
# Monotonicity of the cached small-prime payment
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem paperSmallPrimePayment_mono
    {N upper : Nat} (selection : PaperDiagonalSelection)
    (hN : N ≤ upper) :
    paperSmallPrimePayment N selection ≤
      paperSmallPrimePayment upper selection := by
  unfold paperSmallPrimePayment
  rw [← paperSmallDiagonalPrimesFast_eq]
  apply Nat.mul_le_mul_left
  apply Finset.sum_le_sum
  intro p hp
  exact Nat.add_le_add_right
    (Nat.div_le_div_right (Nat.add_le_add_right hN 1)) 1

#print axioms paperSmallPrimePayment_mono

end Erdos848
