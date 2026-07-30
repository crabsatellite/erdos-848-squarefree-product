import Erdos848.GeneratedTailTwentyMillionOddFinite19.Certificate
import Erdos848.TailTwentyMillionOddFinite19Rational

namespace Erdos848

/-! Public rational endpoints of the kernel-checked cutoff-19 certificate. -/

theorem twentyMillionOddTwoFinite19Generic_certificate
    (p2 p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird)
    (hp3 : p3 ≠ .allEqual) :
    0 ≤ twentyMillionOddTwoFinite19DensityRat
        p2 p3 p7 p11 p13 p17 p19 ∧
      twentyMillionOddTwoFinite19DensityRat
          p2 p3 p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddTwoFinite19DensityRat
            p2 p3 p7 p11 p13 p17 p19 +
          twentyMillionOddTwoFinite19EndpointRat
            p2 p3 p7 p11 p13 p17 p19) / 20_000_000 ≤
        19_420 / 1_000_000 := by
  exact twentyMillionOddTwoFinite19Certificate_rat 19_420
    p2 p3 p7 p11 p13 p17 p19
    (GeneratedTailTwentyMillionOddFinite19.oddTwo_generic_all
      p2 p3 p7 p11 p13 p17 p19 hp2 hp3)

theorem twentyMillionOddTwoFinite19Common_certificate
    (p2 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird) :
    0 ≤ twentyMillionOddTwoFinite19DensityRat
        p2 .allEqual p7 p11 p13 p17 p19 ∧
      twentyMillionOddTwoFinite19DensityRat
          p2 .allEqual p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddTwoFinite19DensityRat
            p2 .allEqual p7 p11 p13 p17 p19 +
          twentyMillionOddTwoFinite19EndpointRat
            p2 .allEqual p7 p11 p13 p17 p19) / 20_000_000 ≤
        20_878 / 1_000_000 := by
  exact twentyMillionOddTwoFinite19Certificate_rat 20_878
    p2 .allEqual p7 p11 p13 p17 p19
    (GeneratedTailTwentyMillionOddFinite19.oddTwo_common_all
      p2 p7 p11 p13 p17 p19 hp2)

theorem twentyMillionOddOneFinite19Generic_certificate
    (p3 p7 p11 p13 p17 p19 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    0 ≤ twentyMillionOddOneFinite19DensityRat
        p3 p7 p11 p13 p17 p19 ∧
      twentyMillionOddOneFinite19DensityRat
          p3 p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddOneFinite19DensityRat
            p3 p7 p11 p13 p17 p19 +
          twentyMillionOddOneFinite19EndpointRat
            p3 p7 p11 p13 p17 p19) / 20_000_000 ≤
        26_643 / 1_000_000 := by
  exact twentyMillionOddOneFinite19Certificate_rat 26_643
    p3 p7 p11 p13 p17 p19
    (GeneratedTailTwentyMillionOddFinite19.oddOne_generic_all
      p3 p7 p11 p13 p17 p19 hp3)

theorem twentyMillionOddOneFinite19Common_certificate
    (p7 p11 p13 p17 p19 : E1FiniteRootPattern) :
    0 ≤ twentyMillionOddOneFinite19DensityRat
        .allEqual p7 p11 p13 p17 p19 ∧
      twentyMillionOddOneFinite19DensityRat
          .allEqual p7 p11 p13 p17 p19 / 25 +
        (twentyMillionOddOneFinite19DensityRat
            .allEqual p7 p11 p13 p17 p19 +
          twentyMillionOddOneFinite19EndpointRat
            .allEqual p7 p11 p13 p17 p19) / 20_000_000 ≤
        29_459 / 1_000_000 := by
  exact twentyMillionOddOneFinite19Certificate_rat 29_459
    .allEqual p7 p11 p13 p17 p19
    (GeneratedTailTwentyMillionOddFinite19.oddOne_common_all
      p7 p11 p13 p17 p19)

end Erdos848
