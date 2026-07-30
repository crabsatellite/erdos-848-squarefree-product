import Erdos848.TailFortyMillionTenBranchArithmetic
import Erdos848.TailTwentyMillionBranchAllocation
import Erdos848.TailTwentyMillionPivotDefs
import Erdos848.TailR263EvenOneFinite23HallPayment
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-! Lightweight terminal data shared by the `40M--200M` branch builders. -/

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fortyMillionKernelBranchCutoff : TwentyMillionBranch → Nat
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => 23
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => 19

structure FortyMillionKernelTerminalCertificate
    (block : FortyMillionTenBranchBlock)
    (N : Nat) (B : Finset Nat) : Type where
  branch : TwentyMillionBranch
  branchApplies : TwentyMillionBranchApplies N B branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 3
  pivotsCompletion : pivots ⊆ hallCompletion N B
  finiteBound :
    fiveMillionR263BaseMixedHalfPayment N B pivots
        (fortyMillionKernelBranchCutoff branch) / N ≤
      fortyMillionTenBranchFinitePayment branch
  tailBound :
    hallBaseTailSquarePayment N B pivots
        (fortyMillionKernelBranchCutoff branch) 2 / N ≤
      fortyMillionTenBranchTailPayment block branch

theorem fortyMillionValuationPart_subset_completion
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass} :
    fiveMillionValuationPart N B cls ⊆ hallCompletion N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp
    (fiveMillionValuationPart_subset_residual N B cls hpivot)).1

theorem fortyMillionCloseTriple_subset_residual
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B cls (triple.subsetPart hpivot)

theorem fortyMillionOddTwoTriple_subset_residual
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

theorem fortyMillionOddOneTriple_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B (paperOddValuationClass parity)
      (triple.subsetPart hpivot)

private theorem odd_of_mem_fortyMillionOddValuationPart
    {N pivot : Nat} {B : Finset Nat} {parity : Bool}
    (hpivot :
      pivot ∈ fiveMillionValuationPart N B
        (paperOddValuationClass parity)) :
    Odd pivot := by
  cases parity
  · exact fiveMillionValuationPart_odd (Or.inl rfl) hpivot
  · exact fiveMillionValuationPart_odd (Or.inr rfl) hpivot

theorem fortyMillionOddTwoTriple_all_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots, Odd pivot := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · exact odd_of_mem_fortyMillionOddValuationPart triple.leftMem
  · exact odd_of_mem_fortyMillionOddValuationPart triple.rightMem
  · exact odd_of_mem_fortyMillionOddValuationPart triple.thirdMem

theorem fortyMillionOddOneTriple_all_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots, Odd pivot := by
  intro pivot hpivot
  exact odd_of_mem_fortyMillionOddValuationPart
    (triple.subsetPart hpivot)

end Erdos848
