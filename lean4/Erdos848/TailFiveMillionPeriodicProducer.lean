import Erdos848.TailFiveMillionPeriodicBridge
import Erdos848.TailFiveMillionResidualCore
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
## Semantic producer for the five-million periodic certificate

The periodic density theorem is uniform in the collision pattern, but its
input still has to be extracted from six literal pivots of the Hall residual.
This file starts that extraction without replacing the actual square-prime
events by numerical surrogates.
-/

/-! ### A canonical indexing of six actual pivots -/

/-- A six-element finset is canonically (and noncomputably) indexed by
`Fin 6`.  Keeping the codomain as the finset subtype makes membership part of
the data rather than a separate producer assumption. -/
noncomputable def sixPivotEquiv
    (pivots : Finset ℕ) (hcard : pivots.card = 6) :
    Fin 6 ≃ pivots :=
  (pivots.equivFinOfCardEq hcard).symm

noncomputable def sixPivotAt
    (pivots : Finset ℕ) (hcard : pivots.card = 6)
    (i : Fin 6) : ℕ :=
  (sixPivotEquiv pivots hcard i).1

lemma sixPivotAt_mem
    (pivots : Finset ℕ) (hcard : pivots.card = 6)
    (i : Fin 6) :
    sixPivotAt pivots hcard i ∈ pivots :=
  (sixPivotEquiv pivots hcard i).2

lemma sixPivotAt_injective
    (pivots : Finset ℕ) (hcard : pivots.card = 6) :
    Function.Injective (sixPivotAt pivots hcard) := by
  intro i j hij
  apply (sixPivotEquiv pivots hcard).injective
  exact Subtype.ext hij

lemma sixPivotAt_surjective_on
    (pivots : Finset ℕ) (hcard : pivots.card = 6)
    {pivot : ℕ} (hpivot : pivot ∈ pivots) :
    ∃ i : Fin 6, sixPivotAt pivots hcard i = pivot := by
  let pivotSubtype : pivots := ⟨pivot, hpivot⟩
  refine ⟨(sixPivotEquiv pivots hcard).symm pivotSubtype, ?_⟩
  exact congrArg Subtype.val
    ((sixPivotEquiv pivots hcard).apply_symm_apply pivotSubtype)

/-- The finite-event subset of the six forms is exactly the literal filtered
pivot set used by `fiveMillionFiniteEventCount`; no multiplicity or relaxed
event has been introduced by indexing. -/
noncomputable def sixPivotFiniteEventForms
    (pivots : Finset ℕ) (hcard : pivots.card = 6)
    (point : ℕ) : Finset (Fin 6) := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7 (sixPivotAt pivots hcard i) point

theorem sixPivotFiniteEventForms_card
    (pivots : Finset ℕ) (hcard : pivots.card = 6)
    (point : ℕ) :
    (sixPivotFiniteEventForms pivots hcard point).card =
      fiveMillionFiniteEventCount pivots point := by
  classical
  change
    ((Finset.univ.filter fun i : Fin 6 =>
      finiteSquarePrimeEvent 7 (sixPivotAt pivots hcard i) point).card) =
    ((pivots.filter fun pivot =>
      finiteSquarePrimeEvent 7 pivot point).card)
  apply Finset.card_bij (fun i _hi => sixPivotAt pivots hcard i)
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨sixPivotAt_mem pivots hcard i, (Finset.mem_filter.mp hi).2⟩
  · intro i hi j hj hij
    exact sixPivotAt_injective pivots hcard hij
  · intro pivot hpivot
    obtain ⟨i, hi⟩ := sixPivotAt_surjective_on pivots hcard
      (Finset.mem_filter.mp hpivot).1
    refine ⟨i, ?_, hi⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ i, ?_⟩
    simpa [hi] using (Finset.mem_filter.mp hpivot).2

/-! ### The literal cutoff-seven prime classification -/

lemma prime_le_seven_cases {p : ℕ}
    (hp : Nat.Prime p) (hp7 : p ≤ 7) :
    p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7 := by
  rcases hp.eq_two_or_odd with htwo | hodd
  · exact Or.inl htwo
  · have hp2 := hp.two_le
    omega

