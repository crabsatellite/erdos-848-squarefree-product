import Erdos848.TailGlobalMixedThreePivotJointHighLow
import Erdos848.TailRefinedTransformedRootCounting
import Erdos848.TailGlobalMixedHighParameter

namespace Erdos848

/-!
# Actual joint high-low points as refined transformed parameters

For a high-prime event on `highPivot`, retain one literal `q^2` event on the
other pivot instead of projecting to the one-form high set.  On each sharp
base residue, all actual parameters enter one residue slice modulo `q^2` of
the already certified normal or five-twist transformed parameter set.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def globalMixedJointHighLowPointsAtResidue
    (N highPivot lowPivot q baseResidue : ℕ) : Finset ℕ := by
  classical
  exact (twoBaseHighTailSquarePointsAtResidue
    N highPivot (N / 55) baseResidue).filter fun point =>
      q ^ 2 ∣ lowPivot * point + 1

/-- The actual normal high-low row enters one `q^2` residue slice of the
expanded transformed problem. -/
theorem globalMixedNormalJointHighLowResidue_card_le_parameterSlice
    {N : ℕ} {B : Finset ℕ}
    {highPivot lowPivot q baseResidue : ℕ} {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hhighResidual : highPivot ∈ hallResidual N B)
    (hq : Nat.Prime q) (hqLarge : 7 < q)
    (hconstantFive : ¬ 5 ∣ highPivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (highPivot * baseResidue + 1) = true) :
    ∃ offset < q ^ 2,
      (globalMixedJointHighLowPointsAtResidue
        N highPivot lowPivot q baseResidue).card ≤
        (transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (25 * highPivot)
          (highPivot * baseResidue + 1)
          (globalMixedNormalSurvivorFinset
            (globalMixedActualMaskedSupport highPivot) squareCoset)
          (q ^ 2) offset).card := by
  classical
  let points := globalMixedJointHighLowPointsAtResidue
    N highPivot lowPivot q baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (25 * highPivot) (highPivot * baseResidue + 1)
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport highPivot) squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).2
  have hevent : ∀ point ∈ points,
      q ^ 2 ∣ lowPivot * point + 1 := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have htarget : ∀ point ∈ points, point / 25 ∈ target := by
    intro point hpoint
    exact globalMixedNormalHighPoint_parameter_mem
      hLower hBout hhighResidual (Finset.mem_filter.mp hpoint).1
        hconstantFive hcoset
  obtain ⟨offset, hoffset, hcard⟩ :=
    squareEventPoints_card_le_parameterResidueSlice
      hq (by omega : q ≠ 5) points target hresidue hevent htarget
  refine ⟨offset, hoffset, ?_⟩
  simpa [points, target, transformedParameterSetAtResidue] using hcard

/-- The actual five-twist high-low row enters one `q^2` residue slice of the
expanded transformed problem. -/
theorem globalMixedFiveTwistJointHighLowResidue_card_le_parameterSlice
    {N : ℕ} {B : Finset ℕ}
    {highPivot lowPivot q baseResidue : ℕ} {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hhighResidual : highPivot ∈ hallResidual N B)
    (hq : Nat.Prime q) (hqLarge : 7 < q)
    (hconstantFive : 5 ∣ highPivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ highPivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((highPivot * baseResidue + 1) / 5) = true) :
    ∃ offset < q ^ 2,
      (globalMixedJointHighLowPointsAtResidue
        N highPivot lowPivot q baseResidue).card ≤
        (transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (5 * highPivot)
          ((highPivot * baseResidue + 1) / 5)
          (globalMixedTwistSurvivorFinset
            (globalMixedActualMaskedSupport highPivot) squareCoset)
          (q ^ 2) offset).card := by
  classical
  let points := globalMixedJointHighLowPointsAtResidue
    N highPivot lowPivot q baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (5 * highPivot) ((highPivot * baseResidue + 1) / 5)
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport highPivot) squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).2
  have hevent : ∀ point ∈ points,
      q ^ 2 ∣ lowPivot * point + 1 := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have htarget : ∀ point ∈ points, point / 25 ∈ target := by
    intro point hpoint
    exact globalMixedFiveTwistHighPoint_parameter_mem
      hLower hBout hhighResidual (Finset.mem_filter.mp hpoint).1
        hconstantFive hconstantTwentyFive hcoset
  obtain ⟨offset, hoffset, hcard⟩ :=
    squareEventPoints_card_le_parameterResidueSlice
      hq (by omega : q ≠ 5) points target hresidue hevent htarget
  refine ⟨offset, hoffset, ?_⟩
  simpa [points, target, transformedParameterSetAtResidue] using hcard

#print axioms globalMixedNormalJointHighLowResidue_card_le_parameterSlice
#print axioms globalMixedFiveTwistJointHighLowResidue_card_le_parameterSlice

end Erdos848
