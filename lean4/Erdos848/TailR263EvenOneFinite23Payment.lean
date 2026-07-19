import Erdos848.TailR263EvenOneFinite23ActualCount
import Erdos848.GeneratedTailR263EvenOneFinite23.Certificate

namespace Erdos848

/-! Rational consequences of the generated cutoff-23 arithmetic certificate. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FiniteFourTargetRat (cellType : E1FiniteCellType) : Rat :=
  e1FiniteFourTargetMillion cellType / 1_000_000

def e1FiniteThreeTargetRat (cellType : E1FiniteCellType) : Rat :=
  e1FiniteThreeTargetMillion cellType / 1_000_000

theorem e1FiniteFourDensity_nonneg_and_payment_le
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    0 <= e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 ∧
      e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 / 25 +
        (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
          e1FiniteAllThreeEndpointRat p3 p7 p11 p13 p17 p19 p23) /
            5_000_000 <=
        e1FiniteFourTargetRat (e1FiniteCellTypeOf p7 p11) := by
  have h := GeneratedTailR263EvenOneFinite23.four_all
    p3 p7 p11 p13 p17 p19 p23 hp3
  unfold e1FiniteFourPaymentCrossInequality at h
  dsimp only at h
  constructor
  · unfold e1FiniteAllThreeDensityRat
    exact_mod_cast h.1
  · have hq :
        (1_000_000 : Rat) *
            ((e1FiniteAllThreeNumerator
                p3 p7 p11 p13 p17 p19 p23 : Rat) * 5_000_000 +
              25 * ((e1FiniteAllThreeNumerator
                  p3 p7 p11 p13 p17 p19 p23 : Rat) +
                e1FiniteAllThreeEndpoint
                    p3 p7 p11 p13 p17 p19 p23 *
                  e1FiniteFullModulus)) <=
          e1FiniteFourTargetMillion (e1FiniteCellTypeOf p7 p11) *
            e1FiniteFullModulus * 25 * 5_000_000 := by
      exact_mod_cast h.2
    unfold e1FiniteAllThreeDensityRat e1FiniteAllThreeEndpointRat
      e1FiniteFourTargetRat
    norm_num [e1FiniteFullModulus] at hq ⊢
    linarith

