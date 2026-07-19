import Erdos848.TailR263EvenOneFinite23Profile
import Erdos848.TailR263FourPivotTerminal

namespace Erdos848

/-!
# Hall-base payments for the literal E1 cutoff-23 certificate

This file makes the finite certificate act on the unchanged Hall cut.  The
only split is the existing disjoint pair of base progressions, modulo 25
residues 7 and 18.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem e1FiniteHallBaseThreshold_card_le_residues
    (N : Nat) (B pivots : Finset Nat) (threshold : Nat) :
    ((hallBasePart N B).filter fun point =>
        threshold <= (pivots.filter fun pivot =>
          finiteSquarePrimeEvent 23 pivot point).card).card <=
      ((lowBaseSet N).filter fun point =>
        point % 25 = 7 ∧
          threshold <= (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 23 pivot point).card).card +
      ((lowBaseSet N).filter fun point =>
        point % 25 = 18 ∧
          threshold <= (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 23 pivot point).card).card := by
  classical
  let source := (hallBasePart N B).filter fun point =>
    threshold <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 23 pivot point).card
  let seven := (lowBaseSet N).filter fun point =>
    point % 25 = 7 ∧
      threshold <= (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 23 pivot point).card
  let eighteen := (lowBaseSet N).filter fun point =>
    point % 25 = 18 ∧
      threshold <= (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 23 pivot point).card
  have hsubset : source ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbase := (Finset.mem_inter.mp hparts.1).2
    rcases Finset.mem_union.mp hbase with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp hseven).2, hparts.2⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp heightteen).2, hparts.2⟩
  exact (Finset.card_le_card hsubset).trans
    (Finset.card_union_le seven eighteen)