lemma hallResidual_not_mem_originalA7
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hpivot : pivot ∈ hallResidual N B) :
    pivot ∉ OriginalA7 N := by
  intro hpivot7
  exact (Finset.mem_sdiff.mp hpivot).2
    (Finset.mem_union_left _ hpivot7)

lemma hallResidual_not_mem_originalA18
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hpivot : pivot ∈ hallResidual N B) :
    pivot ∉ OriginalA18 N := by
  intro hpivot18
  exact (Finset.mem_sdiff.mp hpivot).2
    (Finset.mem_union_right _ hpivot18)

/-- On the `7 mod 25` base progression, a square-prime event at `5` forces
the pivot back into the same sharp class `7 mod 25`. -/
lemma pivot_mod25_eq_seven_of_seven_event
    {pivot point : ℕ}
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

/-- On the `18 mod 25` base progression, a square-prime event at `5` forces
the pivot back into the same sharp class `18 mod 25`. -/
lemma pivot_mod25_eq_eighteen_of_eighteen_event
    {pivot point : ℕ}
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

lemma five_not_event_on_originalA7_from_residual
    {N : ℕ} {B : Finset ℕ} {pivot point : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ OriginalA7 N) :
    ¬ 5 ^ 2 ∣ pivot * point + 1 := by
  intro hevent
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivot).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotMod := pivot_mod25_eq_seven_of_seven_event
    (Finset.mem_filter.mp hpoint).2 (by norm_num at hevent ⊢; exact hevent)
  apply hallResidual_not_mem_originalA7 hpivot
  exact Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩

lemma five_not_event_on_originalA18_from_residual
    {N : ℕ} {B : Finset ℕ} {pivot point : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ OriginalA18 N) :
    ¬ 5 ^ 2 ∣ pivot * point + 1 := by
  intro hevent
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivot).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotMod := pivot_mod25_eq_eighteen_of_eighteen_event
    (Finset.mem_filter.mp hpoint).2 (by norm_num at hevent ⊢; exact hevent)
  apply hallResidual_not_mem_originalA18 hpivot
  exact Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩

/-- For an actual residual pivot and either sharp base progression, every
finite event at cutoff seven is witnessed by exactly one of the remaining
prime possibilities `2`, `3`, or `7`.  This is the semantic reason the
periodic certificate has only the mod-4, mod-9 and mod-49 layers. -/
theorem residual_cutoffSeven_event_prime_cases
    {N : ℕ} {B : Finset ℕ} {pivot point p : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ lowBaseSet N)
    (hp : Nat.Prime p) (hp7 : p ≤ 7)
    (hevent : p ^ 2 ∣ pivot * point + 1) :
    p = 2 ∨ p = 3 ∨ p = 7 := by
  rcases prime_le_seven_cases hp hp7 with h2 | h3 | h5 | h7
  · exact Or.inl h2
  · exact Or.inr (Or.inl h3)
  · exfalso
    subst p
    rcases Finset.mem_union.mp hpoint with hpoint7 | hpoint18
    · exact five_not_event_on_originalA7_from_residual hBout hpivot hpoint7
        hevent
    · exact five_not_event_on_originalA18_from_residual hBout hpivot hpoint18
        hevent
  · exact Or.inr (Or.inr h7)

/-! ### Exact residue encoders for the three surviving primes -/

/-- Structural information about the six literal pivots selected from one
odd mod-four class and six distinct mod-nine cells. -/
structure FiveMillionSixPivotPattern
    (N : ℕ) (B pivots : Finset ℕ) : Type where
  pivotsCard : pivots.card = 6
  pivotsResidual : pivots ⊆ hallResidual N B
  modFourClass : FiveMillionModFour
  commonModFour : ∀ i : Fin 6,
    (sixPivotAt pivots pivotsCard i : ZMod 4) =
      (modFourClass.val : ZMod 4)
  distinctModNine : Function.Injective fun i : Fin 6 =>
    (sixPivotAt pivots pivotsCard i : ZMod 9)

def fiveMillionModFourEquation
    (baseResidue : ℕ) (pivotClass q : FiveMillionModFour) : Prop :=
  (pivotClass.val : ZMod 4) *
      ((25 : ZMod 4) * (q.val : ZMod 4) +
        (baseResidue : ZMod 4)) + 1 = 0