theorem e1FiniteThreeDensities_nonneg_and_payment_le
    (p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    0 <= e1FiniteAllThreeDensityRat
        .allEqual p7 p11 p13 p17 p19 p23 ∧
      0 <= e1FiniteTwoOfThreeDensityRat
        .allEqual p7 p11 p13 p17 p19 p23 ∧
      (e1FiniteAllThreeDensityRat
          .allEqual p7 p11 p13 p17 p19 p23 +
        e1FiniteTwoOfThreeDensityRat
          .allEqual p7 p11 p13 p17 p19 p23) / 25 +
        (e1FiniteAllThreeDensityRat
            .allEqual p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeDensityRat
            .allEqual p7 p11 p13 p17 p19 p23 +
          e1FiniteAllThreeEndpointRat
            .allEqual p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeEndpointRat
            .allEqual p7 p11 p13 p17 p19 p23) / 5_000_000 <=
        e1FiniteThreeTargetRat (e1FiniteCellTypeOf p7 p11) := by
  have h := GeneratedTailR263EvenOneFinite23.three_all
    p7 p11 p13 p17 p19 p23
  unfold e1FiniteThreePaymentCrossInequality at h
  dsimp only at h
  constructor
  · unfold e1FiniteAllThreeDensityRat
    exact_mod_cast h.1
  constructor
  · unfold e1FiniteTwoOfThreeDensityRat
    exact_mod_cast h.2.1
  · have hq :
        (1_000_000 : Rat) *
            (((e1FiniteAllThreeNumerator
                .allEqual p7 p11 p13 p17 p19 p23 : Rat) +
              e1FiniteTwoOfThreeNumerator
                .allEqual p7 p11 p13 p17 p19 p23) * 5_000_000 +
              25 * (((e1FiniteAllThreeNumerator
                  .allEqual p7 p11 p13 p17 p19 p23 : Rat) +
                e1FiniteTwoOfThreeNumerator
                  .allEqual p7 p11 p13 p17 p19 p23) +
                (e1FiniteAllThreeEndpoint
                    .allEqual p7 p11 p13 p17 p19 p23 +
                  e1FiniteTwoOfThreeEndpoint
                    .allEqual p7 p11 p13 p17 p19 p23) *
                    e1FiniteFullModulus)) <=
          e1FiniteThreeTargetMillion (e1FiniteCellTypeOf p7 p11) *
            e1FiniteFullModulus * 25 * 5_000_000 := by
      exact_mod_cast h.2.2
    unfold e1FiniteAllThreeDensityRat e1FiniteTwoOfThreeDensityRat
      e1FiniteAllThreeEndpointRat e1FiniteTwoOfThreeEndpointRat
      e1FiniteThreeTargetRat
    norm_num [e1FiniteFullModulus] at hq ⊢
    linarith

private theorem e1FinitePrefix_ratio_le_atFiveMillion
    {N count : Nat} {density endpoint : Rat}
    (hLower : 5_000_000 <= N)
    (hdensity : 0 <= density)
    (hendpoint : 0 <= endpoint)
    (hcount : (count : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N <=
      density / 25 + (density + endpoint) / 5_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) <= (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) <= (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      (count : Rat) <= ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 <= density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) <=
        (density + endpoint) / 5_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N <=
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ <= density / 25 + (density + endpoint) / 5_000_000 := by
      gcongr

theorem e1FiniteActualAllThreeResidue_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q)
    (hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual) :
    ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) / N <=
      e1FiniteFourTargetRat
        (e1FiniteCellTypeOf
          (e1FiniteRootPatternAt roots 1)
          (e1FiniteRootPatternAt roots 2)) := by
  let p3 := e1FiniteRootPatternAt roots 0
  let p7 := e1FiniteRootPatternAt roots 1
  let p11 := e1FiniteRootPatternAt roots 2
  let p13 := e1FiniteRootPatternAt roots 3
  let p17 := e1FiniteRootPatternAt roots 4
  let p19 := e1FiniteRootPatternAt roots 5
  let p23 := e1FiniteRootPatternAt roots 6
  have hcert := e1FiniteFourDensity_nonneg_and_payment_le
    p3 p7 p11 p13 p17 p19 p23 hp3
  have hraw := e1FiniteActualAllThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  exact (e1FinitePrefix_ratio_le_atFiveMillion
    hLower hcert.1 (by positivity) hraw).trans hcert.2

theorem e1FiniteActualMixedResidue_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q)
    (hp3 : e1FiniteRootPatternAt roots 0 = .allEqual) :
    (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) / N <=
      e1FiniteThreeTargetRat
        (e1FiniteCellTypeOf
          (e1FiniteRootPatternAt roots 1)
          (e1FiniteRootPatternAt roots 2)) := by
  let p7 := e1FiniteRootPatternAt roots 1
  let p11 := e1FiniteRootPatternAt roots 2
  let p13 := e1FiniteRootPatternAt roots 3
  let p17 := e1FiniteRootPatternAt roots 4
  let p19 := e1FiniteRootPatternAt roots 5
  let p23 := e1FiniteRootPatternAt roots 6
  have hcert := e1FiniteThreeDensities_nonneg_and_payment_le
    p7 p11 p13 p17 p19 p23
  have hall := e1FiniteActualAllThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  have htwo := e1FiniteActualTwoOfThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  rw [hp3] at hall htwo ⊢
  have hraw :
      (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) <=
      ((N / 25 + 1 : Nat) : Rat) *
        (e1FiniteAllThreeDensityRat
            .allEqual p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeDensityRat
            .allEqual p7 p11 p13 p17 p19 p23) +
        (e1FiniteAllThreeEndpointRat
            .allEqual p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeEndpointRat
            .allEqual p7 p11 p13 p17 p19 p23) := by
    linarith
  have hdensity :
      0 <= e1FiniteAllThreeDensityRat
          .allEqual p7 p11 p13 p17 p19 p23 +
        e1FiniteTwoOfThreeDensityRat
          .allEqual p7 p11 p13 p17 p19 p23 :=
    add_nonneg hcert.1 hcert.2.1
  exact (e1FinitePrefix_ratio_le_atFiveMillion
    hLower hdensity (by positivity) hraw).trans hcert.2.2

#print axioms e1FiniteFourDensity_nonneg_and_payment_le
#print axioms e1FiniteThreeDensities_nonneg_and_payment_le
#print axioms e1FiniteActualAllThreeResidue_ratio_le
#print axioms e1FiniteActualMixedResidue_ratio_le

end Erdos848
