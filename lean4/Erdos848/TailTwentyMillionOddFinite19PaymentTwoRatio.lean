import Erdos848.TailTwentyMillionOddFinite19PaymentCore
import Erdos848.TailTwentyMillionOddFinite19PrefixBound
import Erdos848.TailTwentyMillionOddFinite19Certificate
import Erdos848.TailTwentyMillionOddFinite19ModNineCover
import Erdos848.TailTwentyMillionOddFinite19PaymentTwoActual
import Erdos848.TailTwentyMillionOddFinite19PaymentTwoRootBound
import Erdos848.TailTwentyMillionOddFinite19PaymentTwoLinear

namespace Erdos848

open TwentyMillion

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le_of_certificate
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (baseResidue target : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q)
    (hp2 :
      twentyMillionOddFinite19RootPatternAt roots 0 = .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .secondThird)
    (hcert :
      0 ≤ twentyMillionOddTwoFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) ∧
        twentyMillionOddTwoFinite19DensityRat
            (twentyMillionOddFinite19RootPatternAt roots 0)
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 25 +
          (twentyMillionOddTwoFinite19DensityRat
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
              (twentyMillionOddFinite19RootPatternAt roots 6)) /
            20_000_000 ≤
          (target : Rat) / 1_000_000) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      (target : Rat) / 1_000_000 := by
  have hraw :=
    twentyMillionOddTwoFinite19Actual_card_rat_le_linear
      hBout triple baseResidue hextends hp2
  have hendpoint :
      0 ≤ twentyMillionOddTwoFinite19EndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) := by
    unfold twentyMillionOddTwoFinite19EndpointRat
    exact twentyMillionOddFinite19_natCast_nonneg_rat _
  exact (twentyMillionOddFinite19RatPrefix_ratio_le
    (N := N)
    (count :=
      ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card)
    (density :=
      twentyMillionOddTwoFinite19DensityRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6))
    (endpoint :=
      twentyMillionOddTwoFinite19EndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6))
    hLower hcert.1 hendpoint hraw).trans hcert.2

/-
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
  have hnoncommon :
      ¬ ∃ residue : Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt triple.pivots triple.card i %
            twentyMillionOddFinite19Modulus 1 = residue.val := by
    intro hresidue
    exact hnonconstant
      ((twentyMillionOddTwo_commonModNine_iff_residue triple).2 hresidue)
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
      (baseResidue := baseResidue) hnoncommon
  have hp2 := twentyMillionOddTwoActual_primeTwoPattern
    triple baseResidue hextends
  exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_of_certificate
    hLower hBout triple baseResidue 19_420 hextends hp2
      (twentyMillionOddTwoFinite19Generic_certificate
        _ _ _ _ _ _ _ hp2 hp3)

theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hcommon : triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      20_878 / 1_000_000 := by
  have hresidue :=
    (twentyMillionOddTwo_commonModNine_iff_residue triple).1 hcommon
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_commonNine_root_cover
      (baseResidue := baseResidue) hresidue
  have hp2 := twentyMillionOddTwoActual_primeTwoPattern
    triple baseResidue hextends
  exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_of_certificate
    hLower hBout triple baseResidue 20_878 hextends hp2
      (twentyMillionOddTwoFinite19Common_certificate _ _ _ _ _ _ hp2)
-/

end Erdos848