noncomputable def fiveMillionFullModFour
    (baseResidue : ℕ) (pivotClass : FiveMillionModFour) :
    FiveMillionModFour := by
  classical
  exact if h : ∃ q, fiveMillionModFourEquation baseResidue pivotClass q then
      Classical.choose h
    else 0

lemma fiveMillionFullModFour_eq_of_equation
    {baseResidue : ℕ} {pivotClass q : FiveMillionModFour}
    (hq : fiveMillionModFourEquation baseResidue pivotClass q) :
    fiveMillionFullModFour baseResidue pivotClass = q := by
  rw [fiveMillionFullModFour, dif_pos ⟨q, hq⟩]
  let chosen := Classical.choose
    (show ∃ q, fiveMillionModFourEquation baseResidue pivotClass q from
      ⟨q, hq⟩)
  have hchosen : fiveMillionModFourEquation
      baseResidue pivotClass chosen :=
    Classical.choose_spec
      (show ∃ q, fiveMillionModFourEquation baseResidue pivotClass q from
        ⟨q, hq⟩)
  have haffine :
      (25 : ZMod 4) * (chosen.val : ZMod 4) + baseResidue =
        (25 : ZMod 4) * (q.val : ZMod 4) + baseResidue :=
    mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient (by decide :
    (1 : ZMod 4) * 25 = 1) haffine

def fiveMillionModNineEquation
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 6)
    (q : FiveMillionModNine) (i : FiveMillionFiniteForm) : Prop :=
  (sixPivotAt pivots hcard i : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) +
        (baseResidue : ZMod 9)) + 1 = 0

noncomputable def fiveMillionModNineEventFor
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 6) :
    FiveMillionModNine → Option FiveMillionFiniteForm := by
  classical
  exact fun q =>
    if h : ∃ i, fiveMillionModNineEquation baseResidue pivots hcard q i then
      some (Classical.choose h)
    else none

lemma fiveMillionModNineEventFor_eq_some
    {baseResidue : ℕ} {N : ℕ} {B pivots : Finset ℕ}
    (pattern : FiveMillionSixPivotPattern N B pivots)
    {q : FiveMillionModNine} {i : FiveMillionFiniteForm}
    (hi : fiveMillionModNineEquation baseResidue pivots
      pattern.pivotsCard q i) :
    fiveMillionModNineEventFor baseResidue pivots
      pattern.pivotsCard q = some i := by
  rw [fiveMillionModNineEventFor, dif_pos ⟨i, hi⟩]
  congr 1
  apply pattern.distinctModNine
  exact mul_add_one_left_unique
    (Classical.choose_spec
      (show ∃ j, fiveMillionModNineEquation baseResidue pivots
          pattern.pivotsCard q j from ⟨i, hi⟩)) hi

def fiveMillionModFortyNineEquation
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 6)
    (i : FiveMillionFiniteForm) (q : FiveMillionModFortyNine) : Prop :=
  (sixPivotAt pivots hcard i : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) +
        (baseResidue : ZMod 49)) + 1 = 0

noncomputable def fiveMillionModFortyNineRootFor
    (baseResidue : ℕ) (pivots : Finset ℕ)
    (hcard : pivots.card = 6) :
    FiveMillionFiniteForm → FiveMillionModFortyNine := by
  classical
  exact fun i =>
    if h : ∃ q, fiveMillionModFortyNineEquation
        baseResidue pivots hcard i q then
      Classical.choose h
    else 0

lemma fiveMillionModFortyNineRootFor_eq
    {baseResidue : ℕ} {pivots : Finset ℕ}
    {hcard : pivots.card = 6}
    {i : FiveMillionFiniteForm} {q : FiveMillionModFortyNine}
    (hq : fiveMillionModFortyNineEquation
      baseResidue pivots hcard i q) :
    fiveMillionModFortyNineRootFor baseResidue pivots hcard i = q := by
  rw [fiveMillionModFortyNineRootFor, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r, fiveMillionModFortyNineEquation
        baseResidue pivots hcard i r from ⟨q, hq⟩)
  have haffine :
      (25 : ZMod 49) *
          ((Classical.choose
            (show ∃ r, fiveMillionModFortyNineEquation
              baseResidue pivots hcard i r from ⟨q, hq⟩)).val : ZMod 49) +
            baseResidue =
        (25 : ZMod 49) * (q.val : ZMod 49) + baseResidue :=
    mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient (by decide :
    (2 : ZMod 49) * 25 = 1) haffine

