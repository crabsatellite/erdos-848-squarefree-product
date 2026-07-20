import Erdos848.TailTwentyMillionOddFinite19ActualRoots

namespace Erdos848

open TwentyMillion

/-!
# Literal mod-four and mod-nine patterns for odd close triples

The two-class close triple has exactly one of the three pair coincidences at
prime two.  The one-class close triple has a common prime-two root.  Prime
three is constrained directly by the paper's `CommonModNine` predicate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem twentyMillionOddFinite19Actual_primeTwo_eq
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue pivots hcard index i = some q →
        roots i index = q)
    (i : Fin 3) :
    roots i 0 =
      twentyMillionOddFinite19PrimeTwoRoot baseResidue
        (globalMixedThreePivotAt pivots hcard i) := by
  apply hextends 0 i
  simp [twentyMillionOddFinite19ActualPartialRoots]

private theorem twentyMillionOddOnePivot_mod_four
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (i : Fin 3) :
    globalMixedThreePivotAt triple.pivots triple.card i % 4 =
      if parity then 3 else 1 := by
  have hpivot :=
    triple.subsetPart
      (globalMixedThreePivotAt_mem triple.pivots triple.card i)
  cases parity
  · exact fiveMillionValuationPart_oddOne hpivot
  · exact fiveMillionValuationPart_oddThree hpivot

theorem twentyMillionOddOneActual_primeTwoPattern
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (baseResidue : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q) :
    twentyMillionOddFinite19RootPatternAt roots 0 =
      .allEqual := by
  apply
    (e1FiniteRootPatternOf_eq_allEqual_iff
      (twentyMillionOddFinite19RootNat roots 0 0)
      (twentyMillionOddFinite19RootNat roots 1 0)
      (twentyMillionOddFinite19RootNat roots 2 0)).2
  have hroot (i : Fin 3) :=
    twentyMillionOddFinite19Actual_primeTwo_eq hextends i
  have hsame (i j : Fin 3) :
      roots i 0 = roots j 0 := by
    rw [hroot i, hroot j]
    apply (twentyMillionOddFinite19PrimeTwoRoot_eq_iff).2
    rw [twentyMillionOddOnePivot_mod_four triple i,
      twentyMillionOddOnePivot_mod_four triple j]
  exact ⟨congrArg Fin.val (hsame 0 1),
    congrArg Fin.val (hsame 0 2)⟩

private theorem twentyMillionOddTwo_left_right_mod_four
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    triple.left % 4 = triple.right % 4 := by
  cases parity
  · exact (fiveMillionValuationPart_oddOne triple.leftMem).trans
      (fiveMillionValuationPart_oddOne triple.rightMem).symm
  · exact (fiveMillionValuationPart_oddThree triple.leftMem).trans
      (fiveMillionValuationPart_oddThree triple.rightMem).symm

private theorem twentyMillionOddTwo_left_third_mod_four_ne
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    triple.left % 4 ≠ triple.third % 4 := by
  cases parity
  · have hleft := fiveMillionValuationPart_oddOne triple.leftMem
    have hthird :=
      fiveMillionValuationPart_oddThree triple.thirdMem
    omega
  · have hleft := fiveMillionValuationPart_oddThree triple.leftMem
    have hthird :=
      fiveMillionValuationPart_oddOne triple.thirdMem
    omega

