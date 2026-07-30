import Erdos848.TailHybridPaperRootEnvelopeCertificate

namespace Erdos848

/-!
# Actual high-root rows on `200M ≤ N < 2B`

The two residue rows are `7` and `18` modulo `25`.  For each nonempty row the
base constant is not divisible by `25`; hence it is either a normal row or a
five-twist row.  Both are bounded by the same actual-support coefficient.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualHybridPaperHighResidue_card_cast_le
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue).card : Rat) ≤
      hybridPaperRootHighCoefficient regime
        (fiveMillionPivotSupport pivot).length N := by
  classical
  have hTwoHundred : 200_000_000 ≤ N := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover ⊢ <;>
      omega
  by_cases hempty :
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue = ∅
  · rw [hempty]
    simp only [Finset.card_empty, Nat.cast_zero]
    unfold hybridPaperRootHighCoefficient
    positivity
  obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointLow : point ∈ lowBaseSet N :=
    (Finset.mem_filter.mp hpointParts.1).1
  have hpointResidue : point % 25 = baseResidue := hpointParts.2
  have hconstantTwentyFive :
      ¬ 25 ∣ pivot * baseResidue + 1 :=
    fiveMillionBaseConstant_not_twentyFive_dvd
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      hBout hpivotResidual hpointLow hpointResidue
  by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
  · have hquotientFive :
        ¬ 5 ∣ (pivot * baseResidue + 1) / 5 :=
      not_five_dvd_div_five_of_not_twentyFive
        hconstantFive hconstantTwentyFive
    obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hquotientFive
    exact actualHybridPaperFiveTwistHighResidue_card_cast_le
      twistProvider normalProvider
      hTwoHundred hcover.2 hBout hpivotResidual
      hconstantFive hconstantTwentyFive hcoset
  · obtain ⟨squareCoset, hcoset⟩ :=
      exists_modFiveCosetAccepts_of_not_dvd hconstantFive
    exact actualHybridPaperNormalHighResidue_card_cast_le
      normalProvider hTwoHundred hcover.2 hBout
      hpivotResidual hconstantFive hcoset

private theorem actualHybridPaperHighPoints_card_cast_le
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)).card : Rat) ≤
      2 * hybridPaperRootHighCoefficient regime
        (fiveMillionPivotSupport pivot).length N := by
  have hcard :
      (twoBaseHighTailSquarePoints
          N pivot (N / regime.rootSplit)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardRat :
      ((twoBaseHighTailSquarePoints
          N pivot (N / regime.rootSplit)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / regime.rootSplit) 18).card : Rat) := by
    exact_mod_cast hcard
  calc
    ((twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)).card : Rat) ≤
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) 7).card : Rat) +
      ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) 18).card : Rat) := hcardRat
    _ ≤ hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N +
        hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N :=
      add_le_add
        (actualHybridPaperHighResidue_card_cast_le
          normalProvider twistProvider hcover hBout hpivotResidual)
        (actualHybridPaperHighResidue_card_cast_le
          normalProvider twistProvider hcover hBout hpivotResidual)
    _ = 2 * hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N := by ring

theorem actualHybridPaperHighPoints
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (((twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)).card : Rat) +
      2 * ((Nat.primeCounting (N / regime.rootSplit) -
        Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      regime.rootEnvelope / 3 := by
  have hlength :=
    actualHybridPaperPivotSupport_length_le_eight
      hcover.2 hBout hpivotResidual
  have hroot :=
    rootProvider.root_combined_ratio_le hcover hlength
  have hcard :=
    actualHybridPaperHighPoints_card_cast_le
      normalProvider twistProvider hcover hBout hpivotResidual
  have hprimeSub :
      ((Nat.primeCounting (N / regime.rootSplit) -
        Nat.primeCounting cutoff : Nat) : Rat) ≤
      Nat.primeCounting (N / regime.rootSplit) := by
    exact_mod_cast Nat.sub_le _ _
  have hNpos : (0 : Rat) < N := by
    have hNposNat : 0 < N := by
      cases regime <;>
        norm_num [HybridPaperDiagonalRegime.Covers,
          HybridPaperDiagonalRegime.lower] at hcover <;>
        omega
    exact_mod_cast hNposNat
  have hnumerator :
      ((twoBaseHighTailSquarePoints
          N pivot (N / regime.rootSplit)).card : Rat) +
        2 * ((Nat.primeCounting (N / regime.rootSplit) -
          Nat.primeCounting cutoff : Nat) : Rat) ≤
      2 * (hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N +
        Nat.primeCounting (N / regime.rootSplit)) := by
    calc
      ((twoBaseHighTailSquarePoints
          N pivot (N / regime.rootSplit)).card : Rat) +
          2 * ((Nat.primeCounting (N / regime.rootSplit) -
            Nat.primeCounting cutoff : Nat) : Rat) ≤
        2 * hybridPaperRootHighCoefficient regime
            (fiveMillionPivotSupport pivot).length N +
          2 * Nat.primeCounting (N / regime.rootSplit) := by
        exact add_le_add hcard (mul_le_mul_of_nonneg_left hprimeSub (by norm_num))
      _ = 2 * (hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N +
        Nat.primeCounting (N / regime.rootSplit)) := by ring
  have hratio :=
    div_le_div_of_nonneg_right hnumerator hNpos.le
  calc
    (((twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)).card : Rat) +
      2 * ((Nat.primeCounting (N / regime.rootSplit) -
        Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      2 * (hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N +
        Nat.primeCounting (N / regime.rootSplit)) / N := hratio
    _ = (6 * (hybridPaperRootHighCoefficient regime
          (fiveMillionPivotSupport pivot).length N +
        Nat.primeCounting (N / regime.rootSplit)) / N) / 3 := by ring
    _ ≤ regime.rootEnvelope / 3 :=
      div_le_div_of_nonneg_right hroot (by norm_num)

#print axioms actualHybridPaperHighResidue_card_cast_le
#print axioms actualHybridPaperHighPoints

end Erdos848
