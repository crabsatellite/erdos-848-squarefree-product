import Erdos848.TailTwentyMillionOddFinite19Semantics
import Erdos848.TailR263EvenOneFinite23RootCover
import Erdos848.TailTwentyMillionPivotAllocation

namespace Erdos848

open TwentyMillion

/-!
# Literal cutoff-19 roots for the odd terminal rows

Prime two is total on every odd pivot.  The remaining six coordinates are
kept partial until a constrained completion fixes the mod-nine equality
pattern.  This is the semantic boundary at which the generated equality
pattern certificate is connected to literal prime-square events.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

noncomputable def twentyMillionOddFinite19PartialRoot
    (index : TwentyMillionOddFinite19Index)
    (baseResidue pivot : Nat) :
    Option (Fin (twentyMillionOddFinite19Modulus index)) := by
  classical
  exact if h : ∃ q,
      twentyMillionOddDegreeRootEquation index baseResidue pivot q then
    some (Classical.choose h)
  else none

theorem twentyMillionOddFinite19PartialRoot_eq_some
    {index : TwentyMillionOddFinite19Index}
    {baseResidue pivot : Nat}
    {q : Fin (twentyMillionOddFinite19Modulus index)}
    (hq : twentyMillionOddDegreeRootEquation
      index baseResidue pivot q) :
    twentyMillionOddFinite19PartialRoot
      index baseResidue pivot = some q := by
  rw [twentyMillionOddFinite19PartialRoot, dif_pos ⟨q, hq⟩]
  congr 1
  exact
    (twentyMillionOddDegreeRoot_eq_of_equation
      (Classical.choose_spec
        (show ∃ r,
          twentyMillionOddDegreeRootEquation
            index baseResidue pivot r from ⟨q, hq⟩))).symm.trans
      (twentyMillionOddDegreeRoot_eq_of_equation hq)

theorem twentyMillionOddFinite19PartialRoot_some_spec
    {index : TwentyMillionOddFinite19Index}
    {baseResidue pivot : Nat}
    {q : Fin (twentyMillionOddFinite19Modulus index)}
    (hq : twentyMillionOddFinite19PartialRoot
      index baseResidue pivot = some q) :
    twentyMillionOddDegreeRootEquation index baseResidue pivot q := by
  classical
  unfold twentyMillionOddFinite19PartialRoot at hq
  split at hq
  next hexists =>
    have hchosen := Classical.choose_spec hexists
    have heq : Classical.choose hexists = q := Option.some.inj hq
    simpa [heq] using hchosen
  next _ => simp at hq

theorem twentyMillionOddFinite19PartialRoot_same_implies_pivot_mod
    {index : TwentyMillionOddFinite19Index}
    {baseResidue left right : Nat}
    {q : Fin (twentyMillionOddFinite19Modulus index)}
    (hleft : twentyMillionOddFinite19PartialRoot
      index baseResidue left = some q)
    (hright : twentyMillionOddFinite19PartialRoot
      index baseResidue right = some q) :
    left % twentyMillionOddFinite19Modulus index =
      right % twentyMillionOddFinite19Modulus index := by
  have hleftEq :=
    twentyMillionOddFinite19PartialRoot_some_spec hleft
  have hrightEq :=
    twentyMillionOddFinite19PartialRoot_some_spec hright
  have hz :
      (left : ZMod (twentyMillionOddFinite19Modulus index)) =
        (right : ZMod (twentyMillionOddFinite19Modulus index)) :=
    mul_add_one_left_unique hleftEq hrightEq
  have hval := congrArg ZMod.val hz
  simpa [ZMod.val_natCast] using hval

