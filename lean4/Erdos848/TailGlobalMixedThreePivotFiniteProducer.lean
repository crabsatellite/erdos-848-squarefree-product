import Erdos848.TailGlobalMixedThreePivotFiniteDensity
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Literal CRT producer for the three-pivot cutoff-seven density

This file connects three actual natural-number pivots to the abstract partial
root functions used by `TailGlobalMixedThreePivotFiniteDensity`.  It contains
no Hall assumptions and no interval computation.
-/

noncomputable def globalMixedThreePivotEquiv
    (pivots : Finset ℕ) (hcard : pivots.card = 3) :
    GlobalMixedThreePivotForm ≃ pivots :=
  (pivots.equivFinOfCardEq hcard).symm

noncomputable def globalMixedThreePivotAt
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    (i : GlobalMixedThreePivotForm) : ℕ :=
  (globalMixedThreePivotEquiv pivots hcard i).1

lemma globalMixedThreePivotAt_mem
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    (i : GlobalMixedThreePivotForm) :
    globalMixedThreePivotAt pivots hcard i ∈ pivots :=
  (globalMixedThreePivotEquiv pivots hcard i).2

lemma globalMixedThreePivotAt_injective
    (pivots : Finset ℕ) (hcard : pivots.card = 3) :
    Function.Injective (globalMixedThreePivotAt pivots hcard) := by
  intro i j hij
  apply (globalMixedThreePivotEquiv pivots hcard).injective
  exact Subtype.ext hij

lemma globalMixedThreePivotAt_surjective_on
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    {pivot : ℕ} (hpivot : pivot ∈ pivots) :
    ∃ i : GlobalMixedThreePivotForm,
      globalMixedThreePivotAt pivots hcard i = pivot := by
  let pivotSubtype : pivots := ⟨pivot, hpivot⟩
  refine ⟨(globalMixedThreePivotEquiv pivots hcard).symm pivotSubtype, ?_⟩
  exact congrArg Subtype.val
    ((globalMixedThreePivotEquiv pivots hcard).apply_symm_apply pivotSubtype)

def globalMixedThreePivotModNineEquation
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 3)
    (i : GlobalMixedThreePivotForm) (q : GlobalMixedModNine) : Prop :=
  (globalMixedThreePivotAt pivots hcard i : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) +
        (baseResidue : ZMod 9)) + 1 = 0

def globalMixedThreePivotModFortyNineEquation
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 3)
    (i : GlobalMixedThreePivotForm)
    (q : GlobalMixedModFortyNine) : Prop :=
  (globalMixedThreePivotAt pivots hcard i : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) +
        (baseResidue : ZMod 49)) + 1 = 0

noncomputable def globalMixedThreePivotModNineRoot
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 3) :
    GlobalMixedThreePivotForm → Option GlobalMixedModNine := by
  classical
  exact fun i =>
    if h : ∃ q, globalMixedThreePivotModNineEquation
        baseResidue pivots hcard i q then
      some (Classical.choose h)
    else none

noncomputable def globalMixedThreePivotModFortyNineRoot
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 3) :
    GlobalMixedThreePivotForm → Option GlobalMixedModFortyNine := by
  classical
  exact fun i =>
    if h : ∃ q, globalMixedThreePivotModFortyNineEquation
        baseResidue pivots hcard i q then
      some (Classical.choose h)
    else none

