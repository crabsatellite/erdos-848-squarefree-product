import Erdos848.TailFiveMillionFiveCellPeriodicBridge
import Erdos848.TailFiveMillionPeriodicProducer

namespace Erdos848

/-!
# Actual six-pivot producer for five active mod-nine cells

The pattern below keeps the six pivots indexed.  Five occupied mod-nine
classes are recorded by the two exact facts consumed by the finite theorem:
every class has multiplicity at most two, and at most one class has
multiplicity two.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure FiveMillionCellSixPivotPattern
    (doubleBound : Nat) (N : Nat) (B : Finset Nat) : Type where
  pivot : Fin 6 -> Nat
  pivotInjective : Function.Injective pivot
  pivotResidual : ∀ i, pivot i ∈ hallResidual N B
  modFourClass : FiveMillionModFour
  commonModFour : ∀ i,
    (pivot i : ZMod 4) = (modFourClass.val : ZMod 4)
  modNineCapacity : ∀ residue : Fin 9,
    ((Finset.univ.filter fun i : Fin 6 =>
      oddModNineResidue (pivot i) = residue).card <= 2)
  modNineDouble :
    ((Finset.univ.filter fun residue : Fin 9 =>
      2 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card).card <= doubleBound)

abbrev FiveMillionFiveCellSixPivotPattern (N : Nat) (B : Finset Nat) :=
  FiveMillionCellSixPivotPattern 1 N B

abbrev FiveMillionFourCellSixPivotPattern (N : Nat) (B : Finset Nat) :=
  FiveMillionCellSixPivotPattern 2 N B

abbrev FiveMillionThreeCellSixPivotPattern (N : Nat) (B : Finset Nat) :=
  FiveMillionCellSixPivotPattern 3 N B

def FiveMillionCellSixPivotPattern.pivots
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B) : Finset Nat :=
  Finset.univ.image pattern.pivot

lemma FiveMillionCellSixPivotPattern.pivots_card
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B) :
    pattern.pivots.card = 6 := by
  rw [FiveMillionCellSixPivotPattern.pivots,
    Finset.card_image_of_injective _ pattern.pivotInjective]
  simp

lemma FiveMillionCellSixPivotPattern.pivots_subset_residual
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B) :
    pattern.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
  exact pattern.pivotResidual i

def fiveMillionFiveCellModNineEquation
    (baseResidue : Nat)
    (patternPivot : Fin 6 -> Nat)
    (q : FiveMillionModNine) (i : FiveMillionFiniteForm) : Prop :=
  (patternPivot i : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) +
        (baseResidue : ZMod 9)) + 1 = 0

noncomputable def fiveMillionFiveCellModNineEventFor
    (baseResidue : Nat)
    (patternPivot : Fin 6 -> Nat)
    (q : FiveMillionModNine) : Finset FiveMillionFiniteForm := by
  classical
  exact Finset.univ.filter fun i =>
    fiveMillionFiveCellModNineEquation baseResidue patternPivot q i

def fiveMillionFiveCellModFortyNineEquation
    (baseResidue : Nat)
    (patternPivot : Fin 6 -> Nat)
    (i : FiveMillionFiniteForm) (q : FiveMillionModFortyNine) : Prop :=
  (patternPivot i : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) +
        (baseResidue : ZMod 49)) + 1 = 0

noncomputable def fiveMillionFiveCellModFortyNineRootFor
    (baseResidue : Nat)
    (patternPivot : Fin 6 -> Nat) :
    FiveMillionFiniteForm -> FiveMillionModFortyNine := by
  classical
  exact fun i =>
    if h : ∃ q, fiveMillionFiveCellModFortyNineEquation
        baseResidue patternPivot i q then
      Classical.choose h
    else 0

lemma fiveMillionFiveCellModFortyNineRootFor_eq
    {baseResidue : Nat} {patternPivot : Fin 6 -> Nat}
    {i : FiveMillionFiniteForm} {q : FiveMillionModFortyNine}
    (hq : fiveMillionFiveCellModFortyNineEquation
      baseResidue patternPivot i q) :
    fiveMillionFiveCellModFortyNineRootFor baseResidue patternPivot i = q := by
  rw [fiveMillionFiveCellModFortyNineRootFor, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r, fiveMillionFiveCellModFortyNineEquation
        baseResidue patternPivot i r from ⟨q, hq⟩)
  have haffine :
      (25 : ZMod 49) *
          ((Classical.choose
            (show ∃ r, fiveMillionFiveCellModFortyNineEquation
              baseResidue patternPivot i r from ⟨q, hq⟩)).val : ZMod 49) +
            baseResidue =
        (25 : ZMod 49) * (q.val : ZMod 49) + baseResidue :=
    mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient (by decide :
    (2 : ZMod 49) * 25 = 1) haffine

