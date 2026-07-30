import Erdos848.TailHybridSmallResidueCountSimple
import Erdos848.TailHybridSmallResidueCountConcentrated0
import Erdos848.TailHybridSmallResidueCountConcentrated1
import Erdos848.TailHybridSmallResidueCountConcentrated2
import Erdos848.TailHybridSmallResidueCountConcentrated3
import Erdos848.TailHybridSmallResidueCountEvenTwo
import Erdos848.TailHybridSmallResidueCountOddPlus
import Erdos848.TailHybridSmallResidueCountOneOddCell

namespace Erdos848

theorem PaperDiagonalSelection.selectionResidues_card
    (selection : PaperDiagonalSelection) :
    selection.selectionResidues.card =
      selection.selectionResidueCount := by
  cases selection with
  | unrestricted =>
      exact smallSelectionResiduesCardUnrestricted
  | concentrated residueClass cell =>
      fin_cases residueClass
      · exact smallSelectionResiduesCardConcentrated0 cell
      · exact smallSelectionResiduesCardConcentrated1 cell
      · exact smallSelectionResiduesCardConcentrated2 cell
      · exact smallSelectionResiduesCardConcentrated3 cell
  | lowTwoAdic =>
      exact smallSelectionResiduesCardLowTwoAdic
  | evenTwoCell cell =>
      exact smallSelectionResiduesCardEvenTwo cell
  | oddUnion =>
      exact smallSelectionResiduesCardOddUnion
  | oddPlusCell parity cell =>
      exact smallSelectionResiduesCardOddPlus parity cell
  | oneOdd parity =>
      exact smallSelectionResiduesCardOneOdd parity
  | oneOddCell parity cell =>
      exact smallSelectionResiduesCardOneOddCell parity cell

end Erdos848
