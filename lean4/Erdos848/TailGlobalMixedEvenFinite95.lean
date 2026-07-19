import Erdos848.TailGlobalMixedPairTailReduction
import Erdos848.TailTransformedRootCounting

namespace Erdos848

/-!
# The literal cutoff-95 finite alphabet for even residual pivots

For an even residual pivot and a point in either sharp base progression,
prime `2` cannot divide the form and prime `5` would force the pivot back
into a base progression.  Thus the cutoff-95 finite event has exactly the
twenty-two prime witnesses encoded below.  This is the semantic alphabet
used by the finite collision certificate; it is not a numerical surrogate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedEvenFinitePrimes95 : Finset Nat :=
  (Finset.Icc 2 95).filter fun p =>
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5

@[simp] theorem mem_globalMixedEvenFinitePrimes95 {p : Nat} :
    p ∈ globalMixedEvenFinitePrimes95 ↔
      Nat.Prime p ∧ p ≤ 95 ∧ p ≠ 2 ∧ p ≠ 5 := by
  constructor
  · intro hp
    have hparts := Finset.mem_filter.mp hp
    exact ⟨hparts.2.1, (Finset.mem_Icc.mp hparts.1).2,
      hparts.2.2.1, hparts.2.2.2⟩
  · rintro ⟨hpPrime, hpUpper, hpTwo, hpFive⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hpPrime.two_le, hpUpper⟩,
        hpPrime, hpTwo, hpFive⟩

theorem globalMixedEvenFinitePrimes95_card :
    globalMixedEvenFinitePrimes95.card = 22 := by
  decide

lemma two_square_not_dvd_even_form
    {pivot point : Nat} (hpivotEven : Even pivot) :
    ¬ 2 ^ 2 ∣ pivot * point + 1 := by
  intro hfour
  have hrightOdd : Odd (pivot * point + 1) :=
    (hpivotEven.mul_right point).add_one
  have htwo : 2 ∣ pivot * point + 1 :=
    dvd_trans (by norm_num : 2 ∣ 2 ^ 2) hfour
  exact hrightOdd.not_two_dvd_nat htwo

def IsGlobalMixedEvenValuationClass
    (valuation : FiveMillionValuationClass) : Prop :=
  valuation = .evenOne ∨
    valuation = .evenTwo ∨
      valuation = .evenThree

lemma even_of_mem_evenValuationPart
    {N x : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hx : x ∈ fiveMillionValuationPart N B valuation) :
    Even x := by
  rcases hvaluation with rfl | rfl | rfl
  · apply Nat.even_iff.mpr
    have hmod := fiveMillionValuationPart_evenOne hx
    omega
  · apply Nat.even_iff.mpr
    have hmod := fiveMillionValuationPart_evenTwo hx
    omega
  · apply Nat.even_iff.mpr
    have hmod := fiveMillionValuationPart_evenThree hx
    omega

private lemma globalMixedPivot_mod25_eq_seven_of_event
    {pivot point : Nat}
    (hpoint : point % 25 = 7)
    (hevent : 25 ∣ pivot * point + 1) :
    pivot % 25 = 7 := by
  have hzero := Nat.dvd_iff_mod_eq_zero.mp hevent
  rw [Nat.add_mod, Nat.mul_mod, hpoint] at hzero
  norm_num at hzero
  let r := pivot % 25
  change r = 7
  have hr : r < 25 := Nat.mod_lt pivot (by norm_num)
  have hzero' : (r * 7 % 25 + 1) % 25 = 0 := by
    simpa [r] using hzero
  clear hpoint hevent hzero
  clear_value r
  clear pivot point
  interval_cases r <;> norm_num at hzero'
  all_goals norm_num

private lemma globalMixedPivot_mod25_eq_eighteen_of_event
    {pivot point : Nat}
    (hpoint : point % 25 = 18)
    (hevent : 25 ∣ pivot * point + 1) :
    pivot % 25 = 18 := by
  have hzero := Nat.dvd_iff_mod_eq_zero.mp hevent
  rw [Nat.add_mod, Nat.mul_mod, hpoint] at hzero
  norm_num at hzero
  let r := pivot % 25
  change r = 18
  have hr : r < 25 := Nat.mod_lt pivot (by norm_num)
  have hzero' : (r * 18 % 25 + 1) % 25 = 0 := by
    simpa [r] using hzero
  clear hpoint hevent hzero
  clear_value r
  clear pivot point
  interval_cases r <;> norm_num at hzero'
  all_goals norm_num

