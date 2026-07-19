import Erdos848.TailR263EvenOneFinite23Semantics

namespace Erdos848

/-!
# Completing partial quotient roots

A pivot divisible by a cutoff prime has no quotient root.  For an upper
bound, every partial root family may be completed to one total root per form.
This file proves that the completion can preserve either a forced common
root or a forced non-common root.  It is the step that prevents inactive
prime events from being mistaken for genuine root collisions.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FiniteOptionRootExtends
    {m : Nat} (givenRoot : Fin 3 -> Option (Fin m))
    (total : Fin 3 -> Fin m) : Prop :=
  ∀ i q, givenRoot i = some q -> total i = q

private def e1FiniteZero {m : Nat} (hm : 0 < m) : Fin m :=
  ⟨0, hm⟩

private def e1FiniteOne {m : Nat} (hm : 2 <= m) : Fin m :=
  ⟨1, hm⟩

private def e1FiniteDifferent {m : Nat} (hm : 2 <= m)
    (q : Fin m) : Fin m :=
  if q = e1FiniteZero (lt_of_lt_of_le (by norm_num) hm) then
    e1FiniteOne hm
  else e1FiniteZero (lt_of_lt_of_le (by norm_num) hm)

private theorem e1FiniteDifferent_ne {m : Nat} (hm : 2 <= m)
    (q : Fin m) :
    e1FiniteDifferent hm q ≠ q := by
  unfold e1FiniteDifferent
  split
  · intro h
    have hval := congrArg Fin.val h
    simp [‹q = e1FiniteZero (lt_of_lt_of_le (by norm_num) hm)›,
      e1FiniteOne, e1FiniteZero] at hval
  · simpa using ‹q ≠ e1FiniteZero (lt_of_lt_of_le (by norm_num) hm)›.symm

private theorem e1FiniteRootPatternOf_ne_allEqual_of_ne
    {m : Nat} (a b c : Fin m) (h : a ≠ b ∨ a ≠ c) :
    e1FiniteRootPatternOf a.val b.val c.val ≠ .allEqual := by
  intro hpattern
  have heq := (e1FiniteRootPatternOf_eq_allEqual_iff
    a.val b.val c.val).mp hpattern
  rcases h with hab | hac
  · exact hab (Fin.ext heq.1)
  · exact hac (Fin.ext heq.2)

theorem e1FiniteOptionRoot_exists_extension
    {m : Nat} (hm : 0 < m) (givenRoot : Fin 3 -> Option (Fin m)) :
    ∃ total : Fin 3 -> Fin m, e1FiniteOptionRootExtends givenRoot total := by
  classical
  refine ⟨fun i => (givenRoot i).getD (e1FiniteZero hm), ?_⟩
  intro i q hi
  simp [hi]

theorem e1FiniteOptionRoot_exists_allEqual_extension
    {m : Nat} (hm : 0 < m) (givenRoot : Fin 3 -> Option (Fin m))
    (hcoherent : ∀ i j q r,
      givenRoot i = some q -> givenRoot j = some r -> q = r) :
    ∃ total : Fin 3 -> Fin m,
      e1FiniteOptionRootExtends givenRoot total ∧
      e1FiniteRootPatternOf
        (total 0).val (total 1).val (total 2).val = .allEqual := by
  classical
  by_cases hsome : ∃ i q, givenRoot i = some q
  · obtain ⟨anchor, q, hq⟩ := hsome
    refine ⟨fun _ => q, ?_, ?_⟩
    · intro i r hr
      exact (hcoherent i anchor r q hr hq).symm
    · simp
  · let q := e1FiniteZero hm
    refine ⟨fun _ => q, ?_, by simp⟩
    intro i r hr
    exact False.elim (hsome ⟨i, r, hr⟩)