theorem twentyMillionOddFinite19PartialRoot_coherent_of_pivot_mod
    {index : TwentyMillionOddFinite19Index}
    {baseResidue left right : Nat}
    {q r : Fin (twentyMillionOddFinite19Modulus index)}
    (hmod : left % twentyMillionOddFinite19Modulus index =
      right % twentyMillionOddFinite19Modulus index)
    (hleft : twentyMillionOddFinite19PartialRoot
      index baseResidue left = some q)
    (hright : twentyMillionOddFinite19PartialRoot
      index baseResidue right = some r) :
    q = r := by
  have hleftEq :=
    twentyMillionOddFinite19PartialRoot_some_spec hleft
  have hrightEq :=
    twentyMillionOddFinite19PartialRoot_some_spec hright
  have hz :
      (left : ZMod (twentyMillionOddFinite19Modulus index)) =
        (right : ZMod (twentyMillionOddFinite19Modulus index)) :=
    (ZMod.natCast_eq_natCast_iff' left right
      (twentyMillionOddFinite19Modulus index)).2 hmod
  have hrightEq' :
      twentyMillionOddDegreeRootEquation
        index baseResidue left r := by
    change
      (left : ZMod (twentyMillionOddFinite19Modulus index)) *
          (25 * (r.val :
            ZMod (twentyMillionOddFinite19Modulus index)) +
            baseResidue) + 1 = 0
    rw [hz]
    exact hrightEq
  exact
    (twentyMillionOddDegreeRoot_eq_of_equation hleftEq).symm.trans
      (twentyMillionOddDegreeRoot_eq_of_equation hrightEq')

def twentyMillionOddFinite19PrimeTwoRoot
    (baseResidue pivot : Nat) : Fin 4 :=
  ⟨(8 - (baseResidue % 4 + pivot % 4)) % 4,
    Nat.mod_lt _ (by norm_num)⟩

private theorem twentyMillionOddFinite19PrimeTwoRoot_equation
    {baseResidue pivot : Nat}
    (hpivot : pivot % 4 = 1 ∨ pivot % 4 = 3) :
    twentyMillionOddDegreeRootEquation 0 baseResidue pivot
      (twentyMillionOddFinite19PrimeTwoRoot
        baseResidue pivot) := by
  have hbaseLt : baseResidue % 4 < 4 :=
    Nat.mod_lt _ (by norm_num)
  have hpivotZ :
      (pivot : ZMod 4) = ((pivot % 4 : Nat) : ZMod 4) := by
    apply (ZMod.natCast_eq_natCast_iff' pivot (pivot % 4) 4).2
    simp
  have hbaseZ :
      (baseResidue : ZMod 4) =
        ((baseResidue % 4 : Nat) : ZMod 4) := by
    apply
      (ZMod.natCast_eq_natCast_iff'
        baseResidue (baseResidue % 4) 4).2
    simp
  change
    (pivot : ZMod 4) *
        (25 *
          ((twentyMillionOddFinite19PrimeTwoRoot
            baseResidue pivot).val : ZMod 4) +
          baseResidue) + 1 = 0
  rw [hpivotZ, hbaseZ]
  rcases hpivot with hpivot | hpivot <;>
    interval_cases hbase : baseResidue % 4 <;>
    norm_num [twentyMillionOddFinite19PrimeTwoRoot,
      hpivot, hbase,
      ZMod.natCast_eq_natCast_iff'] <;>
    decide

theorem twentyMillionOddFinite19PrimeTwoRoot_eq_iff
    {baseResidue left right : Nat} :
    twentyMillionOddFinite19PrimeTwoRoot baseResidue left =
        twentyMillionOddFinite19PrimeTwoRoot baseResidue right ↔
      left % 4 = right % 4 := by
  have hbaseLt : baseResidue % 4 < 4 :=
    Nat.mod_lt _ (by norm_num)
  have hleftLt : left % 4 < 4 := Nat.mod_lt _ (by norm_num)
  have hrightLt : right % 4 < 4 := Nat.mod_lt _ (by norm_num)
  interval_cases hbase : baseResidue % 4 <;>
    interval_cases hleft : left % 4 <;>
    interval_cases hright : right % 4 <;>
    simp [twentyMillionOddFinite19PrimeTwoRoot,
      hbase, hleft, hright]

noncomputable def twentyMillionOddFinite19ActualPartialRoots
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 3) :
    ∀ index : TwentyMillionOddFinite19Index,
      Fin 3 → Option (Fin (twentyMillionOddFinite19Modulus index)) :=
  fun index i =>
    if hzero : index = 0 then
      hzero ▸ some (twentyMillionOddFinite19PrimeTwoRoot baseResidue
        (globalMixedThreePivotAt pivots hcard i))
    else
      twentyMillionOddFinite19PartialRoot index baseResidue
        (globalMixedThreePivotAt pivots hcard i)

theorem twentyMillionOddFinite19ActualPartialRoot_eq_some_of_event
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hpivotsOdd : ∀ pivot ∈ pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3)
    {index : TwentyMillionOddFinite19Index}
    {i : Fin 3} {point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent :
      (twentyMillionOddDegreePrime index) ^ 2 ∣
        globalMixedThreePivotAt pivots hcard i * point + 1) :
    twentyMillionOddFinite19ActualPartialRoots
        baseResidue pivots hcard index i =
      some ⟨(point / 25) %
          twentyMillionOddFinite19Modulus index,
        Nat.mod_lt _
          (twentyMillionOddDegreeModulus_pos index)⟩ := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := twentyMillionOddFinite19Modulus index) hpoint
      (by
        have hmodEq :
            twentyMillionOddFinite19Modulus index =
              (twentyMillionOddDegreePrime index) ^ 2 := by
          fin_cases index <;>
            norm_num [twentyMillionOddFinite19Modulus,
              twentyMillionOddDegreePrime]
        rw [hmodEq]
        exact hevent)
  let q : Fin (twentyMillionOddFinite19Modulus index) :=
    ⟨(point / 25) % twentyMillionOddFinite19Modulus index,
      Nat.mod_lt _ (twentyMillionOddDegreeModulus_pos index)⟩
  have hcast :
      ((q.val : Nat) :
          ZMod (twentyMillionOddFinite19Modulus index)) =
        ((point / 25 : Nat) :
          ZMod (twentyMillionOddFinite19Modulus index)) := by
    dsimp [q]
    simpa [ZMod.val_natCast] using
      (ZMod.natCast_zmod_val
        ((point / 25 : Nat) :
          ZMod (twentyMillionOddFinite19Modulus index)))
  rw [← hcast] at hequation
  change twentyMillionOddDegreeRootEquation
    index baseResidue
      (globalMixedThreePivotAt pivots hcard i) q at hequation
  by_cases hzero : index = 0
  · subst index
    have hpivot := hpivotsOdd _
      (globalMixedThreePivotAt_mem pivots hcard i)
    have htwo := twentyMillionOddFinite19PrimeTwoRoot_equation
      (baseResidue := baseResidue)
      (pivot := globalMixedThreePivotAt pivots hcard i) hpivot
    have hroot :
        twentyMillionOddFinite19PrimeTwoRoot baseResidue
            (globalMixedThreePivotAt pivots hcard i) = q :=
      (twentyMillionOddDegreeRoot_eq_of_equation htwo).symm.trans
        (twentyMillionOddDegreeRoot_eq_of_equation hequation)
    simpa [twentyMillionOddFinite19ActualPartialRoots, hroot, q]
  · simpa [twentyMillionOddFinite19ActualPartialRoots, hzero, q] using
      (twentyMillionOddFinite19PartialRoot_eq_some hequation)

