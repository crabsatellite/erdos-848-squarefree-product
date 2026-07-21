import Erdos848.TailTenMillionActualTail
import Erdos848.TailGlobalMixedValuationPartition
import Erdos848.TailR263EvenThreeTail19

namespace Erdos848

/-!
# Literal even-pivot Hall tails on the ten-million block

The generated root package supplies only finite high-point inequalities.
This file combines those checked witnesses with the existing reciprocal-square
bound.  The cutoff-29 rows subtract the six explicit primes
`11, 13, 17, 19, 23, 29`; Lean checks the resulting rational identity.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private def primesElevenThroughTwentyNine : Finset Nat :=
  {11, 13, 17, 19, 23, 29}

theorem tenMillionSquareTail29_kernel_close
    (s : Finset Nat)
    (hprime : forall p, p ∈ s -> Nat.Prime p)
    (hcut : forall p, p ∈ s -> 29 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) <= tenMillionSquareTail29 := by
  classical
  let extras := primesElevenThroughTwentyNine
  have hextrasPrime : forall p, p ∈ extras -> Nat.Prime p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyNine] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> norm_num
  have hextrasCut : forall p, p ∈ extras -> 7 < p := by
    intro p hp
    simp [extras, primesElevenThroughTwentyNine] at hp
    omega
  have hdisjoint : Disjoint s extras := by
    rw [Finset.disjoint_left]
    intro p hps hpe
    have hpLarge := hcut p hps
    simp [extras, primesElevenThroughTwentyNine] at hpe
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
  have htotal :=
    fiveMillionSquareTail7_kernel_close
      (s ∪ extras) hunionPrime hunionCut
  have hsum :
      (∑ p ∈ s ∪ extras, reciprocalSquareQ p) =
        (∑ p ∈ s, reciprocalSquareQ p) +
          ∑ p ∈ extras, reciprocalSquareQ p := by
    exact Finset.sum_union hdisjoint
  rw [hsum] at htotal
  norm_num [extras, primesElevenThroughTwentyNine, reciprocalSquareQ,
    fiveMillionSquareTail7Envelope, tenMillionSquareTail29] at htotal ⊢
  linarith

private theorem hallBaseTailSquareCount_ratio_le_tenMillion_row
    {N pivot cutoff split : Nat} {B : Finset Nat}
    {squareEnvelope rootEnvelope : Rat}
    (hN : 0 < N)
    (hcutUpper : cutoff <= N / split)
    (hfiveCutoff : 5 <= cutoff)
    (hsquare :
      forall s : Finset Nat,
        (forall p, p ∈ s -> Nat.Prime p) ->
        (forall p, p ∈ s -> cutoff < p) ->
        (∑ p ∈ s, reciprocalSquareQ p) <= squareEnvelope)
    (hhigh :
      (((twoBaseHighTailSquarePoints N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N <=
            rootEnvelope / 3) :
    hallBaseTailSquareCount N B cutoff pivot / N <=
      2 * squareEnvelope / 25 + rootEnvelope / 3 := by
  let primes := tailIntermediatePrimes cutoff (N / split)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper hfiveCutoff
  have hprime : forall p, p ∈ primes -> Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : forall p, p ∈ primes -> cutoff < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquareBound := hsquare primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
        2 * squareEnvelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot cutoff (N / split) hN
  dsimp [primes] at hmedium hsquareBound hmain
  calc
    hallBaseTailSquareCount N B cutoff pivot / N <=
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff (N / split))).card : Rat) / N +
        ((twoBaseHighTailSquarePoints N pivot
          (N / split)).card : Rat) / N := hsplit
    _ <=
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff (N / split),
            reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / split) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints N pivot
          (N / split)).card : Rat) / N := by
      gcongr
    _ =
        2 * (∑ p ∈ tailIntermediatePrimes cutoff (N / split),
            reciprocalSquareQ p) / 25 +
        (((twoBaseHighTailSquarePoints N pivot
            (N / split)).card : Rat) +
          2 * ((Nat.primeCounting (N / split) -
            Nat.primeCounting cutoff : Nat) : Rat)) / N := by
      ring
    _ <= 2 * squareEnvelope / 25 + rootEnvelope / 3 :=
      add_le_add hmain hhigh

