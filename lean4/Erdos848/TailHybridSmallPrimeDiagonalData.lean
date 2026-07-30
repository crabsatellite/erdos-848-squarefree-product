import Erdos848.TailHybridDiagonalChecker
import Erdos848.TailPaperDiagonalSelectionBridge
import Erdos848.TailCRTCounting

namespace Erdos848

/-!
# Data for the periodic small-prime diagonal payment

The finite cardinality checks live in separate modules so that each group is
kernel-checked and cached independently.  This file contains only the shared
definitions.
-/

def PaperDiagonalSelection.smallPeriod :
    PaperDiagonalSelection → Nat
  | .unrestricted => 25
  | .concentrated _ _ => 900
  | .lowTwoAdic => 200
  | .evenTwoCell _ => 1800
  | .oddUnion => 100
  | .oddPlusCell _ _ => 900
  | .oneOdd _ => 100
  | .oneOddCell _ _ => 900

def PaperDiagonalSelection.smallResidues
    (selection : PaperDiagonalSelection) : Finset Nat :=
  (Finset.range selection.smallPeriod).filter fun residue =>
    OutsideLowBase residue ∧
      truncatedDiagonalAtomOf residue ∈ selection.atoms

def PaperDiagonalSelection.smallResidueCount :
    PaperDiagonalSelection → Nat
  | .unrestricted => 23
  | .concentrated _ _ => 644
  | .lowTwoAdic => 115
  | .evenTwoCell _ => 1058
  | .oddUnion => 46
  | .oddPlusCell _ _ => 230
  | .oneOdd _ => 23
  | .oneOddCell _ _ => 23

def paperSmallDiagonalPrimes : Finset Nat :=
  (Finset.range 1001).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

def paperSmallPrimePayment
    (upper : Nat) (selection : PaperDiagonalSelection) : Nat :=
  2 * selection.smallResidueCount *
    ∑ p ∈ paperSmallDiagonalPrimes,
      ((upper + 1) / (p ^ 2 * selection.smallPeriod) + 1)

end Erdos848
