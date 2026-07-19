import Erdos848.ScratchE3ActualCount

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem scratchE3RootThresholdDensityRat_nonneg
    (roots : ScratchE3PivotRootFamily)
    (hcommon : roots 0 0 = roots 1 0 ∧ roots 0 0 = roots 2 0) :
    0 <= scratchE3ThresholdDensityRat
      (scratchE3RootPatternAt roots 1)
      (scratchE3RootPatternAt roots 2)
      (scratchE3RootPatternAt roots 3)
      (scratchE3RootPatternAt roots 4)
      (scratchE3RootPatternAt roots 5) := by
  classical
  let p1 := scratchE3RootPatternAt roots 1
  let p2 := scratchE3RootPatternAt roots 2
  let p3 := scratchE3RootPatternAt roots 3
  let p4 := scratchE3RootPatternAt roots 4
  let p5 := scratchE3RootPatternAt roots 5
  let numerator := scratchE3ThresholdNumerator p1 p2 p3 p4 p5
  let endpoint := scratchE3ThresholdEndpoint p1 p2 p3 p4 p5
  let length := endpoint * scratchE3FullModulus + 1
  have hbound := scratchE3RootThreshold_card_rat_le length roots hcommon
  have hcardNonneg :
      (0 : Rat) <=
        (((Finset.range length).filter fun q =>
          2 <= scratchE3BadCount (scratchE3RootBad roots) q).card : Rat) := by
    positivity
  have hsum :
      (0 : Rat) <=
        (length : Rat) *
          ((numerator : Rat) / scratchE3FullModulus) +
        (endpoint : Rat) := by
    exact hcardNonneg.trans (by
      simpa [p1, p2, p3, p4, p5, numerator, endpoint,
        scratchE3ThresholdDensityRat,
        scratchE3ThresholdEndpointRat] using hbound)
  by_contra hnot
  have hdensityNeg :
      (numerator : Rat) / scratchE3FullModulus < 0 := by
    simpa [p1, p2, p3, p4, p5, numerator,
      scratchE3ThresholdDensityRat] using lt_of_not_ge hnot
  have hmodulusPos : (0 : Rat) < scratchE3FullModulus := by
    norm_num [scratchE3FullModulus]
  have hnumeratorNegRat : (numerator : Rat) < 0 := by
    calc
      (numerator : Rat) =
          ((numerator : Rat) / scratchE3FullModulus) *
            scratchE3FullModulus := by
              field_simp [ne_of_gt hmodulusPos]
      _ < 0 * scratchE3FullModulus :=
        mul_lt_mul_of_pos_right hdensityNeg hmodulusPos
      _ = 0 := by ring
  have hnumeratorNeg : numerator < 0 := by
    exact_mod_cast hnumeratorNegRat
  have hnumeratorLe : numerator <= -1 := by omega
  have hnumeratorLeRat : (numerator : Rat) <= -1 := by
    exact_mod_cast hnumeratorLe
  have hlengthCast :
      (length : Rat) =
        (endpoint : Rat) * scratchE3FullModulus + 1 := by
    simp [length]
  rw [hlengthCast] at hsum
  have hscaled :
      (0 : Rat) <=
        (((endpoint : Rat) * scratchE3FullModulus + 1) *
            (numerator : Rat) +
          (endpoint : Rat) * scratchE3FullModulus) := by
    have hmul := mul_nonneg hsum hmodulusPos.le
    calc
      (0 : Rat) <=
          ((((endpoint : Rat) * scratchE3FullModulus + 1) *
              ((numerator : Rat) / scratchE3FullModulus) +
            (endpoint : Rat)) * scratchE3FullModulus) := hmul
      _ = (((endpoint : Rat) * scratchE3FullModulus + 1) *
            (numerator : Rat) +
          (endpoint : Rat) * scratchE3FullModulus) := by
            field_simp [ne_of_gt hmodulusPos]
  have hlengthNonneg :
      (0 : Rat) <= (endpoint : Rat) * scratchE3FullModulus + 1 := by
    positivity
  have hupper :
      (((endpoint : Rat) * scratchE3FullModulus + 1) *
          (numerator : Rat)) <=
        ((endpoint : Rat) * scratchE3FullModulus + 1) * (-1) :=
    mul_le_mul_of_nonneg_left hnumeratorLeRat hlengthNonneg
  linarith

#print axioms scratchE3RootThresholdDensityRat_nonneg

end Erdos848
