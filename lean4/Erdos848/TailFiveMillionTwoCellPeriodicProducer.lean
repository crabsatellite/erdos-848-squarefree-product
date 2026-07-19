import Erdos848.TailFiveMillionTwoCellPeriodicBridge
import Erdos848.TailFiveMillionFiveCellPeriodicProducer
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-! Actual `[3,3]` six-pivot producer for two active cells. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure FiveMillionTwoCellSixPivotPattern
    (N : Nat) (B : Finset Nat) : Type where
  pivot : Fin 6 -> Nat
  pivotInjective : Function.Injective pivot
  pivotResidual : ∀ i, pivot i ∈ hallResidual N B
  modFourClass : FiveMillionModFour
  commonModFour : ∀ i, (pivot i : ZMod 4) = modFourClass.val
  modNineShape : ∀ residue : Fin 9,
    ((Finset.univ.filter fun i : Fin 6 =>
      oddModNineResidue (pivot i) = residue).card = 0) ∨
    ((Finset.univ.filter fun i : Fin 6 =>
      oddModNineResidue (pivot i) = residue).card = 3)
  modNineTriple :
    ((Finset.univ.filter fun residue : Fin 9 =>
      3 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card).card <= 2)

def FiveMillionTwoCellSixPivotPattern.pivots
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B) : Finset Nat :=
  Finset.univ.image pattern.pivot

lemma FiveMillionTwoCellSixPivotPattern.pivots_card
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B) :
    pattern.pivots.card = 6 := by
  rw [FiveMillionTwoCellSixPivotPattern.pivots,
    Finset.card_image_of_injective _ pattern.pivotInjective]
  simp

lemma FiveMillionTwoCellSixPivotPattern.pivots_subset_residual
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B) :
    pattern.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
  exact pattern.pivotResidual i

private lemma fiveMillionTwoCellModNineEvent_same_residue
    {baseResidue : Nat} {patternPivot : Fin 6 -> Nat}
    {q : FiveMillionModNine} {i j : FiveMillionFiniteForm}
    (hi : i ∈ fiveMillionFiveCellModNineEventFor
      baseResidue patternPivot q)
    (hj : j ∈ fiveMillionFiveCellModNineEventFor
      baseResidue patternPivot q) :
    oddModNineResidue (patternPivot i) =
      oddModNineResidue (patternPivot j) := by
  have hiEq : fiveMillionFiveCellModNineEquation
      baseResidue patternPivot q i := by
    simpa [fiveMillionFiveCellModNineEventFor] using hi
  have hjEq : fiveMillionFiveCellModNineEquation
      baseResidue patternPivot q j := by
    simpa [fiveMillionFiveCellModNineEventFor] using hj
  have hz : (patternPivot i : ZMod 9) = (patternPivot j : ZMod 9) :=
    mul_add_one_left_unique hiEq hjEq
  apply Fin.ext
  have hval := congrArg ZMod.val hz
  simpa [oddModNineResidue, ZMod.val_natCast] using hval

private lemma fiveMillionTwoCellModNineEvent_eq_rawFibre_of_mem
    {baseResidue : Nat} {patternPivot : Fin 6 -> Nat}
    {q : FiveMillionModNine} {i : FiveMillionFiniteForm}
    (hi : i ∈ fiveMillionFiveCellModNineEventFor
      baseResidue patternPivot q) :
    fiveMillionFiveCellModNineEventFor baseResidue patternPivot q =
      Finset.univ.filter fun j : Fin 6 =>
        oddModNineResidue (patternPivot j) =
          oddModNineResidue (patternPivot i) := by
  classical
  ext j
  constructor
  · intro hj
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
      fiveMillionTwoCellModNineEvent_same_residue hj hi⟩
  · intro hj
    have hjResidue := (Finset.mem_filter.mp hj).2
    have hiEq : fiveMillionFiveCellModNineEquation
        baseResidue patternPivot q i := by
      simpa [fiveMillionFiveCellModNineEventFor] using hi
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    unfold fiveMillionFiveCellModNineEquation at hiEq ⊢
    have hpivot : (patternPivot j : ZMod 9) =
        (patternPivot i : ZMod 9) := by
      apply (ZMod.natCast_eq_natCast_iff'
        (patternPivot j) (patternPivot i) 9).2
      have hval := congrArg Fin.val hjResidue
      simpa [oddModNineResidue] using hval
    rw [hpivot]
    exact hiEq

