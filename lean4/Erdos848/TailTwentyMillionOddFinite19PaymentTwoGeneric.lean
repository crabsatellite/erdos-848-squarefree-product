import Erdos848.TailTwentyMillionOddFinite19PaymentTwoRatio
import Erdos848.TailTwentyMillionOddFinite19Certificate
import Erdos848.TailTwentyMillionOddFinite19ModNineCover
import Erdos848.TailTwentyMillionOddFinite19PrefixBound
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      19_420 / 1_000_000 := by
  have hnoncommon :=
    mt (twentyMillionOddTwo_commonModNine_iff_residue triple).2
      hnonconstant
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
      (baseResidue := baseResidue) hnoncommon
  have hp2 := twentyMillionOddTwoActual_primeTwoPattern
    triple baseResidue hextends
  exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_of_certificate
    hLower hBout triple baseResidue 19_420 hextends hp2
      (twentyMillionOddTwoFinite19Generic_certificate
        _ _ _ _ _ _ _ hp2 hp3)

end Erdos848
