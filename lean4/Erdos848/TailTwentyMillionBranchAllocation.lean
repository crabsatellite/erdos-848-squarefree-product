import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailTwentyMillionPivotAllocation

namespace Erdos848

/-!
# Literal allocation into the ten arithmetic rows

This module assigns the semantic pivot-and-charge evidence to the ten row
names used by `twentyMillionBranchTotal`.  It does not yet claim any of the
finite, transformed-root, square-tail, or diagonal estimates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TwentyMillionBranchApplies
    (N : Nat) (B : Finset Nat) : TwentyMillionBranch → Prop
  | .evenOneGeneric =>
      ∃ triple : TwentyMillionCloseTriple N B .evenOne,
        ¬ triple.CommonModNine
  | .evenOneCommonThree =>
      ∃ cell : Fin 9, ∃ triple : TwentyMillionCloseTriple N B .evenOne,
        triple.CommonModNine ∧
          ∀ pivot ∈ fiveMillionValuationPart N B .evenOne,
            paperModNineCell pivot = cell
  | .evenTwoGeneric =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ triple : TwentyMillionCloseTriple N B .evenTwo,
          ¬ triple.CommonModNine
  | .evenTwoCommonThree =>
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ cell : Fin 9, ∃ triple : TwentyMillionCloseTriple N B .evenTwo,
          triple.CommonModNine ∧
            ∀ pivot ∈ fiveMillionValuationPart N B .evenTwo,
              paperModNineCell pivot = cell
  | .evenThreeGeneric =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ triple : TwentyMillionCloseTriple N B .evenThree,
          ¬ triple.CommonModNine
  | .evenThreeCommonThree =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ cell : Fin 9, ∃ triple : TwentyMillionCloseTriple N B .evenThree,
          triple.CommonModNine ∧
            ∀ pivot ∈ fiveMillionValuationPart N B .evenThree,
              paperModNineCell pivot = cell
  | .oddTwoGeneric =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ parity : Bool,
          ∃ triple : TwentyMillionOddTwoCloseTriple N B parity,
            ¬ triple.CommonModNine
  | .oddTwoCommonThree =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ parity : Bool,
          ∃ cell : Fin 9,
            ∃ triple : TwentyMillionOddTwoCloseTriple N B parity,
              triple.CommonModNine ∧
                ∀ pivot ∈ fiveMillionValuationPart N B
                    (paperOddValuationClass
                      (oppositeOddParity parity)),
                  paperModNineCell pivot = cell
  | .oddOneGeneric =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ parity : Bool,
          (fiveMillionValuationPart N B
            (paperOddValuationClass
              (oppositeOddParity parity))).card = 0 ∧
          ∃ triple : TwentyMillionOddOneCloseTriple N B parity,
            ¬ triple.CommonModNine
  | .oddOneCommonThree =>
      (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N ∧
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N ∧
        ∃ parity : Bool,
          (fiveMillionValuationPart N B
            (paperOddValuationClass
              (oppositeOddParity parity))).card = 0 ∧
          ∃ cell : Fin 9,
            ∃ triple : TwentyMillionOddOneCloseTriple N B parity,
              triple.CommonModNine ∧
                ∀ pivot ∈ fiveMillionValuationPart N B
                    (paperOddValuationClass parity),
                  paperModNineCell pivot = cell

theorem TwentyMillionTerminalAllocation.exists_branch
    {N : Nat} {B : Finset Nat}
    (allocation : TwentyMillionTerminalAllocation N B) :
    ∃ branch : TwentyMillionBranch,
      TwentyMillionBranchApplies N B branch := by
  cases allocation with
  | evenOneGeneric triple nonconstant =>
      exact ⟨.evenOneGeneric, triple, nonconstant⟩
  | evenOneCommon cell triple classConstant =>
      have hcommon : triple.CommonModNine := by
        exact ⟨cell, fun pivot hpivot =>
          classConstant pivot (triple.subsetPart hpivot)⟩
      exact ⟨.evenOneCommonThree, cell, triple, hcommon, classConstant⟩
  | evenTwoGeneric evenOneCharge triple nonconstant =>
      exact ⟨.evenTwoGeneric, evenOneCharge, triple, nonconstant⟩
  | evenTwoCommon evenOneCharge cell triple classConstant =>
      have hcommon : triple.CommonModNine := by
        exact ⟨cell, fun pivot hpivot =>
          classConstant pivot (triple.subsetPart hpivot)⟩
      exact ⟨.evenTwoCommonThree, evenOneCharge, cell, triple,
        hcommon, classConstant⟩
  | evenThreeGeneric evenOneCharge evenTwoCharge triple nonconstant =>
      exact ⟨.evenThreeGeneric, evenOneCharge, evenTwoCharge,
        triple, nonconstant⟩
  | evenThreeCommon evenOneCharge evenTwoCharge cell triple classConstant =>
      have hcommon : triple.CommonModNine := by
        exact ⟨cell, fun pivot hpivot =>
          classConstant pivot (triple.subsetPart hpivot)⟩
      exact ⟨.evenThreeCommonThree, evenOneCharge, evenTwoCharge,
        cell, triple, hcommon, classConstant⟩
  | oddTwoGeneric evenOneCharge evenTwoCharge evenThreeCharge parity triple
      nonconstant =>
      exact ⟨.oddTwoGeneric, evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, triple, nonconstant⟩
  | oddTwoCommon evenOneCharge evenTwoCharge evenThreeCharge parity cell
      triple common classConstant =>
      exact ⟨.oddTwoCommonThree, evenOneCharge, evenTwoCharge,
        evenThreeCharge, parity, cell, triple, common, classConstant⟩
  | oddOneGeneric evenOneCharge evenTwoCharge evenThreeCharge parity
      otherEmpty triple nonconstant =>
      exact ⟨.oddOneGeneric, evenOneCharge, evenTwoCharge, evenThreeCharge,
        parity, otherEmpty, triple, nonconstant⟩
  | oddOneCommon evenOneCharge evenTwoCharge evenThreeCharge parity
      otherEmpty cell triple common classConstant =>
      exact ⟨.oddOneCommonThree, evenOneCharge, evenTwoCharge,
        evenThreeCharge, parity, otherEmpty, cell, triple, common,
        classConstant⟩

theorem exists_twentyMillionBranchApplies
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hDegree : TwentyMillionDegreeResidualLower N B) :
    ∃ branch : TwentyMillionBranch,
      TwentyMillionBranchApplies N B branch :=
  (twentyMillionTerminalAllocation hLower hBout hDegree).exists_branch

#print axioms TwentyMillionTerminalAllocation.exists_branch
#print axioms exists_twentyMillionBranchApplies

end Erdos848
