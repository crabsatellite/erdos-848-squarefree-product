import Erdos848.TailTwentyMillionOddFinite19PaymentOneRatio
import Erdos848.TailTwentyMillionOddFinite19Certificate
import Erdos848.TailTwentyMillionOddFinite19ModNineCover
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem twentyMillionOddOneFinite19ActualResidue_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      26_643 / 1_000_000 := by
  have hnoncommon :=
    mt (twentyMillionOddOne_commonModNine_iff_residue triple).2
      hnonconstant
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
      (baseResidue := baseResidue) hnoncommon
  have hp2 := twentyMillionOddOneActual_primeTwoPattern
    triple baseResidue hextends
  exact twentyMillionOddOneFinite19ActualResidue_ratio_le_of_certificate
    hLower hBout triple baseResidue 26_643 hextends hp2
      (twentyMillionOddOneFinite19Generic_certificate
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6)
        hp3)

end Erdos848
