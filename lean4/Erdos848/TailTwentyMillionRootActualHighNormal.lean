import Erdos848.TailTwentyMillionRootCertificate
import Erdos848.TailGlobalMixedEvenSurvivors
import Erdos848.TailFiveMillionHighTransformedCore

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTwentyMillionNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {row : TwentyMillionRootRow} {squareCoset : Bool}
    (hLower : 20_000_000 ≤ N)
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hrow : row.isTwist = false)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true)
    (hquotient :
      ∀ {p m parameter : Nat},
        p ^ 2 * m =
          (pivot * baseResidue + 1) + (25 * pivot) * parameter →
        row.quotientAccepts m = true)
    (hroots :
      ∀ m,
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
        row.rootFactor *
          2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / row.split) baseResidue).card : Rat) ≤
      twentyMillionRootHighCoefficient row
        (fiveMillionPivotSupport pivot).length N := by
  obtain ⟨normalLookup, twistLookup, hmask, hpass, hpUpper⟩ :=
    actualTwentyMillionRootPrefix_certified
      (N := N) (B := B) (pivot := pivot)
      hUpper hBout hpivotResidual
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  refine twentyMillionHighResidue_card_cast_le_coefficient
    (N := N) (pivot := pivot) (baseResidue := baseResidue)
    (modulus := 25 * pivot) (constant := pivot * baseResidue + 1)
    (supportLength := (fiveMillionPivotSupport pivot).length)
    (row := row) (squareCoset := squareCoset)
    (normalLookup := normalLookup) (twistLookup := twistLookup)
    (support := (fiveMillionPivotSupport pivot).dropLast)
    hLower (Nat.mul_pos (by norm_num) hpivotPos) ?_ hpass ?_
  · intro point hpoint
    exact twentyMillionNormalHighPoint_parameter_mem
      hLower hBout hpivotResidual hpoint hrow hconstantFive hcoset
        hquotient hmask
  · intro m hm
    exact hroots m

end Erdos848
