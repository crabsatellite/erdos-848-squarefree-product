import Erdos848.TailTenMillionKernelRootCertificate
import Erdos848.TailGlobalMixedEvenSurvivors
import Erdos848.TailFiveMillionHighTransformedCore

namespace Erdos848

/-!
# Generic actual five-twist high-residue bound

Kept in its own module so the two expensive semantic adapters can be checked in
parallel and recovered independently.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTenMillionFiveTwistHighResidue_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {row : TenMillionKernelRootRow} {squareCoset : Bool}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 20_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hrow : row.isTwist = true)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true)
    (hquotient :
      ∀ {p stored parameter : Nat},
        p ^ 2 * stored =
          (pivot * baseResidue + 1) / 5 +
            (5 * pivot) * parameter →
        row.quotientAccepts stored = true)
    (hroots :
      ∀ m,
        (transformedRootResidues m (5 * pivot)
          ((pivot * baseResidue + 1) / 5)).card ≤
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
    (modulus := 5 * pivot)
    (constant := (pivot * baseResidue + 1) / 5)
    (supportLength := (fiveMillionPivotSupport pivot).length)
    (row := row) (squareCoset := squareCoset)
    (normalLookup := normalLookup) (twistLookup := twistLookup)
    (support := (fiveMillionPivotSupport pivot).dropLast)
    hLower (by positivity)
  · intro point hpoint
    exact tenMillionFiveTwistHighPoint_parameter_mem
      hLower hBout hpivotResidual hpoint hrow hconstantFive
        hconstantTwentyFive hcoset hquotient hmask hpUpper
  · exact hpass
  · intro m hm
    exact hroots m

end Erdos848
