import Erdos848.ScratchE3Actual

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

noncomputable def scratchE3ActualThresholdResidue
    (N : Nat) (pivots : Finset Nat) (baseResidue : Nat) : Finset Nat :=
  (lowBaseSet N).filter fun point =>
    point % 25 = baseResidue ∧
      2 <= (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card

noncomputable def scratchE3ActualRootThreshold
    (N baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 3) : Finset Nat :=
  (Finset.range (N / 25 + 1)).filter fun q =>
    2 <= scratchE3BadCount
      (scratchE3RootBad
        (scratchE3ActualRoots baseResidue pivots hcard)) q

theorem scratchE3ActualThresholdResidue_card_le_rootThreshold
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} :
    (scratchE3ActualThresholdResidue N pivots baseResidue).card <=
      (scratchE3ActualRootThreshold
        N baseResidue pivots hcard).card := by
  classical
  let source := scratchE3ActualThresholdResidue N pivots baseResidue
  let target := scratchE3ActualRootThreshold N baseResidue pivots hcard
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
      exact scratchE3Actual_threshold_implies_rootThreshold
        hBout hvaluation hpivots hcard hparts.1 hparts.2.1 hparts.2.2
  have hinjective : Set.InjOn quotient (source : Set Nat) := by
    intro left hleft right hright heq
    have hleftMod := (Finset.mem_filter.mp hleft).2.1
    have hrightMod := (Finset.mem_filter.mp hright).2.1
    have hleftDecomp := Nat.mod_add_div left 25
    have hrightDecomp := Nat.mod_add_div right 25
    dsimp [quotient] at heq
    omega
  exact Finset.card_le_card_of_injOn quotient hmap hinjective

theorem scratchE3ActualThresholdResidue_card_rat_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {cell baseResidue : Nat}
    (hmod : ∀ pivot : Fin 3,
      globalMixedThreePivotAt pivots hcard pivot % 9 = cell) :
    ((scratchE3ActualThresholdResidue
        N pivots baseResidue).card : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) *
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
            (scratchE3ActualRoots baseResidue pivots hcard) 5) := by
  have hcardNat :=
    scratchE3ActualThresholdResidue_card_le_rootThreshold
      hBout hvaluation hpivots hcard (baseResidue := baseResidue)
  have hcardRat :
      ((scratchE3ActualThresholdResidue
        N pivots baseResidue).card : Rat) <=
      ((scratchE3ActualRootThreshold
        N baseResidue pivots hcard).card : Rat) := by
    exact_mod_cast hcardNat
  have hroot := scratchE3RootThreshold_card_rat_le
    (N / 25 + 1) (scratchE3ActualRoots baseResidue pivots hcard)
      (scratchE3ActualRoots_common hmod)
  exact hcardRat.trans (by
    simpa [scratchE3ActualRootThreshold] using hroot)

#print axioms scratchE3ActualThresholdResidue_card_le_rootThreshold
#print axioms scratchE3ActualThresholdResidue_card_rat_le

end Erdos848
