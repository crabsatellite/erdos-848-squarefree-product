import Erdos848.TailTwentyMillionOddFinite19Decomposition

namespace Erdos848

/-! Conversion of cutoff-19 integer cross inequalities to rational bounds. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem twentyMillionOddFinite19Cross_to_rat
    (target : Nat) (numerator : Int) (endpoint : Nat)
    (hnonneg : 0 ≤ numerator)
    (hcross :
      1_000_000 *
          (numerator * 20_000_000 +
            25 * (numerator +
              endpoint * twentyMillionOddFinite19FullModulus)) ≤
        target * twentyMillionOddFinite19FullModulus *
          25 * 20_000_000) :
    0 ≤ (numerator : Rat) /
        twentyMillionOddFinite19FullModulus ∧
      ((numerator : Rat) /
          twentyMillionOddFinite19FullModulus) / 25 +
        (((numerator : Rat) /
            twentyMillionOddFinite19FullModulus) + endpoint) /
          20_000_000 ≤
        (target : Rat) / 1_000_000 := by
  have hnonnegRat : (0 : Rat) ≤ numerator := by
    exact_mod_cast hnonneg
  have hcrossRat :
      (1_000_000 : Rat) *
          ((numerator : Rat) * 20_000_000 +
            25 * ((numerator : Rat) +
              endpoint * twentyMillionOddFinite19FullModulus)) ≤
        target * twentyMillionOddFinite19FullModulus *
          25 * 20_000_000 := by
    exact_mod_cast hcross
  constructor
  · positivity
  · norm_num [twentyMillionOddFinite19FullModulus] at hcrossRat ⊢
    linarith

theorem twentyMillionOddTwoFinite19Certificate_rat
    (target : Nat)
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (hcert : twentyMillionOddTwoFinite19CrossInequality
      target p2 p3 p7 p11 p13 p17 p19) :
    0 ≤ twentyMillionOddTwoFinite19DensityRat
        p2 p3 p7 p11 p13 p17 p19 ∧
      twentyMillionOddTwoFinite19DensityRat
          p2 p3 p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddTwoFinite19DensityRat
            p2 p3 p7 p11 p13 p17 p19 +
          twentyMillionOddTwoFinite19EndpointRat
            p2 p3 p7 p11 p13 p17 p19) / 20_000_000 ≤
        (target : Rat) / 1_000_000 := by
  unfold twentyMillionOddTwoFinite19CrossInequality at hcert
  simpa only [twentyMillionOddTwoFinite19DensityRat,
    twentyMillionOddTwoFinite19EndpointRat] using
      twentyMillionOddFinite19Cross_to_rat
        target
        (twentyMillionOddTwoFinite19Numerator
          p2 p3 p7 p11 p13 p17 p19)
        (twentyMillionOddTwoFinite19Endpoint
          p2 p3 p7 p11 p13 p17 p19)
        hcert.1 hcert.2

theorem twentyMillionOddOneFinite19Certificate_rat
    (target : Nat)
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (hcert : twentyMillionOddOneFinite19CrossInequality
      target p3 p7 p11 p13 p17 p19) :
    0 ≤ twentyMillionOddOneFinite19DensityRat
        p3 p7 p11 p13 p17 p19 ∧
      twentyMillionOddOneFinite19DensityRat
          p3 p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddOneFinite19DensityRat
            p3 p7 p11 p13 p17 p19 +
          twentyMillionOddOneFinite19EndpointRat
            p3 p7 p11 p13 p17 p19) / 20_000_000 ≤
        (target : Rat) / 1_000_000 := by
  unfold twentyMillionOddOneFinite19CrossInequality at hcert
  simpa only [twentyMillionOddOneFinite19DensityRat,
    twentyMillionOddOneFinite19EndpointRat] using
      twentyMillionOddFinite19Cross_to_rat
        target
        (twentyMillionOddOneFinite19Numerator
          p3 p7 p11 p13 p17 p19)
        (twentyMillionOddOneFinite19Endpoint
          p3 p7 p11 p13 p17 p19)
        hcert.1 hcert.2

end Erdos848