theorem e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hcommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .common →
        ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .noncommon →
        ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat cellType := by
  classical
  let source := eventIntersection (hallBasePart N B)
    (finiteSquarePrimeEvent 23) pivots
  let seven := e1FiniteActualAllThreeResidue N pivots 7
  let eighteen := e1FiniteActualAllThreeResidue N pivots 18
  have hsubset : source ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbase := (Finset.mem_inter.mp hparts.1).2
    have hfinite :
        pivots.filter (fun pivot =>
          finiteSquarePrimeEvent 23 pivot point) = pivots :=
      Finset.filter_eq_self.mpr fun pivot hpivot =>
        hparts.2 pivot hpivot
    have hthree :
        3 <= (pivots.filter fun pivot =>
          finiteSquarePrimeEvent 23 pivot point).card := by
      rw [hfinite, hcard]
    rcases Finset.mem_union.mp hbase with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp hseven).2, hthree⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp heightteen).2, hthree⟩
  have hcardNat : source.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le seven eighteen)
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hsource :
      (source.card : Rat) / N <=
        (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
    have hcardRat :
        (source.card : Rat) <=
          (seven.card : Rat) + (eighteen.card : Rat) := by
      exact_mod_cast hcardNat
    calc
      (source.card : Rat) / N <=
          ((seven.card : Rat) + (eighteen.card : Rat)) / N :=
        div_le_div_of_nonneg_right hcardRat hNpos.le
      _ = (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
        rw [add_div]
  have hseven := e1FiniteActualAllThreeResidue_ratio_le_of_profile
    hLower hBout hvaluation hpivots hcard 7 cellType
      hcommonResidue hnoncommonResidue
  have heightteen := e1FiniteActualAllThreeResidue_ratio_le_of_profile
    hLower hBout hvaluation hpivots hcard 18 cellType
      hcommonResidue hnoncommonResidue
  dsimp [source, seven, eighteen] at hsource hseven heightteen ⊢
  linarith

noncomputable def fiveMillionR263BaseMixedHalfPayment
    (N : Nat) (B pivots : Finset Nat) (cutoff : Nat) : Rat := by
  classical
  exact (1 / 2 : Rat) *
    ((((hallBasePart N B).filter fun point =>
        3 <= (pivots.filter fun pivot =>
          finiteSquarePrimeEvent cutoff pivot point).card).card : Rat) +
      (((hallBasePart N B).filter fun point =>
        2 <= (pivots.filter fun pivot =>
          finiteSquarePrimeEvent cutoff pivot point).card).card : Rat))

theorem e1FiniteHallBaseMixedHalfPayment_ratio_le_of_profile
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hcommonResidue : ∀ index,
      e1FiniteConstraintForProfile .common cellType index = .common →
        ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index,
      e1FiniteConstraintForProfile .common cellType index = .noncommon →
        ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      e1FiniteThreeTargetRat cellType := by
  classical
  let allThree := (hallBasePart N B).filter fun point =>
    3 <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 23 pivot point).card
  let twoOfThree := (hallBasePart N B).filter fun point =>
    2 <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 23 pivot point).card
  let sevenAll := e1FiniteActualAllThreeResidue N pivots 7
  let eighteenAll := e1FiniteActualAllThreeResidue N pivots 18
  let sevenTwo := e1FiniteActualTwoOfThreeResidue N pivots 7
  let eighteenTwo := e1FiniteActualTwoOfThreeResidue N pivots 18
  have hallNat :
      allThree.card <= sevenAll.card + eighteenAll.card := by
    simpa [allThree, sevenAll, eighteenAll,
      e1FiniteActualAllThreeResidue] using
        e1FiniteHallBaseThreshold_card_le_residues N B pivots 3
  have htwoNat :
      twoOfThree.card <= sevenTwo.card + eighteenTwo.card := by
    simpa [twoOfThree, sevenTwo, eighteenTwo,
      e1FiniteActualTwoOfThreeResidue] using
        e1FiniteHallBaseThreshold_card_le_residues N B pivots 2
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hcombined :
      ((1 / 2 : Rat) *
          ((allThree.card : Rat) + (twoOfThree.card : Rat))) / N <=
        (1 / 2 : Rat) *
          (((sevenAll.card : Rat) + (sevenTwo.card : Rat)) / N +
            ((eighteenAll.card : Rat) +
              (eighteenTwo.card : Rat)) / N) := by
    have hallRat :
        (allThree.card : Rat) <=
          (sevenAll.card : Rat) + (eighteenAll.card : Rat) := by
      exact_mod_cast hallNat
    have htwoRat :
        (twoOfThree.card : Rat) <=
          (sevenTwo.card : Rat) + (eighteenTwo.card : Rat) := by
      exact_mod_cast htwoNat
    have hsum := add_le_add hallRat htwoRat
    calc
      ((1 / 2 : Rat) *
          ((allThree.card : Rat) + (twoOfThree.card : Rat))) / N <=
          ((1 / 2 : Rat) *
            (((sevenAll.card : Rat) + (eighteenAll.card : Rat)) +
              ((sevenTwo.card : Rat) +
                (eighteenTwo.card : Rat)))) / N := by
            gcongr
      _ = (1 / 2 : Rat) *
          (((sevenAll.card : Rat) + (sevenTwo.card : Rat)) / N +
            ((eighteenAll.card : Rat) +
              (eighteenTwo.card : Rat)) / N) := by ring
  have hseven := e1FiniteActualMixedResidue_ratio_le_of_profile
    hLower hBout hvaluation hpivots hcard 7 cellType
      hcommonResidue hnoncommonResidue
  have heightteen := e1FiniteActualMixedResidue_ratio_le_of_profile
    hLower hBout hvaluation hpivots hcard 18 cellType
      hcommonResidue hnoncommonResidue
  unfold fiveMillionR263BaseMixedHalfPayment
  dsimp [allThree, twoOfThree, sevenAll, eighteenAll,
    sevenTwo, eighteenTwo] at hcombined hseven heightteen ⊢
  calc
    ((1 / 2 : Rat) *
        (((hallBasePart N B).filter fun point =>
          3 <= (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 23 pivot point).card).card +
        ((hallBasePart N B).filter fun point =>
          2 <= (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 23 pivot point).card).card)) / N <=
      (1 / 2 : Rat) *
        ((((e1FiniteActualAllThreeResidue N pivots 7).card : Rat) +
            (e1FiniteActualTwoOfThreeResidue N pivots 7).card) / N +
          (((e1FiniteActualAllThreeResidue N pivots 18).card : Rat) +
            (e1FiniteActualTwoOfThreeResidue N pivots 18).card) / N) :=
      hcombined
    _ <= e1FiniteThreeTargetRat cellType := by
      linarith

#print axioms e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
#print axioms e1FiniteHallBaseMixedHalfPayment_ratio_le_of_profile

end Erdos848