private lemma globalMixedFive_not_event_on_originalA7
    {N pivot point : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ OriginalA7 N) :
    ¬ 5 ^ 2 ∣ pivot * point + 1 := by
  intro hevent
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivot).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotMod := globalMixedPivot_mod25_eq_seven_of_event
    (Finset.mem_filter.mp hpoint).2 (by norm_num at hevent ⊢; exact hevent)
  apply (Finset.mem_sdiff.mp hpivot).2
  apply Finset.mem_union_left
  exact Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩

private lemma globalMixedFive_not_event_on_originalA18
    {N pivot point : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ OriginalA18 N) :
    ¬ 5 ^ 2 ∣ pivot * point + 1 := by
  intro hevent
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivot).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotMod := globalMixedPivot_mod25_eq_eighteen_of_event
    (Finset.mem_filter.mp hpoint).2 (by norm_num at hevent ⊢; exact hevent)
  apply (Finset.mem_sdiff.mp hpivot).2
  apply Finset.mem_union_right
  exact Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩

/-- Prime `5` cannot witness a square event between a residual pivot and
either sharp base progression. -/
lemma five_square_not_dvd_residual_base
    {N pivot point : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ lowBaseSet N) :
    ¬ 5 ^ 2 ∣ pivot * point + 1 := by
  rcases Finset.mem_union.mp hpoint with hpoint7 | hpoint18
  · exact globalMixedFive_not_event_on_originalA7
      hBout hpivot hpoint7
  · exact globalMixedFive_not_event_on_originalA18
      hBout hpivot hpoint18

theorem finiteSquarePrimeEvent_iff_evenPrime95
    {N pivot point : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotEven : Even pivot)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 95 pivot point ↔
      ∃ p ∈ globalMixedEvenFinitePrimes95,
        p ^ 2 ∣ pivot * point + 1 := by
  constructor
  · rintro ⟨p, hpPrime, hpCutoff, hpDiv⟩
    have hpNotTwo : p ≠ 2 := by
      intro hp
      subst p
      exact two_square_not_dvd_even_form hpivotEven hpDiv
    have hpNotFive : p ≠ 5 := by
      intro hp
      subst p
      rcases Finset.mem_union.mp hpoint with hpoint7 | hpoint18
      · exact globalMixedFive_not_event_on_originalA7
          hBout hpivotResidual hpoint7 hpDiv
      · exact globalMixedFive_not_event_on_originalA18
          hBout hpivotResidual hpoint18 hpDiv
    exact ⟨p, mem_globalMixedEvenFinitePrimes95.mpr
      ⟨hpPrime, hpCutoff, hpNotTwo, hpNotFive⟩, hpDiv⟩
  · rintro ⟨p, hpFinite, hpDiv⟩
    have hpParts := mem_globalMixedEvenFinitePrimes95.mp hpFinite
    exact ⟨p, hpParts.1, hpParts.2.1, hpDiv⟩

theorem finiteSquarePrimeEvent_iff_evenValuationPrime95
    {N pivot point : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivot : pivot ∈ fiveMillionValuationPart N B valuation)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 95 pivot point ↔
      ∃ p ∈ globalMixedEvenFinitePrimes95,
        p ^ 2 ∣ pivot * point + 1 := by
  exact finiteSquarePrimeEvent_iff_evenPrime95 hBout
    (fiveMillionValuationPart_subset_residual N B valuation hpivot)
    (even_of_mem_evenValuationPart hvaluation hpivot) hpoint

def globalMixedPrimeEventPivots
    (p point : Nat) (pivots : Finset Nat) : Finset Nat :=
  pivots.filter fun pivot => p ^ 2 ∣ pivot * point + 1

