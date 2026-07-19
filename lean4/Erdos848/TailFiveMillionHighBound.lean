import Erdos848.TailFiveMillionHighTransformed

namespace Erdos848

/-!
# Uniform payment for the literal high-prime tail

The two residue progressions are paid by two transformed-root rows.  This is
symbolic in `N`; no scan over values of `N` occurs here.
-/

theorem fiveMillionHighResidue_ratio_add_primeDelta_le
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card : ℚ) / N +
        (Nat.primeCounting (N / 49) - 4 : ℕ) / N ≤
      fiveMillionOddRoot7Envelope / 6 := by
  obtain ⟨survivors, hcard, hprofile⟩ :=
    fiveMillionHighResidue_exists_rootRow
      hLower hUpper hBout hpivotResidual hpivotOdd
  have hN : 0 < N := lt_of_lt_of_le (by norm_num) hLower
  have hY : 0 < N / 49 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  have hYQ : (0 : ℚ) < (N / 49 : ℕ) := by exact_mod_cast hY
  have hX : ((N / 25 + 2 : ℕ) : ℚ) ≤ (N : ℚ) / 25 + 2 := by
    have hdiv : ((N / 25 : ℕ) : ℚ) ≤ (N : ℚ) / 25 := Nat.cast_div_le
    push_cast
    linarith
  have hcardLarge :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 49) baseResidue).card : ℚ) ≤
        (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
          ((survivors : ℕ) +
            2 * (((N : ℚ) / 25 + 2) / (N / 49 : ℕ))) := by
    apply hcard.trans
    apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
    have hfraction :
      2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 49 : ℕ) : ℚ) ≤
          2 * (((N : ℚ) / 25 + 2) / (N / 49 : ℕ)) := by
      calc
        2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 49 : ℕ) : ℚ) ≤
            2 * ((N : ℚ) / 25 + 2) / ((N / 49 : ℕ) : ℚ) :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hX (by norm_num)) hYQ.le
        _ = 2 * (((N : ℚ) / 25 + 2) / (N / 49 : ℕ)) := by ring
    simpa [add_comm] using
      (add_le_add_left hfraction (survivors : ℚ))
  have hcardDiv := div_le_div_of_nonneg_right hcardLarge hNQ.le
  have hrow := transformedRootRow_eq_producerFormula
    (N := N) (Y := N / 49)
    (primeDelta := Nat.primeCounting (N / 49) - 4)
    (height := 2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (survivors := survivors) hN hY
  push_cast at hrow
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 49) baseResidue).card : ℚ) / N +
        (Nat.primeCounting (N / 49) - 4 : ℕ) / N ≤
      ((2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
          ((survivors : ℕ) +
            2 * (((N : ℚ) / 25 + 2) / (N / 49 : ℕ)))) / N +
        (Nat.primeCounting (N / 49) - 4 : ℕ) / N := by
      exact add_le_add hcardDiv le_rfl
    _ = transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4)
        (2 ^ ((fiveMillionPivotSupport pivot).length + 1)) survivors / 6 := by
      rw [hrow]
      push_cast
      ring
    _ ≤ fiveMillionOddRoot7Envelope / 6 :=
      div_le_div_of_nonneg_right hprofile (by norm_num)

theorem twoBaseHighTailSquarePoints_ratio_add_primeDelta_le
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N +
        2 * (Nat.primeCounting (N / 49) - 4 : ℕ) / N ≤
      fiveMillionOddRoot7Envelope / 3 := by
  let sevenPoints := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 49) 7
  let eighteenPoints := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 49) 18
  have hseven := fiveMillionHighResidue_ratio_add_primeDelta_le
    (baseResidue := 7) hLower hUpper hBout hpivotResidual hpivotOdd
  have heighteen := fiveMillionHighResidue_ratio_add_primeDelta_le
    (baseResidue := 18) hLower hUpper hBout hpivotResidual hpivotOdd
  have hcardNat :
      (twoBaseHighTailSquarePoints N pivot (N / 49)).card ≤
        sevenPoints.card + eighteenPoints.card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardQ :
      ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) ≤
        (sevenPoints.card : ℚ) + (eighteenPoints.card : ℚ) := by
    have hcast :
        ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) ≤
          ((sevenPoints.card + eighteenPoints.card : ℕ) : ℚ) :=
      Nat.cast_le.mpr hcardNat
    push_cast at hcast
    exact hcast
  have hN : 0 < N := lt_of_lt_of_le (by norm_num) hLower
  have hcardDiv := div_le_div_of_nonneg_right hcardQ
    (show (0 : ℚ) ≤ N by positivity)
  change
    ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N +
        2 * (Nat.primeCounting (N / 49) - 4 : ℕ) / N ≤ _
  calc
    ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N +
        2 * (Nat.primeCounting (N / 49) - 4 : ℕ) / N ≤
      ((sevenPoints.card : ℚ) + (eighteenPoints.card : ℚ)) / N +
        2 * (Nat.primeCounting (N / 49) - 4 : ℕ) / N :=
      add_le_add hcardDiv le_rfl
    _ = ((sevenPoints.card : ℚ) / N +
          (Nat.primeCounting (N / 49) - 4 : ℕ) / N) +
        ((eighteenPoints.card : ℚ) / N +
          (Nat.primeCounting (N / 49) - 4 : ℕ) / N) := by ring
    _ ≤ fiveMillionOddRoot7Envelope / 6 +
        fiveMillionOddRoot7Envelope / 6 :=
      add_le_add hseven heighteen
    _ = fiveMillionOddRoot7Envelope / 3 := by ring

/-- The previously conditional one-pivot high-tail input is now discharged
from the literal high-prime point set. -/
theorem hallBaseTailSquareCount_ratio_le_fiveMillion_actual
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    hallBaseTailSquareCount N B 7 pivot / N ≤
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
  apply hallBaseTailSquareCount_ratio_le_fiveMillion_of_high
    B pivot hLower
  have hhigh := twoBaseHighTailSquarePoints_ratio_add_primeDelta_le
    hLower hUpper hBout hpivotResidual hpivotOdd
  norm_num [Nat.primeCounting] at hhigh ⊢
  exact hhigh

/-- Six actual odd residual pivots now carry their complete literal tail
certificate; no numerical producer field remains to be supplied. -/
def fiveMillionBaseTailCertificate_actual
    {N : ℕ} {B pivots : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    FiveMillionBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_fiveMillion_actual
      hLower hUpper hBout (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)

#print axioms fiveMillionHighResidue_ratio_add_primeDelta_le
#print axioms twoBaseHighTailSquarePoints_ratio_add_primeDelta_le
#print axioms hallBaseTailSquareCount_ratio_le_fiveMillion_actual
#print axioms fiveMillionBaseTailCertificate_actual

end Erdos848
