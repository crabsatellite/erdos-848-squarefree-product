import Erdos848.ProblemCore

namespace Erdos848

/-! Lightweight sharpness proof for the literal interval formulation. -/

private lemma original_mod25_divisibility
    (a b : ℕ) (ha : a % 25 = 7) (hb : b % 25 = 7) :
    25 ∣ (a * b + 1) := by
  have hmul : a * b % 25 = (a % 25) * (b % 25) % 25 :=
    Nat.mul_mod a b 25
  rw [ha, hb] at hmul
  have hzero : (a * b + 1) % 25 = 0 := by omega
  exact Nat.dvd_of_mod_eq_zero hzero

private lemma original_not_squarefree_of_dvd_25
    {n : ℕ} (h : 25 ∣ n) : ¬ Squarefree n := by
  intro hsq
  have hfiveSq : 5 ^ 2 ∣ n := by simpa using h
  have hunit : IsUnit (5 : ℕ) := hsq 5 hfiveSq
  have : (5 : ℕ) = 1 := Nat.isUnit_iff.mp hunit
  omega

/-- The literal residue class `7 mod 25` attains the paper's upper bound. -/
theorem originalA7_has_property (N : ℕ) :
    NonSquarefreeProductProp (OriginalA7 N) := by
  intro a ha b hb
  simp only [OriginalA7, Finset.mem_filter] at ha hb
  exact original_not_squarefree_of_dvd_25
    (original_mod25_divisibility a b ha.2 hb.2)

end Erdos848
