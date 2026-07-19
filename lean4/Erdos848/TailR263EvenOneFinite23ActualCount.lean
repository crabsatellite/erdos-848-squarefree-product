import Erdos848.TailR263EvenOneFinite23ActualRoots
import Erdos848.TailR263EvenOneFinite23RootBound

namespace Erdos848

/-! Actual mod-25 progression counts for a constrained total root cover. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

noncomputable def e1FiniteActualAllThreeResidue
    (N : Nat) (pivots : Finset Nat) (baseResidue : Nat) : Finset Nat :=
  (lowBaseSet N).filter fun point =>
    point % 25 = baseResidue ∧
      3 <= (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 23 pivot point).card

noncomputable def e1FiniteActualTwoOfThreeResidue
    (N : Nat) (pivots : Finset Nat) (baseResidue : Nat) : Finset Nat :=
  (lowBaseSet N).filter fun point =>
    point % 25 = baseResidue ∧
      2 <= (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 23 pivot point).card

noncomputable def e1FiniteRootAllThreePrefix
    (N : Nat) (roots : E1FinitePivotRootFamily) : Finset Nat :=
  (Finset.range (N / 25 + 1)).filter fun q =>
    e1FiniteAllThreeBad (e1FiniteRootBad roots) q

noncomputable def e1FiniteRootTwoOfThreePrefix
    (N : Nat) (roots : E1FinitePivotRootFamily) : Finset Nat :=
  (Finset.range (N / 25 + 1)).filter fun q =>
    2 <= e1FiniteBadCount (e1FiniteRootBad roots) q

theorem e1FiniteActualAllThreeResidue_card_le_rootPrefix
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q) :
    (e1FiniteActualAllThreeResidue N pivots baseResidue).card <=
      (e1FiniteRootAllThreePrefix N roots).card := by
  classical
  let source := e1FiniteActualAllThreeResidue N pivots baseResidue
  let target := e1FiniteRootAllThreePrefix N roots
  let quotient : Nat -> Nat := fun point => point / 25
  have hmap : Set.MapsTo quotient (source : Set Nat) target := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbounds := Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N hparts.1)
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, ?_⟩
    · dsimp [quotient]
      have hdiv : point / 25 <= N / 25 :=
        Nat.div_le_div_right hbounds.2
      omega
    · dsimp [quotient]
      have hforms :
          3 <= (e1FiniteActualForms pivots hcard point).card := by
        rw [e1FiniteActualForms_card]
        exact hparts.2.2
      have hsubset := e1FiniteActualForms_subset_rootBad
        hBout hvaluation hpivots hcard hparts.1 hparts.2.1 hextends
      have hrootCard :
          3 <= (Finset.univ.filter fun i : Fin 3 =>
            e1FiniteRootBad roots i (point / 25)).card :=
        hforms.trans (Finset.card_le_card hsubset)
      rw [← e1FiniteBadCount_eq_filter_card] at hrootCard
      exact e1FiniteAllThreeBad_of_three_le_badCount
        (e1FiniteRootBad roots) (point / 25) hrootCard
  have hinjective : Set.InjOn quotient (source : Set Nat) := by
    intro left hleft right hright heq
    have hleftMod := (Finset.mem_filter.mp hleft).2.1
    have hrightMod := (Finset.mem_filter.mp hright).2.1
    have hleftDecomp := Nat.mod_add_div left 25
    have hrightDecomp := Nat.mod_add_div right 25
    dsimp [quotient] at heq
    omega
  exact Finset.card_le_card_of_injOn quotient hmap hinjective

theorem e1FiniteActualTwoOfThreeResidue_card_le_rootPrefix
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q) :
    (e1FiniteActualTwoOfThreeResidue N pivots baseResidue).card <=
      (e1FiniteRootTwoOfThreePrefix N roots).card := by
  classical
  let source := e1FiniteActualTwoOfThreeResidue N pivots baseResidue
  let target := e1FiniteRootTwoOfThreePrefix N roots
  let quotient : Nat -> Nat := fun point => point / 25
  have hmap : Set.MapsTo quotient (source : Set Nat) target := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbounds := Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N hparts.1)
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, ?_⟩
    · dsimp [quotient]
      have hdiv : point / 25 <= N / 25 :=
        Nat.div_le_div_right hbounds.2
      omega
    · dsimp [quotient]
      rw [e1FiniteBadCount_eq_filter_card]
      have hforms :
          2 <= (e1FiniteActualForms pivots hcard point).card := by
        rw [e1FiniteActualForms_card]
        exact hparts.2.2
      exact hforms.trans (Finset.card_le_card
        (e1FiniteActualForms_subset_rootBad
          hBout hvaluation hpivots hcard hparts.1 hparts.2.1 hextends))
  have hinjective : Set.InjOn quotient (source : Set Nat) := by
    intro left hleft right hright heq
    have hleftMod := (Finset.mem_filter.mp hleft).2.1
    have hrightMod := (Finset.mem_filter.mp hright).2.1
    have hleftDecomp := Nat.mod_add_div left 25
    have hrightDecomp := Nat.mod_add_div right 25
    dsimp [quotient] at heq
    omega
  exact Finset.card_le_card_of_injOn quotient hmap hinjective

theorem e1FiniteActualAllThreeResidue_card_rat_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q) :
    ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) * e1FiniteAllThreeDensityRat
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
  have hcardNat := e1FiniteActualAllThreeResidue_card_le_rootPrefix
    hBout hvaluation hpivots hcard hextends
  have hcardRat :
      ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) <=
      ((e1FiniteRootAllThreePrefix N roots).card : Rat) := by
    exact_mod_cast hcardNat
  exact hcardRat.trans (by
    simpa [e1FiniteRootAllThreePrefix] using
      e1FiniteRootAllThree_card_rat_le (N / 25 + 1) roots)

theorem e1FiniteActualTwoOfThreeResidue_card_rat_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q) :
    ((e1FiniteActualTwoOfThreeResidue
        N pivots baseResidue).card : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) * e1FiniteTwoOfThreeDensityRat
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
  have hcardNat := e1FiniteActualTwoOfThreeResidue_card_le_rootPrefix
    hBout hvaluation hpivots hcard hextends
  have hcardRat :
      ((e1FiniteActualTwoOfThreeResidue
        N pivots baseResidue).card : Rat) <=
      ((e1FiniteRootTwoOfThreePrefix N roots).card : Rat) := by
    exact_mod_cast hcardNat
  exact hcardRat.trans (by
    simpa [e1FiniteRootTwoOfThreePrefix] using
      e1FiniteRootTwoOfThree_card_rat_le (N / 25 + 1) roots)

#print axioms e1FiniteActualAllThreeResidue_card_rat_le
#print axioms e1FiniteActualTwoOfThreeResidue_card_rat_le

end Erdos848
