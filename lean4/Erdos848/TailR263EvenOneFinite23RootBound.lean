import Erdos848.TailR263EvenOneFinite23Count

namespace Erdos848

/-! Prefix bounds for the literal all-three and two-of-three root events. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

def e1FiniteRootSingleRoots
    (roots : E1FinitePivotRootFamily) (pivot : Fin 3)
    (index : E1FinitePrimeIndex) : Finset Nat :=
  {e1FiniteRootNat roots pivot index}

theorem e1FiniteRootSingleRoots_card_function
    (roots : E1FinitePivotRootFamily) (pivot : Fin 3) :
    (fun index => (e1FiniteRootSingleRoots roots pivot index).card) =
      e1FiniteSingletonCards := by
  funext index
  simp [e1FiniteRootSingleRoots, e1FiniteSingletonCards]

theorem e1FiniteRootSingleRoots_bound
    (roots : E1FinitePivotRootFamily) (pivot : Fin 3)
    (index : E1FinitePrimeIndex) {r : Nat}
    (hr : r ∈ e1FiniteRootSingleRoots roots pivot index) :
    r < e1FiniteModulus index := by
  simp only [e1FiniteRootSingleRoots, Finset.mem_singleton] at hr
  subst r
  exact (roots pivot index).isLt

theorem e1FiniteRootPairRoots_bound
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (index : E1FinitePrimeIndex) {r : Nat}
    (hr : r ∈ e1FiniteRootPairRoots roots pair index) :
    r < e1FiniteModulus index := by
  fin_cases pair <;>
    simp [e1FiniteRootPairRoots, e1FinitePairRootSet] at hr <;>
    rcases hr with rfl | rfl <;>
    exact (roots _ index).isLt

theorem e1FiniteRootTripleRoots_bound
    (roots : E1FinitePivotRootFamily)
    (index : E1FinitePrimeIndex) {r : Nat}
    (hr : r ∈ e1FiniteRootTripleRoots roots index) :
    r < e1FiniteModulus index := by
  simp [e1FiniteRootTripleRoots, e1FiniteTripleRootSet] at hr
  rcases hr with rfl | rfl | rfl <;>
    exact (roots _ index).isLt

theorem e1FiniteRootSingleSurvivor_filter_eq_noEvent
    (length : Nat) (roots : E1FinitePivotRootFamily) (pivot : Fin 3) :
    (Finset.range length).filter (fun q =>
        e1FiniteSingleSurvives (e1FiniteRootBad roots) pivot q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun index q =>
          q % e1FiniteModulus index ∈
            e1FiniteRootSingleRoots roots pivot index) := by
  classical
  ext q
  simp [e1FiniteSingleSurvives, e1FiniteRootBad,
    e1FiniteRootSingleRoots, noEventPoints, activeIndices,
    Finset.card_eq_zero] <;>
  aesop

theorem e1FiniteRootPairSurvivor_filter_eq_noEvent
    (length : Nat) (roots : E1FinitePivotRootFamily) (pair : Fin 3) :
    (Finset.range length).filter (fun q =>
        e1FinitePairSurvives (e1FiniteRootBad roots) pair q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun index q =>
          q % e1FiniteModulus index ∈
            e1FiniteRootPairRoots roots pair index) := by
  classical
  ext q
  fin_cases pair <;>
    simp [e1FinitePairSurvives, e1FiniteRootBad,
      e1FiniteRootPairRoots, e1FinitePairRootSet,
      noEventPoints, activeIndices, Finset.card_eq_zero] <;>
    aesop

theorem e1FiniteRootTripleSurvivor_filter_eq_noEvent
    (length : Nat) (roots : E1FinitePivotRootFamily) :
    (Finset.range length).filter (fun q =>
        e1FiniteTripleSurvives (e1FiniteRootBad roots) q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun index q =>
          q % e1FiniteModulus index ∈
            e1FiniteRootTripleRoots roots index) := by
  classical
  ext q
  simp [e1FiniteTripleSurvives, e1FiniteRootBad,
    e1FiniteRootTripleRoots, e1FiniteTripleRootSet,
    noEventPoints, activeIndices, Finset.card_eq_zero] <;>
  aesop

