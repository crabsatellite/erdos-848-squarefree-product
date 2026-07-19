import Erdos848.TailFiveMillionPeriodicProducer
import Erdos848.TailFiveMillionEightPivotPeriodicBridge
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Semantic periodic producer for an eight-pivot capacity matching

This module keeps all data literal: eight actual residual pivots, their
common mod-4 class, distinct mod-9 classes, and capacity-two raw mod-49
fibres.  It derives the two actual CRT classifiers consumed by the exact
`441 / 1764` finite theorem.
-/

noncomputable def eightPivotEquiv
    (pivots : Finset Nat) (hcard : pivots.card = 8) :
    Fin 8 ≃ pivots :=
  (pivots.equivFinOfCardEq hcard).symm

noncomputable def eightPivotAt
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    (i : Fin 8) : Nat :=
  (eightPivotEquiv pivots hcard i).1

lemma eightPivotAt_mem
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    (i : Fin 8) :
    eightPivotAt pivots hcard i ∈ pivots :=
  (eightPivotEquiv pivots hcard i).2

lemma eightPivotAt_injective
    (pivots : Finset Nat) (hcard : pivots.card = 8) :
    Function.Injective (eightPivotAt pivots hcard) := by
  intro i j hij
  apply (eightPivotEquiv pivots hcard).injective
  exact Subtype.ext hij

lemma eightPivotAt_surjective_on
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    {pivot : Nat} (hpivot : pivot ∈ pivots) :
    ∃ i : Fin 8, eightPivotAt pivots hcard i = pivot := by
  let pivotSubtype : pivots := ⟨pivot, hpivot⟩
  refine ⟨(eightPivotEquiv pivots hcard).symm pivotSubtype, ?_⟩
  exact congrArg Subtype.val
    ((eightPivotEquiv pivots hcard).apply_symm_apply pivotSubtype)

noncomputable def eightPivotFiniteEventForms
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    (point : Nat) : Finset (Fin 8) := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7 (eightPivotAt pivots hcard i) point

theorem eightPivotFiniteEventForms_card
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    (point : Nat) :
    (eightPivotFiniteEventForms pivots hcard point).card =
      fiveMillionEightFiniteEventCount pivots point := by
  classical
  change
    ((Finset.univ.filter fun i : Fin 8 =>
      finiteSquarePrimeEvent 7 (eightPivotAt pivots hcard i) point).card) =
    ((pivots.filter fun pivot =>
      finiteSquarePrimeEvent 7 pivot point).card)
  apply Finset.card_bij (fun i _hi => eightPivotAt pivots hcard i)
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨eightPivotAt_mem pivots hcard i, (Finset.mem_filter.mp hi).2⟩
  · intro i hi j hj hij
    exact eightPivotAt_injective pivots hcard hij
  · intro pivot hpivot
    obtain ⟨i, hi⟩ := eightPivotAt_surjective_on pivots hcard
      (Finset.mem_filter.mp hpivot).1
    refine ⟨i, ?_, hi⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ i, ?_⟩
    simpa [hi] using (Finset.mem_filter.mp hpivot).2

noncomputable def eightPivotModFortyNine
    (pivots : Finset Nat) (hcard : pivots.card = 8)
    (i : Fin 8) : FiveMillionModFortyNine :=
  ⟨eightPivotAt pivots hcard i % 49, Nat.mod_lt _ (by norm_num)⟩

structure FiveMillionEightPivotPattern
    (N : Nat) (B pivots : Finset Nat) : Type where
  pivotsCard : pivots.card = 8
  pivotsResidual : pivots ⊆ hallResidual N B
  modFourClass : FiveMillionModFour
  commonModFour : ∀ i : Fin 8,
    (eightPivotAt pivots pivotsCard i : ZMod 4) =
      (modFourClass.val : ZMod 4)
  distinctModNine : Function.Injective fun i : Fin 8 =>
    (eightPivotAt pivots pivotsCard i : ZMod 9)
  modFortyNineCapacity : ∀ r : FiveMillionModFortyNine,
    ((Finset.univ : Finset (Fin 8)).filter fun i =>
      eightPivotModFortyNine pivots pivotsCard i = r).card <= 2

def fiveMillionEightModNineEquation
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 8)
    (q : FiveMillionModNine) (i : FiveMillionEightFiniteForm) : Prop :=
  (eightPivotAt pivots hcard i : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) +
        (baseResidue : ZMod 9)) + 1 = 0

noncomputable def fiveMillionEightModNineEventFor
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 8) :
    FiveMillionModNine -> Option FiveMillionEightFiniteForm := by
  classical
  exact fun q =>
    if h : ∃ i, fiveMillionEightModNineEquation
        baseResidue pivots hcard q i then
      some (Classical.choose h)
    else none

