import Erdos848.GeneratedTailTwentyMillionFinite23.Certificate
import Erdos848.TailR263EvenOneFinite23Classified
import Erdos848.TailR263EvenOneFinite23HallPayment
import Erdos848.TailR263EvenOneFinite23Profile
import Erdos848.TailTwentyMillionPivotAllocation

namespace Erdos848

/-!
# Literal cutoff-23 finite payments on the twenty-million block

The non-common mod-nine row uses one uniform exact certificate for the
mixed-half Hall payment.  The common row reuses the existing classified
cutoff-23 certificate; its proof is independent of which even valuation
class contains the three pivots.
-/

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem twentyMillionFiniteGeneric23Densities_nonneg_and_payment_le
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    0 <= e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 ∧
      0 <= e1FiniteTwoOfThreeDensityRat
        p3 p7 p11 p13 p17 p19 p23 ∧
      (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeDensityRat
            p3 p7 p11 p13 p17 p19 p23) / 25 +
        (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
            e1FiniteTwoOfThreeDensityRat
              p3 p7 p11 p13 p17 p19 p23 +
            e1FiniteAllThreeEndpointRat
              p3 p7 p11 p13 p17 p19 p23 +
            e1FiniteTwoOfThreeEndpointRat
              p3 p7 p11 p13 p17 p19 p23) / 20_000_000 <=
          twentyMillionFiniteEvenGeneric23 := by
  have h := GeneratedTailTwentyMillionFinite23.generic_all
    p3 p7 p11 p13 p17 p19 p23 hp3
  unfold twentyMillionFiniteGeneric23CrossInequality at h
  dsimp only at h
  constructor
  · unfold e1FiniteAllThreeDensityRat
    apply div_nonneg
    · exact_mod_cast h.1
    · norm_num [e1FiniteFullModulus]
  constructor
  · unfold e1FiniteTwoOfThreeDensityRat
    apply div_nonneg
    · exact_mod_cast h.2.1
    · norm_num [e1FiniteFullModulus]
  · have hq :
        (1_000_000 : Rat) *
            (((e1FiniteAllThreeNumerator
                p3 p7 p11 p13 p17 p19 p23 : Rat) +
              e1FiniteTwoOfThreeNumerator
                p3 p7 p11 p13 p17 p19 p23) * 20_000_000 +
              25 * (((e1FiniteAllThreeNumerator
                  p3 p7 p11 p13 p17 p19 p23 : Rat) +
                e1FiniteTwoOfThreeNumerator
                  p3 p7 p11 p13 p17 p19 p23) +
                (e1FiniteAllThreeEndpoint
                    p3 p7 p11 p13 p17 p19 p23 +
                  e1FiniteTwoOfThreeEndpoint
                    p3 p7 p11 p13 p17 p19 p23) *
                    e1FiniteFullModulus)) <=
          8_685 * e1FiniteFullModulus * 25 * 20_000_000 := by
      exact_mod_cast h.2.2
    unfold e1FiniteAllThreeDensityRat e1FiniteTwoOfThreeDensityRat
      e1FiniteAllThreeEndpointRat e1FiniteTwoOfThreeEndpointRat
      twentyMillionFiniteEvenGeneric23
    norm_num [e1FiniteFullModulus] at hq ⊢
    linarith