private theorem e1FiniteNoEvent_lower_one
    (length : Nat) (roots : E1FinitePrimeIndex -> Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < e1FiniteModulus index) :
    (length : Rat) *
          e1FiniteNoEventDensityRat (fun i => (roots i).card) 1 -
        e1FiniteNoEventEndpointRat (fun i => (roots i).card) 1 <=
      ((noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun i q => q % e1FiniteModulus i ∈ roots i)).card : Rat) := by
  have h := scratch_noEvent_lower_one
    length (Finset.univ : Finset E1FinitePrimeIndex)
    e1FiniteModulus roots
    (by intro i _hi; exact e1FiniteModulus_pos i)
    (by
      intro i _hi j _hj hij
      exact e1FiniteModulus_pairwise_coprime i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [e1FiniteRankDensity_eq_numerator roots 1 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 1 (by norm_num) (by norm_num)] at h
  simp [e1FiniteNoEventDensityRat, e1FiniteNoEventEndpointRat,
    e1FiniteNoEventNumerator, e1FiniteNoEventEndpoint] at h ⊢
  convert h using 1 <;>
    norm_num [e1FiniteFullModulus] <;> ring_nf <;> simp

private theorem e1FiniteNoEvent_lower_three
    (length : Nat) (roots : E1FinitePrimeIndex -> Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < e1FiniteModulus index) :
    (length : Rat) *
          e1FiniteNoEventDensityRat (fun i => (roots i).card) 3 -
        e1FiniteNoEventEndpointRat (fun i => (roots i).card) 3 <=
      ((noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun i q => q % e1FiniteModulus i ∈ roots i)).card : Rat) := by
  have h := scratch_noEvent_lower_three
    length (Finset.univ : Finset E1FinitePrimeIndex)
    e1FiniteModulus roots
    (by intro i _hi; exact e1FiniteModulus_pos i)
    (by
      intro i _hi j _hj hij
      exact e1FiniteModulus_pairwise_coprime i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [e1FiniteRankDensity_eq_numerator roots 1 (by norm_num) (by norm_num),
    e1FiniteRankDensity_eq_numerator roots 2 (by norm_num) (by norm_num),
    e1FiniteRankDensity_eq_numerator roots 3 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 1 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 2 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 3 (by norm_num) (by norm_num)] at h
  simp [e1FiniteNoEventDensityRat, e1FiniteNoEventEndpointRat,
    e1FiniteNoEventNumerator, e1FiniteNoEventEndpoint] at h ⊢
  convert h using 1 <;>
    norm_num [e1FiniteFullModulus] <;> ring_nf <;> simp

private theorem e1FiniteNoEvent_upper_two
    (length : Nat) (roots : E1FinitePrimeIndex -> Finset Nat)
    (hrootBound : ∀ index, ∀ r ∈ roots index,
      r < e1FiniteModulus index) :
    ((noEventPoints (Finset.range length)
        (Finset.univ : Finset E1FinitePrimeIndex)
        (fun i q => q % e1FiniteModulus i ∈ roots i)).card : Rat) <=
      (length : Rat) *
          e1FiniteNoEventDensityRat (fun i => (roots i).card) 2 +
        e1FiniteNoEventEndpointRat (fun i => (roots i).card) 2 := by
  have h := scratch_noEvent_upper_two
    length (Finset.univ : Finset E1FinitePrimeIndex)
    e1FiniteModulus roots
    (by intro i _hi; exact e1FiniteModulus_pos i)
    (by
      intro i _hi j _hj hij
      exact e1FiniteModulus_pairwise_coprime i j hij)
    (by intro i _hi r hr; exact hrootBound i r hr)
  rw [e1FiniteRankDensity_eq_numerator roots 1 (by norm_num) (by norm_num),
    e1FiniteRankDensity_eq_numerator roots 2 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 1 (by norm_num) (by norm_num),
    e1FiniteRankEndpoint_eq roots 2 (by norm_num) (by norm_num)] at h
  simp [e1FiniteNoEventDensityRat, e1FiniteNoEventEndpointRat,
    e1FiniteNoEventNumerator, e1FiniteNoEventEndpoint] at h ⊢
  convert h using 1 <;>
    norm_num [e1FiniteFullModulus] <;> ring_nf <;> simp

theorem e1FiniteRootAllThree_card_rat_le
    (length : Nat) (roots : E1FinitePivotRootFamily) :
    (((Finset.range length).filter fun q =>
        e1FiniteAllThreeBad (e1FiniteRootBad roots) q).card : Rat) <=
      (length : Rat) * e1FiniteAllThreeDensityRat
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) +
      e1FiniteAllThreeEndpointRat
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) := by
  classical
  let patterns : E1FinitePrimeIndex -> E1FiniteRootPattern :=
    e1FiniteRootPatternAt roots
  have hsingle : ∀ pivot : Fin 3,
      (length : Rat) *
          e1FiniteNoEventDensityRat e1FiniteSingletonCards 3 -
        e1FiniteNoEventEndpointRat e1FiniteSingletonCards 3 <=
      (((Finset.range length).filter fun q =>
        e1FiniteSingleSurvives
          (e1FiniteRootBad roots) pivot q).card : Rat) := by
    intro pivot
    have h := e1FiniteNoEvent_lower_three length
      (e1FiniteRootSingleRoots roots pivot)
      (e1FiniteRootSingleRoots_bound roots pivot)
    rw [← e1FiniteRootSingleSurvivor_filter_eq_noEvent] at h
    simpa [e1FiniteRootSingleRoots_card_function] using h
  have hpair : ∀ pair : Fin 3,
      (((Finset.range length).filter fun q =>
        e1FinitePairSurvives
          (e1FiniteRootBad roots) pair q).card : Rat) <=
      (length : Rat) *
          e1FiniteNoEventDensityRat
            (e1FinitePairCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6) pair) 2 +
        e1FiniteNoEventEndpointRat
          (e1FinitePairCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6) pair) 2 := by
    intro pair
    have h := e1FiniteNoEvent_upper_two length
      (e1FiniteRootPairRoots roots pair)
      (e1FiniteRootPairRoots_bound roots pair)
    rw [← e1FiniteRootPairSurvivor_filter_eq_noEvent] at h
    rw [e1FiniteRootPairRoots_card_function] at h
    exact h
  have htriple :
      (length : Rat) *
          e1FiniteNoEventDensityRat
            (e1FiniteTripleCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6)) 3 -
        e1FiniteNoEventEndpointRat
          (e1FiniteTripleCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6)) 3 <=
      (((Finset.range length).filter fun q =>
        e1FiniteTripleSurvives
          (e1FiniteRootBad roots) q).card : Rat) := by
    have h := e1FiniteNoEvent_lower_three length
      (e1FiniteRootTripleRoots roots)
      (e1FiniteRootTripleRoots_bound roots)
    rw [← e1FiniteRootTripleSurvivor_filter_eq_noEvent] at h
    rw [e1FiniteRootTripleRoots_card_function] at h
    exact h
  have hsingleSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pivot _hpivot => hsingle pivot)
  have hpairSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pair _hpair => hpair pair)
  have hidInt := e1FiniteAllThree_card_identity
    (Finset.range length) (e1FiniteRootBad roots)
  simp only [Finset.card_range] at hidInt
  have hidRat :
      (((Finset.range length).filter fun q =>
        e1FiniteAllThreeBad (e1FiniteRootBad roots) q).card : Rat) =
      length -
        (∑ pivot : Fin 3,
          (((Finset.range length).filter fun q =>
            e1FiniteSingleSurvives
              (e1FiniteRootBad roots) pivot q).card : Rat)) +
        (∑ pair : Fin 3,
          (((Finset.range length).filter fun q =>
            e1FinitePairSurvives
              (e1FiniteRootBad roots) pair q).card : Rat)) -
        ((Finset.range length).filter fun q =>
          e1FiniteTripleSurvives
            (e1FiniteRootBad roots) q).card := by
    exact_mod_cast hidInt
  dsimp [patterns] at hpair htriple hpairSum ⊢
  rw [e1FiniteAllThreeDensityRat_decomposition,
    e1FiniteAllThreeEndpointRat_decomposition]
  rw [Finset.sum_sub_distrib] at hsingleSum
  simp only [Finset.sum_const, Finset.card_fin,
    nsmul_eq_mul] at hsingleSum
  rw [Finset.sum_add_distrib, ← Finset.mul_sum] at hpairSum
  ring_nf at hsingleSum hpairSum htriple hidRat ⊢
  linarith

