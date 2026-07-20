import Erdos848.TailR263OddTwoPeriodic
import Erdos848.TailFiveMillionPeriodicProducer
import Erdos848.TailFiveMillionR263Terminal
import Erdos848.TailGlobalMixedActualTail
import Erdos848.TailGlobalMixedOneOddSevenCellGenerated
import Erdos848.GeneratedTailR263Diagonal.Certificate
import Erdos848.GeneratedTailDiagonalCoverage.TailS1EnvelopeAggregate

namespace Erdos848

/-!
# Actual finite and tail payments for the two-odd R263 rows

This module connects the abstract `42`, `152`, and `244` residue counts to
literal cutoff-seven events on the Hall base part.  Roots are constructed
from the actual pivot equations; a point enters the periodic set only after
each of its actual finite prime-square events has been classified.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def r263QuotientRootEquation
    (modulus baseResidue pivot : Nat) (root : Fin modulus) : Prop :=
  (pivot : ZMod modulus) *
      ((25 : ZMod modulus) * (root.val : ZMod modulus) +
        (baseResidue : ZMod modulus)) + 1 = 0

noncomputable def r263QuotientRoot
    (modulus baseResidue pivot : Nat) : Option (Fin modulus) := by
  classical
  exact if h : ∃ root, r263QuotientRootEquation
      modulus baseResidue pivot root then
    some (Classical.choose h)
  else
    none

lemma r263QuotientRoot_eq_some_of_equation
    {modulus baseResidue pivot : Nat} [NeZero modulus]
    (inverse : ZMod modulus)
    (hinverse : inverse * 25 = 1)
    {root : Fin modulus}
    (hroot : r263QuotientRootEquation
      modulus baseResidue pivot root) :
    r263QuotientRoot modulus baseResidue pivot = some root := by
  classical
  rw [r263QuotientRoot, dif_pos ⟨root, hroot⟩]
  congr 1
  have hchosen := Classical.choose_spec
    (show ∃ candidate, r263QuotientRootEquation
      modulus baseResidue pivot candidate from ⟨root, hroot⟩)
  apply fin_eq_of_zmod_val_eq
  apply affine_eq_of_unit_coefficient hinverse
  exact mul_add_one_right_unique hchosen hroot

noncomputable def r263RootFour
    (baseResidue pivot : Nat) : Option (Fin 4) :=
  r263QuotientRoot 4 baseResidue pivot

noncomputable def r263RootNine
    (baseResidue pivot : Nat) : Option (Fin 9) :=
  r263QuotientRoot 9 baseResidue pivot

noncomputable def r263RootFortyNine
    (baseResidue pivot : Nat) : Option (Fin 49) :=
  r263QuotientRoot 49 baseResidue pivot

lemma r263RootFour_eq_some_of_event
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 2 ^ 2 ∣ pivot * point + 1) :
    r263RootFour baseResidue pivot =
      some (fiveMillionPeriodicTriple (point / 25)).1 := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 4) hpoint (by norm_num at hevent ⊢; exact hevent)
  rw [← fiveMillionPeriodicTriple_modFour_cast (point / 25)] at hequation
  exact r263QuotientRoot_eq_some_of_equation
    (inverse := (1 : ZMod 4)) (by decide) hequation

lemma r263RootNine_eq_some_of_event
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 3 ^ 2 ∣ pivot * point + 1) :
    r263RootNine baseResidue pivot =
      some (fiveMillionPeriodicTriple (point / 25)).2.1 := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint (by norm_num at hevent ⊢; exact hevent)
  rw [← fiveMillionPeriodicTriple_modNine_cast (point / 25)] at hequation
  exact r263QuotientRoot_eq_some_of_equation
    (inverse := (4 : ZMod 9)) (by decide) hequation

lemma r263RootFortyNine_eq_some_of_event
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 7 ^ 2 ∣ pivot * point + 1) :
    r263RootFortyNine baseResidue pivot =
      some (fiveMillionPeriodicTriple (point / 25)).2.2 := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint (by norm_num at hevent ⊢; exact hevent)
  rw [← fiveMillionPeriodicTriple_modFortyNine_cast
    (point / 25)] at hequation
  exact r263QuotientRoot_eq_some_of_equation
    (inverse := (2 : ZMod 49)) (by decide) hequation

theorem r263OptionRoots_classify_actual_threshold
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    {baseResidue point threshold : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue)
    (hthreshold : threshold <=
      fiveMillionFiniteEventCount pivots point) :
    fiveMillionPeriodicTriple (point / 25) ∈
      optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour baseResidue)
        (r263RootNine baseResidue)
        (r263RootFortyNine baseResidue) := by
  classical
  let triple := fiveMillionPeriodicTriple (point / 25)
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ triple, ?_⟩
  have hforms :
      (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 7 pivot point) ⊆
        (optionRootFibre pivots (r263RootFour baseResidue) triple.1 ∪
          optionRootFibre pivots (r263RootNine baseResidue) triple.2.1) ∪
            optionRootFibre pivots
              (r263RootFortyNine baseResidue) triple.2.2 := by
    intro pivot hpivot
    have hpivotData := Finset.mem_filter.mp hpivot
    obtain ⟨prime, hprime, hprimeCutoff, hevent⟩ := hpivotData.2
    rcases residual_cutoffSeven_event_prime_cases hBout
        (hpivotsResidual hpivotData.1) hpointLow hprime hprimeCutoff
        hevent with htwo | hthree | hseven
    · subst prime
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      refine ⟨hpivotData.1, ?_⟩
      simpa [triple] using
        r263RootFour_eq_some_of_event hpointResidue hevent
    · subst prime
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨hpivotData.1, ?_⟩
      simpa [triple] using
        r263RootNine_eq_some_of_event hpointResidue hevent
    · subst prime
      apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨hpivotData.1, ?_⟩
      simpa [triple] using
        r263RootFortyNine_eq_some_of_event hpointResidue hevent
  have hthreshold' : threshold <=
      (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 7 pivot point).card := by
    simpa [fiveMillionFiniteEventCount] using hthreshold
  exact hthreshold'.trans (Finset.card_le_card hforms)

