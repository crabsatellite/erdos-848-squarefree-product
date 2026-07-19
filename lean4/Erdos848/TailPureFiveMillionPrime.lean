import Erdos848.GeneratedTailPrimeIntervalCoverage.Certificate
import Erdos848.TailPureFiveMillionBudget
import Erdos848.TailPrimeProgressionCounting

namespace Erdos848

/-! ## Prime-terminal payment at the five-million endpoint -/

set_option maxHeartbeats 0

theorem pureFiveMillion_primeCounting_le :
    Nat.primeCounting 192_307 ≤ 18_311 := by
  rw [← GeneratedTailPrimeIntervalCoverage.primeCounting_204081]
  exact Nat.monotone_primeCounting (by norm_num)

theorem pureFiveMillion_mediumPrimes_card_le :
    (tailIntermediatePrimes 47 192_307).card ≤ 18_311 := by
  have hsubset : tailIntermediatePrimes 47 192_307 ⊆
      Nat.primesLE 204_081 := by
    intro p hp
    have hdata := mem_tailIntermediatePrimes.mp hp
    exact Nat.mem_primesLE.mpr
      ⟨hdata.2.2.trans (by norm_num), hdata.1⟩
  calc
    (tailIntermediatePrimes 47 192_307).card ≤
        (Nat.primesLE 204_081).card := Finset.card_le_card hsubset
    _ = Nat.primeCounting 204_081 :=
      Nat.primesLE_card_eq_primeCounting 204_081
    _ = 18_311 :=
      GeneratedTailPrimeIntervalCoverage.primeCounting_204081

/-- The medium square-density term and one terminal class for each prime in
the retained window fit the public relaxed envelope. -/
theorem pureFiveMillion_medium_payment_le :
    (5_000_000 : ℚ) * 3_887 / (25 * 1_000_000) +
        ((Nat.primeCounting 192_307 - 15 : ℕ) : ℚ) ≤
      pureFiveMillionMediumEnvelope := by
  have hcount := pureFiveMillion_primeCounting_le
  have hnat : Nat.primeCounting 192_307 - 15 ≤ 18_296 := by
    omega
  have hq :
      ((Nat.primeCounting 192_307 - 15 : ℕ) : ℚ) ≤ 18_296 := by
    exact_mod_cast hnat
  calc
    (5_000_000 : ℚ) * 3_887 / (25 * 1_000_000) +
        ((Nat.primeCounting 192_307 - 15 : ℕ) : ℚ) ≤
        (5_000_000 : ℚ) * 3_887 / (25 * 1_000_000) + 18_296 :=
      add_le_add_right hq _
    _ ≤ pureFiveMillionMediumEnvelope := by
      norm_num [pureFiveMillionMediumEnvelope]

theorem pureFiveMillion_medium_numeric_payment_le :
    (5_000_000 : ℚ) * 3_887 / (25 * 1_000_000) + 18_311 ≤
      pureFiveMillionMediumEnvelope := by
  norm_num [pureFiveMillionMediumEnvelope]

#print axioms pureFiveMillion_primeCounting_le
#print axioms pureFiveMillion_mediumPrimes_card_le
#print axioms pureFiveMillion_medium_payment_le
#print axioms pureFiveMillion_medium_numeric_payment_le

end Erdos848
