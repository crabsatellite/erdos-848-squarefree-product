import Erdos848.TailTenMillionKernelRootProfileSound

namespace Erdos848

/-!
# Predecessor descent between root-profile prime jumps
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionKernelRootSmoothProfile_antitone_of_primeCounting_eq
    {row : TenMillionKernelRootRow} {supportLength M N : Nat}
    (hMpos : 0 < M)
    (hMN : M ≤ N)
    (hpMpos : 0 < M / row.split)
    (hpMN : M / row.split ≤ N / row.split)
    (hprime :
      Nat.primeCounting (N / row.split) =
        Nat.primeCounting (M / row.split)) :
    tenMillionKernelRootSmoothProfile row supportLength N ≤
      tenMillionKernelRootSmoothProfile row supportLength M := by
  let pM := M / row.split
  let pN := N / row.split
  let height : Rat :=
    (row.rootFactor * 2 ^ (supportLength + 1) : Nat)
  let survivors : Rat := row.survivorCeiling supportLength
  let primeDelta : Rat :=
    (Nat.primeCounting pM -
      Nat.primeCounting row.cutoff : Nat)
  let C : Rat := 4 + survivors / 3026
  have hMNQ : (M : Rat) ≤ N := by exact_mod_cast hMN
  have hpMNQ : (pM : Rat) ≤ pN := by exact_mod_cast hpMN
  have hMposQ : (0 : Rat) < M := by exact_mod_cast hMpos
  have hpMposQ : (0 : Rat) < pM := by
    exact_mod_cast hpMpos
  have hrecN :
      1 / 25 + 2 / (N : Rat) ≤
        1 / 25 + 2 / (M : Rat) := by
    gcongr
  unfold tenMillionKernelRootSmoothProfile
  dsimp only
  rw [hprime]
  change
    6 * (primeDelta + height * survivors) / N +
        3 * height * C * (1 / 25 + 2 / (N : Rat)) / pN ≤
      6 * (primeDelta + height * survivors) / M +
        3 * height * C * (1 / 25 + 2 / (M : Rat)) / pM
  have hfirst :
      6 * (primeDelta + height * survivors) / (N : Rat) ≤
        6 * (primeDelta + height * survivors) / (M : Rat) := by
    exact div_le_div_of_nonneg_left (by positivity) hMposQ hMNQ
  have hsecondNumerator :
      3 * height * C * (1 / 25 + 2 / (N : Rat)) ≤
        3 * height * C * (1 / 25 + 2 / (M : Rat)) := by
    gcongr
  have hsecond :
      3 * height * C * (1 / 25 + 2 / (N : Rat)) / (pN : Rat) ≤
        3 * height * C * (1 / 25 + 2 / (M : Rat)) / (pM : Rat) := by
    calc
      3 * height * C * (1 / 25 + 2 / (N : Rat)) / (pN : Rat) ≤
          3 * height * C * (1 / 25 + 2 / (M : Rat)) / (pN : Rat) := by
        exact div_le_div_of_nonneg_right hsecondNumerator (by positivity)
      _ ≤ 3 * height * C * (1 / 25 + 2 / (M : Rat)) / (pM : Rat) := by
        exact div_le_div_of_nonneg_left (by positivity) hpMposQ hpMNQ
  linarith

def TenMillionRootJumpCandidate
    (row : TenMillionKernelRootRow) (N : Nat) : Prop :=
  row.split ∣ N ∧ Nat.Prime (N / row.split)

lemma tenMillion_primeCounting_eq_pred_of_not_prime
    {n : Nat} (hn : 0 < n) (hnotPrime : ¬ Nat.Prime n) :
    Nat.primeCounting n = Nat.primeCounting (n - 1) := by
  rw [Nat.primeCounting, Nat.primeCounting]
  rw [show n - 1 + 1 = n by omega]
  exact Nat.count_succ_eq_count hnotPrime

theorem tenMillionKernelRootSmoothProfile_descent_of_not_candidate
    {row : TenMillionKernelRootRow} {supportLength N : Nat}
    (hLower : 10_000_000 < N)
    (hnotCandidate : ¬ TenMillionRootJumpCandidate row N) :
    tenMillionKernelRootSmoothProfile row supportLength N ≤
      tenMillionKernelRootSmoothProfile row supportLength (N - 1) := by
  have hPredPos : 0 < N - 1 := by omega
  have hpPredPos : 0 < (N - 1) / row.split := by
    cases row <;>
      norm_num [TenMillionKernelRootRow.split] at * <;> omega
  have hpMono :
      (N - 1) / row.split ≤ N / row.split :=
    Nat.div_le_div_right (by omega)
  apply tenMillionKernelRootSmoothProfile_antitone_of_primeCounting_eq
    hPredPos (by omega) hpPredPos hpMono
  by_cases hdiv : row.split ∣ N
  · have hnotPrime : ¬ Nat.Prime (N / row.split) := by
      intro hp
      exact hnotCandidate ⟨hdiv, hp⟩
    have hpPos : 0 < N / row.split := by
      cases row <;>
        norm_num [TenMillionKernelRootRow.split] at * <;> omega
    have hpred :
        (N - 1) / row.split = N / row.split - 1 := by
      cases row <;>
        norm_num [TenMillionKernelRootRow.split] at hdiv ⊢ <;>
        omega
    simpa [hpred] using
      tenMillion_primeCounting_eq_pred_of_not_prime
        hpPos hnotPrime
  · have hpred :
        (N - 1) / row.split = N / row.split := by
      cases row <;>
        norm_num [TenMillionKernelRootRow.split] at hdiv ⊢ <;>
        omega
    rw [hpred]

end Erdos848