private lemma fiveMillionFiveCellModNineEvent_same_residue
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

theorem fiveMillionFiveCellModNineEvent_capacity
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
    (baseResidue : Nat) (q : FiveMillionModNine) :
    (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).card <= 2 := by
  classical
  by_cases hempty :
      (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).Nonempty
  · let i := Classical.choose hempty
    have hi : i ∈ fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q := Classical.choose_spec hempty
    have hsubset : fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q ⊆
        Finset.univ.filter fun j : Fin 6 =>
          oddModNineResidue (pattern.pivot j) =
            oddModNineResidue (pattern.pivot i) := by
      intro j hj
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_univ _,
        fiveMillionFiveCellModNineEvent_same_residue hj hi⟩
    exact (Finset.card_le_card hsubset).trans
      (pattern.modNineCapacity (oddModNineResidue (pattern.pivot i)))
  · simpa [Finset.not_nonempty_iff_eq_empty.mp hempty]

noncomputable def fiveMillionFiveCellModNineEventWitness
    (baseResidue : Nat) (patternPivot : Fin 6 -> Nat)
    (q : FiveMillionModNine) : FiveMillionFiniteForm := by
  classical
  exact if h : (fiveMillionFiveCellModNineEventFor
      baseResidue patternPivot q).Nonempty then Classical.choose h else 0

lemma fiveMillionFiveCellModNineEventWitness_mem
    {baseResidue : Nat} {patternPivot : Fin 6 -> Nat}
    {q : FiveMillionModNine}
    (h : (fiveMillionFiveCellModNineEventFor
      baseResidue patternPivot q).Nonempty) :
    fiveMillionFiveCellModNineEventWitness baseResidue patternPivot q ∈
      fiveMillionFiveCellModNineEventFor baseResidue patternPivot q := by
  rw [fiveMillionFiveCellModNineEventWitness, dif_pos h]
  exact Classical.choose_spec h

noncomputable def fiveMillionFiveCellDoubleEventResidue
    (baseResidue : Nat) (patternPivot : Fin 6 -> Nat)
    (q : FiveMillionModNine) : Fin 9 :=
  oddModNineResidue (patternPivot
    (fiveMillionFiveCellModNineEventWitness baseResidue patternPivot q))

theorem fiveMillionFiveCellModNineEvent_double_card_le
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
    (baseResidue : Nat) :
    ((Finset.univ.filter fun q : FiveMillionModNine =>
      2 <= (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).card).card <= doubleBound) := by
  classical
  let doubleEvents := Finset.univ.filter fun q : FiveMillionModNine =>
    2 <= (fiveMillionFiveCellModNineEventFor
      baseResidue pattern.pivot q).card
  let doubleResidues := Finset.univ.filter fun residue : Fin 9 =>
    2 <= (Finset.univ.filter fun i : Fin 6 =>
      oddModNineResidue (pattern.pivot i) = residue).card
  let residueAt := fiveMillionFiveCellDoubleEventResidue
    baseResidue pattern.pivot
  have hmap : Set.MapsTo residueAt
      (doubleEvents : Set FiveMillionModNine) doubleResidues := by
    intro q hq
    have hqCard : 2 <= (fiveMillionFiveCellModNineEventFor
        baseResidue pattern.pivot q).card :=
      (Finset.mem_filter.mp hq).2
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
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      exact fiveMillionFiveCellModNineEvent_same_residue hi hwitness
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, hqCard.trans (Finset.card_le_card hsubset)⟩
  have hinj : Set.InjOn residueAt
      (doubleEvents : Set FiveMillionModNine) := by
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
  have hcard : doubleEvents.card <= doubleResidues.card :=
    Finset.card_le_card_of_injOn residueAt hmap hinj
  exact hcard.trans (by
    simpa [doubleResidues] using pattern.modNineDouble)

noncomputable def fiveMillionFiveCellFiniteEventForms
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
    (point : Nat) : Finset FiveMillionFiniteForm := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7 (pattern.pivot i) point