lemma fiveMillionPeriodicTriple_modFour_cast (q : ℕ) :
    (((fiveMillionPeriodicTriple q).1.val : ℕ) : ZMod 4) =
      (q : ZMod 4) := by
  change ((q % 4 : ℕ) : ZMod 4) = (q : ZMod 4)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 4))

lemma fiveMillionPeriodicTriple_modNine_cast (q : ℕ) :
    (((fiveMillionPeriodicTriple q).2.1.val : ℕ) : ZMod 9) =
      (q : ZMod 9) := by
  change ((q % 9 : ℕ) : ZMod 9) = (q : ZMod 9)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 9))

lemma fiveMillionPeriodicTriple_modFortyNine_cast (q : ℕ) :
    (((fiveMillionPeriodicTriple q).2.2.val : ℕ) : ZMod 49) =
      (q : ZMod 49) := by
  change ((q % 49 : ℕ) : ZMod 49) = (q : ZMod 49)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 49))

lemma fiveMillionModFourEquation_of_two_event
    {baseResidue N : ℕ} {B pivots : Finset ℕ}
    (pattern : FiveMillionSixPivotPattern N B pivots)
    (point : ℕ) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 2 ^ 2 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionModFourEquation baseResidue pattern.modFourClass
      (fiveMillionPeriodicTriple (point / 25)).1 := by
  have hevent4 : 4 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 4) hpoint hevent4
  rw [pattern.commonModFour i] at hactual
  rw [← fiveMillionPeriodicTriple_modFour_cast (point / 25)] at hactual
  exact hactual

lemma fiveMillionModNineEquation_of_three_event
    {baseResidue N : ℕ} {B pivots : Finset ℕ}
    (pattern : FiveMillionSixPivotPattern N B pivots)
    (point : ℕ) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 3 ^ 2 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionModNineEquation baseResidue pivots pattern.pivotsCard
      (fiveMillionPeriodicTriple (point / 25)).2.1 i := by
  have hevent9 : 9 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint hevent9
  rw [← fiveMillionPeriodicTriple_modNine_cast (point / 25)] at hactual
  exact hactual

lemma fiveMillionModFortyNineEquation_of_seven_event
    {baseResidue N : ℕ} {B pivots : Finset ℕ}
    (pattern : FiveMillionSixPivotPattern N B pivots)
    (point : ℕ) (hpoint : point % 25 = baseResidue)
    (i : FiveMillionFiniteForm)
    (hevent : 7 ^ 2 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1) :
    fiveMillionModFortyNineEquation baseResidue pivots pattern.pivotsCard i
      (fiveMillionPeriodicTriple (point / 25)).2.2 := by
  have hevent49 : 49 ∣ sixPivotAt pivots pattern.pivotsCard i * point + 1 := by
    norm_num at hevent ⊢
    exact hevent
  have hactual := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint hevent49
  rw [← fiveMillionPeriodicTriple_modFortyNine_cast (point / 25)] at hactual
  exact hactual

/-! ### Pointwise classification of every actual threshold point -/

