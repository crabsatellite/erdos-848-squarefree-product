import Erdos848.TailTwentyMillionBranchAllocation
import Erdos848.TailPaperValuationChargeBridge

namespace Erdos848

/-! Charge lemmas shared by the `20M` and `40M--200M` residual consumers. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

@[simp] theorem twentyMillion_paperModNineCell_eq
    (x : Nat) :
    TwentyMillion.paperModNineCell x = paperModNineCell x := by
  apply Fin.ext
  simp only [TwentyMillion.paperModNineCell_val, paperModNineCell_val]

@[simp] theorem twentyMillion_paperOddValuationClass_eq
    (parity : Bool) :
    TwentyMillion.paperOddValuationClass parity =
      paperOddValuationClass parity := by
  cases parity <;> rfl

@[simp] theorem twentyMillion_oppositeOddParity_eq
    (parity : Bool) :
    TwentyMillion.oppositeOddParity parity =
      oppositeOddParity parity := by
  cases parity <;> rfl

theorem paperValuationOutsideCellCharge_eq_empty_of_constant
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cell : Fin 9}
    (hconstant :
      ∀ pivot ∈ fiveMillionValuationPart N B cls,
        TwentyMillion.paperModNineCell pivot = cell) :
    paperValuationOutsideCellCharge N B cls cell = ∅ := by
  apply Finset.Subset.antisymm
  · intro pivot hpivot
    have hparts := Finset.mem_filter.mp hpivot
    exact False.elim
      (hparts.2 (by simpa using hconstant pivot hparts.1))
  · exact Finset.empty_subset _

theorem paperEvenValuationCharge_card_le_three_gap
    {N : Nat} {B : Finset Nat} {gap : Nat}
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤ gap)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤ gap)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤ gap) :
    (paperEvenValuationCharge N B).card ≤ 3 * gap := by
  have hcard :
      (paperEvenValuationCharge N B).card =
        (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card +
            (fiveMillionValuationPart N B .evenThree).card := by
    rw [← paperSelectionCharge_oddUnion_eq_evenValuationCharge,
      paperSelectionCharge_oddUnion_card]
  omega

theorem paperOneOddValuationCharge_card_le_three_gap
    {N : Nat} {B : Finset Nat} {parity : Bool} {gap : Nat}
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤ gap)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤ gap)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤ gap)
    (hOtherEmpty :
      (fiveMillionValuationPart N B
        (paperOddValuationClass
          (oppositeOddParity parity))).card = 0) :
    (paperOneOddValuationCharge N B parity).card ≤ 3 * gap := by
  have hsum := fiveMillionValuationParts_card_explicit N B
  have hcharge :=
    paperSelectionCharge_oneOdd_card_add_selected N B parity
  rw [paperSelectionCharge_oneOdd_eq_valuationCharge] at hcharge
  cases parity
  · simp only [paperOddValuationClass, oppositeOddParity] at hOtherEmpty hcharge ⊢
    omega
  · simp only [paperOddValuationClass, oppositeOddParity] at hOtherEmpty hcharge ⊢
    omega

#print axioms paperValuationOutsideCellCharge_eq_empty_of_constant
#print axioms paperEvenValuationCharge_card_le_three_gap
#print axioms paperOneOddValuationCharge_card_le_three_gap

end Erdos848
