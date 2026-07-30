import Erdos848.TailTenMillionEvenFinite23PairRootCover

namespace Erdos848

/-!
# Cell-faithful and all-pairs-faithful completion of the cutoff-23 roots

The sharp first-block checker needs two facts at once:

* the mod-49/mod-121 cell classification must not be changed by filling a
  missing quotient root;
* an equality introduced on any pair must imply equality of the actual pivot
  residues.

At a forced-common coordinate the second fact follows directly from the
literal cell congruence, even when a quotient root is absent.  At a free or
forced-noncommon coordinate we use the all-pairs-faithful completion.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem e1FiniteActual_exists_constrained_all_pairs_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (constraint : E1FinitePrimeIndex → E1FinitePatternConstraint)
    (hcommonResidue : ∀ index, constraint index = .common →
      ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index, constraint index = .noncommon →
      ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus index = residue.val) :
    ∃ roots : E1FinitePivotRootFamily,
      (∀ index i q,
        e1FiniteActualPartialRoots baseResidue pivots hcard index i =
          some q → roots i index = q) ∧
      (∀ index, constraint index = .common →
        e1FiniteRootPatternAt roots index = .allEqual) ∧
      (∀ index, constraint index = .noncommon →
        e1FiniteRootPatternAt roots index ≠ .allEqual) ∧
      (∀ pair index,
        roots (tenMillionFinite23PairLeft pair) index =
            roots (tenMillionFinite23PairRight pair) index →
          globalMixedThreePivotAt pivots hcard
                (tenMillionFinite23PairLeft pair) %
              e1FiniteModulus index =
            globalMixedThreePivotAt pivots hcard
                (tenMillionFinite23PairRight pair) %
              e1FiniteModulus index) := by
  classical
  let givenRoot := e1FiniteActualPartialRoots
    baseResidue pivots hcard
  have hcoherent (index : E1FinitePrimeIndex)
      (hconstraint : constraint index = .common) :
      ∀ i j q r, givenRoot index i = some q →
        givenRoot index j = some r → q = r := by
    intro i j q r hi hj
    obtain ⟨residue, hresidue⟩ :=
      hcommonResidue index hconstraint
    apply e1FinitePartialRoot_coherent_of_pivot_mod
      (baseResidue := baseResidue)
      (left := globalMixedThreePivotAt pivots hcard i)
      (right := globalMixedThreePivotAt pivots hcard j)
    · exact (hresidue i).trans (hresidue j).symm
    · simpa [givenRoot, e1FiniteActualPartialRoots] using hi
    · simpa [givenRoot, e1FiniteActualPartialRoots] using hj
  have hnotCommon (index : E1FinitePrimeIndex)
      (hconstraint : constraint index = .noncommon) :
      ¬ ∃ q, ∀ i, givenRoot index i = some q := by
    rintro ⟨q, hq⟩
    apply hnoncommonResidue index hconstraint
    refine ⟨
      ⟨globalMixedThreePivotAt pivots hcard 0 %
          e1FiniteModulus index,
        Nat.mod_lt _ (e1FiniteModulus_pos index)⟩, ?_⟩
    intro i
    exact e1FinitePartialRoot_same_implies_pivot_mod
      (baseResidue := baseResidue)
      (hleft := by
        simpa [givenRoot, e1FiniteActualPartialRoots] using hq i)
      (hright := by
        simpa [givenRoot, e1FiniteActualPartialRoots] using hq 0)
  have hper : ∀ index : E1FinitePrimeIndex,
      ∃ total : Fin 3 → Fin (e1FiniteModulus index),
        e1FiniteOptionRootExtends (givenRoot index) total ∧
        (constraint index = .common →
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val = .allEqual) ∧
        (constraint index = .noncommon →
          e1FiniteRootPatternOf
            (total 0).val (total 1).val (total 2).val ≠ .allEqual) ∧
        (∀ pair,
          total (tenMillionFinite23PairLeft pair) =
                total (tenMillionFinite23PairRight pair) →
            globalMixedThreePivotAt pivots hcard
                  (tenMillionFinite23PairLeft pair) %
                e1FiniteModulus index =
              globalMixedThreePivotAt pivots hcard
                  (tenMillionFinite23PairRight pair) %
                e1FiniteModulus index) := by
    intro index
    have hthree : 3 ≤ e1FiniteModulus index := by
      fin_cases index <;> norm_num [e1FiniteModulus]
    cases hconstraint : constraint index with
    | free =>
        obtain ⟨total, hextends, hfaithful⟩ :=
          tenMillionFinite23OptionRoot_exists_all_pairs_faithful_extension
            hthree (givenRoot index)
        refine ⟨total, hextends, ?_, ?_, ?_⟩
        · simp
        · simp
        · intro pair hroots
          obtain ⟨q, hleft, hright⟩ := hfaithful pair hroots
          exact e1FinitePartialRoot_same_implies_pivot_mod
            (baseResidue := baseResidue)
            (hleft := by
              simpa [givenRoot, e1FiniteActualPartialRoots] using hleft)
            (hright := by
              simpa [givenRoot, e1FiniteActualPartialRoots] using hright)
    | common =>
        obtain ⟨total, hextends, hpattern⟩ :=
          e1FiniteOptionRoot_exists_allEqual_extension
            (e1FiniteModulus_pos index) (givenRoot index)
            (hcoherent index hconstraint)
        refine ⟨total, hextends, ?_, ?_, ?_⟩
        · intro _
          exact hpattern
        · simp
        · intro pair _hroots
          obtain ⟨residue, hresidue⟩ :=
            hcommonResidue index hconstraint
          exact (hresidue _).trans (hresidue _).symm
    | noncommon =>
        obtain ⟨total, hextends, hfaithful, hpattern⟩ :=
          tenMillionFinite23OptionRoot_exists_all_pairs_noncommon_extension
            hthree (givenRoot index)
            (hnotCommon index hconstraint)
        refine ⟨total, hextends, ?_, ?_, ?_⟩
        · simp
        · intro _
          exact hpattern
        · intro pair hroots
          obtain ⟨q, hleft, hright⟩ := hfaithful pair hroots
          exact e1FinitePartialRoot_same_implies_pivot_mod
            (baseResidue := baseResidue)
            (hleft := by
              simpa [givenRoot, e1FiniteActualPartialRoots] using hleft)
            (hright := by
              simpa [givenRoot, e1FiniteActualPartialRoots] using hright)
  choose total htotal using hper
  let roots : E1FinitePivotRootFamily := fun i index =>
    total index i
  refine ⟨roots, ?_, ?_, ?_, ?_⟩
  · intro index i q hq
    exact htotal index |>.1 i q hq
  · intro index hconstraint
    simpa [roots, e1FiniteRootPatternAt, e1FiniteRootNat] using
      (htotal index |>.2.1 hconstraint)
  · intro index hconstraint
    simpa [roots, e1FiniteRootPatternAt, e1FiniteRootNat] using
      (htotal index |>.2.2.1 hconstraint)
  · intro pair index hroots
    apply htotal index |>.2.2.2 pair
    simpa [roots] using hroots

#print axioms e1FiniteActual_exists_constrained_all_pairs_root_cover

end Erdos848
