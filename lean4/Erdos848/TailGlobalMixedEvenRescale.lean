import Erdos848.TailGlobalMixedEvenSupportClass
import Erdos848.TailGlobalMixedPrimeSemantics

namespace Erdos848

/-!
# Exact E3 rescaling at the five-million cut

The global odd-row checker already controls an affine prime-counting row.
For an `E3` pivot the two-adic root factor is four, but the transformed
quotient occupies only one class modulo eight.  The paper's three-pivot
budget has room for a `6/5` multiple of the odd root envelope.

The only extra arithmetic input is forced by the same fixed cut:
`N / 55 >= 90_113`, so the existing certified prefix gives
`primeCounting (N / 55) >= 8727`.  No ambient interval is scanned here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedPrimeCounting_ge_8727
    {N : Nat} (hLower : 5_000_000 <= N) :
    8727 <= Nat.primeCounting (N / globalMixedSplit) := by
  have hy : 90_113 <= N / globalMixedSplit := by
    norm_num [globalMixedSplit]
    omega
  have hmono := Nat.monotone_primeCounting hy
  rw [GeneratedTailGlobalMixedSupportCoverage.primeCounting_90113] at hmono
  exact hmono

theorem globalMixedEvenThree_checker_coefficient_paid
    (coefficient : Nat) :
    5 * coefficient <=
      6 * globalMixedEvenThreeCheckerCoefficient100 coefficient + 872_700 := by
  unfold globalMixedEvenThreeCheckerCoefficient100
  by_cases hpaid : 5 * coefficient <= 872_700
  · omega
  · let debit := 5 * coefficient - 872_700
    have hdebit : 0 < debit := by
      dsimp [debit]
      omega
    have hmod : (debit + 5) % 6 < 6 :=
      Nat.mod_lt _ (by norm_num)
    have hdecomp := Nat.mod_add_div (debit + 5) 6
    have hceil : debit <= 6 * ((debit + 5) / 6) := by
      omega
    dsimp [debit] at hceil
    omega

/-- A successful old checker row for the debited coefficient proves the
literal E3 row with the `6/5` allowance used by the three-pivot budget. -/
theorem globalMixedEvenThree_row_of_checker
    {N coefficient : Nat}
    (hLower : 5_000_000 <= N)
    (hchecker :
      (((globalMixedEvenThreeCheckerCoefficient100 coefficient : Rat) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N) <=
        fiveMillionOddRoot7Envelope / 6) :
    (((coefficient : Rat) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) <=
      (6 / 5 : Rat) * (fiveMillionOddRoot7Envelope / 6) := by
  let checked := globalMixedEvenThreeCheckerCoefficient100 coefficient
  let primeCount := Nat.primeCounting (N / globalMixedSplit)
  have hprime : 8727 <= primeCount :=
    globalMixedPrimeCounting_ge_8727 hLower
  have hcoefficient :=
    globalMixedEvenThree_checker_coefficient_paid coefficient
  have hnat :
      5 * (coefficient + 100 * primeCount) <=
        6 * (checked + 100 * primeCount) := by
    dsimp [checked]
    omega
  have hq :
      (5 : Rat) * ((coefficient : Rat) / 100 + primeCount) <=
        6 * ((checked : Rat) / 100 + primeCount) := by
    have hcast :
        ((5 * (coefficient + 100 * primeCount) : Nat) : Rat) <=
          ((6 * (checked + 100 * primeCount) : Nat) : Rat) := by
      exact_mod_cast hnat
    push_cast at hcast
    linarith
  have hN : (0 : Rat) < N := by
    exact_mod_cast (show 0 < N by omega)
  have hnum :
      (coefficient : Rat) / 100 + primeCount <=
        (6 / 5 : Rat) * ((checked : Rat) / 100 + primeCount) := by
    linarith
  calc
    (((coefficient : Rat) / 100 + primeCount) / N) <=
        ((6 / 5 : Rat) * ((checked : Rat) / 100 + primeCount)) / N :=
      div_le_div_of_nonneg_right hnum hN.le
    _ = (6 / 5 : Rat) *
        (((checked : Rat) / 100 + primeCount) / N) := by ring
    _ <= (6 / 5 : Rat) * (fiveMillionOddRoot7Envelope / 6) := by
      gcongr

#print axioms globalMixedPrimeCounting_ge_8727
#print axioms globalMixedEvenThree_checker_coefficient_paid
#print axioms globalMixedEvenThree_row_of_checker

end Erdos848
