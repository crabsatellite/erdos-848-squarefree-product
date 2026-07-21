import Erdos848.TailR263EvenOneFinite23ActualRoots

namespace Erdos848

/-!
# Pair-faithful cutoff-23 root completion

The ten-million four-pivot certificate uses one specified close pair in
each selected triple.  Missing quotient roots may still be completed for an
upper bound, but the completion must not invent an equality on that pair.
This file constructs such a completion and simultaneously keeps the
prime-three coordinate non-common.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def tenMillionFinite23PairLeft (pair : Fin 3) : Fin 3 :=
  ![0, 0, 1] pair

def tenMillionFinite23PairRight (pair : Fin 3) : Fin 3 :=
  ![1, 2, 2] pair

def tenMillionFinite23PairThird (pair : Fin 3) : Fin 3 :=
  ![2, 1, 0] pair

@[simp] theorem tenMillionFinite23PairLeft_ne_right (pair : Fin 3) :
    tenMillionFinite23PairLeft pair ≠
      tenMillionFinite23PairRight pair := by
  fin_cases pair <;>
    simp [tenMillionFinite23PairLeft, tenMillionFinite23PairRight]

@[simp] theorem tenMillionFinite23PairLeft_ne_third (pair : Fin 3) :
    tenMillionFinite23PairLeft pair ≠
      tenMillionFinite23PairThird pair := by
  fin_cases pair <;>
    simp [tenMillionFinite23PairLeft, tenMillionFinite23PairThird]

@[simp] theorem tenMillionFinite23PairRight_ne_third (pair : Fin 3) :
    tenMillionFinite23PairRight pair ≠
      tenMillionFinite23PairThird pair := by
  fin_cases pair <;>
    simp [tenMillionFinite23PairRight, tenMillionFinite23PairThird]

private def tenMillionFinite23Zero {m : Nat} (hm : 0 < m) : Fin m :=
  ⟨0, hm⟩

private def tenMillionFinite23One {m : Nat} (hm : 2 ≤ m) : Fin m :=
  ⟨1, hm⟩

private def tenMillionFinite23Different {m : Nat} (hm : 2 ≤ m)
    (q : Fin m) : Fin m :=
  if q = tenMillionFinite23Zero (lt_of_lt_of_le (by norm_num) hm) then
    tenMillionFinite23One hm
  else
    tenMillionFinite23Zero (lt_of_lt_of_le (by norm_num) hm)

private theorem tenMillionFinite23Different_ne
    {m : Nat} (hm : 2 ≤ m) (q : Fin m) :
    tenMillionFinite23Different hm q ≠ q := by
  unfold tenMillionFinite23Different
  split
  · rename_i hq
    intro h
    have hval := congrArg Fin.val h
    have hqval := congrArg Fin.val hq
    simp [tenMillionFinite23One] at hval
    simp [tenMillionFinite23Zero] at hqval
    omega
  · simpa using
      (show q ≠
        tenMillionFinite23Zero (lt_of_lt_of_le (by norm_num) hm) by
        assumption).symm

private theorem tenMillionFinite23RootPattern_ne_allEqual_of_ne
    {m : Nat} (total : Fin 3 → Fin m) {i j : Fin 3}
    (hij : total i ≠ total j) :
    e1FiniteRootPatternOf
        (total 0).val (total 1).val (total 2).val ≠ .allEqual := by
  intro hpattern
  have hall := (e1FiniteRootPatternOf_eq_allEqual_iff
    (total 0).val (total 1).val (total 2).val).mp hpattern
  apply hij
  fin_cases i <;> fin_cases j
  all_goals
    apply Fin.ext
    simp_all