theorem globalMixedPrimeEventPivots_card_le_collisionBlock
    {p point : Nat} {pivots : Finset Nat}
    (hp : Nat.Prime p)
    (hspan : ∀ x ∈ pivots, ∀ y ∈ pivots,
      x < y → y - x < 9210) :
    (globalMixedPrimeEventPivots p point pivots).card ≤
      9210 / p ^ 2 + 1 := by
  classical
  let active := globalMixedPrimeEventPivots p point pivots
  change active.card ≤ 9210 / p ^ 2 + 1
  by_cases hactive : active.Nonempty
  · let anchor := active.min' hactive
    let shifted := active.image fun x => x - anchor
    have hanchorActive : anchor ∈ active := Finset.min'_mem active hactive
    have hactiveSubset : active ⊆ pivots := by
      exact Finset.filter_subset _ _
    have hanchorPivot : anchor ∈ pivots := hactiveSubset hanchorActive
    have hanchorLe : ∀ x ∈ active, anchor ≤ x := by
      intro x hx
      exact Finset.min'_le active x hx
    have hinjective : Set.InjOn (fun x => x - anchor) active := by
      intro x hx y hy hxy
      change x - anchor = y - anchor at hxy
      have hxLe := hanchorLe x hx
      have hyLe := hanchorLe y hy
      calc
        x = anchor + (x - anchor) := (Nat.add_sub_of_le hxLe).symm
        _ = anchor + (y - anchor) := by rw [hxy]
        _ = y := Nat.add_sub_of_le hyLe
    have hcard : active.card = shifted.card := by
      exact (Finset.card_image_iff.mpr hinjective).symm
    have hupper : ∀ z ∈ shifted, z < 9210 := by
      intro z hz
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hz
      have hxPivot := hactiveSubset hx
      have hxLe := hanchorLe x hx
      by_cases hxa : x = anchor
      · subst x
        simp
      · have hax : anchor < x := lt_of_le_of_ne hxLe (Ne.symm hxa)
        exact hspan anchor hanchorPivot x hxPivot hax
    have hgap : ∀ a ∈ shifted, ∀ b ∈ shifted,
        a < b → p ^ 2 ≤ b - a := by
      intro a ha b hb hab
      obtain ⟨x, hx, hxa⟩ := Finset.mem_image.mp ha
      obtain ⟨y, hy, hyb⟩ := Finset.mem_image.mp hb
      subst a
      subst b
      change x - anchor < y - anchor at hab
      have hxLe := hanchorLe x hx
      have hyLe := hanchorLe y hy
      have hxy : x < y := (Nat.sub_lt_sub_iff_right hxLe).mp hab
      have hxEvent := (Finset.mem_filter.mp hx).2
      have hyEvent := (Finset.mem_filter.mp hy).2
      have hdiv := common_squarePrime_dvd_pivotDifference
        hp hxy.le hxEvent hyEvent
      have hpositive : 0 < y - x := Nat.sub_pos_of_lt hxy
      have hpSquareLe : p ^ 2 ≤ y - x := Nat.le_of_dvd hpositive hdiv
      have hdiff : (y - anchor) - (x - anchor) = y - x := by
        rw [Nat.sub_sub, Nat.add_sub_of_le hxLe]
      simpa [hdiff] using hpSquareLe
    have hbound := card_le_div_add_one_of_pairwise_gap
      shifted 9210 (p ^ 2) (pow_pos hp.pos 2) hupper hgap
    rw [hcard]
    exact hbound
  · have hempty : active = ∅ := Finset.not_nonempty_iff_eq_empty.mp hactive
    simp [active, hempty]

def GlobalMixedEvenEightPivotPairTailTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 ≤ N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      IsGlobalMixedEvenValuationClass valuation →
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 8 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210) →
        ((globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 95 5 +
            globalMixedBasePairTailPayment N pivots 95 5) / N <
              tailHallTarget N

#print axioms globalMixedEvenFinitePrimes95_card
#print axioms two_square_not_dvd_even_form
#print axioms even_of_mem_evenValuationPart
#print axioms five_square_not_dvd_residual_base
#print axioms finiteSquarePrimeEvent_iff_evenValuationPrime95
#print axioms globalMixedPrimeEventPivots_card_le_collisionBlock

end Erdos848
