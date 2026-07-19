import Erdos848.TailR263EvenOneFinite23RootCover
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

/-!
# Literal pivots and partial cutoff-23 roots

The partial root is `none` exactly when the affine prime-square equation has
no solution.  A constrained total completion then covers every literal
finite event while retaining the mod-9/mod-49/mod-121 cell information used
by the E1 descent.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

noncomputable def e1FinitePartialRoot
    (index : E1FinitePrimeIndex) (baseResidue pivot : Nat) :
    Option (Fin (e1FiniteModulus index)) := by
  classical
  exact if h : ∃ q, e1FiniteRootEquation index baseResidue pivot q then
    some (Classical.choose h)
  else none

theorem e1FinitePartialRoot_eq_some
    {index : E1FinitePrimeIndex} {baseResidue pivot : Nat}
    {q : Fin (e1FiniteModulus index)}
    (hq : e1FiniteRootEquation index baseResidue pivot q) :
    e1FinitePartialRoot index baseResidue pivot = some q := by
  rw [e1FinitePartialRoot, dif_pos ⟨q, hq⟩]
  congr 1
  exact (e1FiniteRoot_eq_of_equation
    (Classical.choose_spec
      (show ∃ r, e1FiniteRootEquation index baseResidue pivot r from
        ⟨q, hq⟩))).symm.trans
    (e1FiniteRoot_eq_of_equation hq)

theorem e1FinitePartialRoot_some_spec
    {index : E1FinitePrimeIndex} {baseResidue pivot : Nat}
    {q : Fin (e1FiniteModulus index)}
    (hq : e1FinitePartialRoot index baseResidue pivot = some q) :
    e1FiniteRootEquation index baseResidue pivot q := by
  classical
  unfold e1FinitePartialRoot at hq
  split at hq
  next hexists =>
    have hchosen := Classical.choose_spec hexists
    have heq : Classical.choose hexists = q := Option.some.inj hq
    simpa [heq] using hchosen
  next _ => simp at hq

theorem e1FinitePartialRoot_eq_some_of_event
    {index : E1FinitePrimeIndex} {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : (e1FinitePrime index) ^ 2 ∣ pivot * point + 1) :
    e1FinitePartialRoot index baseResidue pivot =
      some ⟨(point / 25) % e1FiniteModulus index,
        Nat.mod_lt _ (e1FiniteModulus_pos index)⟩ := by
  apply e1FinitePartialRoot_eq_some
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := e1FiniteModulus index) hpoint
      (by simpa [e1FiniteModulus_eq_prime_square] using hevent)
  have hcast :
      (((((point / 25) % e1FiniteModulus index) : Nat) :
        ZMod (e1FiniteModulus index))) =
        ((point / 25 : Nat) : ZMod (e1FiniteModulus index)) := by
    simpa [ZMod.val_natCast] using
      (ZMod.natCast_zmod_val
        ((point / 25 : Nat) : ZMod (e1FiniteModulus index)))
  rw [← hcast] at hequation
  exact hequation

theorem e1FinitePartialRoot_same_implies_pivot_mod
    {index : E1FinitePrimeIndex} {baseResidue left right : Nat}
    {q : Fin (e1FiniteModulus index)}
    (hleft : e1FinitePartialRoot index baseResidue left = some q)
    (hright : e1FinitePartialRoot index baseResidue right = some q) :
    left % e1FiniteModulus index = right % e1FiniteModulus index := by
  have hleftEq := e1FinitePartialRoot_some_spec hleft
  have hrightEq := e1FinitePartialRoot_some_spec hright
  have hz :
      (left : ZMod (e1FiniteModulus index)) =
        (right : ZMod (e1FiniteModulus index)) :=
    mul_add_one_left_unique hleftEq hrightEq
  have hval := congrArg ZMod.val hz
  simpa [ZMod.val_natCast] using hval

theorem e1FinitePartialRoot_coherent_of_pivot_mod
    {index : E1FinitePrimeIndex} {baseResidue left right : Nat}
    {q r : Fin (e1FiniteModulus index)}
    (hmod : left % e1FiniteModulus index =
      right % e1FiniteModulus index)
    (hleft : e1FinitePartialRoot index baseResidue left = some q)
    (hright : e1FinitePartialRoot index baseResidue right = some r) :
    q = r := by
  have hleftEq := e1FinitePartialRoot_some_spec hleft
  have hrightEq := e1FinitePartialRoot_some_spec hright
  have hz :
      (left : ZMod (e1FiniteModulus index)) =
        (right : ZMod (e1FiniteModulus index)) :=
    (ZMod.natCast_eq_natCast_iff' left right
      (e1FiniteModulus index)).2 hmod
  have hrightEq' : e1FiniteRootEquation index baseResidue left r := by
    simpa [e1FiniteRootEquation, hz] using hrightEq
  exact (e1FiniteRoot_eq_of_equation hleftEq).symm.trans
    (e1FiniteRoot_eq_of_equation hrightEq')

noncomputable def e1FiniteActualPartialRoots
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 3) :
    ∀ index : E1FinitePrimeIndex,
      Fin 3 -> Option (Fin (e1FiniteModulus index)) :=
  fun index i =>
    e1FinitePartialRoot index baseResidue
      (globalMixedThreePivotAt pivots hcard i)

