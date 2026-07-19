import Erdos848.TailGlobalMixedAllRows
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-!
# Unconditional one-pivot Hall tail at the fixed five-million cut
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The global mixed-support theorem closes the literal one-pivot tail for
every odd residual pivot and every `N ≥ 5,000,000`. -/
theorem hallBaseTailSquareCount_ratio_le_globalMixed_actual
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    hallBaseTailSquareCount N B 7 pivot / N ≤
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
  have hN : 0 < N := by omega
  have hcutUpper : 7 ≤ N / 55 := by omega
  let primes := tailIntermediatePrimes 7 (N / 55)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 ≤ 7)
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, 7 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail7_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 ≤
        2 * fiveMillionSquareTail7Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 7 (N / 55) hN
  have hhigh := globalMixedHighPoints_allSupport
    hLower hBout hpivotResidual hpivotOdd
  have hhighSplit :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : ℕ) : ℚ) / N ≤
        fiveMillionOddRoot7Envelope / 3 := by
    have hsub : Nat.primeCounting (N / 55) - Nat.primeCounting 7 ≤
        Nat.primeCounting (N / 55) := Nat.sub_le _ _
    calc
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : ℕ) : ℚ) / N ≤
        (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) +
          2 * Nat.primeCounting (N / 55)) / N := by
            rw [add_div]
            gcongr
      _ ≤ fiveMillionOddRoot7Envelope / 3 := hhigh
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 7 pivot / N ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 7 (N / 55))).card : ℚ) / N +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes 7 (N / 55),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : ℕ) : ℚ) / N) +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) / N := by
      gcongr
    _ ≤ 2 * fiveMillionSquareTail7Envelope / 25 +
        fiveMillionOddRoot7Envelope / 3 := by
      linarith
    _ = (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
      ring

/-- Six actual odd residual pivots carry the full literal tail certificate
without an upper endpoint or an ambient-`N` scan. -/
def globalMixedBaseTailCertificate_actual
    {N : ℕ} {B pivots : Finset ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    FiveMillionBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_actual
      hLower hBout (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)

#print axioms hallBaseTailSquareCount_ratio_le_globalMixed_actual
#print axioms globalMixedBaseTailCertificate_actual

end Erdos848
