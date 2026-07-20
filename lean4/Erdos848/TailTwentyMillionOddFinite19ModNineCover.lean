import Erdos848.TailTwentyMillionOddFinite19ActualCount

namespace Erdos848

open TwentyMillion

/-! Constrained total-root covers for the mod-nine generic/common split. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

def twentyMillionOddFinite19NoncommonNineConstraint :
    TwentyMillionOddFinite19Index → E1FinitePatternConstraint :=
  ![.free, .noncommon, .free, .free, .free, .free, .free]

def twentyMillionOddFinite19CommonNineConstraint :
    TwentyMillionOddFinite19Index → E1FinitePatternConstraint :=
  ![.free, .common, .free, .free, .free, .free, .free]

theorem twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hnoncommon :
      ¬ ∃ residue : Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            twentyMillionOddFinite19Modulus 1 = residue.val) :
    ∃ roots : TwentyMillionOddFinite19PivotRootFamily,
      (∀ index i q,
        twentyMillionOddFinite19ActualPartialRoots
            baseResidue pivots hcard index i = some q →
          roots i index = q) ∧
      twentyMillionOddFinite19RootPatternAt roots 1 ≠ .allEqual := by
  obtain ⟨roots, hextends, _hcommon, hnoncommonRoot⟩ :=
    twentyMillionOddFinite19Actual_exists_constrained_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      twentyMillionOddFinite19NoncommonNineConstraint
      (by
        intro index hindex
        fin_cases index <;>
          simp [twentyMillionOddFinite19NoncommonNineConstraint] at hindex)
      (by
        intro index hindex
        fin_cases index <;>
          simp [twentyMillionOddFinite19NoncommonNineConstraint] at hindex
        exact hnoncommon)
  exact ⟨roots, hextends, hnoncommonRoot 1 (by
    simp [twentyMillionOddFinite19NoncommonNineConstraint])⟩

theorem twentyMillionOddFinite19Actual_exists_commonNine_root_cover
    {baseResidue : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hcommon :
      ∃ residue : Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            twentyMillionOddFinite19Modulus 1 = residue.val) :
    ∃ roots : TwentyMillionOddFinite19PivotRootFamily,
      (∀ index i q,
        twentyMillionOddFinite19ActualPartialRoots
            baseResidue pivots hcard index i = some q →
          roots i index = q) ∧
      twentyMillionOddFinite19RootPatternAt roots 1 = .allEqual := by
  obtain ⟨roots, hextends, hcommonRoot, _hnoncommon⟩ :=
    twentyMillionOddFinite19Actual_exists_constrained_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      twentyMillionOddFinite19CommonNineConstraint
      (by
        intro index hindex
        fin_cases index <;>
          simp [twentyMillionOddFinite19CommonNineConstraint] at hindex
        exact hcommon)
      (by
        intro index hindex
        fin_cases index <;>
          simp [twentyMillionOddFinite19CommonNineConstraint] at hindex)
  exact ⟨roots, hextends, hcommonRoot 1 (by
    simp [twentyMillionOddFinite19CommonNineConstraint])⟩

theorem twentyMillionPaperOddPart_mod_four
    {N pivot : Nat} {B : Finset Nat} {parity : Bool}
    (hpivot :
      pivot ∈ fiveMillionValuationPart N B
        (paperOddValuationClass parity)) :
    pivot % 4 = 1 ∨ pivot % 4 = 3 := by
  cases parity
  · left
    exact fiveMillionValuationPart_oddOne hpivot
  · right
    exact fiveMillionValuationPart_oddThree hpivot

theorem twentyMillionOddTwo_pivots_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass parity) triple.leftMem
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass parity) triple.rightMem
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass (oppositeOddParity parity))
        triple.thirdMem

theorem twentyMillionOddTwo_pivots_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3 := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · exact twentyMillionPaperOddPart_mod_four triple.leftMem
  · exact twentyMillionPaperOddPart_mod_four triple.rightMem
  · exact twentyMillionPaperOddPart_mod_four triple.thirdMem

theorem twentyMillionOddOne_pivots_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B (paperOddValuationClass parity)
      (triple.subsetPart hpivot)

theorem twentyMillionOddOne_pivots_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3 := by
  intro pivot hpivot
  exact twentyMillionPaperOddPart_mod_four
    (triple.subsetPart hpivot)

#print axioms twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
#print axioms twentyMillionOddFinite19Actual_exists_commonNine_root_cover
#print axioms twentyMillionOddTwo_pivots_subset_residual
#print axioms twentyMillionOddOne_pivots_subset_residual

end Erdos848