private theorem twentyMillionFinitePrefix_ratio_le
    {N count : Nat} {density endpoint : Rat}
    (hLower : 20_000_000 <= N)
    (hdensity : 0 <= density)
    (hendpoint : 0 <= endpoint)
    (hcount : (count : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N <=
      density / 25 + (density + endpoint) / 20_000_000 := by
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
  have hLowerQ : (20_000_000 : Rat) <= N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) <=
        (density + endpoint) / 20_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N <=
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ <= density / 25 + (density + endpoint) / 20_000_000 := by
      gcongr

theorem twentyMillionFiniteActualMixedResidue_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q)
    (hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual) :
    (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) / N <=
      twentyMillionFiniteEvenGeneric23 := by
  let p3 := e1FiniteRootPatternAt roots 0
  let p7 := e1FiniteRootPatternAt roots 1
  let p11 := e1FiniteRootPatternAt roots 2
  let p13 := e1FiniteRootPatternAt roots 3
  let p17 := e1FiniteRootPatternAt roots 4
  let p19 := e1FiniteRootPatternAt roots 5
  let p23 := e1FiniteRootPatternAt roots 6
  have hcert := twentyMillionFiniteGeneric23Densities_nonneg_and_payment_le
    p3 p7 p11 p13 p17 p19 p23 hp3
  have hall := e1FiniteActualAllThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  have htwo := e1FiniteActualTwoOfThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  have hraw :
      (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) <=
      ((N / 25 + 1 : Nat) : Rat) *
        (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeDensityRat
            p3 p7 p11 p13 p17 p19 p23) +
        (e1FiniteAllThreeEndpointRat p3 p7 p11 p13 p17 p19 p23 +
          e1FiniteTwoOfThreeEndpointRat
            p3 p7 p11 p13 p17 p19 p23) := by
    dsimp [p3, p7, p11, p13, p17, p19, p23] at hall htwo ⊢
    linarith
  have hdensity :
      0 <= e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
        e1FiniteTwoOfThreeDensityRat
          p3 p7 p11 p13 p17 p19 p23 :=
    add_nonneg hcert.1 hcert.2.1
  have hendpoint :
      0 <= e1FiniteAllThreeEndpointRat p3 p7 p11 p13 p17 p19 p23 +
        e1FiniteTwoOfThreeEndpointRat
          p3 p7 p11 p13 p17 p19 p23 := by
    unfold e1FiniteAllThreeEndpointRat e1FiniteTwoOfThreeEndpointRat
    positivity
  have hprefix := twentyMillionFinitePrefix_ratio_le
    (count :=
      (e1FiniteActualAllThreeResidue N pivots baseResidue).card +
        (e1FiniteActualTwoOfThreeResidue N pivots baseResidue).card)
    hLower hdensity hendpoint (by
      simpa only [Nat.cast_add] using hraw)
  simpa only [Nat.cast_add] using hprefix.trans (by
    simpa only [add_assoc] using hcert.2.2)

def twentyMillionFiniteGeneric23Constraint :
    E1FinitePrimeIndex -> E1FinitePatternConstraint :=
  fun index => if index = 0 then .noncommon else .free

theorem twentyMillionFiniteActualMixedResidue_ratio_le_of_noncommon_three
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (baseResidue : Nat)
    (hthree : ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
      globalMixedThreePivotAt pivots hcard i %
        e1FiniteModulus 0 = residue.val) :
    (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) / N <=
      twentyMillionFiniteEvenGeneric23 := by
  obtain ⟨roots, hextends, _hcommon, hnoncommon⟩ :=
    e1FiniteActual_exists_constrained_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      twentyMillionFiniteGeneric23Constraint
      (by
        intro index hindex
        by_cases hi : index = 0 <;>
          simp [twentyMillionFiniteGeneric23Constraint, hi] at hindex)
      (by
        intro index hindex
        have hi : index = 0 := by
          by_contra hi
          simp [twentyMillionFiniteGeneric23Constraint, hi] at hindex
        subst index
        exact hthree)
  have hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual :=
    hnoncommon 0 (by
      simp [twentyMillionFiniteGeneric23Constraint])
  exact twentyMillionFiniteActualMixedResidue_ratio_le
    hLower hBout hvaluation hpivots hcard hextends hp3

private theorem twentyMillionFiniteHallBaseThreshold_card_le_residues
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

theorem twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_generic
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (hthree : ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
      globalMixedThreePivotAt pivots hcard i %
        e1FiniteModulus 0 = residue.val) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      twentyMillionFiniteEvenGeneric23 := by
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
        twentyMillionFiniteHallBaseThreshold_card_le_residues
          N B pivots 3
  have htwoNat :
      twoOfThree.card <= sevenTwo.card + eighteenTwo.card := by
    simpa [twoOfThree, sevenTwo, eighteenTwo,
      e1FiniteActualTwoOfThreeResidue] using
        twentyMillionFiniteHallBaseThreshold_card_le_residues
          N B pivots 2
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
  have hseven :=
    twentyMillionFiniteActualMixedResidue_ratio_le_of_noncommon_three
      hLower hBout hvaluation hpivots hcard 7 hthree
  have heightteen :=
    twentyMillionFiniteActualMixedResidue_ratio_le_of_noncommon_three
      hLower hBout hvaluation hpivots hcard 18 hthree
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
    _ <= twentyMillionFiniteEvenGeneric23 := by
      linarith