theorem fiveMillionTwoCellModNineEvent_shape
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (baseResidue : Nat) (q : FiveMillionModNine) :
    (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).card = 0 ∨
    (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).card = 3 := by
  classical
  by_cases hempty : (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).Nonempty
  · let i := Classical.choose hempty
    have hi : i ∈ fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q := Classical.choose_spec hempty
    rw [fiveMillionTwoCellModNineEvent_eq_rawFibre_of_mem hi]
    exact pattern.modNineShape (oddModNineResidue (pattern.pivot i))
  · left
    exact Finset.card_eq_zero.mpr (Finset.not_nonempty_iff_eq_empty.mp hempty)

theorem fiveMillionTwoCellModNineEvent_triple_card_le
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (baseResidue : Nat) :
    ((Finset.univ.filter fun q : FiveMillionModNine =>
      3 <= (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).card).card <= 2) := by
  classical
  let tripleEvents := Finset.univ.filter fun q : FiveMillionModNine =>
    3 <= (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).card
  let tripleResidues := Finset.univ.filter fun residue : Fin 9 =>
    3 <= (Finset.univ.filter fun i : Fin 6 =>
      oddModNineResidue (pattern.pivot i) = residue).card
  let residueAt := fiveMillionFiveCellDoubleEventResidue
    baseResidue pattern.pivot
  have hmap : Set.MapsTo residueAt
      (tripleEvents : Set FiveMillionModNine) tripleResidues := by
    intro q hq
    have hqCard : 3 <= (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).card := (Finset.mem_filter.mp hq).2
    have hqNonempty : (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).Nonempty :=
      Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hqCard)
    let witness := fiveMillionFiveCellModNineEventWitness
      baseResidue pattern.pivot q
    have hwitness : witness ∈ fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q :=
      fiveMillionFiveCellModNineEventWitness_mem hqNonempty
    have hsubset : fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q ⊆
        Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pattern.pivot i) = residueAt q := by
      intro i hi
      exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
        fiveMillionTwoCellModNineEvent_same_residue hi hwitness⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
      hqCard.trans (Finset.card_le_card hsubset)⟩
  have hinj : Set.InjOn residueAt
      (tripleEvents : Set FiveMillionModNine) := by
    intro q hq r hr hqr
    have hqCard := (Finset.mem_filter.mp hq).2
    have hrCard := (Finset.mem_filter.mp hr).2
    have hqNonempty : (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).Nonempty :=
      Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hqCard)
    have hrNonempty : (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot r).Nonempty :=
      Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hrCard)
    let iq := fiveMillionFiveCellModNineEventWitness
      baseResidue pattern.pivot q
    let ir := fiveMillionFiveCellModNineEventWitness
      baseResidue pattern.pivot r
    have hiq := fiveMillionFiveCellModNineEventWitness_mem hqNonempty
    have hir := fiveMillionFiveCellModNineEventWitness_mem hrNonempty
    have heqQ : fiveMillionFiveCellModNineEquation
        baseResidue pattern.pivot q iq := by
      simpa [fiveMillionFiveCellModNineEventFor] using hiq
    have heqR : fiveMillionFiveCellModNineEquation
        baseResidue pattern.pivot r ir := by
      simpa [fiveMillionFiveCellModNineEventFor] using hir
    have hpivot : (pattern.pivot iq : ZMod 9) =
        (pattern.pivot ir : ZMod 9) := by
      apply (ZMod.natCast_eq_natCast_iff'
        (pattern.pivot iq) (pattern.pivot ir) 9).2
      have hval : pattern.pivot iq % 9 = pattern.pivot ir % 9 := by
        have := congrArg Fin.val hqr
        simpa [residueAt, fiveMillionFiveCellDoubleEventResidue,
          iq, ir, oddModNineResidue] using this
      exact hval
    unfold fiveMillionFiveCellModNineEquation at heqQ heqR
    rw [hpivot] at heqQ
    have haffine :
        (25 : ZMod 9) * (q.val : ZMod 9) + baseResidue =
          (25 : ZMod 9) * (r.val : ZMod 9) + baseResidue :=
      mul_add_one_right_unique heqQ heqR
    apply fin_eq_of_zmod_val_eq
    exact affine_eq_of_unit_coefficient (by decide :
      (4 : ZMod 9) * 25 = 1) haffine
  have hcard : tripleEvents.card <= tripleResidues.card :=
    Finset.card_le_card_of_injOn residueAt hmap hinj
  exact hcard.trans (by
    simpa [tripleResidues] using pattern.modNineTriple)