theorem e1FiniteRootTwoOfThree_card_rat_le
    (length : Nat) (roots : E1FinitePivotRootFamily) :
    (((Finset.range length).filter fun q =>
        2 <= e1FiniteBadCount (e1FiniteRootBad roots) q).card : Rat) <=
      (length : Rat) * e1FiniteTwoOfThreeDensityRat
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) +
      e1FiniteTwoOfThreeEndpointRat
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) := by
  classical
  let patterns : E1FinitePrimeIndex -> E1FiniteRootPattern :=
    e1FiniteRootPatternAt roots
  have hpair : ∀ pair : Fin 3,
      (length : Rat) *
          e1FiniteNoEventDensityRat
            (e1FinitePairCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6) pair) 1 -
        e1FiniteNoEventEndpointRat
          (e1FinitePairCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6) pair) 1 <=
      (((Finset.range length).filter fun q =>
        e1FinitePairSurvives
          (e1FiniteRootBad roots) pair q).card : Rat) := by
    intro pair
    have h := e1FiniteNoEvent_lower_one length
      (e1FiniteRootPairRoots roots pair)
      (e1FiniteRootPairRoots_bound roots pair)
    rw [← e1FiniteRootPairSurvivor_filter_eq_noEvent] at h
    rw [e1FiniteRootPairRoots_card_function] at h
    exact h
  have htriple :
      (((Finset.range length).filter fun q =>
        e1FiniteTripleSurvives
          (e1FiniteRootBad roots) q).card : Rat) <=
      (length : Rat) *
          e1FiniteNoEventDensityRat
            (e1FiniteTripleCards
              (patterns 0) (patterns 1) (patterns 2) (patterns 3)
              (patterns 4) (patterns 5) (patterns 6)) 2 +
        e1FiniteNoEventEndpointRat
          (e1FiniteTripleCards
            (patterns 0) (patterns 1) (patterns 2) (patterns 3)
            (patterns 4) (patterns 5) (patterns 6)) 2 := by
    have h := e1FiniteNoEvent_upper_two length
      (e1FiniteRootTripleRoots roots)
      (e1FiniteRootTripleRoots_bound roots)
    rw [← e1FiniteRootTripleSurvivor_filter_eq_noEvent] at h
    rw [e1FiniteRootTripleRoots_card_function] at h
    exact h
  have hpairSum := Finset.sum_le_sum (s := Finset.univ)
    (fun pair _hpair => hpair pair)
  have hidInt := e1FiniteTwoOfThree_card_identity
    (Finset.range length) (e1FiniteRootBad roots)
  simp only [Finset.card_range] at hidInt
  have hidRat :
      (((Finset.range length).filter fun q =>
        2 <= e1FiniteBadCount (e1FiniteRootBad roots) q).card : Rat) =
      length -
        (∑ pair : Fin 3,
          (((Finset.range length).filter fun q =>
            e1FinitePairSurvives
              (e1FiniteRootBad roots) pair q).card : Rat)) +
        2 * ((Finset.range length).filter fun q =>
          e1FiniteTripleSurvives
            (e1FiniteRootBad roots) q).card := by
    exact_mod_cast hidInt
  dsimp [patterns] at hpair htriple hpairSum ⊢
  rw [e1FiniteTwoOfThreeDensityRat_decomposition,
    e1FiniteTwoOfThreeEndpointRat_decomposition]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum] at hpairSum
  ring_nf at hpairSum htriple hidRat ⊢
  linarith

#print axioms e1FiniteRootAllThree_card_rat_le
#print axioms e1FiniteRootTwoOfThree_card_rat_le

end Erdos848
