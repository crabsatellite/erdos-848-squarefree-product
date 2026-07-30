import Erdos848.TailTwentyMillionOddFinite19PaymentCore
import Erdos848.TailTwentyMillionOddFinite19PrefixBound

namespace Erdos848

/-! Combined root-prefix linear bound for the odd-two branch. -/

theorem twentyMillionOddTwoFinite19RootPrefixes_card_rat_le
    (N : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hp2 :
      twentyMillionOddFinite19RootPatternAt roots 0 = .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .secondThird) :
    ((twentyMillionOddFinite19RootAllThreePrefix N roots).card : Rat) +
        ((twentyMillionOddFinite19RootTwoOfThreePrefix N roots).card : Rat) ≤
      (N / 25 + 1 : Nat) *
        twentyMillionOddTwoFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        twentyMillionOddTwoFinite19EndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  have hallBound :=
    twentyMillionOddFinite19RootAllThreePrefix_card_rat_le
      (N / 25 + 1) roots
  have htwoBound :=
    twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair
      (N / 25 + 1) roots hp2
  calc
    _ ≤ _ := add_le_add hallBound htwoBound
    _ = _ := by
      rw [twentyMillionOddTwoFinite19Density_decomposition,
        twentyMillionOddTwoFinite19Endpoint_decomposition]
      apply twentyMillionOddFinite19_add_three_density_three_endpoint_bounds

end Erdos848
