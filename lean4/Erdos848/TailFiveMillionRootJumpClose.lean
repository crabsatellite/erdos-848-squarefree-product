import Erdos848.TailFiveMillionBudget
import Erdos848.GeneratedTailRootJumpCoverage.Certificate
import Erdos848.GeneratedTailRootJumpCoverage.LowerEndpointCertificate

namespace Erdos848

/-! ## Close the controlling `k = 5` root row on the full five-million interval -/

def fiveMillionOddRoot7Value (N : ℕ) : ℚ :=
  transformedRootRow N (N / 49)
    (Nat.primeCounting (N / 49) - 4)
    fiveMillionOddRoot7Height fiveMillionOddRoot7Survivors

def fiveMillionOddRoot7JumpCandidate (N : ℕ) : Prop :=
  49 ∣ N ∧ Nat.Prime (N / 49)

theorem primeCounting_eq_pred_of_not_prime
    {n : ℕ} (hn : 0 < n) (hnotPrime : ¬ Nat.Prime n) :
    Nat.primeCounting n = Nat.primeCounting (n - 1) := by
  rw [Nat.primeCounting, Nat.primeCounting]
  rw [show n - 1 + 1 = n by omega]
  exact Nat.count_succ_eq_count hnotPrime

theorem fiveMillionOddRoot7_lower_le :
    fiveMillionOddRoot7Value 5_000_000 ≤
      fiveMillionOddRoot7Envelope := by
  norm_num [fiveMillionOddRoot7Value, transformedRootRow,
    GeneratedTailRootJumpCoverage.primeCounting_102040,
    fiveMillionOddRoot7Height, fiveMillionOddRoot7Survivors,
    fiveMillionOddRoot7Envelope]

theorem fiveMillionOddRoot7_candidate_le
    {N : ℕ}
    (hlower : 5_000_000 < N)
    (hupper : N < 10_000_000)
    (hcandidate : fiveMillionOddRoot7JumpCandidate N) :
    fiveMillionOddRoot7Value N ≤ fiveMillionOddRoot7Envelope := by
  rcases hcandidate with ⟨hdiv, hp⟩
  have hmul : 49 * (N / 49) = N := by
    simpa [Nat.mul_comm] using Nat.div_mul_cancel hdiv
  have hjump :=
    GeneratedTailRootJumpCoverage.fiveMillionOddRoot7_all_prime_jumps_le
      (N / 49) hp (by omega) (by omega)
  simpa [fiveMillionOddRoot7Value, hmul] using hjump

theorem fiveMillionOddRoot7_descent_of_not_candidate
    {N : ℕ}
    (hlower : 5_000_000 < N)
    (_hupper : N < 10_000_000)
    (hnotCandidate : ¬ fiveMillionOddRoot7JumpCandidate N) :
    fiveMillionOddRoot7Value N ≤ fiveMillionOddRoot7Value (N - 1) := by
  have hNpos : 0 < N := by omega
  have hPredPos : 0 < N - 1 := by omega
  have hYpos : 0 < N / 49 := by omega
  by_cases hdiv : 49 ∣ N
  · have hnotPrime : ¬ Nat.Prime (N / 49) := by
      intro hp
      exact hnotCandidate ⟨hdiv, hp⟩
    have hmul : 49 * (N / 49) = N := by
      simpa [Nat.mul_comm] using Nat.div_mul_cancel hdiv
    have hquotPred : (N - 1) / 49 = N / 49 - 1 := by
      omega
    have hpi := primeCounting_eq_pred_of_not_prime hYpos hnotPrime
    unfold fiveMillionOddRoot7Value
    rw [hquotPred, ← hpi]
    exact transformedRootRow_antitone hPredPos (by omega)
      (by omega) (by omega)
  · have hmod : N % 49 ≠ 0 := by
      simpa [Nat.dvd_iff_mod_eq_zero] using hdiv
    have hquotPred : (N - 1) / 49 = N / 49 := by
      omega
    unfold fiveMillionOddRoot7Value
    rw [hquotPred]
    exact transformedRootRow_antitone hPredPos hYpos (by omega) le_rfl

theorem fiveMillionOddRoot7_all_N_le
    (N : ℕ)
    (hlower : 5_000_000 ≤ N)
    (hupper : N < 10_000_000) :
    fiveMillionOddRoot7Value N ≤ fiveMillionOddRoot7Envelope := by
  classical
  exact interval_bound_of_predecessor_descent
    (value := fiveMillionOddRoot7Value)
    (candidate := fiveMillionOddRoot7JumpCandidate)
    fiveMillionOddRoot7_lower_le
    (fun M hMlower hMupper hcandidate =>
      fiveMillionOddRoot7_candidate_le hMlower hMupper hcandidate)
    (fun M hMlower hMupper hnotCandidate =>
      fiveMillionOddRoot7_descent_of_not_candidate
        hMlower hMupper hnotCandidate)
    N hlower hupper

#print axioms fiveMillionOddRoot7_all_N_le

end Erdos848
