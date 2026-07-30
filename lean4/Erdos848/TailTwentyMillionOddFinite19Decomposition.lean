import Erdos848.TailTwentyMillionOddFinite19Bounds

namespace Erdos848

/-! Rational decomposition of the cutoff-19 odd finite payments. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def twentyMillionOddTwoFinite19DensityRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  (twentyMillionOddTwoFinite19Numerator
    p2 p3 p7 p11 p13 p17 p19 : Rat) /
      twentyMillionOddFinite19FullModulus

def twentyMillionOddTwoFinite19EndpointRat
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  twentyMillionOddTwoFinite19Endpoint
    p2 p3 p7 p11 p13 p17 p19

noncomputable def twentyMillionOddOneFinite19DensityRat
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  (twentyMillionOddOneFinite19Numerator
    p3 p7 p11 p13 p17 p19 : Rat) /
      twentyMillionOddFinite19FullModulus

def twentyMillionOddOneFinite19EndpointRat
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) : Rat :=
  twentyMillionOddOneFinite19Endpoint
    p3 p7 p11 p13 p17 p19

private theorem density_four_two_algebra
    (allThree odd pair twoOfThree : Rat) (hodd : odd ≠ 0) :
    (allThree + odd + pair + 2 * twoOfThree) / (4 * odd) =
      allThree / (4 * odd) + 1 / 4 +
        (pair / odd) / 4 + 2 * ((twoOfThree / odd) / 4) := by
  field_simp [hodd]

private theorem density_four_one_algebra
    (allThree odd twoOfThree : Rat) (hodd : odd ≠ 0) :
    (allThree + odd + 3 * twoOfThree) / (4 * odd) =
      allThree / (4 * odd) + 1 / 4 +
        3 * ((twoOfThree / odd) / 4) := by
  field_simp [hodd]

theorem twentyMillionOddTwoFinite19Density_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddTwoFinite19DensityRat
        p2 p3 p7 p11 p13 p17 p19 =
      twentyMillionOddFinite19AllThreeDensityRat
          p2 p3 p7 p11 p13 p17 p19 +
        (1 : Rat) / 4 +
        twentyMillionOddFinite19PairUnionDensityRat
          p2 p3 p7 p11 p13 p17 p19 / 4 +
        2 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
          p3 p7 p11 p13 p17 p19 / 4) := by
  unfold twentyMillionOddTwoFinite19DensityRat
    twentyMillionOddTwoFinite19Numerator
    twentyMillionOddFinite19AllThreeDensityRat
    twentyMillionOddFinite19PairUnionDensityRat
    twentyMillionOddFinite19OddTwoOfThreeDensityRat
  push_cast
  have hfull :
      (twentyMillionOddFinite19FullModulus : Rat) =
        4 * (twentyMillionOddFinite19OddFullModulus : Rat) := by
    norm_num [twentyMillionOddFinite19FullModulus,
      twentyMillionOddFinite19OddFullModulus]
  rw [hfull]
  exact density_four_two_algebra _ _ _ _ (by
    norm_num [twentyMillionOddFinite19OddFullModulus])

theorem twentyMillionOddTwoFinite19Endpoint_decomposition
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddTwoFinite19EndpointRat
        p2 p3 p7 p11 p13 p17 p19 =
      twentyMillionOddFinite19AllThreeEndpointRat
          p2 p3 p7 p11 p13 p17 p19 +
        5 +
        twentyMillionOddFinite19PairUnionEndpointRat
          p2 p3 p7 p11 p13 p17 p19 +
        2 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          p3 p7 p11 p13 p17 p19 := by
  unfold twentyMillionOddTwoFinite19EndpointRat
    twentyMillionOddTwoFinite19Endpoint
    twentyMillionOddFinite19AllThreeEndpointRat
    twentyMillionOddFinite19PairUnionEndpointRat
    twentyMillionOddFinite19OddTwoOfThreeEndpointRat
  push_cast
  rfl

theorem twentyMillionOddOneFinite19Density_decomposition
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddOneFinite19DensityRat
        p3 p7 p11 p13 p17 p19 =
      twentyMillionOddFinite19AllThreeDensityRat
          .allEqual p3 p7 p11 p13 p17 p19 +
        (1 : Rat) / 4 +
        3 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
          p3 p7 p11 p13 p17 p19 / 4) := by
  unfold twentyMillionOddOneFinite19DensityRat
    twentyMillionOddOneFinite19Numerator
    twentyMillionOddFinite19AllThreeDensityRat
    twentyMillionOddFinite19OddTwoOfThreeDensityRat
  push_cast
  have hfull :
      (twentyMillionOddFinite19FullModulus : Rat) =
        4 * (twentyMillionOddFinite19OddFullModulus : Rat) := by
    norm_num [twentyMillionOddFinite19FullModulus,
      twentyMillionOddFinite19OddFullModulus]
  rw [hfull]
  exact density_four_one_algebra _ _ _ (by
    norm_num [twentyMillionOddFinite19OddFullModulus])

theorem twentyMillionOddOneFinite19Endpoint_decomposition
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    twentyMillionOddOneFinite19EndpointRat
        p3 p7 p11 p13 p17 p19 =
      twentyMillionOddFinite19AllThreeEndpointRat
          .allEqual p3 p7 p11 p13 p17 p19 +
        5 +
        3 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          p3 p7 p11 p13 p17 p19 := by
  unfold twentyMillionOddOneFinite19EndpointRat
    twentyMillionOddOneFinite19Endpoint
    twentyMillionOddFinite19AllThreeEndpointRat
    twentyMillionOddFinite19OddTwoOfThreeEndpointRat
  push_cast
  rfl

end Erdos848