private theorem tenMillionHighAtLaterCutoff_of_cutoff7
    {N pivot split cutoff : Nat} {rootEnvelope : Rat}
    (hN : 0 < N)
    (hsub :
      Nat.primeCounting (N / split) - Nat.primeCounting cutoff <=
        Nat.primeCounting (N / split) - Nat.primeCounting 7)
    (hhigh7 :
      (((twoBaseHighTailSquarePoints N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting 7 : Nat) : Rat)) / N <=
            rootEnvelope / 3) :
    (((twoBaseHighTailSquarePoints N pivot (N / split)).card : Rat) +
      2 * ((Nat.primeCounting (N / split) -
        Nat.primeCounting cutoff : Nat) : Rat)) / N <=
          rootEnvelope / 3 := by
  calc
    (((twoBaseHighTailSquarePoints N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N <=
      (((twoBaseHighTailSquarePoints N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting 7 : Nat) : Rat)) / N := by
        have hsubQ :
            (((Nat.primeCounting (N / split) -
              Nat.primeCounting cutoff : Nat) : Rat)) ≤
            (((Nat.primeCounting (N / split) -
              Nat.primeCounting 7 : Nat) : Rat)) := by
          exact_mod_cast hsub
        have htwo :
            (2 : Rat) * ((Nat.primeCounting (N / split) -
              Nat.primeCounting cutoff : Nat) : Rat) ≤
            (2 : Rat) * ((Nat.primeCounting (N / split) -
              Nat.primeCounting 7 : Nat) : Rat) :=
          mul_le_mul_of_nonneg_left hsubQ (by norm_num)
        apply div_le_div_of_nonneg_right _ (by exact_mod_cast hN.le)
        exact add_le_add le_rfl htwo
    _ <= rootEnvelope / 3 := hhigh7

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenOne7
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV1 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v1.split)
    (squareEnvelope := tenMillionSquareTail7)
    (rootEnvelope := tenMillionRootV1) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · intro s hprime hcut
    simpa [tenMillionSquareTail7, fiveMillionSquareTail7Envelope] using
      fiveMillionSquareTail7_kernel_close s hprime hcut
  · simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV1] using
      actualTenMillionEvenOneHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo7
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV2 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v2.split)
    (squareEnvelope := tenMillionSquareTail7)
    (rootEnvelope := tenMillionRootV2) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · intro s hprime hcut
    simpa [tenMillionSquareTail7, fiveMillionSquareTail7Envelope] using
      fiveMillionSquareTail7_kernel_close s hprime hcut
  · simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV2] using
      actualTenMillionEvenTwoHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenThree7
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    hallBaseTailSquareCount N B 7 pivot / N <=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV3 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v3.split)
    (squareEnvelope := tenMillionSquareTail7)
    (rootEnvelope := tenMillionRootV3) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · intro s hprime hcut
    simpa [tenMillionSquareTail7, fiveMillionSquareTail7Envelope] using
      fiveMillionSquareTail7_kernel_close s hprime hcut
  · simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV3] using
      actualTenMillionEvenThreeHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenOne29
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    hallBaseTailSquareCount N B 29 pivot / N <=
      2 * tenMillionSquareTail29 / 25 + tenMillionRootV1 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v1.split)
    (squareEnvelope := tenMillionSquareTail29)
    (rootEnvelope := tenMillionRootV1) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · exact tenMillionSquareTail29_kernel_close
  · apply tenMillionHighAtLaterCutoff_of_cutoff7 hN
    · have hpi7 : Nat.primeCounting 7 = 4 := by decide
      have hpi29 : Nat.primeCounting 29 = 10 := by decide
      rw [hpi7, hpi29]
      omega
    simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV1] using
      actualTenMillionEvenOneHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo29
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    hallBaseTailSquareCount N B 29 pivot / N <=
      2 * tenMillionSquareTail29 / 25 + tenMillionRootV2 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v2.split)
    (squareEnvelope := tenMillionSquareTail29)
    (rootEnvelope := tenMillionRootV2) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · exact tenMillionSquareTail29_kernel_close
  · apply tenMillionHighAtLaterCutoff_of_cutoff7 hN
    · have hpi7 : Nat.primeCounting 7 = 4 := by decide
      have hpi29 : Nat.primeCounting 29 = 10 := by decide
      rw [hpi7, hpi29]
      omega
    simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV2] using
      actualTenMillionEvenTwoHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenOne23
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    hallBaseTailSquareCount N B 23 pivot / N <=
      2 * tenMillionSquareTail23 / 25 +
        tenMillionRootV1 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v1.split)
    (squareEnvelope := tenMillionSquareTail23)
    (rootEnvelope := tenMillionRootV1) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · intro s hprime hcut
    simpa [tenMillionSquareTail23,
      fiveMillionSquareTail23Envelope] using
        fiveMillionSquareTail23_kernel_close s hprime hcut
  · apply tenMillionHighAtLaterCutoff_of_cutoff7 hN
    · have hpi7 : Nat.primeCounting 7 = 4 := by decide
      have hpi23 : Nat.primeCounting 23 = 9 := by decide
      rw [hpi7, hpi23]
      omega
    simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV1] using
      actualTenMillionEvenOneHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo23
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    hallBaseTailSquareCount N B 23 pivot / N <=
      2 * tenMillionSquareTail23 / 25 +
        tenMillionRootV2 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v2.split)
    (squareEnvelope := tenMillionSquareTail23)
    (rootEnvelope := tenMillionRootV2) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · intro s hprime hcut
    simpa [tenMillionSquareTail23,
      fiveMillionSquareTail23Envelope] using
        fiveMillionSquareTail23_kernel_close s hprime hcut
  · apply tenMillionHighAtLaterCutoff_of_cutoff7 hN
    · have hpi7 : Nat.primeCounting 7 = 4 := by decide
      have hpi23 : Nat.primeCounting 23 = 9 := by decide
      rw [hpi7, hpi23]
      omega
    simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV2] using
      actualTenMillionEvenTwoHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

