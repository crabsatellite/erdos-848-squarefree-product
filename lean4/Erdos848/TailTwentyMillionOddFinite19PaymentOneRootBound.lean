import Erdos848.TailTwentyMillionOddFinite19PaymentCore
import Erdos848.TailTwentyMillionOddFinite19PrefixBound

namespace Erdos848

/-! Combined root-prefix linear bound for the odd-one branch. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem twentyMillionOddOneFinite19RootPrefixes_card_rat_le
    (N : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hp2 : twentyMillionOddFinite19RootPatternAt roots 0 = .allEqual) :
    ((twentyMillionOddFinite19RootAllThreePrefix N roots).card : Rat) +
        ((twentyMillionOddFinite19RootTwoOfThreePrefix N roots).card : Rat) ≤
      (N / 25 + 1 : Nat) *
        twentyMillionOddOneFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        twentyMillionOddOneFinite19EndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  have hallBound :=
    twentyMillionOddFinite19RootAllThreePrefix_card_rat_le
      (N / 25 + 1) roots
  rw [hp2] at hallBound
  have htwoBound :=
    twentyMillionOddFinite19RootTwoPrefix_card_rat_le_allEqual
      (N / 25 + 1) roots hp2
  calc
    _ ≤ _ := add_le_add hallBound htwoBound
    _ = _ := by
      rw [twentyMillionOddOneFinite19Density_decomposition,
        twentyMillionOddOneFinite19Endpoint_decomposition]
      exact twentyMillionOddFinite19_add_two_density_two_endpoint_bounds
        ((N / 25 + 1 : Nat) : Rat)
        (twentyMillionOddFinite19AllThreeDensityRat
          .allEqual
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6))
        (1 / 4)
        (3 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) / 4))
        (twentyMillionOddFinite19AllThreeEndpointRat
          .allEqual
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6))
        5
        (3 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6))

end Erdos848