lemma globalMixedThreePivotModNineRoot_eq_some
    {baseResidue : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    {i : GlobalMixedThreePivotForm} {q : GlobalMixedModNine}
    (hq : globalMixedThreePivotModNineEquation
      baseResidue pivots hcard i q) :
    globalMixedThreePivotModNineRoot
      baseResidue pivots hcard i = some q := by
  rw [globalMixedThreePivotModNineRoot, dif_pos ⟨q, hq⟩]
  congr 1
  have hchosen := Classical.choose_spec
    (show ∃ r, globalMixedThreePivotModNineEquation
        baseResidue pivots hcard i r from ⟨q, hq⟩)
  have haffine :
      (25 : ZMod 9) *
          ((Classical.choose
            (show ∃ r, globalMixedThreePivotModNineEquation
              baseResidue pivots hcard i r from ⟨q, hq⟩)).val : ZMod 9) +
            baseResidue =
        (25 : ZMod 9) * (q.val : ZMod 9) + baseResidue :=
    mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient (by decide :
    (4 : ZMod 9) * 25 = 1) haffine

lemma globalMixedThreePivotModFortyNineRoot_eq_some
    {baseResidue : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    {i : GlobalMixedThreePivotForm} {q : GlobalMixedModFortyNine}
    (hq : globalMixedThreePivotModFortyNineEquation
      baseResidue pivots hcard i q) :
    globalMixedThreePivotModFortyNineRoot
      baseResidue pivots hcard i = some q := by
  rw [globalMixedThreePivotModFortyNineRoot, dif_pos ⟨q, hq⟩]
  congr 1
  have hchosen := Classical.choose_spec
    (show ∃ r, globalMixedThreePivotModFortyNineEquation
        baseResidue pivots hcard i r from ⟨q, hq⟩)
  have haffine :
      (25 : ZMod 49) *
          ((Classical.choose
            (show ∃ r, globalMixedThreePivotModFortyNineEquation
              baseResidue pivots hcard i r from ⟨q, hq⟩)).val : ZMod 49) +
            baseResidue =
        (25 : ZMod 49) * (q.val : ZMod 49) + baseResidue :=
    mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient (by decide :
    (2 : ZMod 49) * 25 = 1) haffine

lemma globalMixedModNineQuotient_cast (q : ℕ) :
    (((⟨q % 9, Nat.mod_lt q (by norm_num)⟩ : GlobalMixedModNine).val : ℕ) :
      ZMod 9) = (q : ZMod 9) := by
  change ((q % 9 : ℕ) : ZMod 9) = (q : ZMod 9)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 9))

lemma globalMixedModFortyNineQuotient_cast (q : ℕ) :
    (((⟨q % 49, Nat.mod_lt q (by norm_num)⟩ :
      GlobalMixedModFortyNine).val : ℕ) : ZMod 49) =
        (q : ZMod 49) := by
  change ((q % 49 : ℕ) : ZMod 49) = (q : ZMod 49)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 49))