noncomputable def fiveMillionTwoCellFiniteEventForms
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (point : Nat) : Finset FiveMillionFiniteForm := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7 (pattern.pivot i) point

theorem fiveMillionTwoCellFiniteEventForms_card
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (point : Nat) :
    (fiveMillionTwoCellFiniteEventForms pattern point).card =
      fiveMillionFiniteEventCount pattern.pivots point := by
  classical
  have himage :
      (fiveMillionTwoCellFiniteEventForms pattern point).image
          pattern.pivot =
        pattern.pivots.filter fun pivot =>
          finiteSquarePrimeEvent 7 pivot point := by
    ext pivot
    constructor
    · intro hpivot
      obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hpivot
      exact Finset.mem_filter.mpr ⟨
        Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩,
        by simpa [fiveMillionTwoCellFiniteEventForms] using hi⟩
    · intro hpivot
      have hpivotParts := Finset.mem_filter.mp hpivot
      obtain ⟨i, _hi, hipivot⟩ := Finset.mem_image.mp hpivotParts.1
      apply Finset.mem_image.mpr
      refine ⟨i, ?_, hipivot⟩
      simpa [fiveMillionTwoCellFiniteEventForms, hipivot] using hpivotParts.2
  rw [fiveMillionFiniteEventCount]
  rw [← himage, Finset.card_image_of_injective _ pattern.pivotInjective]

private lemma fiveMillionTwoCellModFourEquation_of_two_event
    {baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 2 ^ 2 ∣ pattern.pivot i * point + 1) :
    fiveMillionModFourEquation baseResidue pattern.modFourClass
      (fiveMillionPeriodicTriple (point / 25)).1 := by
  have hevent4 : 4 ∣ pattern.pivot i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 4) hpoint hevent4
  rw [pattern.commonModFour i] at hactual
  rw [← fiveMillionPeriodicTriple_modFour_cast (point / 25)] at hactual
  exact hactual

private lemma fiveMillionTwoCellModNineEquation_of_three_event
    {baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 3 ^ 2 ∣ pattern.pivot i * point + 1) :
    fiveMillionFiveCellModNineEquation baseResidue pattern.pivot
      (fiveMillionPeriodicTriple (point / 25)).2.1 i := by
  have hevent9 : 9 ∣ pattern.pivot i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint hevent9
  rw [← fiveMillionPeriodicTriple_modNine_cast (point / 25)] at hactual
  exact hactual

private lemma fiveMillionTwoCellModFortyNineEquation_of_seven_event
    {baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 7 ^ 2 ∣ pattern.pivot i * point + 1) :
    fiveMillionFiveCellModFortyNineEquation baseResidue pattern.pivot i
      (fiveMillionPeriodicTriple (point / 25)).2.2 := by
  have hevent49 : 49 ∣ pattern.pivot i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint hevent49
  rw [← fiveMillionPeriodicTriple_modFortyNine_cast (point / 25)] at hactual
  exact hactual