lemma fiveMillionEightModNineEventFor_eq_some
    {baseResidue N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    {q : FiveMillionModNine} {i : FiveMillionEightFiniteForm}
    (hi : fiveMillionEightModNineEquation baseResidue pivots
      pattern.pivotsCard q i) :
    fiveMillionEightModNineEventFor baseResidue pivots
      pattern.pivotsCard q = some i := by
  rw [fiveMillionEightModNineEventFor, dif_pos ⟨i, hi⟩]
  congr 1
  apply pattern.distinctModNine
  exact mul_add_one_left_unique
    (Classical.choose_spec
      (show ∃ j, fiveMillionEightModNineEquation baseResidue pivots
          pattern.pivotsCard q j from ⟨i, hi⟩)) hi

def fiveMillionEightModFortyNineEquation
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 8)
    (i : FiveMillionEightFiniteForm)
    (q : FiveMillionModFortyNine) : Prop :=
  (eightPivotAt pivots hcard i : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) +
        (baseResidue : ZMod 49)) + 1 = 0

noncomputable def fiveMillionEightModFortyNineEventFor
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 8) :
    FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm := by
  classical
  exact fun q => Finset.univ.filter fun i =>
    fiveMillionEightModFortyNineEquation baseResidue pivots hcard i q

theorem fiveMillionEightModFortyNineEventFor_capacity
    {N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (baseResidue : Nat) (q : FiveMillionModFortyNine) :
    (fiveMillionEightModFortyNineEventFor baseResidue pivots
      pattern.pivotsCard q).card <= 2 := by
  classical
  let events := fiveMillionEightModFortyNineEventFor baseResidue pivots
    pattern.pivotsCard q
  by_cases hnonempty : events.Nonempty
  · obtain ⟨i0, hi0⟩ := hnonempty
    let r0 := eightPivotModFortyNine pivots pattern.pivotsCard i0
    let target := (Finset.univ : Finset (Fin 8)).filter fun i =>
      eightPivotModFortyNine pivots pattern.pivotsCard i = r0
    have hmap : Set.MapsTo (fun i : Fin 8 => i) (events : Set (Fin 8)) target := by
      intro i hi
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ i, ?_⟩
      apply Fin.ext
      have hiEq : fiveMillionEightModFortyNineEquation baseResidue pivots
          pattern.pivotsCard i q := by
        simpa [events, fiveMillionEightModFortyNineEventFor] using
          (Finset.mem_filter.mp hi).2
      have hi0Eq : fiveMillionEightModFortyNineEquation baseResidue pivots
          pattern.pivotsCard i0 q := by
        simpa [events, fiveMillionEightModFortyNineEventFor] using
          (Finset.mem_filter.mp hi0).2
      have hz : (eightPivotAt pivots pattern.pivotsCard i : ZMod 49) =
          (eightPivotAt pivots pattern.pivotsCard i0 : ZMod 49) :=
        mul_add_one_left_unique hiEq hi0Eq
      have hval := congrArg ZMod.val hz
      simpa [eightPivotModFortyNine, ZMod.val_natCast, r0] using hval
    have hinj : Set.InjOn (fun i : Fin 8 => i) (events : Set (Fin 8)) := by
      intro i hi j hj hij
      exact hij
    have hcard : events.card <= target.card :=
      Finset.card_le_card_of_injOn (fun i : Fin 8 => i) hmap hinj
    exact hcard.trans (pattern.modFortyNineCapacity r0)
  · have hempty : events = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp [events, hempty]

lemma fiveMillionEightModFourEquation_of_two_event
    {baseResidue N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionEightFiniteForm)
    (hevent : 2 ^ 2 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionModFourEquation baseResidue pattern.modFourClass
      (fiveMillionPeriodicTriple (point / 25)).1 := by
  have hevent4 : 4 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 4) hpoint hevent4
  rw [pattern.commonModFour i] at hactual
  rw [← fiveMillionPeriodicTriple_modFour_cast (point / 25)] at hactual
  exact hactual

lemma fiveMillionEightModNineEquation_of_three_event
    {baseResidue N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionEightFiniteForm)
    (hevent : 3 ^ 2 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionEightModNineEquation baseResidue pivots pattern.pivotsCard
      (fiveMillionPeriodicTriple (point / 25)).2.1 i := by
  have hevent9 : 9 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint hevent9
  rw [← fiveMillionPeriodicTriple_modNine_cast (point / 25)] at hactual
  exact hactual

lemma fiveMillionEightModFortyNineEquation_of_seven_event
    {baseResidue N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionEightFiniteForm)
    (hevent : 7 ^ 2 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionEightModFortyNineEquation baseResidue pivots
      pattern.pivotsCard i
      (fiveMillionPeriodicTriple (point / 25)).2.2 := by
  have hevent49 : 49 ∣ eightPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint hevent49
  rw [← fiveMillionPeriodicTriple_modFortyNine_cast (point / 25)] at hactual
  exact hactual

theorem fiveMillionEightPivotPattern_classifies
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (pattern : FiveMillionEightPivotPattern N B pivots)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : 4 <= fiveMillionEightFiniteEventCount pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionEightPeriodicFiniteResidues
        (fiveMillionFullModFour baseResidue pattern.modFourClass)
        (fiveMillionEightModNineEventFor baseResidue pivots
          pattern.pivotsCard)
        (fiveMillionEightModFortyNineEventFor baseResidue pivots
          pattern.pivotsCard) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  let full := fiveMillionFullModFour baseResidue pattern.modFourClass
  let nine := fiveMillionEightModNineEventFor baseResidue pivots
    pattern.pivotsCard
  let event49 := fiveMillionEightModFortyNineEventFor baseResidue pivots
    pattern.pivotsCard
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  by_cases hfull : triple.1 = full
  · exact Or.inl hfull
  · apply Or.inr
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ triple.2.2, ?_⟩
    have hforms :
        eightPivotFiniteEventForms pivots pattern.pivotsCard point ⊆
          (event49 triple.2.2) ∪ eightOptionalSingleton (nine triple.2.1) := by
      intro i hi
      have hpivotResidual :
          eightPivotAt pivots pattern.pivotsCard i ∈ hallResidual N B :=
        pattern.pivotsResidual
          (eightPivotAt_mem pivots pattern.pivotsCard i)
      obtain ⟨p, hp, hp7, hevent⟩ := (Finset.mem_filter.mp hi).2
      rcases residual_cutoffSeven_event_prime_cases
          hBout hpivotResidual hpointLow hp hp7 hevent with
        hp2 | hp3 | hp7eq
      · subst p
        exfalso
        apply hfull
        have hequation := fiveMillionEightModFourEquation_of_two_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFullModFour_eq_of_equation hequation
        simpa [triple, full] using hroot.symm
      · subst p
        apply Finset.mem_union_right
        have hequation := fiveMillionEightModNineEquation_of_three_event
          pattern point hpointResidue i hevent
        have heventSome := fiveMillionEightModNineEventFor_eq_some
          pattern hequation
        simpa [eightOptionalSingleton, nine, triple, heventSome]
      · subst p
        apply Finset.mem_union_left
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ i, ?_⟩
        have hequation :=
          fiveMillionEightModFortyNineEquation_of_seven_event
            pattern point hpointResidue i hevent
        simpa [event49, triple,
          fiveMillionEightModFortyNineEventFor] using hequation
    have hformsCard := Finset.card_le_card hforms
    have hfour :
        4 <= (eightPivotFiniteEventForms
          pivots pattern.pivotsCard point).card := by
      rw [eightPivotFiniteEventForms_card]
      exact hthreshold
    exact hfour.trans hformsCard

noncomputable def FiveMillionEightPivotPattern.toPeriodicCertificate
    {N : Nat} {B pivots : Finset Nat}
    (pattern : FiveMillionEightPivotPattern N B pivots)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionEightBasePeriodicThresholdCertificate N B pivots where
  sevenFullModFour := fiveMillionFullModFour 7 pattern.modFourClass
  sevenModNineEvent := fiveMillionEightModNineEventFor 7 pivots
    pattern.pivotsCard
  sevenModFortyNineEvent := fiveMillionEightModFortyNineEventFor 7 pivots
    pattern.pivotsCard
  sevenRootCapacity :=
    fiveMillionEightModFortyNineEventFor_capacity pattern 7
  eighteenFullModFour := fiveMillionFullModFour 18 pattern.modFourClass
  eighteenModNineEvent := fiveMillionEightModNineEventFor 18 pivots
    pattern.pivotsCard
  eighteenModFortyNineEvent := fiveMillionEightModFortyNineEventFor 18 pivots
    pattern.pivotsCard
  eighteenRootCapacity :=
    fiveMillionEightModFortyNineEventFor_capacity pattern 18
  sevenClassifies := by
    intro point hpoint hseven hthreshold
    exact fiveMillionEightPivotPattern_classifies hBout pattern
      (Finset.mem_union_left _ hseven)
      (Finset.mem_filter.mp hseven).2 hthreshold
  eighteenClassifies := by
    intro point hpoint heightteen hthreshold
    exact fiveMillionEightPivotPattern_classifies hBout pattern
      (Finset.mem_union_right _ heightteen)
      (Finset.mem_filter.mp heightteen).2 hthreshold

#print axioms eightPivotFiniteEventForms_card
#print axioms fiveMillionEightModFortyNineEventFor_capacity
#print axioms fiveMillionEightPivotPattern_classifies
#print axioms FiveMillionEightPivotPattern.toPeriodicCertificate

end Erdos848