theorem fiveMillionSixPivotPattern_classifies
    {N : ℕ} {B pivots : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (pattern : FiveMillionSixPivotPattern N B pivots)
    {baseResidue point : ℕ}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : 3 ≤ fiveMillionFiniteEventCount pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionPeriodicFiniteResidues
        (fiveMillionFullModFour baseResidue pattern.modFourClass)
        (fiveMillionModNineEventFor baseResidue pivots pattern.pivotsCard)
        (fiveMillionModFortyNineRootFor
          baseResidue pivots pattern.pivotsCard) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  let full := fiveMillionFullModFour baseResidue pattern.modFourClass
  let nine := fiveMillionModNineEventFor
    baseResidue pivots pattern.pivotsCard
  let root := fiveMillionModFortyNineRootFor
    baseResidue pivots pattern.pivotsCard
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  by_cases hfull : triple.1 = full
  · exact Or.inl hfull
  · apply Or.inr
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ triple.2.2, ?_⟩
    have hforms :
        sixPivotFiniteEventForms pivots pattern.pivotsCard point ⊆
          (modFortyNineFibre root triple.2.2) ∪
            optionalSingleton (nine triple.2.1) := by
      intro i hi
      have hpivotResidual :
          sixPivotAt pivots pattern.pivotsCard i ∈ hallResidual N B :=
        pattern.pivotsResidual
          (sixPivotAt_mem pivots pattern.pivotsCard i)
      obtain ⟨p, hp, hp7, hevent⟩ :=
        (Finset.mem_filter.mp hi).2
      rcases residual_cutoffSeven_event_prime_cases
          hBout hpivotResidual hpointLow hp hp7 hevent with
        hp2 | hp3 | hp7eq
      · subst p
        exfalso
        apply hfull
        have hequation := fiveMillionModFourEquation_of_two_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionFullModFour_eq_of_equation hequation
        simpa [triple, full] using hroot.symm
      · subst p
        apply Finset.mem_union_right
        have hequation := fiveMillionModNineEquation_of_three_event
          pattern point hpointResidue i hevent
        have heventSome := fiveMillionModNineEventFor_eq_some
          pattern hequation
        simpa [optionalSingleton, nine, triple, heventSome]
      · subst p
        apply Finset.mem_union_left
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ i, ?_⟩
        have hequation := fiveMillionModFortyNineEquation_of_seven_event
          pattern point hpointResidue i hevent
        have hroot := fiveMillionModFortyNineRootFor_eq hequation
        simpa [root, triple] using hroot
    have hformsCard := Finset.card_le_card hforms
    have hthree :
        3 ≤ (sixPivotFiniteEventForms
          pivots pattern.pivotsCard point).card := by
      rw [sixPivotFiniteEventForms_card]
      exact hthreshold
    exact hthree.trans hformsCard

/-- Six literal residual pivots in one mod-four class and distinct mod-nine
classes automatically supply both pointwise CRT classifiers required by the
uniform `495 / 1764` periodic theorem. -/
noncomputable def FiveMillionSixPivotPattern.toPeriodicCertificate
    {N : ℕ} {B pivots : Finset ℕ}
    (pattern : FiveMillionSixPivotPattern N B pivots)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionBasePeriodicThresholdCertificate N B pivots where
  sevenFullModFour :=
    fiveMillionFullModFour 7 pattern.modFourClass
  sevenModNineEvent :=
    fiveMillionModNineEventFor 7 pivots pattern.pivotsCard
  sevenModFortyNineRoot :=
    fiveMillionModFortyNineRootFor 7 pivots pattern.pivotsCard
  eighteenFullModFour :=
    fiveMillionFullModFour 18 pattern.modFourClass
  eighteenModNineEvent :=
    fiveMillionModNineEventFor 18 pivots pattern.pivotsCard
  eighteenModFortyNineRoot :=
    fiveMillionModFortyNineRootFor 18 pivots pattern.pivotsCard
  sevenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_left _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold
  eighteenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_right _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold

/-! ### Producing the six-pivot pattern from active mod-nine cells -/

/-- Six nonempty active mod-nine cells inside one structured odd class yield
six literal residual pivots with the exact common-mod-four and
distinct-mod-nine properties consumed above. -/
noncomputable def fiveMillionSixPivotPatternWithStructuredOfActiveCells
    {N : ℕ} {B charged : Finset ℕ}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : 6 ≤ cells.card)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    Σ pivots : Finset ℕ,
      { pattern : FiveMillionSixPivotPattern N B pivots //
        pivots ⊆ fiveMillionStructuredResidual N B charged } := by
  classical
  let hsixExists := Finset.exists_subset_card_eq hcellCard
  let sixCells := Classical.choose hsixExists
  have hsixSubset : sixCells ⊆ cells :=
    (Classical.choose_spec hsixExists).1
  have hsixCard : sixCells.card = 6 :=
    (Classical.choose_spec hsixExists).2
  let cellEquiv : Fin 6 ≃ sixCells :=
    (sixCells.equivFinOfCardEq hsixCard).symm
  let cellAt : Fin 6 → Fin 9 := fun i => (cellEquiv i).1
  have hcellAtMem : ∀ i, cellAt i ∈ cells := by
    intro i
    exact hsixSubset (cellEquiv i).2
  have hcellAtInjective : Function.Injective cellAt := by
    intro i j hij
    apply cellEquiv.injective
    exact Subtype.ext hij
  have hpickExists : ∀ i : Fin 6,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cellAt i := by
    intro i
    exact hactive (cellAt i) (hcellAtMem i)
  let pick : Fin 6 → ℕ := fun i => Classical.choose (hpickExists i)
  have hpickMem : ∀ i,
      pick i ∈ fiveMillionStructuredResidual N B charged := by
    intro i
    exact (Classical.choose_spec (hpickExists i)).1
  have hpickCell : ∀ i, oddModNineResidue (pick i) = cellAt i := by
    intro i
    exact (Classical.choose_spec (hpickExists i)).2
  have hpickInjective : Function.Injective pick := by
    intro i j hij
    apply hcellAtInjective
    rw [← hpickCell i, ← hpickCell j, hij]
  let pivots : Finset ℕ := Finset.univ.image pick
  have hpivotsCard : pivots.card = 6 := by
    dsimp [pivots]
    rw [Finset.card_image_of_injective _ hpickInjective]
    simp
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact hpickMem i
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  refine ⟨pivots, ?_, hpivotsStructured⟩
  refine
    { pivotsCard := hpivotsCard
      pivotsResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      distinctModNine := ?_ }
  · intro pivot hpivot
    exact (Finset.mem_sdiff.mp (hpivotsStructured hpivot)).1
  · intro i
    have hpivotStructured := hpivotsStructured
      (sixPivotAt_mem pivots hpivotsCard i)
    have hpivotMod := hclass _ hpivotStructured
    rw [← ZMod.natCast_zmod_val
      (sixPivotAt pivots hpivotsCard i : ZMod 4)]
    change ((sixPivotAt pivots hpivotsCard i % 4 : ℕ) : ZMod 4) =
      (modFourClass.val : ZMod 4)
    rw [hpivotMod]
  · intro i j hij
    obtain ⟨a, _ha, haeq⟩ := Finset.mem_image.mp
      (sixPivotAt_mem pivots hpivotsCard i)
    obtain ⟨b, _hb, hbeq⟩ := Finset.mem_image.mp
      (sixPivotAt_mem pivots hpivotsCard j)
    have hmod : sixPivotAt pivots hpivotsCard i % 9 =
        sixPivotAt pivots hpivotsCard j % 9 := by
      have hval := congrArg ZMod.val hij
      simpa [ZMod.val_natCast] using hval
    have hcellEq : cellAt a = cellAt b := by
      rw [← hpickCell a, ← hpickCell b]
      apply Fin.ext
      simpa [oddModNineResidue, haeq, hbeq] using hmod
    have hab : a = b := hcellAtInjective hcellEq
    subst b
    apply sixPivotAt_injective pivots hpivotsCard
    exact haeq.symm.trans hbeq

/-- Compatibility projection retaining the original public producer type. -/
noncomputable def fiveMillionSixPivotPatternOfActiveCells
    {N : ℕ} {B charged : Finset ℕ}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : 6 ≤ cells.card)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    Σ pivots : Finset ℕ, FiveMillionSixPivotPattern N B pivots := by
  let result := fiveMillionSixPivotPatternWithStructuredOfActiveCells
    parity cells hcellCard hactive hclass
  exact ⟨result.1, result.2.1⟩

#print axioms sixPivotFiniteEventForms_card
#print axioms residual_cutoffSeven_event_prime_cases
#print axioms FiveMillionSixPivotPattern.toPeriodicCertificate
#print axioms fiveMillionSixPivotPatternWithStructuredOfActiveCells
#print axioms fiveMillionSixPivotPatternOfActiveCells

end Erdos848
