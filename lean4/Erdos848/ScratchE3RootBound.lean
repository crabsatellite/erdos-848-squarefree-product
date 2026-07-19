import Erdos848.ScratchE3RootThreshold

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem scratchE3RootPairRoots_bound
    (roots : ScratchE3PivotRootFamily) (pair : Fin 3)
    (index : E3FinitePrimeIndex) {r : Nat}
    (hr : r ∈ scratchE3RootPairRoots roots pair index) :
    r < e3FiniteModulus index := by
  fin_cases pair <;>
    simp [scratchE3RootPairRoots, scratchE3PairRootSet] at hr <;>
    rcases hr with rfl | rfl <;>
    exact (roots _ index).isLt

theorem scratchE3RootTripleRoots_bound
    (roots : ScratchE3PivotRootFamily)
    (index : E3FinitePrimeIndex) {r : Nat}
    (hr : r ∈ scratchE3RootTripleRoots roots index) :
    r < e3FiniteModulus index := by
  simp [scratchE3RootTripleRoots, scratchE3TripleRootSet] at hr
  rcases hr with rfl | rfl | rfl <;>
    exact (roots _ index).isLt

theorem scratchE3RootThreshold_card_rat_le
    (length : Nat) (roots : ScratchE3PivotRootFamily)
    (hcommon : roots 0 0 = roots 1 0 ∧ roots 0 0 = roots 2 0) :
    (((Finset.range length).filter fun q =>
        2 <= scratchE3BadCount (scratchE3RootBad roots) q).card : Rat) <=
      (length : Rat) * scratchE3ThresholdDensityRat
        (scratchE3RootPatternAt roots 1)
        (scratchE3RootPatternAt roots 2)
        (scratchE3RootPatternAt roots 3)
        (scratchE3RootPatternAt roots 4)
        (scratchE3RootPatternAt roots 5) +
      scratchE3ThresholdEndpointRat
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
  have hpair : ∀ pair : Fin 3,
      (length : Rat) * scratchE3PairLowerDensityRat p1 p2 p3 p4 p5 pair -
          scratchE3PairEndpointRat p1 p2 p3 p4 p5 pair <=
        (((Finset.range length).filter fun q =>
          scratchE3PairSurvives (scratchE3RootBad roots) pair q).card : Rat) := by
    intro pair
    have h := scratch_noEvent_lower_three
      length (Finset.univ : Finset E3FinitePrimeIndex)
      e3FiniteModulus (scratchE3RootPairRoots roots pair)
      (by intro i _hi; exact e3FiniteModulus_pos i)
      (by
        intro i _hi j _hj hij
        exact e3FiniteModulus_pairwise_coprime i j hij)
      (by
        intro i _hi r hr
        exact scratchE3RootPairRoots_bound roots pair i hr)
    rw [← scratchE3RootPairSurvivor_filter_eq_noEvent length roots pair] at h
    rw [scratchE3RankDensity_eq_numerator
          (scratchE3RootPairRoots roots pair) 1 (by norm_num) (by norm_num),
        scratchE3RankDensity_eq_numerator
          (scratchE3RootPairRoots roots pair) 2 (by norm_num) (by norm_num),
        scratchE3RankDensity_eq_numerator
          (scratchE3RootPairRoots roots pair) 3 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootPairRoots roots pair) 1 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootPairRoots roots pair) 2 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootPairRoots roots pair) 3 (by norm_num) (by norm_num)] at h
    rw [scratchE3RootPairRoots_card_function roots pair hcommon] at h
    dsimp [p1, p2, p3, p4, p5]
    convert h using 1 <;>
      norm_num [scratchE3PairLowerDensityRat, scratchE3PairEndpointRat,
        scratchE3PairLowerNumerator, scratchE3PairEndpoint,
        scratchE3FullModulus] <;>
      ring <;>
      simp
  have htriple :
      (((Finset.range length).filter fun q =>
          scratchE3TripleSurvives (scratchE3RootBad roots) q).card : Rat) <=
        (length : Rat) * scratchE3TripleUpperDensityRat p1 p2 p3 p4 p5 +
          scratchE3TripleEndpointRat p1 p2 p3 p4 p5 := by
    have h := scratch_noEvent_upper_four
      length (Finset.univ : Finset E3FinitePrimeIndex)
      e3FiniteModulus (scratchE3RootTripleRoots roots)
      (by intro i _hi; exact e3FiniteModulus_pos i)
      (by
        intro i _hi j _hj hij
        exact e3FiniteModulus_pairwise_coprime i j hij)
      (by
        intro i _hi r hr
        exact scratchE3RootTripleRoots_bound roots i hr)
    rw [← scratchE3RootTripleSurvivor_filter_eq_noEvent length roots] at h
    rw [scratchE3RankDensity_eq_numerator
          (scratchE3RootTripleRoots roots) 1 (by norm_num) (by norm_num),
        scratchE3RankDensity_eq_numerator
          (scratchE3RootTripleRoots roots) 2 (by norm_num) (by norm_num),
        scratchE3RankDensity_eq_numerator
          (scratchE3RootTripleRoots roots) 3 (by norm_num) (by norm_num),
        scratchE3RankDensity_eq_numerator
          (scratchE3RootTripleRoots roots) 4 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootTripleRoots roots) 1 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootTripleRoots roots) 2 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootTripleRoots roots) 3 (by norm_num) (by norm_num),
        scratchE3RankEndpoint_eq
          (scratchE3RootTripleRoots roots) 4 (by norm_num) (by norm_num)] at h
    rw [scratchE3RootTripleRoots_card_function roots hcommon] at h
    dsimp [p1, p2, p3, p4, p5]
    convert h using 1 <;>
      norm_num [scratchE3TripleUpperDensityRat, scratchE3TripleEndpointRat,
        scratchE3TripleUpperNumerator, scratchE3TripleEndpoint,
        scratchE3FullModulus] <;>
      ring <;>
      simp
  have hpairSum :
      (∑ pair : Fin 3,
        ((length : Rat) * scratchE3PairLowerDensityRat p1 p2 p3 p4 p5 pair -
          scratchE3PairEndpointRat p1 p2 p3 p4 p5 pair)) <=
      ∑ pair : Fin 3,
        (((Finset.range length).filter fun q =>
          scratchE3PairSurvives (scratchE3RootBad roots) pair q).card : Rat) := by
    apply Finset.sum_le_sum
    intro pair _hpair
    exact hpair pair
  have hidInt := scratchE3Threshold_card_identity
    (Finset.range length) (scratchE3RootBad roots)
  simp only [Finset.card_range] at hidInt
  have hidRat :
      (((Finset.range length).filter fun q =>
        2 <= scratchE3BadCount (scratchE3RootBad roots) q).card : Rat) =
        length -
          (∑ pair : Fin 3,
            (((Finset.range length).filter fun q =>
              scratchE3PairSurvives
                (scratchE3RootBad roots) pair q).card : Rat)) +
          2 * (((Finset.range length).filter fun q =>
            scratchE3TripleSurvives
              (scratchE3RootBad roots) q).card : Rat) := by
    exact_mod_cast hidInt
  dsimp [p1, p2, p3, p4, p5] at hpairSum htriple ⊢
  calc
    (((Finset.range length).filter fun q =>
        2 <= scratchE3BadCount (scratchE3RootBad roots) q).card : Rat) <=
        (length : Rat) -
          (∑ pair : Fin 3,
            ((length : Rat) * scratchE3PairLowerDensityRat
              (scratchE3RootPatternAt roots 1)
              (scratchE3RootPatternAt roots 2)
              (scratchE3RootPatternAt roots 3)
              (scratchE3RootPatternAt roots 4)
              (scratchE3RootPatternAt roots 5) pair -
            scratchE3PairEndpointRat
              (scratchE3RootPatternAt roots 1)
              (scratchE3RootPatternAt roots 2)
              (scratchE3RootPatternAt roots 3)
              (scratchE3RootPatternAt roots 4)
              (scratchE3RootPatternAt roots 5) pair)) +
          2 * ((length : Rat) * scratchE3TripleUpperDensityRat
              (scratchE3RootPatternAt roots 1)
              (scratchE3RootPatternAt roots 2)
              (scratchE3RootPatternAt roots 3)
              (scratchE3RootPatternAt roots 4)
              (scratchE3RootPatternAt roots 5) +
            scratchE3TripleEndpointRat
              (scratchE3RootPatternAt roots 1)
              (scratchE3RootPatternAt roots 2)
              (scratchE3RootPatternAt roots 3)
              (scratchE3RootPatternAt roots 4)
              (scratchE3RootPatternAt roots 5)) := by
      linarith
    _ = (length : Rat) * scratchE3ThresholdDensityRat
          (scratchE3RootPatternAt roots 1)
          (scratchE3RootPatternAt roots 2)
          (scratchE3RootPatternAt roots 3)
          (scratchE3RootPatternAt roots 4)
          (scratchE3RootPatternAt roots 5) +
        scratchE3ThresholdEndpointRat
          (scratchE3RootPatternAt roots 1)
          (scratchE3RootPatternAt roots 2)
          (scratchE3RootPatternAt roots 3)
          (scratchE3RootPatternAt roots 4)
          (scratchE3RootPatternAt roots 5) := by
      rw [scratchE3ThresholdDensityRat_decomposition,
        scratchE3ThresholdEndpointRat_decomposition]
      rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
      ring

#print axioms scratchE3RootPairRoots_bound
#print axioms scratchE3RootTripleRoots_bound
#print axioms scratchE3RootThreshold_card_rat_le

end Erdos848