theorem twentyMillionOddFinite19OptionRoot_exists_constrained_extension
    (givenRoot : ∀ index : TwentyMillionOddFinite19Index,
      Fin 3 → Option (Fin (twentyMillionOddFinite19Modulus index)))
    (constraint :
      TwentyMillionOddFinite19Index → E1FinitePatternConstraint)
    (hcommon : ∀ index, constraint index = .common →
      ∀ i j q r, givenRoot index i = some q →
        givenRoot index j = some r → q = r)
    (hnoncommon : ∀ index, constraint index = .noncommon →
      ¬ ∃ q, ∀ i, givenRoot index i = some q) :
    ∃ roots : TwentyMillionOddFinite19PivotRootFamily,
      (∀ index i q, givenRoot index i = some q →
        roots i index = q) ∧
      (∀ index, constraint index = .common →
        twentyMillionOddFinite19RootPatternAt roots index =
          .allEqual) ∧
      (∀ index, constraint index = .noncommon →
        twentyMillionOddFinite19RootPatternAt roots index ≠
          .allEqual) := by
  classical
  have hper : ∀ index : TwentyMillionOddFinite19Index,
      ∃ total : Fin 3 →
          Fin (twentyMillionOddFinite19Modulus index),
        e1FiniteOptionRootExtends (givenRoot index) total ∧
        (constraint index = .common →
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val =
              .allEqual) ∧
        (constraint index = .noncommon →
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val ≠
              .allEqual) := by
    intro index
    cases hconstraint : constraint index with
    | free =>
        obtain ⟨total, hextends⟩ :=
          e1FiniteOptionRoot_exists_extension
            (twentyMillionOddDegreeModulus_pos index)
            (givenRoot index)
        exact ⟨total, hextends, by simp [hconstraint]⟩
    | common =>
        obtain ⟨total, hextends, hpattern⟩ :=
          e1FiniteOptionRoot_exists_allEqual_extension
            (twentyMillionOddDegreeModulus_pos index)
            (givenRoot index)
            (hcommon index hconstraint)
        exact ⟨total, hextends, by
          simp [hconstraint, hpattern]⟩
    | noncommon =>
        have htwo :
            2 ≤ twentyMillionOddFinite19Modulus index := by
          fin_cases index <;>
            norm_num [twentyMillionOddFinite19Modulus]
        obtain ⟨total, hextends, hpattern⟩ :=
          e1FiniteOptionRoot_exists_noncommon_extension
            htwo (givenRoot index)
            (hnoncommon index hconstraint)
        exact ⟨total, hextends, by
          simp [hconstraint, hpattern]⟩
  choose total htotal using hper
  refine ⟨fun i index => total index i, ?_, ?_, ?_⟩
  · intro index i q hq
    exact htotal index |>.1 i q hq
  · intro index hconstraint
    exact htotal index |>.2.1 hconstraint
  · intro index hconstraint
    exact htotal index |>.2.2 hconstraint

