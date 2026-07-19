import Erdos848.TailR263EvenThreeTail

namespace Erdos848

/-!
# The cutoff-19 `E3` tail at the unchanged R263 cut

Only the prime `23` moves from the finite side to the square tail relative to
the cutoff-23 certificate.  The high-prime/root term is unchanged.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionSquareTail19Envelope : Rat :=
  fiveMillionSquareTail23Envelope + reciprocalSquareQ 23

private def primesElevenThroughNineteen : Finset Nat :=
  {11, 13, 17, 19}

theorem fiveMillionSquareTail19_kernel_close
    (s : Finset Nat)
    (hprime : forall p, p ∈ s -> Nat.Prime p)
    (hcut : forall p, p ∈ s -> 19 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) <=
      fiveMillionSquareTail19Envelope := by
  classical
  let extras := primesElevenThroughNineteen
  have hextrasPrime : forall p, p ∈ extras -> Nat.Prime p := by
    intro p hp
    simp [extras, primesElevenThroughNineteen] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> norm_num
  have hextrasCut : forall p, p ∈ extras -> 7 < p := by
    intro p hp
    simp [extras, primesElevenThroughNineteen] at hp
    omega
  have hdisjoint : Disjoint s extras := by
    rw [Finset.disjoint_left]
    intro p hps hpe
    have hpLarge := hcut p hps
    simp [extras, primesElevenThroughNineteen] at hpe
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
  norm_num [extras, primesElevenThroughNineteen, reciprocalSquareQ,
    fiveMillionSquareTail7Envelope, fiveMillionSquareTail23Envelope,
    fiveMillionSquareTail19Envelope] at htotal ⊢
  linarith

private theorem hallBaseTailSquareCount_ratio_le_of_globalMixedHigh19
    {N pivot : Nat} {B : Finset Nat} {highEnvelope : Rat}
    (hLower : 5_000_000 <= N)
    (hhigh :
      (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * Nat.primeCounting (N / 55)) / N <= highEnvelope) :
    hallBaseTailSquareCount N B 19 pivot / N <=
      2 * fiveMillionSquareTail19Envelope / 25 + highEnvelope := by
  have hN : 0 < N := by omega
  have hcutUpper : 19 <= N / 55 := by omega
  let primes := tailIntermediatePrimes 19 (N / 55)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 <= 19)
  have hprime : forall p, p ∈ primes -> Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : forall p, p ∈ primes -> 19 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail19_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
        2 * fiveMillionSquareTail19Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 19 (N / 55) hN
  have hhighSplit :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 19 : Nat) : Rat) / N <= highEnvelope := by
    have hsub : Nat.primeCounting (N / 55) - Nat.primeCounting 19 <=
        Nat.primeCounting (N / 55) := Nat.sub_le _ _
    calc
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 19 : Nat) : Rat) / N <=
        (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
          2 * Nat.primeCounting (N / 55)) / N := by
            rw [add_div]
            gcongr
      _ <= highEnvelope := hhigh
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 19 pivot / N <=
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 19 (N / 55))).card : Rat) / N +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N :=
      hsplit
    _ <=
        (2 * (∑ p ∈ tailIntermediatePrimes 19 (N / 55),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 19 : Nat) : Rat) / N) +
          ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N := by
      gcongr
    _ <= 2 * fiveMillionSquareTail19Envelope / 25 + highEnvelope := by
      linarith

theorem hallBaseTailSquareCount_ratio_le_r263_evenThree19
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    hallBaseTailSquareCount N B 19 pivot / N <=
      2 * fiveMillionSquareTail19Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  exact hallBaseTailSquareCount_ratio_le_of_globalMixedHigh19
    (B := B) hLower
    (globalMixedEvenThreeHighPoints_allSupport
      hLower hBout hpivotResidual hpivotMod)

theorem hallBaseTailSquarePayment_threeTwo_r263_evenThree19_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N <=
      3 * fiveMillionSquareTail19Envelope / 25 +
        (3 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  have hper : forall pivot, pivot ∈ pivots ->
      hallBaseTailSquareCount N B 19 pivot / N <=
        2 * fiveMillionSquareTail19Envelope / 25 +
          (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    exact hallBaseTailSquareCount_ratio_le_r263_evenThree19
      hLower hBout
      (fiveMillionValuationPart_subset_residual N B .evenThree hpivotPart)
      (fiveMillionValuationPart_evenThree hpivotPart)
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 19 pivot / N) <=
      3 * (2 * fiveMillionSquareTail19Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
    have h := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    have h' :
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 19 pivot / N) <=
        3 * (2 * fiveMillionSquareTail19Envelope / 25) +
          3 * ((2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by
      simpa [hcard] using h
    calc
      _ <= 3 * (2 * fiveMillionSquareTail19Envelope / 25) +
          3 * ((2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := h'
      _ = 3 * (2 * fiveMillionSquareTail19Envelope / 25 +
          (2 / 5 : Rat) * fiveMillionOddRoot7Envelope) := by ring
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 19 pivot) / 2 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 19 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 19 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (3 * (2 * fiveMillionSquareTail19Envelope / 25 +
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * fiveMillionSquareTail19Envelope / 25 +
        (3 / 5 : Rat) * fiveMillionOddRoot7Envelope := by ring

#print axioms fiveMillionSquareTail19_kernel_close
#print axioms hallBaseTailSquareCount_ratio_le_r263_evenThree19
#print axioms hallBaseTailSquarePayment_threeTwo_r263_evenThree19_ratio_le

end Erdos848