theorem hallBaseTailSquareCount_ratio_le_tenMillion_evenThree19
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    hallBaseTailSquareCount N B 19 pivot / N <=
      2 * fiveMillionSquareTail19Envelope / 25 +
        tenMillionRootV3 / 3 := by
  have hN : 0 < N := by
    norm_num [tenMillionLower] at hLower ⊢
    omega
  apply hallBaseTailSquareCount_ratio_le_tenMillion_row
    (split := TenMillionKernelRootRow.v3.split)
    (squareEnvelope := fiveMillionSquareTail19Envelope)
    (rootEnvelope := tenMillionRootV3) hN
  · norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  · norm_num
  · exact fiveMillionSquareTail19_kernel_close
  · apply tenMillionHighAtLaterCutoff_of_cutoff7 hN
    · have hpi7 : Nat.primeCounting 7 = 4 := by decide
      have hpi19 : Nat.primeCounting 19 = 8 := by decide
      rw [hpi7, hpi19]
      omega
    simpa [TenMillionKernelRootRow.cutoff,
      TenMillionKernelRootRow.envelope, tenMillionKernelRootV3] using
      actualTenMillionEvenThreeHighPoints
        hLower hUpper hBout hpivotResidual hpivotMod

private theorem hallBaseTailSquarePayment_ratio_le_of_perPivot
    {N cutoff pivotCount threshold : Nat}
    {B pivots : Finset Nat} {perPivot : Rat}
    (hpivotsCard : pivots.card = pivotCount)
    (hthreshold : threshold <= pivotCount)
    (hper :
      ∀ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N <= perPivot) :
    hallBaseTailSquarePayment N B pivots cutoff threshold / N <=
      (pivotCount : Rat) * perPivot /
        ((pivotCount : Rat) - (threshold : Rat) + 1) := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N) <=
          (pivotCount : Rat) * perPivot := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) <=
          ∑ _pivot ∈ pivots, perPivot :=
        Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
      _ = (pivots.card : Rat) * perPivot := by simp
      _ = (pivotCount : Rat) * perPivot := by rw [hpivotsCard]
  have hthresholdRat : (threshold : Rat) <= (pivotCount : Rat) := by
    exact_mod_cast hthreshold
  have hden :
      0 < (pivotCount : Rat) - (threshold : Rat) + 1 := by
    linarith
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  change
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B cutoff pivot) /
        ((pivotCount : Rat) - (threshold : Rat) + 1) / N <= _
  calc
    (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot) /
          ((pivotCount : Rat) - (threshold : Rat) + 1) / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) /
            ((pivotCount : Rat) - (threshold : Rat) + 1) := by
      rw [← Finset.sum_div]
      ring
    _ <= ((pivotCount : Rat) * perPivot) /
          ((pivotCount : Rat) - (threshold : Rat) + 1) :=
      div_le_div_of_nonneg_right hsum hden.le

