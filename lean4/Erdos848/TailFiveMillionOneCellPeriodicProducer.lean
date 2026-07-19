import Erdos848.TailFiveMillionPeriodicCardBridge
import Erdos848.TailFiveMillionPeriodicProducer
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Actual one-cell periodic producer

The pattern is deliberately parameterized by its number of pivots, threshold,
and allowed number of successful raw mod-49 fibres.  It covers the eight-pivot
capacity match and both six-pivot failure terminals without duplicating the
CRT argument.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def oneCellPivotModFortyNine {n : Nat}
    (pivot : Fin n → Nat) (i : Fin n) : FiveMillionModFortyNine :=
  ⟨pivot i % 49, Nat.mod_lt _ (by norm_num)⟩

structure FiveMillionOneCellPivotPattern
    (N : Nat) (B : Finset Nat) (n threshold extra : Nat) : Type where
  nPositive : 0 < n
  thresholdPositive : 0 < threshold
  thresholdCard : threshold ≤ n
  pivot : Fin n → Nat
  pivotInjective : Function.Injective pivot
  pivotResidual : ∀ i, pivot i ∈ hallResidual N B
  modFourClass : FiveMillionModFour
  commonModFour : ∀ i, (pivot i : ZMod 4) = modFourClass.val
  modNineClass : FiveMillionModNine
  commonModNine : ∀ i, (pivot i : ZMod 9) = modNineClass.val
  rawThresholdRoots :
    ((Finset.univ.filter fun residue : FiveMillionModFortyNine =>
      threshold ≤ ((Finset.univ : Finset (Fin n)).filter fun i =>
        oneCellPivotModFortyNine pivot i = residue).card).card ≤ extra)
  extraAtMostFortyNine : extra ≤ 49
  periodCapAtMostHalf : 441 + 3 * (49 + 8 * extra) ≤ 882

def FiveMillionOneCellPivotPattern.pivots
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra) :
    Finset Nat :=
  Finset.univ.image pattern.pivot

lemma FiveMillionOneCellPivotPattern.pivots_card
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra) :
    pattern.pivots.card = n := by
  rw [FiveMillionOneCellPivotPattern.pivots,
    Finset.card_image_of_injective _ pattern.pivotInjective]
  simp

lemma FiveMillionOneCellPivotPattern.pivots_subset_residual
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra) :
    pattern.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
  exact pattern.pivotResidual i

def oneCellModNineEquation {n : Nat}
    (baseResidue : Nat) (pivot : Fin n → Nat)
    (q : FiveMillionModNine) (i : Fin n) : Prop :=
  (pivot i : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) + baseResidue) + 1 = 0

noncomputable def oneCellModNineEventFor {n : Nat}
    (baseResidue : Nat) (pivot : Fin n → Nat) :
    FiveMillionModNine → Finset (Fin n) := by
  classical
  exact fun q => Finset.univ.filter fun i =>
    oneCellModNineEquation baseResidue pivot q i

def oneCellModFortyNineEquation {n : Nat}
    (baseResidue : Nat) (pivot : Fin n → Nat)
    (i : Fin n) (q : FiveMillionModFortyNine) : Prop :=
  (pivot i : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) + baseResidue) + 1 = 0

noncomputable def oneCellModFortyNineEventFor {n : Nat}
    (baseResidue : Nat) (pivot : Fin n → Nat) :
    FiveMillionModFortyNine → Finset (Fin n) := by
  classical
  exact fun q => Finset.univ.filter fun i =>
    oneCellModFortyNineEquation baseResidue pivot i q

