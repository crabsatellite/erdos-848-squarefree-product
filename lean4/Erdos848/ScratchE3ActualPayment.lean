import Erdos848.ScratchE3DensityNonneg

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem scratchE3ActualThresholdResidue_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {cell baseResidue : Nat}
    (hmod : ∀ pivot : Fin 3,
      globalMixedThreePivotAt pivots hcard pivot % 9 = cell) :
    ((scratchE3ActualThresholdResidue
        N pivots baseResidue).card : Rat) / N <=
      scratchE3ThresholdDensityRat
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 1)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 2)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 3)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 4)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 5) / 25 +
        (scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5) +
          scratchE3ThresholdEndpointRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5)) / N := by
  let roots := scratchE3ActualRoots baseResidue pivots hcard
  let p1 := scratchE3RootPatternAt roots 1
  let p2 := scratchE3RootPatternAt roots 2
  let p3 := scratchE3RootPatternAt roots 3
  let p4 := scratchE3RootPatternAt roots 4
  let p5 := scratchE3RootPatternAt roots 5
  let density := scratchE3ThresholdDensityRat p1 p2 p3 p4 p5
  let endpoint := scratchE3ThresholdEndpointRat p1 p2 p3 p4 p5
  have hraw := scratchE3ActualThresholdResidue_card_rat_le
    hBout hvaluation hpivots hcard hmod (baseResidue := baseResidue)
  have hdensity : (0 : Rat) <= density := by
    exact scratchE3RootThresholdDensityRat_nonneg roots
      (scratchE3ActualRoots_common hmod)
  have hdiv : (((N / 25 : Nat) : Rat)) <= (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) <= (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw' :
      ((scratchE3ActualThresholdResidue
          N pivots baseResidue).card : Rat) <=
        ((N : Rat) / 25 + 1) * density + endpoint := by
    exact hraw.trans (by
      dsimp [roots, p1, p2, p3, p4, p5, density, endpoint]
      exact add_le_add
        (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  dsimp [roots, p1, p2, p3, p4, p5, density, endpoint] at hraw' ⊢
  calc
    ((scratchE3ActualThresholdResidue
        N pivots baseResidue).card : Rat) / N <=
        (((N : Rat) / 25 + 1) *
          scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5) +
          scratchE3ThresholdEndpointRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5)) / N :=
      div_le_div_of_nonneg_right hraw' hNpos.le
    _ = scratchE3ThresholdDensityRat
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 1)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 2)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 3)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 4)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 5) / 25 +
        (scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5) +
          scratchE3ThresholdEndpointRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5)) / N := by
      field_simp [ne_of_gt hNpos]
      ring

theorem scratchE3ActualThresholdResidue_ratio_le_atFiveMillion
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {cell baseResidue : Nat}
    (hmod : ∀ pivot : Fin 3,
      globalMixedThreePivotAt pivots hcard pivot % 9 = cell) :
    ((scratchE3ActualThresholdResidue
        N pivots baseResidue).card : Rat) / N <=
      scratchE3ThresholdDensityRat
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 1)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 2)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 3)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 4)
          (scratchE3RootPatternAt
            (scratchE3ActualRoots baseResidue pivots hcard) 5) / 25 +
        (scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5) +
          scratchE3ThresholdEndpointRat
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 1)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 2)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 3)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 4)
            (scratchE3RootPatternAt
              (scratchE3ActualRoots baseResidue pivots hcard) 5)) / 5_000_000 := by
  let roots := scratchE3ActualRoots baseResidue pivots hcard
  let p1 := scratchE3RootPatternAt roots 1
  let p2 := scratchE3RootPatternAt roots 2
  let p3 := scratchE3RootPatternAt roots 3
  let p4 := scratchE3RootPatternAt roots 4
  let p5 := scratchE3RootPatternAt roots 5
  let density := scratchE3ThresholdDensityRat p1 p2 p3 p4 p5
  let endpoint := scratchE3ThresholdEndpointRat p1 p2 p3 p4 p5
  have hraw := scratchE3ActualThresholdResidue_ratio_le
    hLower hBout hvaluation hpivots hcard hmod
      (baseResidue := baseResidue)
  have hdensity : (0 : Rat) <= density :=
    scratchE3RootThresholdDensityRat_nonneg roots
      (scratchE3ActualRoots_common hmod)
  have hsum : (0 : Rat) <= density + endpoint := by
    exact add_nonneg hdensity (by
      dsimp [endpoint, scratchE3ThresholdEndpointRat]
      positivity)
  have hLowerQ : (5_000_000 : Rat) <= N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) <=
        (density + endpoint) / 5_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  dsimp [roots, p1, p2, p3, p4, p5, density, endpoint] at hraw hmonotone ⊢
  exact hraw.trans (add_le_add le_rfl hmonotone)