theorem fiveMillionTwoCellSixPivotPattern_classifies
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : 4 <= fiveMillionFiniteEventCount pattern.pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionTwoCellPeriodicFiniteResidues
        (fiveMillionFullModFour baseResidue pattern.modFourClass)
        (fiveMillionFiveCellModNineEventFor baseResidue pattern.pivot)
        (fiveMillionFiveCellModFortyNineRootFor
          baseResidue pattern.pivot) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  let full := fiveMillionFullModFour baseResidue pattern.modFourClass
  let nine := fiveMillionFiveCellModNineEventFor baseResidue pattern.pivot
  let root := fiveMillionFiveCellModFortyNineRootFor
    baseResidue pattern.pivot
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  by_cases hfull : triple.1 = full
  · exact Or.inl hfull
  · apply Or.inr
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ triple.2.2, ?_⟩
    have hforms : fiveMillionTwoCellFiniteEventForms pattern point ⊆
        (modFortyNineFibre root triple.2.2) ∪ nine triple.2.1 := by
      intro i hi
      have hpivotResidual := pattern.pivotResidual i
      obtain ⟨p, hp, hp7, hevent⟩ := by
        simpa [fiveMillionTwoCellFiniteEventForms] using
          (Finset.mem_filter.mp hi).2
      rcases residual_cutoffSeven_event_prime_cases
          hBout hpivotResidual hpointLow hp hp7 hevent with hp2 | hp3 | hp7eq
      · subst p
        exfalso
        apply hfull
        have hequation := fiveMillionTwoCellModFourEquation_of_two_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFullModFour_eq_of_equation hequation
        simpa [triple, full] using hroot.symm
      · subst p
        apply Finset.mem_union_right
        exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
          fiveMillionTwoCellModNineEquation_of_three_event
            pattern point hpointResidue i hevent⟩
      · subst p
        apply Finset.mem_union_left
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        have hequation := fiveMillionTwoCellModFortyNineEquation_of_seven_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFiveCellModFortyNineRootFor_eq hequation
        simpa [root, triple] using hroot
    have hformsCard := Finset.card_le_card hforms
    have hfour : 4 <= (fiveMillionTwoCellFiniteEventForms pattern point).card := by
      rw [fiveMillionTwoCellFiniteEventForms_card]
      exact hthreshold
    exact hfour.trans hformsCard

noncomputable def FiveMillionTwoCellSixPivotPattern.toPeriodicCertificate
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionTwoCellSixPivotPattern N B)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionTwoCellBasePeriodicThresholdCertificate
      N B pattern.pivots where
  sevenFullModFour := fiveMillionFullModFour 7 pattern.modFourClass
  sevenModNineEvent := fiveMillionFiveCellModNineEventFor 7 pattern.pivot
  sevenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 7 pattern.pivot
  sevenShape := fiveMillionTwoCellModNineEvent_shape pattern 7
  sevenTriple := fiveMillionTwoCellModNineEvent_triple_card_le pattern 7
  eighteenFullModFour := fiveMillionFullModFour 18 pattern.modFourClass
  eighteenModNineEvent := fiveMillionFiveCellModNineEventFor 18 pattern.pivot
  eighteenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 18 pattern.pivot
  eighteenShape := fiveMillionTwoCellModNineEvent_shape pattern 18
  eighteenTriple := fiveMillionTwoCellModNineEvent_triple_card_le pattern 18
  sevenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionTwoCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_left _ hpoint) (Finset.mem_filter.mp hpoint).2 hthreshold
  eighteenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionTwoCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_right _ hpoint) (Finset.mem_filter.mp hpoint).2 hthreshold

def fiveMillionTwoCellIndex : Fin 6 -> Fin 2 :=
  ![0, 0, 0, 1, 1, 1]

