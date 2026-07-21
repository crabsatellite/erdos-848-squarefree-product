import Erdos848.TailTenMillionKernelRootCertificate
import Erdos848.TailGlobalMixedEvenSurvivors
import Erdos848.TailFiveMillionHighTransformedCore

namespace Erdos848

/-!
# Generic actual normal high-residue bound

Kept in its own module so the two expensive semantic adapters can be checked in
parallel and recovered independently.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTenMillionNormalHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {row : TenMillionKernelRootRow} {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
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
      tenMillionKernelRootHighCoefficient row
        (fiveMillionPivotSupport pivot).length N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  obtain ⟨normalLookup, twistLookup, hmask, hpass, hpUpper⟩ :=
    actualTenMillionRootPrefix_certified
      hUpper hBout hpivotResidual
  apply tenMillionHighResidue_card_cast_le_coefficient
    (N := N) (pivot := pivot) (baseResidue := baseResidue)
    (modulus := 25 * pivot) (constant := pivot * baseResidue + 1)
    (supportLength := (fiveMillionPivotSupport pivot).length)
    (row := row) (squareCoset := squareCoset)
    (normalLookup := normalLookup) (twistLookup := twistLookup)
    (support := (fiveMillionPivotSupport pivot).dropLast)
    hLower (by positivity)
  · intro point hpoint
    exact tenMillionNormalHighPoint_parameter_mem
      hLower hBout hpivotResidual hpoint hrow hconstantFive hcoset
        hquotient hmask
  · exact hpass
  · intro m hm
    exact hroots m

end Erdos848
