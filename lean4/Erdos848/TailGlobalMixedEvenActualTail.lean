import Erdos848.TailGlobalMixedEvenAllRows
import Erdos848.TailGlobalMixedActualTail

namespace Erdos848

/-!
# Literal one-pivot Hall tails for the three even valuation classes

The intermediate-prime square tail is independent of the pivot parity.  The
only class-specific input is the already checked actual high-point row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_of_globalMixedHigh
    {N pivot : Nat} {B : Finset Nat} {highEnvelope : Rat}
    (hLower : 5_000_000 <= N)
    (hhigh :
      (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * Nat.primeCounting (N / 55)) / N <= highEnvelope) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * fiveMillionSquareTail7Envelope / 25 + highEnvelope := by
  have hN : 0 < N := by omega
  have hcutUpper : 7 <= N / 55 := by omega
  let primes := tailIntermediatePrimes 7 (N / 55)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 <= 7)
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, 7 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail7_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
        2 * fiveMillionSquareTail7Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 7 (N / 55) hN
  have hhighSplit :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : Nat) : Rat) / N <= highEnvelope := by
    have hsub : Nat.primeCounting (N / 55) - Nat.primeCounting 7 <=
        Nat.primeCounting (N / 55) := Nat.sub_le _ _
    calc
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : Nat) : Rat) / N <=
        (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
          2 * Nat.primeCounting (N / 55)) / N := by
            rw [add_div]
            gcongr
      _ <= highEnvelope := hhigh
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 7 pivot / N <=
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 7 (N / 55))).card : Rat) / N +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N :=
      hsplit
    _ <=
        (2 * (∑ p ∈ tailIntermediatePrimes 7 (N / 55),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 7 : Nat) : Rat) / N) +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N := by
      gcongr
    _ <= 2 * fiveMillionSquareTail7Envelope / 25 + highEnvelope := by
      linarith

theorem hallBaseTailSquareCount_ratio_le_globalMixed_evenOne
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
  have hhigh := globalMixedEvenOneHighPoints_allSupport
    hLower hBout hpivotResidual hpivotMod
  have htail := hallBaseTailSquareCount_ratio_le_of_globalMixedHigh
    (B := B) hLower hhigh
  calc
    hallBaseTailSquareCount N B 7 pivot / N <=
        2 * fiveMillionSquareTail7Envelope / 25 +
          fiveMillionOddRoot7Envelope / 3 := htail
    _ = (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by ring

theorem hallBaseTailSquareCount_ratio_le_globalMixed_evenTwo
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
  have hhigh := globalMixedEvenTwoHighPoints_allSupport
    hLower hBout hpivotResidual hpivotMod
  have htail := hallBaseTailSquareCount_ratio_le_of_globalMixedHigh
    (B := B) hLower hhigh
  calc
    hallBaseTailSquareCount N B 7 pivot / N <=
        2 * fiveMillionSquareTail7Envelope / 25 +
          fiveMillionOddRoot7Envelope / 3 := htail
    _ = (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by ring

theorem hallBaseTailSquareCount_ratio_le_globalMixed_evenThree
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * fiveMillionSquareTail7Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  exact hallBaseTailSquareCount_ratio_le_of_globalMixedHigh
    (B := B) hLower
    (globalMixedEvenThreeHighPoints_allSupport
      hLower hBout hpivotResidual hpivotMod)

def globalMixedEvenOneBaseTailCertificate_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsMod : ∀ pivot ∈ pivots, pivot % 4 = 2) :
    FiveMillionBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_evenOne
      hLower hBout (hpivotsResidual hpivot) (hpivotsMod pivot hpivot)

def globalMixedEvenTwoBaseTailCertificate_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsMod : ∀ pivot ∈ pivots, pivot % 8 = 4) :
    FiveMillionBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_evenTwo
      hLower hBout (hpivotsResidual hpivot) (hpivotsMod pivot hpivot)

structure FiveMillionEvenThreeBaseTailCertificate
    (N : Nat) (B pivots : Finset Nat) : Prop where
  pivotsCard : pivots.card = 3
  perPivot : ∀ pivot ∈ pivots,
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * fiveMillionSquareTail7Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope

theorem hallBaseTailSquarePayment_threeTwo_evenThree_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (certificate : FiveMillionEvenThreeBaseTailCertificate N B pivots) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      (3 / 5 : Rat) * fiveMillionOddRoot7Envelope +
        3 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      3 * (2 * fiveMillionSquareTail7Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      certificate.perPivot pivot hpivot
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) <=
        3 * (2 * fiveMillionSquareTail7Envelope / 25) +
          3 * ((2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
            simpa [certificate.pivotsCard] using h
      _ = 3 * (2 * fiveMillionSquareTail7Envelope / 25 +
          (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by ring
  unfold hallBaseTailSquarePayment
  rw [certificate.pivotsCard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (3 * (2 * fiveMillionSquareTail7Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope)) / 2 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (3 / 5 : Rat) * fiveMillionOddRoot7Envelope +
        3 * fiveMillionSquareTail7Envelope / 25 := by ring

def globalMixedEvenThreeBaseTailCertificate_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 3)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsMod : ∀ pivot ∈ pivots, pivot % 8 = 0) :
    FiveMillionEvenThreeBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_evenThree
      hLower hBout (hpivotsResidual hpivot) (hpivotsMod pivot hpivot)

#print axioms hallBaseTailSquareCount_ratio_le_globalMixed_evenOne
#print axioms hallBaseTailSquareCount_ratio_le_globalMixed_evenTwo
#print axioms hallBaseTailSquareCount_ratio_le_globalMixed_evenThree
#print axioms globalMixedEvenOneBaseTailCertificate_actual
#print axioms globalMixedEvenTwoBaseTailCertificate_actual
#print axioms hallBaseTailSquarePayment_threeTwo_evenThree_ratio_le
#print axioms globalMixedEvenThreeBaseTailCertificate_actual

end Erdos848