noncomputable def fiveMillionTwoCellSixPivotPatternOfCells
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = 2)
    (hcellSize : ∀ cell ∈ cells,
      3 <= ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    { pattern : FiveMillionTwoCellSixPivotPattern N B //
      ∀ i, pattern.pivot i ∈ fiveMillionStructuredResidual N B charged } := by
  classical
  let cellEquiv : Fin 2 ≃ cells := (cells.equivFinOfCardEq hcellsCard).symm
  let cellAt : Fin 2 -> Fin 9 := fun i => (cellEquiv i).1
  have hcellAtMem : ∀ i, cellAt i ∈ cells := fun i => (cellEquiv i).2
  have hcellAtInjective : Function.Injective cellAt := by
    intro i j hij
    apply cellEquiv.injective
    exact Subtype.ext hij
  let pointsAt : Fin 2 -> Finset Nat := fun i =>
    (fiveMillionStructuredResidual N B charged).filter fun x =>
      oddModNineResidue x = cellAt i
  have hpointsCard : ∀ i, 3 <= (pointsAt i).card := by
    intro i
    exact hcellSize (cellAt i) (hcellAtMem i)
  have hpointsNonempty : ∀ i, (pointsAt i).Nonempty := by
    intro i
    exact Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) (hpointsCard i))
  let primary : Fin 2 -> Nat := fun i => Classical.choose (hpointsNonempty i)
  have hprimaryMem : ∀ i, primary i ∈ pointsAt i := fun i =>
    Classical.choose_spec (hpointsNonempty i)
  have herasePrimaryNonempty : ∀ i,
      ((pointsAt i).erase (primary i)).Nonempty := by
    intro i
    have hcard := hpointsCard i
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem (hprimaryMem i)]
    omega
  let secondary : Fin 2 -> Nat := fun i =>
    Classical.choose (herasePrimaryNonempty i)
  have hsecondaryErase : ∀ i,
      secondary i ∈ (pointsAt i).erase (primary i) := fun i =>
    Classical.choose_spec (herasePrimaryNonempty i)
  have hsecondaryMem : ∀ i, secondary i ∈ pointsAt i := fun i =>
    (Finset.mem_erase.mp (hsecondaryErase i)).2
  have hsecondaryNe : ∀ i, secondary i ≠ primary i := fun i =>
    (Finset.mem_erase.mp (hsecondaryErase i)).1
  have heraseSecondaryNonempty : ∀ i,
      (((pointsAt i).erase (primary i)).erase (secondary i)).Nonempty := by
    intro i
    have hcard := hpointsCard i
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem (hsecondaryErase i)]
    rw [Finset.card_erase_of_mem (hprimaryMem i)]
    omega
  let tertiary : Fin 2 -> Nat := fun i =>
    Classical.choose (heraseSecondaryNonempty i)
  have htertiaryErase : ∀ i,
      tertiary i ∈ ((pointsAt i).erase (primary i)).erase (secondary i) :=
    fun i => Classical.choose_spec (heraseSecondaryNonempty i)
  have htertiaryMem : ∀ i, tertiary i ∈ pointsAt i := by
    intro i
    exact (Finset.mem_erase.mp (Finset.mem_erase.mp (htertiaryErase i)).2).2
  have htertiaryNeSecondary : ∀ i, tertiary i ≠ secondary i := fun i =>
    (Finset.mem_erase.mp (htertiaryErase i)).1
  have htertiaryNePrimary : ∀ i, tertiary i ≠ primary i := fun i =>
    (Finset.mem_erase.mp (Finset.mem_erase.mp (htertiaryErase i)).2).1
  let pivot : Fin 6 -> Nat := fun i =>
    if i = 1 then secondary 0
    else if i = 2 then tertiary 0
    else if i = 4 then secondary 1
    else if i = 5 then tertiary 1
    else primary (fiveMillionTwoCellIndex i)
  have hpivotMem : ∀ i, pivot i ∈ pointsAt (fiveMillionTwoCellIndex i) := by
    intro i
    fin_cases i <;>
      simp [pivot, fiveMillionTwoCellIndex, hprimaryMem,
        hsecondaryMem, htertiaryMem]
  have hpivotStructured : ∀ i,
      pivot i ∈ fiveMillionStructuredResidual N B charged := fun i =>
    (Finset.mem_filter.mp (hpivotMem i)).1
  have hpivotCell : ∀ i, oddModNineResidue (pivot i) =
      cellAt (fiveMillionTwoCellIndex i) := fun i =>
    (Finset.mem_filter.mp (hpivotMem i)).2
  have hpivotInjective : Function.Injective pivot := by
    intro i j hij
    have hindex : fiveMillionTwoCellIndex i = fiveMillionTwoCellIndex j := by
      apply hcellAtInjective
      rw [← hpivotCell i, ← hpivotCell j, hij]
    fin_cases i <;> fin_cases j <;>
      simp_all [pivot, fiveMillionTwoCellIndex]
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  refine ⟨?_, ?_⟩
  refine
    { pivot := pivot
      pivotInjective := hpivotInjective
      pivotResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      modNineShape := ?_
      modNineTriple := ?_ }
  · intro i
    exact (Finset.mem_sdiff.mp (hpivotStructured i)).1
  · intro i
    apply (ZMod.natCast_eq_natCast_iff' (pivot i) modFourClass.val 4).2
    have hpivotMod := hclass (pivot i) (hpivotStructured i)
    cases parity <;> simp_all [modFourClass]
  · intro residue
    simp_rw [hpivotCell]
    have h01 : cellAt 0 ≠ cellAt 1 := by
      intro h
      have := hcellAtInjective h
      norm_num at this
    by_cases hzero : residue = cellAt 0
    · right
      subst residue
      have hset : (Finset.univ.filter fun i : Fin 6 =>
          cellAt (fiveMillionTwoCellIndex i) = cellAt 0) = {0, 1, 2} := by
        ext i
        fin_cases i <;>
          simp [fiveMillionTwoCellIndex, h01, Ne.symm h01]
      rw [hset]
      decide
    · by_cases hone : residue = cellAt 1
      · right
        subst residue
        have hset : (Finset.univ.filter fun i : Fin 6 =>
            cellAt (fiveMillionTwoCellIndex i) = cellAt 1) = {3, 4, 5} := by
          ext i
          fin_cases i <;> simp [fiveMillionTwoCellIndex, h01]
        rw [hset]
        decide
      · left
        have hnone : ∀ i : Fin 6,
            cellAt (fiveMillionTwoCellIndex i) ≠ residue := by
          intro i
          fin_cases i <;>
            simp [fiveMillionTwoCellIndex, Ne.symm hzero, Ne.symm hone]
        simp [hnone]
  · let triples := Finset.univ.filter fun residue : Fin 9 =>
      3 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card
    have hsubset : triples ⊆ {cellAt 0, cellAt 1} := by
      intro residue hresidue
      have hcard := (Finset.mem_filter.mp hresidue).2
      have hnonempty : (Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue).Nonempty :=
        Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hcard)
      let i := Classical.choose hnonempty
      have hi := Classical.choose_spec hnonempty
      have hiEq := (Finset.mem_filter.mp hi).2
      rw [hpivotCell i] at hiEq
      have hindex : fiveMillionTwoCellIndex i = 0 ∨
          fiveMillionTwoCellIndex i = 1 := by
        have hlt := (fiveMillionTwoCellIndex i).isLt
        have hval : (fiveMillionTwoCellIndex i).val = 0 ∨
            (fiveMillionTwoCellIndex i).val = 1 := by omega
        rcases hval with hzero | hone
        · left
          apply Fin.ext
          simpa using hzero
        · right
          apply Fin.ext
          simpa using hone
      apply Finset.mem_insert.mpr
      rcases hindex with hzero | hone
      · left
        rw [← hiEq, hzero]
      · right
        apply Finset.mem_singleton.mpr
        rw [← hiEq, hone]
    have hpair : ({cellAt 0, cellAt 1} : Finset (Fin 9)).card <= 2 := by
      calc
        ({cellAt 0, cellAt 1} : Finset (Fin 9)).card <=
            ({cellAt 1} : Finset (Fin 9)).card + 1 :=
          Finset.card_insert_le _ _
        _ = 2 := by simp
    exact (Finset.card_le_card hsubset).trans hpair
  · intro i
    exact hpivotStructured i

