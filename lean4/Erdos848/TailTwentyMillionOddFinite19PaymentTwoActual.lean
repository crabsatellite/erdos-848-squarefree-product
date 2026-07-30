import Erdos848.TailTwentyMillionOddFinite19PrefixBound
import Erdos848.TailTwentyMillionOddFinite19ModNineCover

namespace Erdos848

open TwentyMillion

/-! Actual-set to root-prefix bridge for the odd-two branch. -/

theorem twentyMillionOddTwoFinite19Actual_cards_le_rootPrefixes
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (baseResidue : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q) :
    (twentyMillionOddFinite19ActualAllThreeResidue
        N triple.pivots baseResidue).card ≤
      (twentyMillionOddFinite19RootAllThreePrefix N roots).card ∧
    (twentyMillionOddFinite19ActualTwoOfThreeResidue
        N triple.pivots baseResidue).card ≤
      (twentyMillionOddFinite19RootTwoOfThreePrefix N roots).card := by
  constructor
  · exact
      twentyMillionOddFinite19ActualAllThreeResidue_card_le_rootPrefix
        hBout
        (twentyMillionOddTwo_pivots_subset_residual triple)
        (twentyMillionOddTwo_pivots_odd triple)
        triple.card hextends
  · exact
      twentyMillionOddFinite19ActualTwoOfThreeResidue_card_le_rootPrefix
        hBout
        (twentyMillionOddTwo_pivots_subset_residual triple)
        (twentyMillionOddTwo_pivots_odd triple)
        triple.card hextends

end Erdos848