theorem hallBaseTailSquarePayment_fourThree_tenMillion_evenOne23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 23 3 / N <=
      4 * tenMillionSquareTail23 / 25 +
        2 * tenMillionRootV1 / 3 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 23) (pivotCount := 4) (threshold := 3)
    (perPivot :=
      2 * tenMillionSquareTail23 / 25 +
        tenMillionRootV1 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenOne23
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenOne
          (hpivots hpivot))
        (fiveMillionValuationPart_evenOne (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_fourThree_tenMillion_evenTwo23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 23 3 / N <=
      4 * tenMillionSquareTail23 / 25 +
        2 * tenMillionRootV2 / 3 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 23) (pivotCount := 4) (threshold := 3)
    (perPivot :=
      2 * tenMillionSquareTail23 / 25 +
        tenMillionRootV2 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo23
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenTwo
          (hpivots hpivot))
        (fiveMillionValuationPart_evenTwo (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_threeTwo_tenMillion_evenOne23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N <=
      3 * fiveMillionSquareTail23Envelope / 25 +
        tenMillionRootV1 / 2 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 23) (pivotCount := 3) (threshold := 2)
    (perPivot :=
      2 * fiveMillionSquareTail23Envelope / 25 +
        tenMillionRootV1 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenOne23
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenOne
          (hpivots hpivot))
        (fiveMillionValuationPart_evenOne (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_fourThree_tenMillion_evenTwo7_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 7 3 / N <=
      4 * tenMillionSquareTail7 / 25 + 2 * tenMillionRootV2 / 3 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 7) (pivotCount := 4) (threshold := 3)
    (perPivot :=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV2 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo7
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenTwo
          (hpivots hpivot))
        (fiveMillionValuationPart_evenTwo (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_threeTwo_tenMillion_evenThree19_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N <=
      3 * fiveMillionSquareTail19Envelope / 25 +
        tenMillionRootV3 / 2 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 19) (pivotCount := 3) (threshold := 2)
    (perPivot :=
      2 * fiveMillionSquareTail19Envelope / 25 +
        tenMillionRootV3 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenThree19
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenThree
          (hpivots hpivot))
        (fiveMillionValuationPart_evenThree (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_fourThree_tenMillion_evenOne29_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 29 3 / N <=
      4 * tenMillionSquareTail29 / 25 + 2 * tenMillionRootV1 / 3 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 29) (pivotCount := 4) (threshold := 3)
    (perPivot :=
      2 * tenMillionSquareTail29 / 25 + tenMillionRootV1 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenOne29
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenOne
          (hpivots hpivot))
        (fiveMillionValuationPart_evenOne (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_threeTwo_tenMillion_evenOne7_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      3 * tenMillionSquareTail7 / 25 + tenMillionRootV1 / 2 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 7) (pivotCount := 3) (threshold := 2)
    (perPivot :=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV1 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenOne7
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenOne
          (hpivots hpivot))
        (fiveMillionValuationPart_evenOne (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_fourThree_tenMillion_evenTwo29_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 29 3 / N <=
      4 * tenMillionSquareTail29 / 25 + 2 * tenMillionRootV2 / 3 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 29) (pivotCount := 4) (threshold := 3)
    (perPivot :=
      2 * tenMillionSquareTail29 / 25 + tenMillionRootV2 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo29
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenTwo
          (hpivots hpivot))
        (fiveMillionValuationPart_evenTwo (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_threeTwo_tenMillion_evenTwo7_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      3 * tenMillionSquareTail7 / 25 + tenMillionRootV2 / 2 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 7) (pivotCount := 3) (threshold := 2)
    (perPivot :=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV2 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenTwo7
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenTwo
          (hpivots hpivot))
        (fiveMillionValuationPart_evenTwo (hpivots hpivot)))
  linarith

theorem hallBaseTailSquarePayment_threeTwo_tenMillion_evenThree7_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      3 * tenMillionSquareTail7 / 25 + tenMillionRootV3 / 2 := by
  have hraw := hallBaseTailSquarePayment_ratio_le_of_perPivot
    (N := N) (B := B) (pivots := pivots)
    (cutoff := 7) (pivotCount := 3) (threshold := 2)
    (perPivot :=
      2 * tenMillionSquareTail7 / 25 + tenMillionRootV3 / 3)
    hcard (by norm_num)
    (fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_tenMillion_evenThree7
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual N B .evenThree
          (hpivots hpivot))
        (fiveMillionValuationPart_evenThree (hpivots hpivot)))
  linarith

end Erdos848