lemma globalMixedThreePivotModNineEquation_of_event
    {baseResidue point : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (i : GlobalMixedThreePivotForm)
    (hevent : 3 ^ 2 ∣
      globalMixedThreePivotAt pivots hcard i * point + 1) :
    globalMixedThreePivotModNineEquation baseResidue pivots hcard i
      ⟨(point / 25) % 9, Nat.mod_lt _ (by norm_num)⟩ := by
  have heventNine : 9 ∣
      globalMixedThreePivotAt pivots hcard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint heventNine
  rw [← globalMixedModNineQuotient_cast (point / 25)] at hactual
  exact hactual

lemma globalMixedThreePivotModFortyNineEquation_of_event
    {baseResidue point : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (i : GlobalMixedThreePivotForm)
    (hevent : 7 ^ 2 ∣
      globalMixedThreePivotAt pivots hcard i * point + 1) :
    globalMixedThreePivotModFortyNineEquation
      baseResidue pivots hcard i
        ⟨(point / 25) % 49, Nat.mod_lt _ (by norm_num)⟩ := by
  have heventFortyNine : 49 ∣
      globalMixedThreePivotAt pivots hcard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint heventFortyNine
  rw [← globalMixedModFortyNineQuotient_cast (point / 25)] at hactual
  exact hactual

noncomputable def globalMixedThreePivotCutoffSevenForms
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    (point : ℕ) : Finset GlobalMixedThreePivotForm := by
  classical
  exact Finset.univ.filter fun i =>
    3 ^ 2 ∣ globalMixedThreePivotAt pivots hcard i * point + 1 ∨
      7 ^ 2 ∣ globalMixedThreePivotAt pivots hcard i * point + 1

/-- Literal divisibility at `3²` or `7²` sends every threshold point to the
abstract successful CRT set. -/
theorem globalMixedThreePivotCutoffSevenForms_classifies
    {baseResidue point : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (hthreshold : 2 ≤
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card) :
    (⟨(point / 25) % 9, Nat.mod_lt _ (by norm_num)⟩,
      ⟨(point / 25) % 49, Nat.mod_lt _ (by norm_num)⟩) ∈
        globalMixedThreePivotSuccessfulResidues
          (globalMixedThreePivotModNineRoot
            baseResidue pivots hcard)
          (globalMixedThreePivotModFortyNineRoot
            baseResidue pivots hcard) := by
  classical
  let qNine : GlobalMixedModNine :=
    ⟨(point / 25) % 9, Nat.mod_lt _ (by norm_num)⟩
  let qFortyNine : GlobalMixedModFortyNine :=
    ⟨(point / 25) % 49, Nat.mod_lt _ (by norm_num)⟩
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, ?_⟩
  have hsubset : globalMixedThreePivotCutoffSevenForms
      pivots hcard point ⊆
        (globalMixedPartialRootFibre
          (globalMixedThreePivotModNineRoot
            baseResidue pivots hcard) qNine) ∪
        (globalMixedPartialRootFibre
          (globalMixedThreePivotModFortyNineRoot
            baseResidue pivots hcard) qFortyNine) := by
    intro i hi
    rcases (Finset.mem_filter.mp hi).2 with hthree | hseven
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      apply globalMixedThreePivotModNineRoot_eq_some
      exact globalMixedThreePivotModNineEquation_of_event hpoint i hthree
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      apply globalMixedThreePivotModFortyNineRoot_eq_some
      exact globalMixedThreePivotModFortyNineEquation_of_event
        hpoint i hseven
  exact hthreshold.trans (Finset.card_le_card hsubset)

theorem globalMixedThreePivotNatResidue_of_cutoffSevenForms
    {baseResidue point : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (hthreshold : 2 ≤
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card) :
    (point / 25) % 441 ∈
      globalMixedThreePivotNatResidues
        (globalMixedThreePivotModNineRoot
          baseResidue pivots hcard)
        (globalMixedThreePivotModFortyNineRoot
          baseResidue pivots hcard) := by
  have hclassifies := globalMixedThreePivotCutoffSevenForms_classifies
    hpoint hthreshold
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
  have hnine : ((point / 25) % 441) % 9 = (point / 25) % 9 := by
    omega
  have hfortyNine : ((point / 25) % 441) % 49 =
      (point / 25) % 49 := by
    omega
  simpa only [hnine, hfortyNine] using hclassifies

lemma globalMixedThreePivotModNineRoot_some_spec
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    {i : GlobalMixedThreePivotForm} {q : GlobalMixedModNine}
    (hroot : globalMixedThreePivotModNineRoot
      baseResidue pivots hcard i = some q) :
    globalMixedThreePivotModNineEquation
      baseResidue pivots hcard i q := by
  unfold globalMixedThreePivotModNineRoot at hroot
  split at hroot
  next hexists =>
    have hchosen := Classical.choose_spec hexists
    have heq : Classical.choose hexists = q := Option.some.inj hroot
    simpa [heq] using hchosen
  next _ => simp at hroot

/-- A mod-nine root fibre inherits the literal at-most-two cell capacity of
the three selected pivots. -/
theorem globalMixedThreePivotModNineRoot_fibre_card_le_two
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hcapacity : ∀ residue : Fin 9,
      (pivots.filter fun pivot => pivot % 9 = residue.val).card <= 2)
    (residue : GlobalMixedModNine) :
    (globalMixedPartialRootFibre
      (globalMixedThreePivotModNineRoot baseResidue pivots hcard)
      residue).card <= 2 := by
  classical
  let fibre := globalMixedPartialRootFibre
    (globalMixedThreePivotModNineRoot baseResidue pivots hcard) residue
  by_cases hnonempty : fibre.Nonempty
  · let anchor := Classical.choose hnonempty
    have hanchor : anchor ∈ fibre := Classical.choose_spec hnonempty
    let target := pivots.filter fun pivot =>
      pivot % 9 = globalMixedThreePivotAt pivots hcard anchor % 9
    have hmap : Set.MapsTo (globalMixedThreePivotAt pivots hcard)
        (fibre : Set GlobalMixedThreePivotForm) target := by
      intro i hi
      apply Finset.mem_filter.mpr
      refine ⟨globalMixedThreePivotAt_mem pivots hcard i, ?_⟩
      have hiRoot := (Finset.mem_filter.mp hi).2
      have hanchorRoot := (Finset.mem_filter.mp hanchor).2
      have hiEq := globalMixedThreePivotModNineRoot_some_spec hiRoot
      have hanchorEq :=
        globalMixedThreePivotModNineRoot_some_spec hanchorRoot
      have hz :
          (globalMixedThreePivotAt pivots hcard i : ZMod 9) =
            (globalMixedThreePivotAt pivots hcard anchor : ZMod 9) :=
        mul_add_one_left_unique hiEq hanchorEq
      have hval := congrArg ZMod.val hz
      simpa [ZMod.val_natCast] using hval
    have hinjective : Set.InjOn
        (globalMixedThreePivotAt pivots hcard)
        (fibre : Set GlobalMixedThreePivotForm) :=
      (globalMixedThreePivotAt_injective pivots hcard).injOn
    have hcardMap : fibre.card <= target.card :=
      Finset.card_le_card_of_injOn
        (globalMixedThreePivotAt pivots hcard) hmap hinjective
    have htarget : target.card <= 2 := by
      simpa [target] using hcapacity
        ⟨globalMixedThreePivotAt pivots hcard anchor % 9,
          Nat.mod_lt _ (by norm_num)⟩
    exact hcardMap.trans htarget
  · have hempty : fibre = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp [fibre, hempty]

/-- Threshold three sends the quotient to the sharper all-three CRT set. -/
theorem globalMixedThreePivotCutoffSevenForms_classifies_allThree
    {baseResidue point : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (hthreshold : 3 <=
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card) :
    (⟨(point / 25) % 9, Nat.mod_lt _ (by norm_num)⟩,
      ⟨(point / 25) % 49, Nat.mod_lt _ (by norm_num)⟩) ∈
        globalMixedThreePivotAllThreeSuccessfulResidues
          (globalMixedThreePivotModNineRoot
            baseResidue pivots hcard)
          (globalMixedThreePivotModFortyNineRoot
            baseResidue pivots hcard) := by
  classical
  let qNine : GlobalMixedModNine :=
    ⟨(point / 25) % 9, Nat.mod_lt _ (by norm_num)⟩
  let qFortyNine : GlobalMixedModFortyNine :=
    ⟨(point / 25) % 49, Nat.mod_lt _ (by norm_num)⟩
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, ?_⟩
  have hsubset : globalMixedThreePivotCutoffSevenForms
      pivots hcard point ⊆
        (globalMixedPartialRootFibre
          (globalMixedThreePivotModNineRoot
            baseResidue pivots hcard) qNine) ∪
        (globalMixedPartialRootFibre
          (globalMixedThreePivotModFortyNineRoot
            baseResidue pivots hcard) qFortyNine) := by
    intro i hi
    rcases (Finset.mem_filter.mp hi).2 with hthree | hseven
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      apply globalMixedThreePivotModNineRoot_eq_some
      exact globalMixedThreePivotModNineEquation_of_event hpoint i hthree
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      apply globalMixedThreePivotModFortyNineRoot_eq_some
      exact globalMixedThreePivotModFortyNineEquation_of_event
        hpoint i hseven
  exact hthreshold.trans (Finset.card_le_card hsubset)

theorem globalMixedThreePivotAllThreeNatResidue_of_cutoffSevenForms
    {baseResidue point : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hpoint : point % 25 = baseResidue)
    (hthreshold : 3 <=
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card) :
    (point / 25) % 441 ∈
      globalMixedThreePivotAllThreeNatResidues
        (globalMixedThreePivotModNineRoot baseResidue pivots hcard)
        (globalMixedThreePivotModFortyNineRoot
          baseResidue pivots hcard) := by
  have hclassifies :=
    globalMixedThreePivotCutoffSevenForms_classifies_allThree
      hpoint hthreshold
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
  have hnine : ((point / 25) % 441) % 9 = (point / 25) % 9 := by omega
  have hfortyNine : ((point / 25) % 441) % 49 =
      (point / 25) % 49 := by omega
  simpa only [hnine, hfortyNine] using hclassifies

#print axioms globalMixedThreePivotModNineRoot_eq_some
#print axioms globalMixedThreePivotModFortyNineRoot_eq_some
#print axioms globalMixedThreePivotCutoffSevenForms_classifies
#print axioms globalMixedThreePivotNatResidue_of_cutoffSevenForms
#print axioms globalMixedThreePivotModNineRoot_fibre_card_le_two
#print axioms globalMixedThreePivotAllThreeNatResidue_of_cutoffSevenForms

end Erdos848