theorem twentyMillionOddTwoActual_primeTwoPattern
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (baseResidue : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q) :
    twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstSecond ∨
      twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstThird ∨
      twentyMillionOddFinite19RootPatternAt roots 0 =
          .secondThird := by
  have hleftMem : triple.left ∈ triple.pivots := by
    simp [triple.pivots_eq]
  have hrightMem : triple.right ∈ triple.pivots := by
    simp [triple.pivots_eq]
  have hthirdMem : triple.third ∈ triple.pivots := by
    simp [triple.pivots_eq]
  obtain ⟨leftIndex, hleftIndex⟩ :=
    globalMixedThreePivotAt_surjective_on
      triple.pivots triple.card hleftMem
  obtain ⟨rightIndex, hrightIndex⟩ :=
    globalMixedThreePivotAt_surjective_on
      triple.pivots triple.card hrightMem
  obtain ⟨thirdIndex, hthirdIndex⟩ :=
    globalMixedThreePivotAt_surjective_on
      triple.pivots triple.card hthirdMem
  have hleftRightIndex : leftIndex ≠ rightIndex := by
    intro hindex
    subst rightIndex
    have hpivot := hleftIndex.symm.trans hrightIndex
    exact (Nat.ne_of_lt triple.left_lt_right) hpivot
  have hleftThirdIndex : leftIndex ≠ thirdIndex := by
    intro hindex
    subst thirdIndex
    have hpivot := hleftIndex.symm.trans hthirdIndex
    have hclasses :
        paperOddValuationClass parity ≠
          paperOddValuationClass (oppositeOddParity parity) := by
      cases parity <;> decide
    have hdisjoint :=
      fiveMillionValuationPart_disjoint N B hclasses
    exact (Finset.disjoint_left.mp hdisjoint)
      triple.leftMem (hpivot ▸ triple.thirdMem)
  have hroot (i : Fin 3) :=
    twentyMillionOddFinite19Actual_primeTwo_eq hextends i
  have hsame :
      roots leftIndex 0 = roots rightIndex 0 := by
    rw [hroot leftIndex, hroot rightIndex]
    apply (twentyMillionOddFinite19PrimeTwoRoot_eq_iff).2
    simpa [hleftIndex, hrightIndex] using
      twentyMillionOddTwo_left_right_mod_four triple
  have hdifferent :
      roots leftIndex 0 ≠ roots thirdIndex 0 := by
    rw [hroot leftIndex, hroot thirdIndex]
    intro hroots
    have hmod :=
      (twentyMillionOddFinite19PrimeTwoRoot_eq_iff).1 hroots
    apply twentyMillionOddTwo_left_third_mod_four_ne triple
    simpa [hleftIndex, hthirdIndex] using hmod
  have hnotAllEqual :
      twentyMillionOddFinite19RootPatternAt roots 0 ≠
        .allEqual := by
    intro hpattern
    have hall :=
      (e1FiniteRootPatternOf_eq_allEqual_iff
        (twentyMillionOddFinite19RootNat roots 0 0)
        (twentyMillionOddFinite19RootNat roots 1 0)
        (twentyMillionOddFinite19RootNat roots 2 0)).1 hpattern
    have hzeroOne : roots 0 0 = roots 1 0 :=
      Fin.ext hall.1
    have hzeroTwo : roots 0 0 = roots 2 0 :=
      Fin.ext hall.2
    have hsameAll (i j : Fin 3) : roots i 0 = roots j 0 := by
      fin_cases i <;> fin_cases j <;> simp_all
    exact hdifferent (hsameAll leftIndex thirdIndex)
  have hnotAllDistinct :
      twentyMillionOddFinite19RootPatternAt roots 0 ≠
        .allDistinct := by
    intro hpattern
    fin_cases leftIndex <;> fin_cases rightIndex <;>
      simp_all [twentyMillionOddFinite19RootPatternAt,
        twentyMillionOddFinite19RootNat,
        e1FiniteRootPatternOf]
  cases hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 <;>
    simp_all

theorem twentyMillionOddTwo_commonModNine_iff_residue
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    triple.CommonModNine ↔
      ∃ residue :
          Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt triple.pivots triple.card i %
            twentyMillionOddFinite19Modulus 1 = residue.val := by
  constructor
  · rintro ⟨cell, hcell⟩
    refine ⟨⟨cell.val, by
      simpa [twentyMillionOddFinite19Modulus] using cell.isLt⟩,
      ?_⟩
    intro i
    have hi := hcell
      (globalMixedThreePivotAt triple.pivots triple.card i)
      (globalMixedThreePivotAt_mem
        triple.pivots triple.card i)
    have hval := congrArg Fin.val hi
    simpa [paperModNineCell_val,
      twentyMillionOddFinite19Modulus] using hval
  · rintro ⟨residue, hresidue⟩
    let cell : Fin 9 := ⟨residue.val, by
      simpa [twentyMillionOddFinite19Modulus] using residue.isLt⟩
    refine ⟨cell, ?_⟩
    intro pivot hpivot
    obtain ⟨i, hi⟩ :=
      globalMixedThreePivotAt_surjective_on
        triple.pivots triple.card hpivot
    apply Fin.ext
    simpa [cell, hi, paperModNineCell_val,
      twentyMillionOddFinite19Modulus] using hresidue i

theorem twentyMillionOddOne_commonModNine_iff_residue
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    triple.CommonModNine ↔
      ∃ residue :
          Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt triple.pivots triple.card i %
            twentyMillionOddFinite19Modulus 1 = residue.val := by
  constructor
  · rintro ⟨cell, hcell⟩
    refine ⟨⟨cell.val, by
      simpa [twentyMillionOddFinite19Modulus] using cell.isLt⟩,
      ?_⟩
    intro i
    have hi := hcell
      (globalMixedThreePivotAt triple.pivots triple.card i)
      (globalMixedThreePivotAt_mem
        triple.pivots triple.card i)
    have hval := congrArg Fin.val hi
    simpa [paperModNineCell_val,
      twentyMillionOddFinite19Modulus] using hval
  · rintro ⟨residue, hresidue⟩
    let cell : Fin 9 := ⟨residue.val, by
      simpa [twentyMillionOddFinite19Modulus] using residue.isLt⟩
    refine ⟨cell, ?_⟩
    intro pivot hpivot
    obtain ⟨i, hi⟩ :=
      globalMixedThreePivotAt_surjective_on
        triple.pivots triple.card hpivot
    apply Fin.ext
    simpa [cell, hi, paperModNineCell_val,
      twentyMillionOddFinite19Modulus] using hresidue i

#print axioms twentyMillionOddOneActual_primeTwoPattern
#print axioms twentyMillionOddTwoActual_primeTwoPattern
#print axioms twentyMillionOddTwo_commonModNine_iff_residue
#print axioms twentyMillionOddOne_commonModNine_iff_residue

end Erdos848
