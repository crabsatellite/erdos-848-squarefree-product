import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailGlobalMixedEvenAllRows

namespace Erdos848

/-!
# The cutoff-23 `E3` tail at the unchanged R263 cut

The published `E3` row does not need a new transformed-root certificate.
We retain the already checked (coarser) cutoff-seven high-prime/root bound and
sharpen only the intermediate reciprocal-square sum by removing the five
explicit primes `11, 13, 17, 19, 23`.  This is enough for the row budget.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionSquareTail23Envelope : Rat :=
  64081802747648035629863 / 7596668444022826249000000

private def primesElevenThroughTwentyThree : Finset Nat :=
  {11, 13, 17, 19, 23}

theorem fiveMillionSquareTail23_kernel_close
    (s : Finset Nat)
    (hprime : forall p, p ∈ s -> Nat.Prime p)
    (hcut : forall p, p ∈ s -> 23 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) <=
      fiveMillionSquareTail23Envelope := by
  classical
  let extras := primesElevenThroughTwentyThree
  have hextrasPrime : forall p, p ∈ extras -> Nat.Prime p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyThree] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl <;> norm_num
  have hextrasCut : forall p, p ∈ extras -> 7 < p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyThree] at hp
    omega
  have hdisjoint : Disjoint s extras := by
    rw [Finset.disjoint_left]
    intro p hps hpe
    have hpLarge := hcut p hps
    simp [extras, primesElevenThroughTwentyThree] at hpe
    omega
  have hunionPrime : forall p, p ∈ s ∪ extras -> Nat.Prime p := by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · exact hprime p hp
    · exact hextrasPrime p hp
  have hunionCut : forall p, p ∈ s ∪ extras -> 7 < p := by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · have hpLarge := hcut p hp
      omega
    · exact hextrasCut p hp
  have htotal := fiveMillionSquareTail7_kernel_close
    (s ∪ extras) hunionPrime hunionCut
  have hsum :
      (∑ p ∈ s ∪ extras, reciprocalSquareQ p) =
        (∑ p ∈ s, reciprocalSquareQ p) +
          ∑ p ∈ extras, reciprocalSquareQ p := by
    exact Finset.sum_union hdisjoint
  rw [hsum] at htotal
  norm_num [extras, primesElevenThroughTwentyThree, reciprocalSquareQ,
    fiveMillionSquareTail7Envelope, fiveMillionSquareTail23Envelope] at htotal ⊢
  linarith

private theorem hallBaseTailSquareCount_ratio_le_of_globalMixedHigh23
    {N pivot : Nat} {B : Finset Nat} {highEnvelope : Rat}
    (hLower : 5_000_000 <= N)
    (hhigh :
      (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * Nat.primeCounting (N / 55)) / N <= highEnvelope) :
    hallBaseTailSquareCount N B 23 pivot / N <=
      2 * fiveMillionSquareTail23Envelope / 25 + highEnvelope := by
  have hN : 0 < N := by omega
  have hcutUpper : 23 <= N / 55 := by omega
  let primes := tailIntermediatePrimes 23 (N / 55)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 <= 23)
  have hprime : forall p, p ∈ primes -> Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : forall p, p ∈ primes -> 23 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail23_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
        2 * fiveMillionSquareTail23Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 23 (N / 55) hN
  have hhighSplit :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 23 : Nat) : Rat) / N <= highEnvelope := by
    have hsub : Nat.primeCounting (N / 55) - Nat.primeCounting 23 <=
        Nat.primeCounting (N / 55) := Nat.sub_le _ _
    calc
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 23 : Nat) : Rat) / N <=
        (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
          2 * Nat.primeCounting (N / 55)) / N := by
            rw [add_div]
            gcongr
      _ <= highEnvelope := hhigh
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 23 pivot / N <=
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 23 (N / 55))).card : Rat) / N +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N :=
      hsplit
    _ <=
        (2 * (∑ p ∈ tailIntermediatePrimes 23 (N / 55),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 23 : Nat) : Rat) / N) +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N := by
      gcongr
    _ <= 2 * fiveMillionSquareTail23Envelope / 25 + highEnvelope := by
      linarith

theorem hallBaseTailSquareCount_ratio_le_r263_evenThree23
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    hallBaseTailSquareCount N B 23 pivot / N <=
      2 * fiveMillionSquareTail23Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  exact hallBaseTailSquareCount_ratio_le_of_globalMixedHigh23
    (B := B) hLower
    (globalMixedEvenThreeHighPoints_allSupport
      hLower hBout hpivotResidual hpivotMod)

theorem hallBaseTailSquarePayment_threeTwo_r263_evenThree23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N <=
      3 * fiveMillionSquareTail23Envelope / 25 +
        (3 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  have hper : forall pivot, pivot ∈ pivots ->
      hallBaseTailSquareCount N B 23 pivot / N <=
        2 * fiveMillionSquareTail23Envelope / 25 +
          (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    exact hallBaseTailSquareCount_ratio_le_r263_evenThree23
      hLower hBout
      (fiveMillionValuationPart_subset_residual N B .evenThree hpivotPart)
      (fiveMillionValuationPart_evenThree hpivotPart)
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 23 pivot / N) <=
      3 * (2 * fiveMillionSquareTail23Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
    have h := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    have h' :
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 23 pivot / N) <=
        3 * (2 * fiveMillionSquareTail23Envelope / 25) +
          3 * ((2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
      simpa [hcard] using h
    calc
      _ <= 3 * (2 * fiveMillionSquareTail23Envelope / 25) +
          3 * ((2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := h'
      _ = 3 * (2 * fiveMillionSquareTail23Envelope / 25 +
          (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by ring
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 23 pivot) / 2 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 23 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 23 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (3 * (2 * fiveMillionSquareTail23Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * fiveMillionSquareTail23Envelope / 25 +
        (3 / 5 : Rat) * fiveMillionOddRoot7Envelope := by ring

#print axioms fiveMillionSquareTail23_kernel_close
#print axioms hallBaseTailSquareCount_ratio_le_r263_evenThree23
#print axioms hallBaseTailSquarePayment_threeTwo_r263_evenThree23_ratio_le

end Erdos848