theorem fiveMillionFiveCellFiniteEventForms_card
    {doubleBound N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
    (point : Nat) :
    (fiveMillionFiveCellFiniteEventForms pattern point).card =
      fiveMillionFiniteEventCount pattern.pivots point := by
  classical
  have himage :
      (fiveMillionFiveCellFiniteEventForms pattern point).image
          pattern.pivot =
        pattern.pivots.filter fun pivot =>
          finiteSquarePrimeEvent 7 pivot point := by
    ext pivot
    constructor
    · intro hpivot
      obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hpivot
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩, ?_⟩
      simpa [fiveMillionFiveCellFiniteEventForms] using hi
    · intro hpivot
      have hpivotParts := Finset.mem_filter.mp hpivot
      obtain ⟨i, _hi, hipivot⟩ := Finset.mem_image.mp hpivotParts.1
      apply Finset.mem_image.mpr
      refine ⟨i, ?_, hipivot⟩
      simpa [fiveMillionFiveCellFiniteEventForms, hipivot] using
        hpivotParts.2
  rw [fiveMillionFiniteEventCount]
  rw [← himage, Finset.card_image_of_injective _ pattern.pivotInjective]

lemma fiveMillionFiveCellModFourEquation_of_two_event
    {doubleBound baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
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

lemma fiveMillionFiveCellModNineEquation_of_three_event
    {doubleBound baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
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

lemma fiveMillionFiveCellModFortyNineEquation_of_seven_event
    {doubleBound baseResidue N : Nat} {B : Finset Nat}
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
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

theorem fiveMillionFiveCellSixPivotPattern_classifies
    {doubleBound N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (pattern : FiveMillionCellSixPivotPattern doubleBound N B)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : 3 <= fiveMillionFiniteEventCount pattern.pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionFiveCellPeriodicFiniteResidues
        (fiveMillionFullModFour baseResidue pattern.modFourClass)
        (fiveMillionFiveCellModNineEventFor baseResidue pattern.pivot)
        (fiveMillionFiveCellModFortyNineRootFor
          baseResidue pattern.pivot) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  let full := fiveMillionFullModFour baseResidue pattern.modFourClass
  let nine := fiveMillionFiveCellModNineEventFor
    baseResidue pattern.pivot
  let root := fiveMillionFiveCellModFortyNineRootFor
    baseResidue pattern.pivot
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  by_cases hfull : triple.1 = full
  · exact Or.inl hfull
  · apply Or.inr
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ triple.2.2, ?_⟩
    have hforms : fiveMillionFiveCellFiniteEventForms pattern point ⊆
        (modFortyNineFibre root triple.2.2) ∪ nine triple.2.1 := by
      intro i hi
      have hpivotResidual : pattern.pivot i ∈ hallResidual N B :=
        pattern.pivotResidual i
      obtain ⟨p, hp, hp7, hevent⟩ := by
        simpa [fiveMillionFiveCellFiniteEventForms] using
          (Finset.mem_filter.mp hi).2
      rcases residual_cutoffSeven_event_prime_cases
          hBout hpivotResidual hpointLow hp hp7 hevent with
        hp2 | hp3 | hp7eq
      · subst p
        exfalso
        apply hfull
        have hequation := fiveMillionFiveCellModFourEquation_of_two_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFullModFour_eq_of_equation hequation
        simpa [triple, full] using hroot.symm
      · subst p
        apply Finset.mem_union_right
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ i, ?_⟩
        exact fiveMillionFiveCellModNineEquation_of_three_event
          pattern point hpointResidue i hevent
      · subst p
        apply Finset.mem_union_left
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ i, ?_⟩
        have hequation :=
          fiveMillionFiveCellModFortyNineEquation_of_seven_event
            pattern point hpointResidue i hevent
        have hroot := fiveMillionFiveCellModFortyNineRootFor_eq hequation
        simpa [root, triple] using hroot
    have hformsCard := Finset.card_le_card hforms
    have hthree :
        3 <= (fiveMillionFiveCellFiniteEventForms pattern point).card := by
      rw [fiveMillionFiveCellFiniteEventForms_card]
      exact hthreshold
    exact hthree.trans hformsCard

noncomputable def FiveMillionFiveCellSixPivotPattern.toPeriodicCertificate
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionFiveCellSixPivotPattern N B)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionFiveCellBasePeriodicThresholdCertificate
      N B pattern.pivots where
  sevenFullModFour := fiveMillionFullModFour 7 pattern.modFourClass
  sevenModNineEvent :=
    fiveMillionFiveCellModNineEventFor 7 pattern.pivot
  sevenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 7 pattern.pivot
  sevenCapacity := fiveMillionFiveCellModNineEvent_capacity pattern 7
  sevenDouble := fiveMillionFiveCellModNineEvent_double_card_le pattern 7
  eighteenFullModFour := fiveMillionFullModFour 18 pattern.modFourClass
  eighteenModNineEvent :=
    fiveMillionFiveCellModNineEventFor 18 pattern.pivot
  eighteenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 18 pattern.pivot
  eighteenCapacity := fiveMillionFiveCellModNineEvent_capacity pattern 18
  eighteenDouble :=
    fiveMillionFiveCellModNineEvent_double_card_le pattern 18
  sevenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionFiveCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_left _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold
  eighteenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionFiveCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_right _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold

def fiveMillionFiveCellIndex : Fin 6 -> Fin 5 :=
  ![0, 0, 1, 2, 3, 4]

lemma fiveMillionFiveCellIndex_fibre_card (cell : Fin 5) :
    ((Finset.univ.filter fun i : Fin 6 =>
      fiveMillionFiveCellIndex i = cell).card) =
      if cell = 0 then 2 else 1 := by
  fin_cases cell <;> decide

lemma fiveMillionFiveCellIndex_eq_cases {i j : Fin 6}
    (h : fiveMillionFiveCellIndex i = fiveMillionFiveCellIndex j) :
    i = j ∨ (i = 0 ∧ j = 1) ∨ (i = 1 ∧ j = 0) := by
  fin_cases i <;> fin_cases j <;> simp_all [fiveMillionFiveCellIndex]

noncomputable def fiveMillionFiveCellSixPivotPatternOfCells
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = 5)
    (hcellSize : ∀ cell ∈ cells,
      2 <= ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    { pattern : FiveMillionFiveCellSixPivotPattern N B //
      ∀ i, pattern.pivot i ∈
        fiveMillionStructuredResidual N B charged } := by
  classical
  let cellEquiv : Fin 5 ≃ cells :=
    (cells.equivFinOfCardEq hcellsCard).symm
  let cellAt : Fin 5 -> Fin 9 := fun i => (cellEquiv i).1
  have hcellAtMem : ∀ i, cellAt i ∈ cells := by
    intro i
    exact (cellEquiv i).2
  have hcellAtInjective : Function.Injective cellAt := by
    intro i j hij
    apply cellEquiv.injective
    exact Subtype.ext hij
  let pointsAt : Fin 5 -> Finset Nat := fun i =>
    (fiveMillionStructuredResidual N B charged).filter fun x =>
      oddModNineResidue x = cellAt i
  have hpointsCard : ∀ i, 2 <= (pointsAt i).card := by
    intro i
    exact hcellSize (cellAt i) (hcellAtMem i)
  have hpointsNonempty : ∀ i, (pointsAt i).Nonempty := by
    intro i
    exact Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) (hpointsCard i))
  let primary : Fin 5 -> Nat := fun i => Classical.choose (hpointsNonempty i)
  have hprimaryMem : ∀ i, primary i ∈ pointsAt i := by
    intro i
    exact Classical.choose_spec (hpointsNonempty i)
  have heraseNonempty : ((pointsAt 0).erase (primary 0)).Nonempty := by
    have hprimary := hprimaryMem 0
    have htwo := hpointsCard 0
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem hprimary]
    omega
  let second : Nat := Classical.choose heraseNonempty
  have hsecondErase : second ∈ (pointsAt 0).erase (primary 0) :=
    Classical.choose_spec heraseNonempty
  have hsecondMem : second ∈ pointsAt 0 := (Finset.mem_erase.mp hsecondErase).2
  have hsecondNe : second ≠ primary 0 := (Finset.mem_erase.mp hsecondErase).1
  let pivot : Fin 6 -> Nat := fun i =>
    if i = 1 then second else primary (fiveMillionFiveCellIndex i)
  have hpivotMem : ∀ i, pivot i ∈ pointsAt (fiveMillionFiveCellIndex i) := by
    intro i
    by_cases hi : i = 1
    · subst i
      simpa [pivot, fiveMillionFiveCellIndex] using hsecondMem
    · simp [pivot, hi, hprimaryMem]
  have hpivotStructured : ∀ i,
      pivot i ∈ fiveMillionStructuredResidual N B charged := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).1
  have hpivotCell : ∀ i,
      oddModNineResidue (pivot i) =
        cellAt (fiveMillionFiveCellIndex i) := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).2
  have hpivotInjective : Function.Injective pivot := by
    intro i j hij
    have hcell : fiveMillionFiveCellIndex i =
        fiveMillionFiveCellIndex j := by
      apply hcellAtInjective
      rw [← hpivotCell i, ← hpivotCell j, hij]
    rcases fiveMillionFiveCellIndex_eq_cases hcell with
      hijIndex | hzeroOne | honeZero
    · exact hijIndex
    · rcases hzeroOne with ⟨rfl, rfl⟩
      exfalso
      apply hsecondNe
      simpa [pivot, fiveMillionFiveCellIndex] using hij.symm
    · rcases honeZero with ⟨rfl, rfl⟩
      exfalso
      apply hsecondNe
      simpa [pivot, fiveMillionFiveCellIndex] using hij
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  refine ⟨?_, ?_⟩
  refine
    { pivot := pivot
      pivotInjective := hpivotInjective
      pivotResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      modNineCapacity := ?_
      modNineDouble := ?_ }
  · intro i
    exact (Finset.mem_sdiff.mp (hpivotStructured i)).1
  · intro i
    apply (ZMod.natCast_eq_natCast_iff'
      (pivot i) modFourClass.val 4).2
    have hpivotMod := hclass (pivot i) (hpivotStructured i)
    cases parity <;> simp_all [modFourClass]
  · intro residue
    by_cases hfibre : (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).Nonempty
    · let i := Classical.choose hfibre
      have hi : i ∈ Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue :=
        Classical.choose_spec hfibre
      have hsubset : (Finset.univ.filter fun j : Fin 6 =>
          oddModNineResidue (pivot j) = residue) ⊆
          Finset.univ.filter fun j : Fin 6 =>
            fiveMillionFiveCellIndex j = fiveMillionFiveCellIndex i := by
        intro j hj
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        apply hcellAtInjective
        rw [← hpivotCell j, ← hpivotCell i]
        exact (Finset.mem_filter.mp hj).2.trans
          (Finset.mem_filter.mp hi).2.symm
      have hcard := Finset.card_le_card hsubset
      rw [fiveMillionFiveCellIndex_fibre_card] at hcard
      split at hcard <;> omega
    · simpa [Finset.not_nonempty_iff_eq_empty.mp hfibre]
  · let doubleResidues := Finset.univ.filter fun residue : Fin 9 =>
      2 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card
    have hsubset : doubleResidues ⊆ {cellAt 0} := by
      intro residue hresidue
      have hresidueCard : 2 <= (Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue).card :=
        (Finset.mem_filter.mp hresidue).2
      have hfibre : (Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue).Nonempty :=
        Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hresidueCard)
      let i := Classical.choose hfibre
      have hi : i ∈ Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue :=
        Classical.choose_spec hfibre
      have hindices : (Finset.univ.filter fun j : Fin 6 =>
          oddModNineResidue (pivot j) = residue) ⊆
          Finset.univ.filter fun j : Fin 6 =>
            fiveMillionFiveCellIndex j = fiveMillionFiveCellIndex i := by
        intro j hj
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        apply hcellAtInjective
        rw [← hpivotCell j, ← hpivotCell i]
        exact (Finset.mem_filter.mp hj).2.trans
          (Finset.mem_filter.mp hi).2.symm
      have hindexCard := hresidueCard.trans (Finset.card_le_card hindices)
      rw [fiveMillionFiveCellIndex_fibre_card] at hindexCard
      have hiZero : fiveMillionFiveCellIndex i = 0 := by
        split at hindexCard
        · assumption
        · omega
      apply Finset.mem_singleton.mpr
      rw [← (Finset.mem_filter.mp hi).2, hpivotCell i, hiZero]
    have hcard := Finset.card_le_card hsubset
    simpa [doubleResidues] using hcard
  · intro i
    exact hpivotStructured i

#print axioms FiveMillionCellSixPivotPattern.pivots_card
#print axioms fiveMillionFiveCellModNineEvent_capacity
#print axioms fiveMillionFiveCellModNineEvent_double_card_le
#print axioms fiveMillionFiveCellFiniteEventForms_card
#print axioms fiveMillionFiveCellSixPivotPattern_classifies
#print axioms FiveMillionFiveCellSixPivotPattern.toPeriodicCertificate
#print axioms fiveMillionFiveCellSixPivotPatternOfCells

end Erdos848