private lemma oneCellModNineEventFor_eq_univ_of_nonempty
    {N n threshold extra baseResidue : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    {q : FiveMillionModNine}
    (hnonempty : (oneCellModNineEventFor
      baseResidue pattern.pivot q).Nonempty) :
    oneCellModNineEventFor baseResidue pattern.pivot q = Finset.univ := by
  classical
  obtain ⟨i, hi⟩ := hnonempty
  have hiEq : oneCellModNineEquation baseResidue pattern.pivot q i := by
    simpa [oneCellModNineEventFor] using (Finset.mem_filter.mp hi).2
  ext j
  simp only [Finset.mem_univ, iff_true]
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ j, ?_⟩
  have hpivot : (pattern.pivot j : ZMod 9) =
      (pattern.pivot i : ZMod 9) := by
    rw [pattern.commonModNine j, pattern.commonModNine i]
  unfold oneCellModNineEquation at hiEq ⊢
  rw [hpivot]
  exact hiEq

theorem oneCellModNineEventFor_shape
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (baseResidue : Nat) (q : FiveMillionModNine) :
    oneCellModNineEventFor baseResidue pattern.pivot q = ∅ ∨
      oneCellModNineEventFor baseResidue pattern.pivot q = Finset.univ := by
  classical
  by_cases hnonempty :
      (oneCellModNineEventFor baseResidue pattern.pivot q).Nonempty
  · exact Or.inr (oneCellModNineEventFor_eq_univ_of_nonempty
      pattern hnonempty)
  · exact Or.inl (Finset.not_nonempty_iff_eq_empty.mp hnonempty)

theorem oneCellModNineEventFor_full_card_le_one
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (baseResidue : Nat) :
    ((Finset.univ.filter fun q : FiveMillionModNine =>
      oneCellModNineEventFor baseResidue pattern.pivot q =
        Finset.univ).card ≤ 1) := by
  classical
  apply Finset.card_le_one.mpr
  intro q hq r hr
  have hqFull := (Finset.mem_filter.mp hq).2
  have hrFull := (Finset.mem_filter.mp hr).2
  let i : Fin n := ⟨0, pattern.nPositive⟩
  have hiq : i ∈ oneCellModNineEventFor
      baseResidue pattern.pivot q := by rw [hqFull]; simp
  have hir : i ∈ oneCellModNineEventFor
      baseResidue pattern.pivot r := by rw [hrFull]; simp
  have heqQ : oneCellModNineEquation baseResidue pattern.pivot q i := by
    simpa [oneCellModNineEventFor] using (Finset.mem_filter.mp hiq).2
  have heqR : oneCellModNineEquation baseResidue pattern.pivot r i := by
    simpa [oneCellModNineEventFor] using (Finset.mem_filter.mp hir).2
  unfold oneCellModNineEquation at heqQ heqR
  have haffine :
      (25 : ZMod 9) * (q.val : ZMod 9) + baseResidue =
        (25 : ZMod 9) * (r.val : ZMod 9) + baseResidue :=
    mul_add_one_right_unique heqQ heqR
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient
    (by decide : (4 : ZMod 9) * 25 = 1) haffine

private lemma oneCellModFortyNineEvent_same_residue
    {n baseResidue : Nat} {pivot : Fin n → Nat}
    {q : FiveMillionModFortyNine} {i j : Fin n}
    (hi : i ∈ oneCellModFortyNineEventFor baseResidue pivot q)
    (hj : j ∈ oneCellModFortyNineEventFor baseResidue pivot q) :
    oneCellPivotModFortyNine pivot i =
      oneCellPivotModFortyNine pivot j := by
  classical
  have hiEq : oneCellModFortyNineEquation baseResidue pivot i q := by
    simpa [oneCellModFortyNineEventFor] using (Finset.mem_filter.mp hi).2
  have hjEq : oneCellModFortyNineEquation baseResidue pivot j q := by
    simpa [oneCellModFortyNineEventFor] using (Finset.mem_filter.mp hj).2
  have hz : (pivot i : ZMod 49) = (pivot j : ZMod 49) :=
    mul_add_one_left_unique hiEq hjEq
  apply Fin.ext
  have hval := congrArg ZMod.val hz
  simpa [oneCellPivotModFortyNine, ZMod.val_natCast] using hval

private lemma oneCellModFortyNineEvent_eq_rawFibre_of_mem
    {n baseResidue : Nat} {pivot : Fin n → Nat}
    {q : FiveMillionModFortyNine} {i : Fin n}
    (hi : i ∈ oneCellModFortyNineEventFor baseResidue pivot q) :
    oneCellModFortyNineEventFor baseResidue pivot q =
      (Finset.univ : Finset (Fin n)).filter fun j =>
        oneCellPivotModFortyNine pivot j =
          oneCellPivotModFortyNine pivot i := by
  classical
  ext j
  constructor
  · intro hj
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
      oneCellModFortyNineEvent_same_residue hj hi⟩
  · intro hj
    have hjResidue := (Finset.mem_filter.mp hj).2
    have hiEq : oneCellModFortyNineEquation baseResidue pivot i q := by
      simpa [oneCellModFortyNineEventFor] using (Finset.mem_filter.mp hi).2
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    unfold oneCellModFortyNineEquation at hiEq ⊢
    have hpivot : (pivot j : ZMod 49) = (pivot i : ZMod 49) := by
      apply (ZMod.natCast_eq_natCast_iff' (pivot j) (pivot i) 49).2
      have hval := congrArg Fin.val hjResidue
      simpa [oneCellPivotModFortyNine] using hval
    rw [hpivot]
    exact hiEq

noncomputable def oneCellModFortyNineEventWitness
    {n : Nat} (fallback : Fin n) (baseResidue : Nat)
    (pivot : Fin n → Nat) (q : FiveMillionModFortyNine) : Fin n := by
  classical
  exact if h : (oneCellModFortyNineEventFor
    baseResidue pivot q).Nonempty then Classical.choose h else fallback

lemma oneCellModFortyNineEventWitness_mem
    {n : Nat} (fallback : Fin n) (baseResidue : Nat)
    (pivot : Fin n → Nat) {q : FiveMillionModFortyNine}
    (hnonempty : (oneCellModFortyNineEventFor
      baseResidue pivot q).Nonempty) :
    oneCellModFortyNineEventWitness fallback baseResidue pivot q ∈
      oneCellModFortyNineEventFor baseResidue pivot q := by
  rw [oneCellModFortyNineEventWitness, dif_pos hnonempty]
  exact Classical.choose_spec hnonempty

theorem oneCellModFortyNineEventFor_raw_success_card_le
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (baseResidue : Nat) :
    (oneCellRawSuccessfulModFortyNineRoots threshold
      (oneCellModFortyNineEventFor baseResidue pattern.pivot)).card ≤
        extra := by
  classical
  let actual := oneCellRawSuccessfulModFortyNineRoots threshold
    (oneCellModFortyNineEventFor baseResidue pattern.pivot)
  let raw := (Finset.univ.filter fun residue : FiveMillionModFortyNine =>
    threshold ≤ ((Finset.univ : Finset (Fin n)).filter fun i =>
      oneCellPivotModFortyNine pattern.pivot i = residue).card)
  let fallback : Fin n := ⟨0, pattern.nPositive⟩
  let witness := oneCellModFortyNineEventWitness fallback
    baseResidue pattern.pivot
  let residueAt := fun q : FiveMillionModFortyNine =>
    oneCellPivotModFortyNine pattern.pivot (witness q)
  have hmap : Set.MapsTo residueAt (actual : Set FiveMillionModFortyNine)
      raw := by
    intro q hq
    have hsuccess : threshold ≤
        (oneCellModFortyNineEventFor baseResidue pattern.pivot q).card := by
      simpa [actual, oneCellRawSuccessfulModFortyNineRoots] using
        (Finset.mem_filter.mp hq).2
    have hnonempty : (oneCellModFortyNineEventFor
        baseResidue pattern.pivot q).Nonempty :=
      Finset.card_pos.mp (lt_of_lt_of_le pattern.thresholdPositive hsuccess)
    have hwitness : witness q ∈ oneCellModFortyNineEventFor
        baseResidue pattern.pivot q := by
      exact oneCellModFortyNineEventWitness_mem fallback
        baseResidue pattern.pivot hnonempty
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    rw [← oneCellModFortyNineEvent_eq_rawFibre_of_mem hwitness]
    exact hsuccess
  have hinj : Set.InjOn residueAt
      (actual : Set FiveMillionModFortyNine) := by
    intro q hq r hr hqr
    have hqSuccess : threshold ≤
        (oneCellModFortyNineEventFor baseResidue pattern.pivot q).card := by
      simpa [actual, oneCellRawSuccessfulModFortyNineRoots] using
        (Finset.mem_filter.mp hq).2
    have hrSuccess : threshold ≤
        (oneCellModFortyNineEventFor baseResidue pattern.pivot r).card := by
      simpa [actual, oneCellRawSuccessfulModFortyNineRoots] using
        (Finset.mem_filter.mp hr).2
    have hqNonempty := Finset.card_pos.mp
      (lt_of_lt_of_le pattern.thresholdPositive hqSuccess)
    have hrNonempty := Finset.card_pos.mp
      (lt_of_lt_of_le pattern.thresholdPositive hrSuccess)
    have hwq : witness q ∈ oneCellModFortyNineEventFor
        baseResidue pattern.pivot q :=
      oneCellModFortyNineEventWitness_mem fallback
        baseResidue pattern.pivot hqNonempty
    have hwr : witness r ∈ oneCellModFortyNineEventFor
        baseResidue pattern.pivot r :=
      oneCellModFortyNineEventWitness_mem fallback
        baseResidue pattern.pivot hrNonempty
    have heqQ : oneCellModFortyNineEquation baseResidue pattern.pivot
        (witness q) q := by
      simpa [oneCellModFortyNineEventFor] using (Finset.mem_filter.mp hwq).2
    have heqR : oneCellModFortyNineEquation baseResidue pattern.pivot
        (witness r) r := by
      simpa [oneCellModFortyNineEventFor] using (Finset.mem_filter.mp hwr).2
    have hpivot : (pattern.pivot (witness q) : ZMod 49) =
        (pattern.pivot (witness r) : ZMod 49) := by
      apply (ZMod.natCast_eq_natCast_iff'
        (pattern.pivot (witness q)) (pattern.pivot (witness r)) 49).2
      have hval := congrArg Fin.val hqr
      simpa [residueAt, oneCellPivotModFortyNine] using hval
    unfold oneCellModFortyNineEquation at heqQ heqR
    rw [hpivot] at heqQ
    have haffine :
        (25 : ZMod 49) * (q.val : ZMod 49) + baseResidue =
          (25 : ZMod 49) * (r.val : ZMod 49) + baseResidue :=
      mul_add_one_right_unique heqQ heqR
    apply fin_eq_of_zmod_val_eq
    exact affine_eq_of_unit_coefficient
      (by decide : (2 : ZMod 49) * 25 = 1) haffine
  have hcard : actual.card ≤ raw.card :=
    Finset.card_le_card_of_injOn residueAt hmap hinj
  exact hcard.trans (by simpa [raw] using pattern.rawThresholdRoots)

noncomputable def oneCellFiniteEventForms
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (point : Nat) : Finset (Fin n) := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7 (pattern.pivot i) point

theorem oneCellFiniteEventForms_card
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (point : Nat) :
    (oneCellFiniteEventForms pattern point).card =
      fiveMillionFiniteEventCount pattern.pivots point := by
  classical
  have himage :
      (oneCellFiniteEventForms pattern point).image pattern.pivot =
        pattern.pivots.filter fun pivot =>
          finiteSquarePrimeEvent 7 pivot point := by
    ext pivot
    constructor
    · intro hpivot
      obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hpivot
      exact Finset.mem_filter.mpr ⟨
        Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩,
        by simpa [oneCellFiniteEventForms] using hi⟩
    · intro hpivot
      have hpivotParts := Finset.mem_filter.mp hpivot
      obtain ⟨i, _hi, hipivot⟩ := Finset.mem_image.mp hpivotParts.1
      apply Finset.mem_image.mpr
      refine ⟨i, ?_, hipivot⟩
      simpa [oneCellFiniteEventForms, hipivot] using hpivotParts.2
  rw [fiveMillionFiniteEventCount]
  rw [← himage, Finset.card_image_of_injective _ pattern.pivotInjective]

private lemma oneCellModFourEquation_of_two_event
    {N n threshold extra baseResidue : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : Fin n) (hevent : 2 ^ 2 ∣ pattern.pivot i * point + 1) :
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

private lemma oneCellModNineEquation_of_three_event
    {N n threshold extra baseResidue : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : Fin n) (hevent : 3 ^ 2 ∣ pattern.pivot i * point + 1) :
    oneCellModNineEquation baseResidue pattern.pivot
      (fiveMillionPeriodicTriple (point / 25)).2.1 i := by
  have hevent9 : 9 ∣ pattern.pivot i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint hevent9
  rw [← fiveMillionPeriodicTriple_modNine_cast (point / 25)] at hactual
  exact hactual

private lemma oneCellModFortyNineEquation_of_seven_event
    {N n threshold extra baseResidue : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (point : Nat) (hpoint : point % 25 = baseResidue)
    (i : Fin n) (hevent : 7 ^ 2 ∣ pattern.pivot i * point + 1) :
    oneCellModFortyNineEquation baseResidue pattern.pivot i
      (fiveMillionPeriodicTriple (point / 25)).2.2 := by
  have hevent49 : 49 ∣ pattern.pivot i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint hevent49
  rw [← fiveMillionPeriodicTriple_modFortyNine_cast (point / 25)] at hactual
  exact hactual

theorem FiveMillionOneCellPivotPattern.classifies
    {N n threshold extra : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : threshold ≤ fiveMillionFiniteEventCount
      pattern.pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      oneCellPeriodicFiniteResidues
        (fiveMillionFullModFour baseResidue pattern.modFourClass)
        threshold
        (oneCellModNineEventFor baseResidue pattern.pivot)
        (oneCellModFortyNineEventFor baseResidue pattern.pivot) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  let full := fiveMillionFullModFour baseResidue pattern.modFourClass
  let nine := oneCellModNineEventFor baseResidue pattern.pivot
  let event49 := oneCellModFortyNineEventFor baseResidue pattern.pivot
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  by_cases hfull : triple.1 = full
  · exact Or.inl hfull
  · apply Or.inr
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ triple.2.2, ?_⟩
    have hforms : oneCellFiniteEventForms pattern point ⊆
        (nine triple.2.1) ∪ (event49 triple.2.2) := by
      intro i hi
      have hpivotResidual := pattern.pivotResidual i
      obtain ⟨p, hp, hp7, hevent⟩ := by
        simpa [oneCellFiniteEventForms] using (Finset.mem_filter.mp hi).2
      rcases residual_cutoffSeven_event_prime_cases
          hBout hpivotResidual hpointLow hp hp7 hevent with hp2 | hp3 | hp7eq
      · subst p
        exfalso
        apply hfull
        have hequation := oneCellModFourEquation_of_two_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFullModFour_eq_of_equation hequation
        simpa [triple, full] using hroot.symm
      · subst p
        apply Finset.mem_union_left
        exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
          oneCellModNineEquation_of_three_event
            pattern point hpointResidue i hevent⟩
      · subst p
        apply Finset.mem_union_right
        exact Finset.mem_filter.mpr ⟨Finset.mem_univ _,
          oneCellModFortyNineEquation_of_seven_event
            pattern point hpointResidue i hevent⟩
    have hformsCard := Finset.card_le_card hforms
    have hthresholdForms : threshold ≤
        (oneCellFiniteEventForms pattern point).card := by
      rw [oneCellFiniteEventForms_card]
      exact hthreshold
    exact hthresholdForms.trans hformsCard

noncomputable def FiveMillionOneCellPivotPattern.toCardPeriodicCertificate
    {N n threshold extra : Nat} {B : Finset Nat}
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionCardPeriodicThresholdCertificate N B pattern.pivots
      threshold (441 + 3 * (49 + 8 * extra)) where
  capAtMostHalf := by
    exact pattern.periodCapAtMostHalf
  sevenResidues := oneCellPeriodicNatResidues
    (fiveMillionFullModFour 7 pattern.modFourClass) threshold
    (oneCellModNineEventFor 7 pattern.pivot)
    (oneCellModFortyNineEventFor 7 pattern.pivot)
  sevenResiduesSubset := oneCellPeriodicNatResidues_subset_range _ _ _ _
  sevenResiduesCard := by
    haveI : Nonempty (Fin n) := ⟨⟨0, pattern.nPositive⟩⟩
    exact oneCellPeriodicNatResidues_card_le _ threshold extra _ _
      (oneCellModNineEventFor_shape pattern 7)
      (oneCellModNineEventFor_full_card_le_one pattern 7)
      (by simpa using pattern.thresholdCard)
      (oneCellModFortyNineEventFor_raw_success_card_le pattern 7)
      pattern.extraAtMostFortyNine
  eighteenResidues := oneCellPeriodicNatResidues
    (fiveMillionFullModFour 18 pattern.modFourClass) threshold
    (oneCellModNineEventFor 18 pattern.pivot)
    (oneCellModFortyNineEventFor 18 pattern.pivot)
  eighteenResiduesSubset := oneCellPeriodicNatResidues_subset_range _ _ _ _
  eighteenResiduesCard := by
    haveI : Nonempty (Fin n) := ⟨⟨0, pattern.nPositive⟩⟩
    exact oneCellPeriodicNatResidues_card_le _ threshold extra _ _
      (oneCellModNineEventFor_shape pattern 18)
      (oneCellModNineEventFor_full_card_le_one pattern 18)
      (by simpa using pattern.thresholdCard)
      (oneCellModFortyNineEventFor_raw_success_card_le pattern 18)
      pattern.extraAtMostFortyNine
  sevenClassifies := by
    intro point _hbase hpoint hthreshold
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr
      (Nat.mod_lt _ (by norm_num : 0 < 1764)), ?_⟩
    rw [fiveMillionPeriodicTriple_mod_period]
    exact pattern.classifies hBout
      (Finset.mem_union_left _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold
  eighteenClassifies := by
    intro point _hbase hpoint hthreshold
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr
      (Nat.mod_lt _ (by norm_num : 0 < 1764)), ?_⟩
    rw [fiveMillionPeriodicTriple_mod_period]
    exact pattern.classifies hBout
      (Finset.mem_union_right _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold

#print axioms oneCellModNineEventFor_full_card_le_one
#print axioms oneCellModFortyNineEventFor_raw_success_card_le
#print axioms FiveMillionOneCellPivotPattern.classifies
#print axioms FiveMillionOneCellPivotPattern.toCardPeriodicCertificate

end Erdos848