theorem twentyMillionOddFinite19Actual_exists_constrained_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (constraint :
      TwentyMillionOddFinite19Index → E1FinitePatternConstraint)
    (hcommonResidue : ∀ index, constraint index = .common →
      ∃ residue : Fin (twentyMillionOddFinite19Modulus index),
        ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            twentyMillionOddFinite19Modulus index = residue.val)
    (hnoncommonResidue :
      ∀ index, constraint index = .noncommon →
        ¬ ∃ residue : Fin (twentyMillionOddFinite19Modulus index),
          ∀ i : Fin 3,
            globalMixedThreePivotAt pivots hcard i %
              twentyMillionOddFinite19Modulus index = residue.val) :
    ∃ roots : TwentyMillionOddFinite19PivotRootFamily,
      (∀ index i q,
        twentyMillionOddFinite19ActualPartialRoots
            baseResidue pivots hcard index i = some q →
          roots i index = q) ∧
      (∀ index, constraint index = .common →
        twentyMillionOddFinite19RootPatternAt roots index =
          .allEqual) ∧
      (∀ index, constraint index = .noncommon →
        twentyMillionOddFinite19RootPatternAt roots index ≠
          .allEqual) := by
  apply
    twentyMillionOddFinite19OptionRoot_exists_constrained_extension
  · intro index hconstraint i j q r hi hj
    obtain ⟨residue, hresidue⟩ :=
      hcommonResidue index hconstraint
    by_cases hzero : index = 0
    · subst index
      have hi' :
          twentyMillionOddFinite19PrimeTwoRoot baseResidue
              (globalMixedThreePivotAt pivots hcard i) = q := by
        simpa [twentyMillionOddFinite19ActualPartialRoots] using hi
      have hj' :
          twentyMillionOddFinite19PrimeTwoRoot baseResidue
              (globalMixedThreePivotAt pivots hcard j) = r := by
        simpa [twentyMillionOddFinite19ActualPartialRoots] using hj
      have hmod :
          globalMixedThreePivotAt pivots hcard i % 4 =
            globalMixedThreePivotAt pivots hcard j % 4 :=
        (hresidue i).trans (hresidue j).symm
      exact hi'.symm.trans
        (((twentyMillionOddFinite19PrimeTwoRoot_eq_iff).2 hmod).trans
          hj')
    · apply
        twentyMillionOddFinite19PartialRoot_coherent_of_pivot_mod
          (baseResidue := baseResidue)
          (left := globalMixedThreePivotAt pivots hcard i)
          (right := globalMixedThreePivotAt pivots hcard j)
      · exact (hresidue i).trans (hresidue j).symm
      · simpa [twentyMillionOddFinite19ActualPartialRoots,
          hzero] using hi
      · simpa [twentyMillionOddFinite19ActualPartialRoots,
          hzero] using hj
  · intro index hconstraint hcommonRoot
    apply hnoncommonResidue index hconstraint
    obtain ⟨q, hq⟩ := hcommonRoot
    refine ⟨⟨globalMixedThreePivotAt pivots hcard 0 %
        twentyMillionOddFinite19Modulus index,
      Nat.mod_lt _
        (twentyMillionOddDegreeModulus_pos index)⟩, ?_⟩
    intro i
    by_cases hzero : index = 0
    · subst index
      have hi :
          twentyMillionOddFinite19PrimeTwoRoot baseResidue
              (globalMixedThreePivotAt pivots hcard i) = q := by
        simpa [twentyMillionOddFinite19ActualPartialRoots] using hq i
      have hzeroRoot :
          twentyMillionOddFinite19PrimeTwoRoot baseResidue
              (globalMixedThreePivotAt pivots hcard 0) = q := by
        simpa [twentyMillionOddFinite19ActualPartialRoots] using hq 0
      exact (twentyMillionOddFinite19PrimeTwoRoot_eq_iff).mp
        (hi.trans hzeroRoot.symm)
    · exact
        twentyMillionOddFinite19PartialRoot_same_implies_pivot_mod
          (baseResidue := baseResidue)
          (hleft := by
            simpa [twentyMillionOddFinite19ActualPartialRoots,
              hzero] using hq i)
          (hright := by
            simpa [twentyMillionOddFinite19ActualPartialRoots,
              hzero] using hq 0)

#print axioms twentyMillionOddFinite19PartialRoot_eq_some
#print axioms twentyMillionOddFinite19ActualPartialRoot_eq_some_of_event
#print axioms
  twentyMillionOddFinite19Actual_exists_constrained_root_cover

end Erdos848