theorem e1FiniteActual_exists_constrained_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (constraint : E1FinitePrimeIndex -> E1FinitePatternConstraint)
    (hcommonResidue : ∀ index, constraint index = .common ->
      ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index, constraint index = .noncommon ->
      ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus index = residue.val) :
    ∃ roots : E1FinitePivotRootFamily,
      (∀ index i q,
        e1FiniteActualPartialRoots baseResidue pivots hcard index i =
          some q -> roots i index = q) ∧
      (∀ index, constraint index = .common ->
        e1FiniteRootPatternAt roots index = .allEqual) ∧
      (∀ index, constraint index = .noncommon ->
        e1FiniteRootPatternAt roots index ≠ .allEqual) := by
  apply e1FiniteOptionRoot_exists_constrained_extension
  · intro index hconstraint i j q r hi hj
    obtain ⟨residue, hresidue⟩ :=
      hcommonResidue index hconstraint
    apply e1FinitePartialRoot_coherent_of_pivot_mod
      (baseResidue := baseResidue)
      (left := globalMixedThreePivotAt pivots hcard i)
      (right := globalMixedThreePivotAt pivots hcard j)
    · exact (hresidue i).trans (hresidue j).symm
    · simpa [e1FiniteActualPartialRoots] using hi
    · simpa [e1FiniteActualPartialRoots] using hj
  · intro index hconstraint hcommonRoot
    apply hnoncommonResidue index hconstraint
    obtain ⟨q, hq⟩ := hcommonRoot
    refine ⟨⟨globalMixedThreePivotAt pivots hcard 0 %
        e1FiniteModulus index,
      Nat.mod_lt _ (e1FiniteModulus_pos index)⟩, ?_⟩
    intro i
    exact e1FinitePartialRoot_same_implies_pivot_mod
      (baseResidue := baseResidue) (hleft := hq i) (hright := hq 0)

noncomputable def e1FiniteActualForms
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) : Finset (Fin 3) :=
  Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 23
      (globalMixedThreePivotAt pivots hcard i) point

theorem e1FiniteActualForms_card
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) :
    (e1FiniteActualForms pivots hcard point).card =
      (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 23 pivot point).card := by
  classical
  unfold e1FiniteActualForms
  apply Finset.card_bij (fun i _hi =>
    globalMixedThreePivotAt pivots hcard i)
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨globalMixedThreePivotAt_mem pivots hcard i,
        (Finset.mem_filter.mp hi).2⟩
  · intro i _hi j _hj hij
    exact globalMixedThreePivotAt_injective pivots hcard hij
  · intro pivot hpivot
    obtain ⟨i, hi⟩ := globalMixedThreePivotAt_surjective_on
      pivots hcard (Finset.mem_filter.mp hpivot).1
    refine ⟨i, ?_, hi⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ i, ?_⟩
    simpa [hi] using (Finset.mem_filter.mp hpivot).2

theorem e1FiniteActualForms_subset_rootBad
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue)
    {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q -> roots i index = q) :
    e1FiniteActualForms pivots hcard point ⊆
      Finset.univ.filter fun i : Fin 3 =>
        e1FiniteRootBad roots i (point / 25) := by
  classical
  intro i hi
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ i, ?_⟩
  have hpivotPart := hpivots
    (globalMixedThreePivotAt_mem pivots hcard i)
  have hevent := (Finset.mem_filter.mp hi).2
  obtain ⟨p, hpFinite, hpDiv⟩ :=
    (finiteSquarePrimeEvent_iff_evenValuationPrime23
      hBout hvaluation hpivotPart hpointLow).mp hevent
  have hbadFor (index : E1FinitePrimeIndex)
      (hpDivIndex :
        (e1FinitePrime index) ^ 2 ∣
          globalMixedThreePivotAt pivots hcard i * point + 1) :
      e1FiniteRootBad roots i (point / 25) := by
    refine ⟨index, ?_⟩
    have hpartial := e1FinitePartialRoot_eq_some_of_event
      (index := index) hpointMod hpDivIndex
    have hroot := hextends index i _ (by
      simpa [e1FiniteActualPartialRoots] using hpartial)
    simpa [e1FiniteRootNat, hroot]
  have hpCases := mem_e1FinitePrimes23.mp hpFinite
  rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact hbadFor 0 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 1 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 2 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 3 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 4 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 5 (by simpa [e1FinitePrime] using hpDiv)
  · exact hbadFor 6 (by simpa [e1FinitePrime] using hpDiv)

theorem e1FiniteBadCount_eq_filter_card
    (bad : Fin 3 -> Nat -> Prop) (q : Nat) :
    e1FiniteBadCount bad q =
      (Finset.univ.filter fun i : Fin 3 => bad i q).card := by
  classical
  have hcard :
      ((Finset.univ.filter fun i : Fin 3 => bad i q).card : Nat) =
        ∑ i : Fin 3, if bad i q then 1 else 0 := by
    simpa using (Finset.sum_boole (R := Nat)
      (fun i : Fin 3 => bad i q) Finset.univ).symm
  calc
    e1FiniteBadCount bad q =
        (if bad 0 q then 1 else 0) +
          (if bad 1 q then 1 else 0) +
          (if bad 2 q then 1 else 0) := by
      simp [e1FiniteBadCount, add_assoc]
    _ = ∑ i : Fin 3, if bad i q then 1 else 0 := by
      symm
      rw [Fin.sum_univ_succ, Fin.sum_univ_succ, Fin.sum_univ_succ]
      simp only [Fin.sum_univ_zero, add_zero]
      norm_num
      exact (add_assoc _ _ _).symm
    _ = (Finset.univ.filter fun i : Fin 3 => bad i q).card := hcard.symm

#print axioms e1FinitePartialRoot_eq_some
#print axioms e1FinitePartialRoot_same_implies_pivot_mod
#print axioms e1FiniteActual_exists_constrained_root_cover
#print axioms e1FiniteActualForms_subset_rootBad

end Erdos848