theorem hallBaseTailSquarePayment_sixFour_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (certificate : FiveMillionBaseTailCertificate N B pivots) :
    hallBaseTailSquarePayment N B pivots 7 4 / N <=
      (2 / 3 : Rat) * fiveMillionOddRoot7Envelope +
        (2 / 3 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot / N) <=
      6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      certificate.perPivot pivot hpivot
    simpa [certificate.pivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [certificate.pivotsCard]
  rw [show (((6 : Nat) : Rat) - ((4 : Nat) : Rat) + 1) = 3 by norm_num]
  change (∑ pivot ∈ pivots,
    hallBaseTailSquareCount N B 7 pivot) / 3 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 3 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 3 := by
      rw [← Finset.sum_div]
      ring
    _ <= (6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 3 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (2 / 3 : Rat) * fiveMillionOddRoot7Envelope +
        (2 / 3 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by ring

#print axioms FiveMillionTwoCellSixPivotPattern.pivots_card
#print axioms fiveMillionTwoCellModNineEvent_shape
#print axioms fiveMillionTwoCellModNineEvent_triple_card_le
#print axioms fiveMillionTwoCellSixPivotPattern_classifies
#print axioms FiveMillionTwoCellSixPivotPattern.toPeriodicCertificate
#print axioms fiveMillionTwoCellSixPivotPatternOfCells
#print axioms hallBaseTailSquarePayment_sixFour_ratio_le

end Erdos848