theorem globalMixedEvenThreePivotFinite19Payment_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {cell : Nat}
    (hmod : ∀ pivot : Fin 3,
      globalMixedThreePivotAt pivots hcard pivot % 9 = cell) :
    globalMixedBaseFiniteThresholdPayment N pivots 19 2 / N <=
      1221 / 100000 := by
  classical
  let threshold := (lowBaseSet N).filter fun point =>
    2 <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 19 pivot point).card
  let seven := scratchE3ActualThresholdResidue N pivots 7
  let eighteen := scratchE3ActualThresholdResidue N pivots 18
  have hsubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    rcases Finset.mem_union.mp hparts.1 with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hparts.1, (Finset.mem_filter.mp hseven).2, hparts.2⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hparts.1, (Finset.mem_filter.mp heightteen).2, hparts.2⟩
  have hcardNat : threshold.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hsubset).trans (Finset.card_union_le seven eighteen)
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hthreshold :
      (threshold.card : Rat) / N <=
        (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
    have hcardRat :
        (threshold.card : Rat) <=
          (seven.card : Rat) + (eighteen.card : Rat) := by
      exact_mod_cast hcardNat
    calc
      (threshold.card : Rat) / N <=
          ((seven.card : Rat) + (eighteen.card : Rat)) / N :=
        div_le_div_of_nonneg_right hcardRat hNpos.le
      _ = (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
        rw [add_div]
  have hseven := scratchE3ActualThresholdResidue_ratio_le_atFiveMillion
    hLower hBout hvaluation hpivots hcard hmod (baseResidue := 7)
  have heightteen := scratchE3ActualThresholdResidue_ratio_le_atFiveMillion
    hLower hBout hvaluation hpivots hcard hmod (baseResidue := 18)
  have hcertSeven := scratchE3FiveMillionPaymentRat_le
    (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 1)
    (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 2)
    (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 3)
    (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 4)
    (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 5)
  have hcertEighteen := scratchE3FiveMillionPaymentRat_le
    (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 1)
    (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 2)
    (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 3)
    (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 4)
    (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 5)
  unfold globalMixedBaseFiniteThresholdPayment
  change (threshold.card : Rat) / N <= _
  calc
    (threshold.card : Rat) / N <=
        (seven.card : Rat) / N + (eighteen.card : Rat) / N := hthreshold
    _ <=
        (scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 1)
            (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 2)
            (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 3)
            (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 4)
            (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 5) / 25 +
          (scratchE3ThresholdDensityRat
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 1)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 2)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 3)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 4)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 5) +
            scratchE3ThresholdEndpointRat
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 1)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 2)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 3)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 4)
              (scratchE3RootPatternAt (scratchE3ActualRoots 7 pivots hcard) 5)) /
            5_000_000) +
        (scratchE3ThresholdDensityRat
            (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 1)
            (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 2)
            (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 3)
            (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 4)
            (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 5) / 25 +
          (scratchE3ThresholdDensityRat
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 1)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 2)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 3)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 4)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 5) +
            scratchE3ThresholdEndpointRat
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 1)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 2)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 3)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 4)
              (scratchE3RootPatternAt (scratchE3ActualRoots 18 pivots hcard) 5)) /
            5_000_000) :=
      add_le_add hseven heightteen
    _ <= 1221 / 100000 := by
      linarith

#print axioms scratchE3ActualThresholdResidue_ratio_le
#print axioms scratchE3ActualThresholdResidue_ratio_le_atFiveMillion
#print axioms globalMixedEvenThreePivotFinite19Payment_ratio_le

end Erdos848