theorem tenMillionFinite23OptionRoot_exists_pair_faithful_extension
    {m : Nat} (hm : 2 ≤ m) (givenRoot : Fin 3 → Option (Fin m))
    (pair : Fin 3) :
    ∃ total : Fin 3 → Fin m,
      e1FiniteOptionRootExtends givenRoot total ∧
      (total (tenMillionFinite23PairLeft pair) =
          total (tenMillionFinite23PairRight pair) →
        ∃ q, givenRoot (tenMillionFinite23PairLeft pair) = some q ∧
          givenRoot (tenMillionFinite23PairRight pair) = some q) := by
  classical
  let left := tenMillionFinite23PairLeft pair
  let right := tenMillionFinite23PairRight pair
  have hlr : left ≠ right := by
    simpa [left, right] using tenMillionFinite23PairLeft_ne_right pair
  cases hleft : givenRoot left with
  | none =>
      cases hright : givenRoot right with
      | none =>
          let zero := tenMillionFinite23Zero
            (lt_of_lt_of_le (by norm_num) hm)
          let one := tenMillionFinite23One hm
          have hzeroOne : zero ≠ one := by
            intro h
            have hval := congrArg Fin.val h
            simp [zero, one, tenMillionFinite23Zero,
              tenMillionFinite23One] at hval
          refine ⟨fun i =>
              if i = left then zero
              else if i = right then one
              else (givenRoot i).getD zero, ?_, ?_⟩
          · intro i q hi
            by_cases hil : i = left
            · subst i
              simp [hleft] at hi
            by_cases hir : i = right
            · subst i
              simp [hright] at hi
            simp [hil, hir, hi]
          · intro heq
            exfalso
            apply hzeroOne
            simpa [left, right, hlr, hlr.symm] using heq
      | some r =>
          let different := tenMillionFinite23Different hm r
          have hdifferent : different ≠ r :=
            tenMillionFinite23Different_ne hm r
          refine ⟨fun i =>
              if i = left then different
              else if i = right then r
              else (givenRoot i).getD different, ?_, ?_⟩
          · intro i q hi
            by_cases hil : i = left
            · subst i
              simp [hleft] at hi
            by_cases hir : i = right
            · subst i
              have hrq : r = q := by
                simpa [hright] using hi
              simpa [hlr.symm] using hrq
            simp [hil, hir, hi]
          · intro heq
            exfalso
            apply hdifferent
            simpa [left, right, hlr, hlr.symm] using heq
  | some q =>
      cases hright : givenRoot right with
      | none =>
          let different := tenMillionFinite23Different hm q
          have hdifferent : different ≠ q :=
            tenMillionFinite23Different_ne hm q
          refine ⟨fun i =>
              if i = left then q
              else if i = right then different
              else (givenRoot i).getD q, ?_, ?_⟩
          · intro i r hi
            by_cases hil : i = left
            · subst i
              have hqr : q = r := by
                simpa [hleft] using hi
              simpa using hqr
            by_cases hir : i = right
            · subst i
              simp [hright] at hi
            simp [hil, hir, hi]
          · intro heq
            exfalso
            apply hdifferent
            simpa [left, right, hlr, hlr.symm] using heq.symm
      | some r =>
          refine ⟨fun i =>
              if i = left then q
              else if i = right then r
              else (givenRoot i).getD q, ?_, ?_⟩
          · intro i s hi
            by_cases hil : i = left
            · subst i
              have hqs : q = s := by
                simpa [hleft] using hi
              simpa using hqs
            by_cases hir : i = right
            · subst i
              have hrs : r = s := by
                simpa [hright] using hi
              simpa [hlr.symm] using hrs
            simp [hil, hir, hi]
          · intro heq
            have hqr : q = r := by
              simpa [left, right, hlr, hlr.symm] using heq
            subst r
            exact ⟨q, by simpa [left] using hleft,
              by simpa [right] using hright⟩

theorem tenMillionFinite23OptionRoot_exists_pair_noncommon_extension
    {m : Nat} (hm : 2 ≤ m) (givenRoot : Fin 3 → Option (Fin m))
    (pair : Fin 3)
    (hnotCommon : ¬ ∃ q, ∀ i, givenRoot i = some q) :
    ∃ total : Fin 3 → Fin m,
      e1FiniteOptionRootExtends givenRoot total ∧
      (total (tenMillionFinite23PairLeft pair) =
          total (tenMillionFinite23PairRight pair) →
        ∃ q, givenRoot (tenMillionFinite23PairLeft pair) = some q ∧
          givenRoot (tenMillionFinite23PairRight pair) = some q) ∧
      e1FiniteRootPatternOf
        (total 0).val (total 1).val (total 2).val ≠ .allEqual := by
  classical
  obtain ⟨base, hbaseExtends, hbaseFaithful⟩ :=
    tenMillionFinite23OptionRoot_exists_pair_faithful_extension
      hm givenRoot pair
  let left := tenMillionFinite23PairLeft pair
  let right := tenMillionFinite23PairRight pair
  let third := tenMillionFinite23PairThird pair
  have hleftThird : left ≠ third := by
    simpa [left, third] using tenMillionFinite23PairLeft_ne_third pair
  have hrightThird : right ≠ third := by
    simpa [right, third] using tenMillionFinite23PairRight_ne_third pair
  by_cases hpair : base left = base right
  · obtain ⟨q, hleftQ, hrightQ⟩ := hbaseFaithful hpair
    cases hthird : givenRoot third with
    | none =>
        let different := tenMillionFinite23Different hm (base left)
        have hdifferent : different ≠ base left :=
          tenMillionFinite23Different_ne hm (base left)
        let total : Fin 3 → Fin m := fun i =>
          if i = third then different else base i
        refine ⟨total, ?_, ?_, ?_⟩
        · intro i r hi
          by_cases hit : i = third
          · subst i
            simp [hthird] at hi
          · simp [total, hit, hbaseExtends i r hi]
        · intro heq
          apply hbaseFaithful
          simpa [total, left, right, third, hleftThird,
            hrightThird] using heq
        · apply tenMillionFinite23RootPattern_ne_allEqual_of_ne
            total (i := left) (j := third)
          intro heq
          apply hdifferent
          simpa [total, hleftThird] using heq.symm
    | some r =>
        have hrq : r ≠ q := by
          intro hrq
          apply hnotCommon
          refine ⟨q, ?_⟩
          intro i
          fin_cases pair <;> fin_cases i <;>
            simp_all [left, right, third,
              tenMillionFinite23PairLeft,
              tenMillionFinite23PairRight,
              tenMillionFinite23PairThird]
        have hbaseLeft : base left = q :=
          hbaseExtends left q hleftQ
        have hbaseThird : base third = r :=
          hbaseExtends third r hthird
        refine ⟨base, hbaseExtends, hbaseFaithful, ?_⟩
        apply tenMillionFinite23RootPattern_ne_allEqual_of_ne
          base (i := left) (j := third)
        intro heq
        apply hrq
        exact hbaseThird.symm.trans (heq.symm.trans hbaseLeft)
  · exact ⟨base, hbaseExtends, hbaseFaithful,
      tenMillionFinite23RootPattern_ne_allEqual_of_ne base hpair⟩

