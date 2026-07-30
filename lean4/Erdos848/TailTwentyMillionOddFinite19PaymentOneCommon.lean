import Erdos848.TailTwentyMillionOddFinite19PaymentOneRatio
import Erdos848.TailTwentyMillionOddFinite19Certificate
import Erdos848.TailTwentyMillionOddFinite19ModNineCover
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem twentyMillionOddOneFinite19ActualResidue_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hcommon : triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      29_459 / 1_000_000 := by
  have hresidue :=
    (twentyMillionOddOne_commonModNine_iff_residue triple).1 hcommon
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_commonNine_root_cover
      (baseResidue := baseResidue) hresidue
  have hp2 := twentyMillionOddOneActual_primeTwoPattern
    triple baseResidue hextends
  have hcert :
      0 ≤ twentyMillionOddOneFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) ∧
        twentyMillionOddOneFinite19DensityRat
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 25 +
          (twentyMillionOddOneFinite19DensityRat
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
              (twentyMillionOddFinite19RootPatternAt roots 6)) /
            20_000_000 ≤
          (29_459 : Rat) / 1_000_000 := by
    simpa only [hp3] using
      (twentyMillionOddOneFinite19Common_certificate
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6))
  exact twentyMillionOddOneFinite19ActualResidue_ratio_le_of_certificate
    hLower hBout triple baseResidue 29_459 hextends hp2 hcert

end Erdos848