noncomputable def r263OptionRootNatResidues
    (baseResidue threshold : Nat) (pivots : Finset Nat) : Finset Nat :=
  (Finset.range 1764).filter fun residue =>
    fiveMillionPeriodicTriple residue ∈
      optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour baseResidue)
        (r263RootNine baseResidue)
        (r263RootFortyNine baseResidue)

lemma r263OptionRootNatResidues_subset_range
    (baseResidue threshold : Nat) (pivots : Finset Nat) :
    r263OptionRootNatResidues baseResidue threshold pivots ⊆
      Finset.range 1764 :=
  Finset.filter_subset _ _

theorem r263OptionRootNatResidues_card_le
    {baseResidue threshold bound : Nat} {pivots : Finset Nat}
    (hperiod :
      (optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour baseResidue)
        (r263RootNine baseResidue)
        (r263RootFortyNine baseResidue)).card <= bound) :
    (r263OptionRootNatResidues
      baseResidue threshold pivots).card <= bound := by
  let residues :=
    r263OptionRootNatResidues baseResidue threshold pivots
  let triples :=
    optionRootPeriodicThresholdResidues pivots threshold
      (r263RootFour baseResidue)
      (r263RootNine baseResidue)
      (r263RootFortyNine baseResidue)
  have hmap : Set.MapsTo fiveMillionPeriodicTriple
      (residues : Set Nat) triples := by
    intro residue hresidue
    exact (Finset.mem_filter.mp hresidue).2
  have hinjective : Set.InjOn fiveMillionPeriodicTriple
      (residues : Set Nat) := by
    intro left hleft right hright heq
    exact fiveMillionPeriodicTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hleft).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hright).1) heq
  exact (Finset.card_le_card_of_injOn
    fiveMillionPeriodicTriple hmap hinjective).trans hperiod

lemma r263QuotientRootEquation_of_eq_some
    {modulus baseResidue pivot : Nat}
    {root : Fin modulus}
    (hroot :
      r263QuotientRoot modulus baseResidue pivot = some root) :
    r263QuotientRootEquation modulus baseResidue pivot root := by
  classical
  rw [r263QuotientRoot] at hroot
  split at hroot
  · rename_i hexists
    have hchosen := Classical.choose_spec hexists
    simp only [Option.some.injEq] at hroot
    subst root
    exact hchosen
  · simp at hroot

lemma r263RootNine_eq_of_modNine_eq
    {baseResidue left right : Nat}
    (hmod : left % 9 = right % 9) :
    r263RootNine baseResidue left =
      r263RootNine baseResidue right := by
  classical
  have hcast : (left : ZMod 9) = (right : ZMod 9) := by
    rw [← ZMod.natCast_zmod_val (left : ZMod 9),
      ← ZMod.natCast_zmod_val (right : ZMod 9)]
    simpa [ZMod.val_natCast] using congrArg (fun n : Nat => (n : ZMod 9)) hmod
  cases hleft : r263RootNine baseResidue left with
  | none =>
      cases hright : r263RootNine baseResidue right with
      | none => rfl
      | some root =>
          have hrightEquation :=
            r263QuotientRootEquation_of_eq_some hright
          have hleftEquation :
              r263QuotientRootEquation 9 baseResidue left root := by
            simpa [r263QuotientRootEquation, hcast] using hrightEquation
          have hleftSome := r263QuotientRoot_eq_some_of_equation
            (inverse := (4 : ZMod 9)) (by decide) hleftEquation
          change r263RootNine baseResidue left = some root at hleftSome
          rw [hleft] at hleftSome
          simp at hleftSome
  | some root =>
      have hleftEquation :=
        r263QuotientRootEquation_of_eq_some hleft
      have hrightEquation :
          r263QuotientRootEquation 9 baseResidue right root := by
        simpa [r263QuotientRootEquation, hcast] using hleftEquation
      have hrightSome := r263QuotientRoot_eq_some_of_equation
        (inverse := (4 : ZMod 9)) (by decide) hrightEquation
      change r263RootNine baseResidue right = some root at hrightSome
      exact hrightSome.symm

def r263OddClassRootFour
    (baseResidue : Nat) (parity : Bool) : Fin 4 :=
  if baseResidue = 7 then
    if parity then 2 else 0
  else
    if parity then 3 else 1

lemma r263RootFour_eq_oddClass
    {baseResidue pivot : Nat} {parity : Bool}
    (hbase : baseResidue = 7 ∨ baseResidue = 18)
    (hmod : pivot % 4 = if parity then 3 else 1) :
    r263RootFour baseResidue pivot =
      some (r263OddClassRootFour baseResidue parity) := by
  apply r263QuotientRoot_eq_some_of_equation
    (inverse := (1 : ZMod 4)) (by decide)
  unfold r263QuotientRootEquation
  rw [← ZMod.natCast_zmod_val (pivot : ZMod 4)]
  change ((pivot % 4 : Nat) : ZMod 4) *
      ((25 : ZMod 4) *
        ((r263OddClassRootFour baseResidue parity).val : ZMod 4) +
          (baseResidue : ZMod 4)) + 1 = 0
  rw [hmod]
  rcases hbase with rfl | rfl <;>
    cases parity <;>
    decide

lemma r263OddClassRootFour_ne
    {baseResidue : Nat}
    (hbase : baseResidue = 7 ∨ baseResidue = 18) :
    r263OddClassRootFour baseResidue false ≠
      r263OddClassRootFour baseResidue true := by
  rcases hbase with rfl | rfl <;>
    decide