theorem tenMillionFinite23Actual_exists_pair_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3} (pair : Fin 3)
    (hthree :
      ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus 0 = residue.val) :
    ∃ roots : E1FinitePivotRootFamily,
      (∀ index i q,
        e1FiniteActualPartialRoots baseResidue pivots hcard index i =
          some q → roots i index = q) ∧
      e1FiniteRootPatternAt roots 0 ≠ .allEqual ∧
      (∀ index,
        roots (tenMillionFinite23PairLeft pair) index =
            roots (tenMillionFinite23PairRight pair) index →
          ∃ q,
            e1FiniteActualPartialRoots baseResidue pivots hcard index
                (tenMillionFinite23PairLeft pair) = some q ∧
            e1FiniteActualPartialRoots baseResidue pivots hcard index
                (tenMillionFinite23PairRight pair) = some q) := by
  classical
  let givenRoot := e1FiniteActualPartialRoots
    baseResidue pivots hcard
  have hnotCommon :
      ¬ ∃ q, ∀ i, givenRoot 0 i = some q := by
    rintro ⟨q, hq⟩
    apply hthree
    refine ⟨⟨globalMixedThreePivotAt pivots hcard 0 %
        e1FiniteModulus 0,
      Nat.mod_lt _ (e1FiniteModulus_pos 0)⟩, ?_⟩
    intro i
    exact e1FinitePartialRoot_same_implies_pivot_mod
      (baseResidue := baseResidue)
      (hleft := hq i) (hright := hq 0)
  have hper : ∀ index : E1FinitePrimeIndex,
      ∃ total : Fin 3 → Fin (e1FiniteModulus index),
        e1FiniteOptionRootExtends (givenRoot index) total ∧
        (total (tenMillionFinite23PairLeft pair) =
            total (tenMillionFinite23PairRight pair) →
          ∃ q,
            givenRoot index (tenMillionFinite23PairLeft pair) = some q ∧
            givenRoot index (tenMillionFinite23PairRight pair) = some q) ∧
        (index = 0 →
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val ≠ .allEqual) := by
    intro index
    have htwo : 2 ≤ e1FiniteModulus index := by
      fin_cases index <;> norm_num [e1FiniteModulus]
    by_cases hindex : index = 0
    · subst index
      obtain ⟨total, hextends, hfaithful, hpattern⟩ :=
        tenMillionFinite23OptionRoot_exists_pair_noncommon_extension
          htwo (givenRoot 0) pair hnotCommon
      exact ⟨total, hextends, hfaithful, fun _ => hpattern⟩
    · obtain ⟨total, hextends, hfaithful⟩ :=
        tenMillionFinite23OptionRoot_exists_pair_faithful_extension
          htwo (givenRoot index) pair
      exact ⟨total, hextends, hfaithful,
        fun h => False.elim (hindex h)⟩
  choose total htotal using hper
  let roots : E1FinitePivotRootFamily := fun i index =>
    total index i
  refine ⟨roots, ?_, ?_, ?_⟩
  · intro index i q hq
    exact htotal index |>.1 i q hq
  · simpa [roots, e1FiniteRootPatternAt, e1FiniteRootNat] using
      (htotal 0 |>.2.2 rfl)
  · intro index heq
    apply htotal index |>.2.1
    simpa [roots] using heq

#print axioms tenMillionFinite23Actual_exists_pair_root_cover

end Erdos848