private theorem twentyMillionFiniteCommon23_profile
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hthree : e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : e1FiniteTripleCommonAt pivots hcard 1 ↔
      cellType = .seven ∨ cellType = .both)
    (heleven : e1FiniteTripleCommonAt pivots hcard 2 ↔
      cellType = .eleven ∨ cellType = .both) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      e1FiniteThreeTargetRat cellType := by
  apply e1FiniteHallBaseMixedHalfPayment_ratio_le_of_profile
    (by omega) hBout hvaluation hpivots hcard cellType
  · intro index hindex
    fin_cases index
    · exact hthree
    · apply hseven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex ⊢
    · apply heleven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex ⊢
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · intro hcommon
      have htype := hseven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex htype
    · intro hcommon
      have htype := heleven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex htype
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

theorem twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_common
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (hthree : e1FiniteTripleCommonAt pivots hcard 0) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      12_616 / 1_000_000 := by
  by_cases hseven : e1FiniteTripleCommonAt pivots hcard 1
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · simpa [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion] using
        twentyMillionFiniteCommon23_profile hLower hBout hvaluation
          hpivots hcard .both hthree (by simp [hseven])
            (by simp [heleven])
    · have h := twentyMillionFiniteCommon23_profile hLower hBout hvaluation
        hpivots hcard .seven hthree (by simp [hseven])
          (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · have h := twentyMillionFiniteCommon23_profile hLower hBout hvaluation
        hpivots hcard .eleven hthree (by simp [hseven])
          (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])
    · have h := twentyMillionFiniteCommon23_profile hLower hBout hvaluation
        hpivots hcard .good hthree (by simp [hseven])
          (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])

theorem twentyMillionCloseTriple_commonModNine_iff_e1Finite
    {N : Nat} {B : Finset Nat} {valuation : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B valuation) :
    triple.CommonModNine ↔
      e1FiniteTripleCommonAt triple.pivots triple.card 0 := by
  constructor
  · rintro ⟨cell, hcell⟩
    refine ⟨⟨cell.val, by
      simpa [e1FiniteModulus] using cell.isLt⟩, ?_⟩
    intro i
    have hi := hcell
      (globalMixedThreePivotAt triple.pivots triple.card i)
      (globalMixedThreePivotAt_mem triple.pivots triple.card i)
    have hval := congrArg Fin.val hi
    simpa [TwentyMillion.paperModNineCell_val, e1FiniteModulus] using hval
  · rintro ⟨residue, hresidue⟩
    let cell : Fin 9 := ⟨residue.val, by
      simpa [e1FiniteModulus] using residue.isLt⟩
    refine ⟨cell, ?_⟩
    intro pivot hpivot
    obtain ⟨i, hi⟩ :=
      globalMixedThreePivotAt_surjective_on
        triple.pivots triple.card hpivot
    apply Fin.ext
    simpa [cell, hi, TwentyMillion.paperModNineCell_val,
      e1FiniteModulus] using hresidue i

theorem twentyMillionEvenFinite23Payment_ratio_le_generic
    {N : Nat} {B : Finset Nat} {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (triple : TwentyMillionCloseTriple N B valuation)
    (hnonconstant : ¬ triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 23 / N <=
      twentyMillionFiniteEvenGeneric23 := by
  apply twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_generic
    hLower hBout hvaluation triple.subsetPart triple.card
  simpa [e1FiniteTripleCommonAt] using
    (fun h => hnonconstant
      ((twentyMillionCloseTriple_commonModNine_iff_e1Finite
        triple).mpr h))

theorem twentyMillionEvenFinite23Payment_ratio_le_common
    {N : Nat} {B : Finset Nat} {valuation : FiveMillionValuationClass}
    (hLower : 20_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (triple : TwentyMillionCloseTriple N B valuation)
    (hcommon : triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 23 / N <=
      12_616 / 1_000_000 := by
  apply twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_common
    hLower hBout hvaluation triple.subsetPart triple.card
  exact (twentyMillionCloseTriple_commonModNine_iff_e1Finite
    triple).mp hcommon

#print axioms twentyMillionFiniteGeneric23Densities_nonneg_and_payment_le
#print axioms twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_generic
#print axioms twentyMillionFiniteHallBaseMixedHalfPayment_ratio_le_common
#print axioms twentyMillionEvenFinite23Payment_ratio_le_generic
#print axioms twentyMillionEvenFinite23Payment_ratio_le_common

end Erdos848
