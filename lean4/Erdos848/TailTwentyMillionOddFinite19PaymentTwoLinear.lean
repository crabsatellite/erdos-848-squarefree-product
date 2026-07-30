import Erdos848.TailTwentyMillionOddFinite19PaymentCore
import Erdos848.TailTwentyMillionOddFinite19PaymentTwoActual
import Erdos848.TailTwentyMillionOddFinite19PaymentTwoRootBound

namespace Erdos848

/-! Actual odd-two residue counts bounded by the combined linear envelope. -/

theorem twentyMillionOddTwoFinite19Actual_card_rat_le_linear
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (baseResidue : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q)
    (hp2 :
      twentyMillionOddFinite19RootPatternAt roots 0 = .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 = .secondThird) :
    ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card ≤
      ((N / 25 + 1 : Nat) : Rat) *
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
  have hcards :=
    twentyMillionOddTwoFinite19Actual_cards_le_rootPrefixes
      hBout triple baseResidue hextends
  have hallActual :=
    twentyMillionOddFinite19_natCast_le_rat hcards.1
  have htwoActual :=
    twentyMillionOddFinite19_natCast_le_rat hcards.2
  exact (add_le_add hallActual htwoActual).trans
    (twentyMillionOddTwoFinite19RootPrefixes_card_rat_le N roots hp2)

end Erdos848
