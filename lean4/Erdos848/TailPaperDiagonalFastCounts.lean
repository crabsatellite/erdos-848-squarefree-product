import Erdos848.TailPaperDiagonalFastCountsSimple
import Erdos848.TailPaperDiagonalFastCountsConcentrated0
import Erdos848.TailPaperDiagonalFastCountsConcentrated1
import Erdos848.TailPaperDiagonalFastCountsConcentrated2
import Erdos848.TailPaperDiagonalFastCountsConcentrated3
import Erdos848.TailPaperDiagonalFastCountsEvenTwo
import Erdos848.TailPaperDiagonalFastCountsOddPlusFalse
import Erdos848.TailPaperDiagonalFastCountsOddPlusTrue
import Erdos848.TailPaperDiagonalFastCountsOneOddCellFalse
import Erdos848.TailPaperDiagonalFastCountsOneOddCellTrue

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem TruncatedDiagonalAtomCounts.fastSum_eq_sum
    (counts : TruncatedDiagonalAtomCounts)
    (selection : PaperDiagonalSelection) :
    counts.fastSum selection = counts.sum selection := by
  cases selection with
  | unrestricted =>
      exact counts.fastSum_unrestricted_eq_sum
  | concentrated residueClass cell =>
      fin_cases residueClass
      · exact counts.fastSum_concentrated0_eq_sum cell
      · exact counts.fastSum_concentrated1_eq_sum cell
      · exact counts.fastSum_concentrated2_eq_sum cell
      · exact counts.fastSum_concentrated3_eq_sum cell
  | lowTwoAdic =>
      exact counts.fastSum_lowTwoAdic_eq_sum
  | evenTwoCell cell =>
      exact counts.fastSum_evenTwoCell_eq_sum cell
  | oddUnion =>
      exact counts.fastSum_oddUnion_eq_sum
  | oddPlusCell parity cell =>
      fin_cases parity
      · exact counts.fastSum_oddPlusTrue_eq_sum cell
      · exact counts.fastSum_oddPlusFalse_eq_sum cell
  | oneOdd parity =>
      exact counts.fastSum_oneOdd_eq_sum parity
  | oneOddCell parity cell =>
      fin_cases parity
      · exact counts.fastSum_oneOddCellTrue_eq_sum cell
      · exact counts.fastSum_oneOddCellFalse_eq_sum cell

#print axioms TruncatedDiagonalAtomCounts.fastSum_eq_sum

end Erdos848