theorem r263RootFour_fibre_shape
    {baseResidue : Nat} {pivots left right : Finset Nat}
    (hbase : baseResidue = 7 ∨ baseResidue = 18)
    (hcover : left ∪ right = pivots)
    (hleftClass : ∀ pivot ∈ left, pivot % 4 = 1)
    (hrightClass : ∀ pivot ∈ right, pivot % 4 = 3) :
    ∀ residue,
      optionRootFibre pivots (r263RootFour baseResidue) residue =
        if residue = r263OddClassRootFour baseResidue false then left
        else if residue = r263OddClassRootFour baseResidue true then right
        else ∅ := by
  classical
  have hleftSubset : left ⊆ pivots := by
    rw [← hcover]
    exact Finset.subset_union_left
  have hrightSubset : right ⊆ pivots := by
    rw [← hcover]
    exact Finset.subset_union_right
  have hdisjoint : Disjoint left right := by
    rw [Finset.disjoint_left]
    intro pivot hleft hright
    have hleftMod := hleftClass pivot hleft
    have hrightMod := hrightClass pivot hright
    omega
  have hrootNe := r263OddClassRootFour_ne hbase
  intro residue
  ext pivot
  simp only [optionRootFibre, Finset.mem_filter]
  by_cases hpivot : pivot ∈ pivots
  · have hpivotCover : pivot ∈ left ∨ pivot ∈ right := by
      have : pivot ∈ left ∪ right := by simpa [hcover] using hpivot
      exact Finset.mem_union.mp this
    rcases hpivotCover with hleft | hright
    · have hnotRight : pivot ∉ right := by
        intro hpivotRight
        exact Finset.disjoint_left.mp hdisjoint hleft hpivotRight
      have hroot := r263RootFour_eq_oddClass hbase
        (parity := false) (by simpa using hleftClass pivot hleft)
      simp only [hpivot, hroot, Option.some.injEq, true_and]
      constructor
      · intro hresidue
        have hresidue' :
            residue = r263OddClassRootFour baseResidue false :=
          hresidue.symm
        simp [hresidue', hleft]
      · intro hmem
        by_cases hresidue :
            residue = r263OddClassRootFour baseResidue false
        · exact hresidue.symm
        · rw [if_neg hresidue] at hmem
          by_cases hrightRoot :
              residue = r263OddClassRootFour baseResidue true
          · rw [if_pos hrightRoot] at hmem
            exact (hnotRight hmem).elim
          · rw [if_neg hrightRoot] at hmem
            simp at hmem
    · have hnotLeft : pivot ∉ left := by
        intro hpivotLeft
        exact Finset.disjoint_left.mp hdisjoint hpivotLeft hright
      have hroot := r263RootFour_eq_oddClass hbase
        (parity := true) (by simpa using hrightClass pivot hright)
      simp only [hpivot, hroot, Option.some.injEq, true_and]
      constructor
      · intro hresidue
        have hrightRoot :
            residue = r263OddClassRootFour baseResidue true :=
          hresidue.symm
        have hleftRoot :
            residue ≠ r263OddClassRootFour baseResidue false := by
          intro heq
          apply hrootNe
          exact heq.symm.trans hrightRoot
        rw [if_neg hleftRoot, if_pos hrightRoot]
        exact hright
      · intro hmem
        by_cases hleftRoot :
            residue = r263OddClassRootFour baseResidue false
        · rw [if_pos hleftRoot] at hmem
          exact (hnotLeft hmem).elim
        · by_cases hrightRoot :
              residue = r263OddClassRootFour baseResidue true
          · exact hrightRoot.symm
          · rw [if_neg hleftRoot, if_neg hrightRoot] at hmem
            simp at hmem
  · have hnotLeft : pivot ∉ left := fun hp => hpivot (hleftSubset hp)
    have hnotRight : pivot ∉ right := fun hp => hpivot (hrightSubset hp)
    constructor
    · intro hmem
      exact (hpivot hmem.1).elim
    · intro hmem
      by_cases hleftRoot :
          residue = r263OddClassRootFour baseResidue false
      · rw [if_pos hleftRoot] at hmem
        exact (hnotLeft hmem).elim
      · by_cases hrightRoot :
            residue = r263OddClassRootFour baseResidue true
        · rw [if_neg hleftRoot, if_pos hrightRoot] at hmem
          exact (hnotRight hmem).elim
        · rw [if_neg hleftRoot, if_neg hrightRoot] at hmem
          simp at hmem

theorem r263RootNine_fibre_card_le_one_of_injective
    {baseResidue : Nat} {pivots : Finset Nat}
    (hinjective : Set.InjOn (fun pivot : Nat => pivot % 9)
      (pivots : Set Nat)) :
    ∀ residue,
      (optionRootFibre pivots
        (r263RootNine baseResidue) residue).card <= 1 := by
  classical
  intro residue
  apply Finset.card_le_one.mpr
  intro left hleft right hright
  have hleftData := Finset.mem_filter.mp hleft
  have hrightData := Finset.mem_filter.mp hright
  have hleftEquation :=
    r263QuotientRootEquation_of_eq_some hleftData.2
  have hrightEquation :=
    r263QuotientRootEquation_of_eq_some hrightData.2
  have hcast : (left : ZMod 9) = (right : ZMod 9) :=
    mul_add_one_left_unique hleftEquation hrightEquation
  have hmod : left % 9 = right % 9 := by
    have hval := congrArg ZMod.val hcast
    simpa [ZMod.val_natCast] using hval
  exact hinjective hleftData.1 hrightData.1 hmod

structure R263OddTwoBalancedPattern
    (pivots left right : Finset Nat) : Prop where
  pivotsCard : pivots.card = 6
  leftCard : left.card = 3
  rightCard : right.card = 3
  cover : left ∪ right = pivots
  leftClass : ∀ pivot ∈ left, pivot % 4 = 1
  rightClass : ∀ pivot ∈ right, pivot % 4 = 3
  distinctModNine : Set.InjOn (fun pivot : Nat => pivot % 9)
    (pivots : Set Nat)

theorem R263OddTwoBalancedPattern.period_card_le_42
    {pivots left right : Finset Nat}
    (pattern : R263OddTwoBalancedPattern pivots left right)
    {baseResidue : Nat}
    (hbase : baseResidue = 7 ∨ baseResidue = 18) :
    (optionRootPeriodicThresholdResidues pivots 5
      (r263RootFour baseResidue)
      (r263RootNine baseResidue)
      (r263RootFortyNine baseResidue)).card <= 42 := by
  apply oddTwoBalanced_periodic_card_le_42
    (left := left) (right := right)
    (rootFortyNine := r263RootFortyNine baseResidue)
    pattern.pivotsCard pattern.leftCard pattern.rightCard pattern.cover
    (r263OddClassRootFour_ne hbase)
  · exact r263RootFour_fibre_shape hbase pattern.cover
      pattern.leftClass pattern.rightClass
  · exact r263RootNine_fibre_card_le_one_of_injective
      pattern.distinctModNine

theorem optionRootPeriodicThresholdResidues_mono_rootNine
    {Form : Type*} [DecidableEq Form]
    {forms : Finset Form} {threshold : Nat}
    {rootFour : Form -> Option (Fin 4)}
    {rootNine relaxedRootNine : Form -> Option (Fin 9)}
    {rootFortyNine : Form -> Option (Fin 49)}
    (hsub : ∀ residue,
      optionRootFibre forms rootNine residue ⊆
        optionRootFibre forms relaxedRootNine residue) :
    optionRootPeriodicThresholdResidues forms threshold
        rootFour rootNine rootFortyNine ⊆
      optionRootPeriodicThresholdResidues forms threshold
        rootFour relaxedRootNine rootFortyNine := by
  classical
  intro residue hresidue
  have hdata := Finset.mem_filter.mp hresidue
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, hdata.2.trans ?_⟩
  apply Finset.card_le_card
  exact Finset.union_subset_union
    (Finset.union_subset_union Finset.Subset.rfl
      (hsub residue.2.1))
    Finset.Subset.rfl

def r263SplitPairRelaxedRootNine
    {Form : Type*} [DecidableEq Form]
    (left right : Finset Form) (leftRoot rightRoot : Fin 9)
    (form : Form) : Option (Fin 9) :=
  if form ∈ left then some leftRoot
  else if form ∈ right then some rightRoot
  else none

theorem r263SplitPairRelaxedRootNine_fibre
    {Form : Type*} [DecidableEq Form]
    {forms left right : Finset Form}
    {leftRoot rightRoot : Fin 9}
    (hcover : left ∪ right = forms)
    (hdisjoint : Disjoint left right)
    (hrootNe : leftRoot ≠ rightRoot) :
    ∀ residue,
      optionRootFibre forms
          (r263SplitPairRelaxedRootNine left right leftRoot rightRoot)
          residue =
        if residue = leftRoot then left
        else if residue = rightRoot then right
        else ∅ := by
  classical
  intro residue
  ext form
  by_cases hleft : form ∈ left
  · have hforms : form ∈ forms := by
      rw [← hcover]
      exact Finset.mem_union_left _ hleft
    have hnotRight : form ∉ right := by
      intro hright
      exact Finset.disjoint_left.mp hdisjoint hleft hright
    by_cases hresidueLeft : residue = leftRoot
    · subst residue
      simp [optionRootFibre, r263SplitPairRelaxedRootNine,
        hforms, hleft, hnotRight]
    · by_cases hresidueRight : residue = rightRoot
      · subst residue
        have hrootNe' : rightRoot ≠ leftRoot := Ne.symm hrootNe
        simp [optionRootFibre, r263SplitPairRelaxedRootNine,
          hforms, hleft, hnotRight, hrootNe']
        exact hrootNe
      · simp [optionRootFibre, r263SplitPairRelaxedRootNine,
          hforms, hleft, hnotRight, hresidueLeft, hresidueRight,
          eq_comm]
        exact fun heq => hresidueLeft heq.symm
  · by_cases hright : form ∈ right
    · have hforms : form ∈ forms := by
        rw [← hcover]
        exact Finset.mem_union_right _ hright
      by_cases hresidueLeft : residue = leftRoot
      · subst residue
        simp [optionRootFibre, r263SplitPairRelaxedRootNine,
          hforms, hleft, hright, hrootNe]
        exact Ne.symm hrootNe
      · by_cases hresidueRight : residue = rightRoot
        · subst residue
          simp [optionRootFibre, r263SplitPairRelaxedRootNine,
            hforms, hleft, hright, Ne.symm hrootNe]
        · simp [optionRootFibre, r263SplitPairRelaxedRootNine,
            hforms, hleft, hright, hresidueLeft, hresidueRight,
            eq_comm]
          exact fun heq => hresidueRight heq.symm
    · have hnotForms : form ∉ forms := by
        intro hforms
        have : form ∈ left ∪ right := by simpa [hcover] using hforms
        rcases Finset.mem_union.mp this with hleft' | hright'
        · exact hleft hleft'
        · exact hright hright'
      simp only [optionRootFibre, Finset.mem_filter, hnotForms, false_and,
        r263SplitPairRelaxedRootNine]
      by_cases hresidueLeft : residue = leftRoot
      · rw [if_pos hresidueLeft]
        simp [hleft]
      · rw [if_neg hresidueLeft]
        by_cases hresidueRight : residue = rightRoot
        · rw [if_pos hresidueRight]
          simp [hright]
        · rw [if_neg hresidueRight]
          simp

def r263CommonRelaxedRootNine
    {Form : Type*} (commonRoot : Fin 9) (_form : Form) :
    Option (Fin 9) :=
  some commonRoot

theorem r263CommonRelaxedRootNine_fibre
    {Form : Type*} [DecidableEq Form]
    (forms : Finset Form) (commonRoot : Fin 9) :
    ∀ residue,
      optionRootFibre forms
          (r263CommonRelaxedRootNine commonRoot) residue =
        if residue = commonRoot then forms else ∅ := by
  classical
  intro residue
  ext form
  by_cases hresidue : residue = commonRoot
  · subst residue
    simp [optionRootFibre, r263CommonRelaxedRootNine]
  · have hresidue' : commonRoot ≠ residue :=
      fun heq => hresidue heq.symm
    simp [optionRootFibre, r263CommonRelaxedRootNine,
      hresidue, hresidue']

lemma r263RootNine_some_ne_of_modNine_ne
    {baseResidue left right : Nat} {leftRoot rightRoot : Fin 9}
    (hmod : left % 9 ≠ right % 9)
    (hleft : r263RootNine baseResidue left = some leftRoot)
    (hright : r263RootNine baseResidue right = some rightRoot) :
    leftRoot ≠ rightRoot := by
  intro hroot
  subst rightRoot
  have hleftEquation :=
    r263QuotientRootEquation_of_eq_some hleft
  have hrightEquation :=
    r263QuotientRootEquation_of_eq_some hright
  have hcast : (left : ZMod 9) = (right : ZMod 9) :=
    mul_add_one_left_unique hleftEquation hrightEquation
  have hval := congrArg ZMod.val hcast
  apply hmod
  simpa [ZMod.val_natCast] using hval

private theorem optionRootFibre_subset_splitPair
    {Form : Type*} [DecidableEq Form]
    {forms left right : Finset Form}
    {rootNine : Form -> Option (Fin 9)}
    {leftRoot rightRoot : Fin 9}
    (hcover : left ∪ right = forms)
    (hrootNe : leftRoot ≠ rightRoot)
    (hleft : ∀ form ∈ left,
      rootNine form = none ∨ rootNine form = some leftRoot)
    (hright : ∀ form ∈ right,
      rootNine form = none ∨ rootNine form = some rightRoot) :
    ∀ residue,
      optionRootFibre forms rootNine residue ⊆
        if residue = leftRoot then left
        else if residue = rightRoot then right
        else ∅ := by
  classical
  intro residue form hform
  have hdata := Finset.mem_filter.mp hform
  have hcoverForm : form ∈ left ∨ form ∈ right := by
    have : form ∈ left ∪ right := by simpa [hcover] using hdata.1
    exact Finset.mem_union.mp this
  rcases hcoverForm with hformLeft | hformRight
  · rcases hleft form hformLeft with hnone | hsome
    · rw [hnone] at hdata
      simp at hdata
    · have hresidue : residue = leftRoot := by
        simpa [hsome] using hdata.2.symm
      simp [hresidue, hformLeft]
  · rcases hright form hformRight with hnone | hsome
    · rw [hnone] at hdata
      simp at hdata
    · have hresidue : residue = rightRoot := by
        simpa [hsome] using hdata.2.symm
      simp [hresidue, Ne.symm hrootNe, hformRight]

private theorem optionRootFibre_subset_common
    {Form : Type*} [DecidableEq Form]
    {forms : Finset Form} {rootNine : Form -> Option (Fin 9)}
    {commonRoot : Fin 9}
    (hroot : ∀ form ∈ forms,
      rootNine form = none ∨ rootNine form = some commonRoot) :
    ∀ residue,
      optionRootFibre forms rootNine residue ⊆
        if residue = commonRoot then forms else ∅ := by
  classical
  intro residue form hform
  have hdata := Finset.mem_filter.mp hform
  rcases hroot form hdata.1 with hnone | hsome
  · rw [hnone] at hdata
    simp at hdata
  · have hresidue : residue = commonRoot := by
      simpa [hsome] using hdata.2.symm
    simp [hresidue, hdata.1]

structure R263OddTwoSplitPairPattern
    (pivots left right : Finset Nat) : Type where
  pivotsCard : pivots.card = 4
  leftCard : left.card = 2
  rightCard : right.card = 2
  cover : left ∪ right = pivots
  leftClass : ∀ pivot ∈ left, pivot % 4 = 1
  rightClass : ∀ pivot ∈ right, pivot % 4 = 3
  leftCell : Fin 9
  rightCell : Fin 9
  cellsNe : leftCell ≠ rightCell
  leftNine : ∀ pivot ∈ left, pivot % 9 = leftCell.val
  rightNine : ∀ pivot ∈ right, pivot % 9 = rightCell.val

structure R263OddTwoOneResiduePattern
    (pivots left right : Finset Nat) : Type where
  pivotsCard : pivots.card = 4
  leftCard : left.card = 2
  rightCard : right.card = 2
  cover : left ∪ right = pivots
  leftClass : ∀ pivot ∈ left, pivot % 4 = 1
  rightClass : ∀ pivot ∈ right, pivot % 4 = 3
  commonCell : Fin 9
  leftNine : ∀ pivot ∈ left, pivot % 9 = commonCell.val
  rightNine : ∀ pivot ∈ right, pivot % 9 = commonCell.val

private theorem R263OddTwoSplitPairPattern.rootNine_envelope
    {pivots left right : Finset Nat}
    (pattern : R263OddTwoSplitPairPattern pivots left right)
    (baseResidue : Nat) :
    ∃ leftRoot rightRoot : Fin 9, leftRoot ≠ rightRoot ∧
      ∀ residue,
        optionRootFibre pivots (r263RootNine baseResidue) residue ⊆
          if residue = leftRoot then left
          else if residue = rightRoot then right
          else ∅ := by
  classical
  have hleftNonempty : left.Nonempty :=
    Finset.card_pos.mp (by rw [pattern.leftCard]; norm_num)
  have hrightNonempty : right.Nonempty :=
    Finset.card_pos.mp (by rw [pattern.rightCard]; norm_num)
  obtain ⟨leftPivot, hleftPivot⟩ := hleftNonempty
  obtain ⟨rightPivot, hrightPivot⟩ := hrightNonempty
  have hleftSame : ∀ pivot ∈ left,
      r263RootNine baseResidue pivot =
        r263RootNine baseResidue leftPivot := by
    intro pivot hpivot
    apply r263RootNine_eq_of_modNine_eq
    exact (pattern.leftNine pivot hpivot).trans
      (pattern.leftNine leftPivot hleftPivot).symm
  have hrightSame : ∀ pivot ∈ right,
      r263RootNine baseResidue pivot =
        r263RootNine baseResidue rightPivot := by
    intro pivot hpivot
    apply r263RootNine_eq_of_modNine_eq
    exact (pattern.rightNine pivot hpivot).trans
      (pattern.rightNine rightPivot hrightPivot).symm
  cases hleftOption :
      r263RootNine baseResidue leftPivot with
  | none =>
      cases hrightOption :
          r263RootNine baseResidue rightPivot with
      | none =>
          refine ⟨0, 1, by decide, ?_⟩
          apply optionRootFibre_subset_splitPair pattern.cover (by decide)
          · intro pivot hpivot
            exact Or.inl ((hleftSame pivot hpivot).trans hleftOption)
          · intro pivot hpivot
            exact Or.inl ((hrightSame pivot hpivot).trans hrightOption)
      | some rightRoot =>
          obtain ⟨leftRoot, hrootNe⟩ :=
            Fintype.exists_ne_of_one_lt_card
              (by simp : 1 < Fintype.card (Fin 9)) rightRoot
          refine ⟨leftRoot, rightRoot, hrootNe, ?_⟩
          apply optionRootFibre_subset_splitPair pattern.cover hrootNe
          · intro pivot hpivot
            exact Or.inl ((hleftSame pivot hpivot).trans hleftOption)
          · intro pivot hpivot
            exact Or.inr ((hrightSame pivot hpivot).trans hrightOption)
  | some leftRoot =>
      cases hrightOption :
          r263RootNine baseResidue rightPivot with
      | none =>
          obtain ⟨rightRoot, hrootNe'⟩ :=
            Fintype.exists_ne_of_one_lt_card
              (by simp : 1 < Fintype.card (Fin 9)) leftRoot
          have hrootNe : leftRoot ≠ rightRoot := Ne.symm hrootNe'
          refine ⟨leftRoot, rightRoot, hrootNe, ?_⟩
          apply optionRootFibre_subset_splitPair pattern.cover hrootNe
          · intro pivot hpivot
            exact Or.inr ((hleftSame pivot hpivot).trans hleftOption)
          · intro pivot hpivot
            exact Or.inl ((hrightSame pivot hpivot).trans hrightOption)
      | some rightRoot =>
          have hmodNe : leftPivot % 9 ≠ rightPivot % 9 := by
            rw [pattern.leftNine leftPivot hleftPivot,
              pattern.rightNine rightPivot hrightPivot]
            exact fun hval => pattern.cellsNe (Fin.ext hval)
          have hrootNe := r263RootNine_some_ne_of_modNine_ne
            hmodNe hleftOption hrightOption
          refine ⟨leftRoot, rightRoot, hrootNe, ?_⟩
          apply optionRootFibre_subset_splitPair pattern.cover hrootNe
          · intro pivot hpivot
            exact Or.inr ((hleftSame pivot hpivot).trans hleftOption)
          · intro pivot hpivot
            exact Or.inr ((hrightSame pivot hpivot).trans hrightOption)

private theorem R263OddTwoOneResiduePattern.rootNine_envelope
    {pivots left right : Finset Nat}
    (pattern : R263OddTwoOneResiduePattern pivots left right)
    (baseResidue : Nat) :
    ∃ commonRoot : Fin 9,
      ∀ residue,
        optionRootFibre pivots (r263RootNine baseResidue) residue ⊆
          if residue = commonRoot then pivots else ∅ := by
  classical
  have hpivotsNonempty : pivots.Nonempty :=
    Finset.card_pos.mp (by rw [pattern.pivotsCard]; norm_num)
  obtain ⟨anchor, hanchor⟩ := hpivotsNonempty
  have hanchorCover : anchor ∈ left ∨ anchor ∈ right := by
    have : anchor ∈ left ∪ right := by simpa [pattern.cover] using hanchor
    exact Finset.mem_union.mp this
  have hsame : ∀ pivot ∈ pivots,
      r263RootNine baseResidue pivot =
        r263RootNine baseResidue anchor := by
    intro pivot hpivot
    have hpivotCover : pivot ∈ left ∨ pivot ∈ right := by
      have : pivot ∈ left ∪ right := by simpa [pattern.cover] using hpivot
      exact Finset.mem_union.mp this
    apply r263RootNine_eq_of_modNine_eq
    rcases hpivotCover with hpivotLeft | hpivotRight <;>
      rcases hanchorCover with hanchorLeft | hanchorRight
    · exact (pattern.leftNine pivot hpivotLeft).trans
        (pattern.leftNine anchor hanchorLeft).symm
    · exact (pattern.leftNine pivot hpivotLeft).trans
        (pattern.rightNine anchor hanchorRight).symm
    · exact (pattern.rightNine pivot hpivotRight).trans
        (pattern.leftNine anchor hanchorLeft).symm
    · exact (pattern.rightNine pivot hpivotRight).trans
        (pattern.rightNine anchor hanchorRight).symm
  cases hoption : r263RootNine baseResidue anchor with
  | none =>
      refine ⟨0, ?_⟩
      apply optionRootFibre_subset_common
      intro pivot hpivot
      exact Or.inl ((hsame pivot hpivot).trans hoption)
  | some commonRoot =>
      refine ⟨commonRoot, ?_⟩
      apply optionRootFibre_subset_common
      intro pivot hpivot
      exact Or.inr ((hsame pivot hpivot).trans hoption)

theorem R263OddTwoSplitPairPattern.period_card_le_152
    {pivots left right : Finset Nat}
    (pattern : R263OddTwoSplitPairPattern pivots left right)
    {baseResidue : Nat}
    (hbase : baseResidue = 7 ∨ baseResidue = 18) :
    (optionRootPeriodicThresholdResidues pivots 3
      (r263RootFour baseResidue)
      (r263RootNine baseResidue)
      (r263RootFortyNine baseResidue)).card <= 152 := by
  classical
  obtain ⟨leftRoot, rightRoot, hrootNe, hrootSubset⟩ :=
    pattern.rootNine_envelope baseResidue
  let relaxedRootNine :=
    r263SplitPairRelaxedRootNine left right leftRoot rightRoot
  have hdisjoint : Disjoint left right := by
    rw [Finset.disjoint_left]
    intro pivot hleft hright
    have hleftMod := pattern.leftClass pivot hleft
    have hrightMod := pattern.rightClass pivot hright
    omega
  have hrelaxedFibre :=
    r263SplitPairRelaxedRootNine_fibre
      pattern.cover hdisjoint hrootNe
  have hactualSubset : ∀ residue,
      optionRootFibre pivots (r263RootNine baseResidue) residue ⊆
        optionRootFibre pivots relaxedRootNine residue := by
    intro residue
    rw [hrelaxedFibre residue]
    exact hrootSubset residue
  have hperiodSubset :
      optionRootPeriodicThresholdResidues pivots 3
          (r263RootFour baseResidue)
          (r263RootNine baseResidue)
          (r263RootFortyNine baseResidue) ⊆
        optionRootPeriodicThresholdResidues pivots 3
          (r263RootFour baseResidue)
          relaxedRootNine
          (r263RootFortyNine baseResidue) :=
    optionRootPeriodicThresholdResidues_mono_rootNine hactualSubset
  apply (Finset.card_le_card hperiodSubset).trans
  apply oddTwoSplitPairs_periodic_card_le_152
    (left := left) (right := right)
    (rootFortyNine := r263RootFortyNine baseResidue)
    pattern.pivotsCard pattern.leftCard pattern.rightCard pattern.cover
    (r263OddClassRootFour_ne hbase)
  · exact r263RootFour_fibre_shape hbase pattern.cover
      pattern.leftClass pattern.rightClass
  · exact hrootNe
  · exact hrelaxedFibre

theorem R263OddTwoOneResiduePattern.period_card_le_244
    {pivots left right : Finset Nat}
    (pattern : R263OddTwoOneResiduePattern pivots left right)
    {baseResidue : Nat}
    (hbase : baseResidue = 7 ∨ baseResidue = 18) :
    (optionRootPeriodicThresholdResidues pivots 3
      (r263RootFour baseResidue)
      (r263RootNine baseResidue)
      (r263RootFortyNine baseResidue)).card <= 244 := by
  classical
  obtain ⟨commonRoot, hrootSubset⟩ :=
    pattern.rootNine_envelope baseResidue
  let relaxedRootNine :=
    r263CommonRelaxedRootNine (Form := Nat) commonRoot
  have hrelaxedFibre :=
    r263CommonRelaxedRootNine_fibre pivots commonRoot
  have hactualSubset : ∀ residue,
      optionRootFibre pivots (r263RootNine baseResidue) residue ⊆
        optionRootFibre pivots relaxedRootNine residue := by
    intro residue
    rw [hrelaxedFibre residue]
    exact hrootSubset residue
  have hperiodSubset :
      optionRootPeriodicThresholdResidues pivots 3
          (r263RootFour baseResidue)
          (r263RootNine baseResidue)
          (r263RootFortyNine baseResidue) ⊆
        optionRootPeriodicThresholdResidues pivots 3
          (r263RootFour baseResidue)
          relaxedRootNine
          (r263RootFortyNine baseResidue) :=
    optionRootPeriodicThresholdResidues_mono_rootNine hactualSubset
  apply (Finset.card_le_card hperiodSubset).trans
  apply oddTwoOneResidue_periodic_card_le_244
    (left := left) (right := right)
    (rootFortyNine := r263RootFortyNine baseResidue)
    pattern.pivotsCard pattern.leftCard pattern.rightCard pattern.cover
    (r263OddClassRootFour_ne hbase)
  · exact r263RootFour_fibre_shape hbase pattern.cover
      pattern.leftClass pattern.rightClass
  · exact hrelaxedFibre

def r263OptionRootFiniteEnvelopeAt (lower bound : Nat) : Rat :=
  2 * ((bound : Rat) / 1764) / 25 +
    2 * ((bound : Rat) / 1764 +
      (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) / lower

def r263OptionRootFiniteEnvelope (bound : Nat) : Rat :=
  r263OptionRootFiniteEnvelopeAt 5_000_000 bound

theorem fiveMillionR263OptionRootFinitePayment_ratio_le_at_lower
    {N lower : Nat} {B pivots : Finset Nat} {threshold bound : Nat}
    (hLowerPositive : 0 < lower)
    (hLower : lower <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hbound : bound <= 882)
    (hsevenPeriod :
      (optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour 7) (r263RootNine 7)
        (r263RootFortyNine 7)).card <= bound)
    (heighteenPeriod :
      (optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour 18) (r263RootNine 18)
        (r263RootFortyNine 18)).card <= bound) :
    fiveMillionR263BaseFiniteThresholdPayment
      N B pivots 7 threshold / N <=
        r263OptionRootFiniteEnvelopeAt lower bound := by
  classical
  let thresholdSet := (hallBasePart N B).filter fun point =>
    threshold <= fiveMillionFiniteEventCount pivots point
  let seven := thresholdSet ∩ OriginalA7 N
  let eighteen := thresholdSet ∩ OriginalA18 N
  let sevenResidues :=
    r263OptionRootNatResidues 7 threshold pivots
  let eighteenResidues :=
    r263OptionRootNatResidues 18 threshold pivots
  have hthresholdSubset : thresholdSet ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_inter.mp
      (Finset.mem_filter.mp hpoint).1).2
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _
        (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard :
      thresholdSet.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenBound : (seven.card : Rat) <=
      (bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
    apply baseProgressionSubset_card_le_periodicBound
      (residues := sevenResidues) (baseResidue := 7)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
      rw [fiveMillionPeriodicTriple_mod_period]
      exact r263OptionRoots_classify_actual_threshold hBout hpivotsResidual
        (Finset.mem_union_left _ (Finset.mem_inter.mp hpoint).2)
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact r263OptionRootNatResidues_subset_range 7 threshold pivots
    · exact r263OptionRootNatResidues_card_le hsevenPeriod
    · exact hbound
  have heightteenBound : (eighteen.card : Rat) <=
      (bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
    apply baseProgressionSubset_card_le_periodicBound
      (residues := eighteenResidues) (baseResidue := 18)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
      rw [fiveMillionPeriodicTriple_mod_period]
      exact r263OptionRoots_classify_actual_threshold hBout hpivotsResidual
        (Finset.mem_union_right _ (Finset.mem_inter.mp hpoint).2)
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact r263OptionRootNatResidues_subset_range 18 threshold pivots
    · exact r263OptionRootNatResidues_card_le heighteenPeriod
    · exact hbound
  have hthresholdQ :
      (thresholdSet.card : Rat) <=
        (seven.card : Rat) + (eighteen.card : Rat) := by
    exact_mod_cast hthresholdCard
  have hcount : (thresholdSet.card : Rat) <=
      2 * ((bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) := by
    linarith
  have hNPositiveNat : 0 < N := by omega
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast hNPositiveNat
  have hLowerQ : (lower : Rat) <= N := by
    exact_mod_cast hLower
  have hLowerPositiveQ : (0 : Rat) < lower := by
    exact_mod_cast hLowerPositive
  have hprefixNonnegative :
      (0 : Rat) <=
        2 * ((bound : Rat) / 1764 +
          (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) := by
    positivity
  have hprefixDiv :
      2 * ((bound : Rat) / 1764 +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) / N <=
      2 * ((bound : Rat) / 1764 +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) /
          lower := by
    exact div_le_div_of_nonneg_left hprefixNonnegative
      hLowerPositiveQ hLowerQ
  change (thresholdSet.card : Rat) / N <= _
  calc
    (thresholdSet.card : Rat) / N <=
        (2 * ((bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
          (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764)) / N :=
      div_le_div_of_nonneg_right hcount hNPositive.le
    _ = 2 * ((bound : Rat) / 1764) / 25 +
        2 * ((bound : Rat) / 1764 +
          (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764) / N := by
      field_simp
      ring
    _ <= r263OptionRootFiniteEnvelopeAt lower bound := by
      exact add_le_add le_rfl hprefixDiv

theorem fiveMillionR263OptionRootFinitePayment_ratio_le
    {N : Nat} {B pivots : Finset Nat} {threshold bound : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hbound : bound <= 882)
    (hsevenPeriod :
      (optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour 7) (r263RootNine 7)
        (r263RootFortyNine 7)).card <= bound)
    (heighteenPeriod :
      (optionRootPeriodicThresholdResidues pivots threshold
        (r263RootFour 18) (r263RootNine 18)
        (r263RootFortyNine 18)).card <= bound) :
    fiveMillionR263BaseFiniteThresholdPayment
      N B pivots 7 threshold / N <=
        r263OptionRootFiniteEnvelope bound := by
  simpa [r263OptionRootFiniteEnvelope] using
    fiveMillionR263OptionRootFinitePayment_ratio_le_at_lower
      (lower := 5_000_000) (by norm_num) hLower hBout hpivotsResidual
        hbound hsevenPeriod heighteenPeriod

def r263OddSixFiveTailEnvelope : Rat :=
  fiveMillionOddRoot7Envelope +
    6 * fiveMillionSquareTail7Envelope / 25

def r263OddFourThreeTailEnvelope : Rat :=
  (2 / 3 : Rat) *
    (fiveMillionOddRoot7Envelope +
      6 * fiveMillionSquareTail7Envelope / 25)

theorem hallBaseTailSquarePayment_sixFive_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 5 / N <=
      r263OddSixFiveTailEnvelope := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_globalMixed_actual
        hLower hBout (hpivotsResidual hpivot)
          (hpivotsOdd pivot hpivot)
    simpa [hpivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  norm_num
  calc
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B 7 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 2 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = r263OddSixFiveTailEnvelope := by
      unfold r263OddSixFiveTailEnvelope
      ring

theorem hallBaseTailSquarePayment_fourThree_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 4)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 3 / N <=
      r263OddFourThreeTailEnvelope := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      4 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_globalMixed_actual
        hLower hBout (hpivotsResidual hpivot)
          (hpivotsOdd pivot hpivot)
    simpa [hpivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  norm_num
  calc
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B 7 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (4 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 2 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = r263OddFourThreeTailEnvelope := by
      unfold r263OddFourThreeTailEnvelope
      ring

#print axioms r263OptionRoots_classify_actual_threshold
#print axioms r263OptionRootNatResidues_card_le
#print axioms fiveMillionR263OptionRootFinitePayment_ratio_le
#print axioms hallBaseTailSquarePayment_sixFive_odd_ratio_le
#print axioms hallBaseTailSquarePayment_fourThree_odd_ratio_le

end Erdos848