theorem e1FiniteOptionRoot_exists_noncommon_extension
    {m : Nat} (hm : 2 <= m) (givenRoot : Fin 3 -> Option (Fin m))
    (hnotCommon : ¬ ∃ q, ∀ i, givenRoot i = some q) :
    ∃ total : Fin 3 -> Fin m,
      e1FiniteOptionRootExtends givenRoot total ∧
      e1FiniteRootPatternOf
        (total 0).val (total 1).val (total 2).val ≠ .allEqual := by
  classical
  cases h0 : givenRoot 0 with
  | none =>
      cases h1 : givenRoot 1 with
      | none =>
          cases h2 : givenRoot 2 with
          | none =>
              let z := e1FiniteZero (lt_of_lt_of_le (by norm_num) hm)
              let o := e1FiniteOne hm
              have hzo : z ≠ o := by
                intro h
                have hval := congrArg Fin.val h
                simp [z, o, e1FiniteZero, e1FiniteOne] at hval
              refine ⟨![z, o, z], ?_, ?_⟩
              · intro i q hi
                fin_cases i <;> simp_all
              · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                  z o z (Or.inl hzo)
          | some c =>
              let d := e1FiniteDifferent hm c
              have hdc : d ≠ c := e1FiniteDifferent_ne hm c
              refine ⟨![d, c, c], ?_, ?_⟩
              · intro i q hi
                fin_cases i <;> simp_all
              · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                  d c c (Or.inl hdc)
      | some b =>
          cases h2 : givenRoot 2 with
          | none =>
              let d := e1FiniteDifferent hm b
              have hdb : d ≠ b := e1FiniteDifferent_ne hm b
              refine ⟨![d, b, b], ?_, ?_⟩
              · intro i q hi
                fin_cases i <;> simp_all
              · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                  d b b (Or.inl hdb)
          | some c =>
              by_cases hbc : b = c
              · let d := e1FiniteDifferent hm b
                have hdb : d ≠ b := e1FiniteDifferent_ne hm b
                refine ⟨![d, b, c], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    d b c (Or.inl hdb)
              · refine ⟨![b, b, c], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    b b c (Or.inr hbc)
  | some a =>
      cases h1 : givenRoot 1 with
      | none =>
          cases h2 : givenRoot 2 with
          | none =>
              let d := e1FiniteDifferent hm a
              have hda : d ≠ a := e1FiniteDifferent_ne hm a
              refine ⟨![a, d, a], ?_, ?_⟩
              · intro i q hi
                fin_cases i <;> simp_all
              · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                  a d a (Or.inl hda.symm)
          | some c =>
              by_cases hac : a = c
              · let d := e1FiniteDifferent hm a
                have hda : d ≠ a := e1FiniteDifferent_ne hm a
                refine ⟨![a, d, c], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    a d c (Or.inl hda.symm)
              · refine ⟨![a, a, c], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    a a c (Or.inr hac)
      | some b =>
          cases h2 : givenRoot 2 with
          | none =>
              by_cases hab : a = b
              · let d := e1FiniteDifferent hm a
                have hda : d ≠ a := e1FiniteDifferent_ne hm a
                refine ⟨![a, b, d], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    a b d (Or.inr hda.symm)
              · refine ⟨![a, b, a], ?_, ?_⟩
                · intro i q hi
                  fin_cases i <;> simp_all
                · exact e1FiniteRootPatternOf_ne_allEqual_of_ne
                    a b a (Or.inl hab)
          | some c =>
              refine ⟨![a, b, c], ?_, ?_⟩
              · intro i q hi
                fin_cases i <;> simp_all
              · intro hpattern
                have heq := (e1FiniteRootPatternOf_eq_allEqual_iff
                  a.val b.val c.val).mp hpattern
                have hab : a = b := Fin.ext heq.1
                have hac : a = c := Fin.ext heq.2
                apply hnotCommon
                refine ⟨a, ?_⟩
                intro i
                fin_cases i <;> simp_all

inductive E1FinitePatternConstraint
  | free
  | common
  | noncommon

theorem e1FiniteOptionRoot_exists_constrained_extension
    (givenRoot : ∀ index : E1FinitePrimeIndex,
      Fin 3 -> Option (Fin (e1FiniteModulus index)))
    (constraint : E1FinitePrimeIndex -> E1FinitePatternConstraint)
    (hcommon : ∀ index, constraint index = .common ->
      ∀ i j q r, givenRoot index i = some q ->
        givenRoot index j = some r -> q = r)
    (hnoncommon : ∀ index, constraint index = .noncommon ->
      ¬ ∃ q, ∀ i, givenRoot index i = some q) :
    ∃ roots : E1FinitePivotRootFamily,
      (∀ index i q, givenRoot index i = some q -> roots i index = q) ∧
      (∀ index, constraint index = .common ->
        e1FiniteRootPatternAt roots index = .allEqual) ∧
      (∀ index, constraint index = .noncommon ->
        e1FiniteRootPatternAt roots index ≠ .allEqual) := by
  classical
  have hper : ∀ index : E1FinitePrimeIndex,
      ∃ total : Fin 3 -> Fin (e1FiniteModulus index),
        e1FiniteOptionRootExtends (givenRoot index) total ∧
        (constraint index = .common ->
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val = .allEqual) ∧
        (constraint index = .noncommon ->
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val ≠ .allEqual) := by
    intro index
    cases hconstraint : constraint index with
    | free =>
        obtain ⟨total, hextends⟩ :=
          e1FiniteOptionRoot_exists_extension
            (e1FiniteModulus_pos index) (givenRoot index)
        exact ⟨total, hextends, by simp [hconstraint]⟩
    | common =>
        obtain ⟨total, hextends, hpattern⟩ :=
          e1FiniteOptionRoot_exists_allEqual_extension
            (e1FiniteModulus_pos index) (givenRoot index)
            (hcommon index hconstraint)
        exact ⟨total, hextends, by simp [hconstraint, hpattern]⟩
    | noncommon =>
        have htwo : 2 <= e1FiniteModulus index := by
          fin_cases index <;> norm_num [e1FiniteModulus]
        obtain ⟨total, hextends, hpattern⟩ :=
          e1FiniteOptionRoot_exists_noncommon_extension
            htwo (givenRoot index) (hnoncommon index hconstraint)
        exact ⟨total, hextends, by simp [hconstraint, hpattern]⟩
  choose total htotal using hper
  refine ⟨fun i index => total index i, ?_, ?_, ?_⟩
  · intro index i q hq
    exact htotal index |>.1 i q hq
  · intro index hconstraint
    exact htotal index |>.2.1 hconstraint
  · intro index hconstraint
    exact htotal index |>.2.2 hconstraint

#print axioms e1FiniteOptionRoot_exists_allEqual_extension
#print axioms e1FiniteOptionRoot_exists_noncommon_extension
#print axioms e1FiniteOptionRoot_exists_constrained_extension

end Erdos848
