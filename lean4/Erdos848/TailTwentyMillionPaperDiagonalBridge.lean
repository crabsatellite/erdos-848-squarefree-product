import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailPaperDiagonalSelectionBridge

namespace Erdos848

/-!
# The compact paper grid supplies the twenty-million diagonal interfaces

The arithmetic file records eight class maxima, but a class such as
`concentrated` or `oddPlusCell` still has residue, parity, and cell parameters.
This module keeps those parameters explicit.  Consequently a later Hall
branch proof can consume these certificates without treating a class maximum
as an unexplained constant.

The module is independent of the generated grid.  It only converts one
uniform bound for all computable paper selections into a structured semantic
interface for the interval `20_000_000 ≤ N < 40_000_000`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TwentyMillionPaperDiagonalGridBound : Prop :=
  ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
    ∀ selection : PaperDiagonalSelection,
      paperDiagonalRatio N selection ≤
        (PaperDiagonalRegime.twentyToForty.envelopeNumerator
          selection : Rat) / 1_000_000_000

structure TwentyMillionPaperDiagonalCertificates : Prop where
  unrestricted :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      paperDiagonalRatio N .unrestricted ≤
        twentyMillionDiagonalUnrestricted
  concentrated :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      ∀ residueClass : Fin 4, ∀ cell : Fin 9,
        paperDiagonalRatio N (.concentrated residueClass cell) ≤
          twentyMillionDiagonalConcentrated
  lowTwoAdic :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      paperDiagonalRatio N .lowTwoAdic ≤
        twentyMillionDiagonalLowTwoAdic
  evenTwoCell :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      ∀ cell : Fin 9,
        paperDiagonalRatio N (.evenTwoCell cell) ≤
          twentyMillionDiagonalEvenTwoCell
  oddUnion :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      paperDiagonalRatio N .oddUnion ≤
        twentyMillionDiagonalOddUnion
  oddPlusCell :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      ∀ parity : Bool, ∀ cell : Fin 9,
        paperDiagonalRatio N (.oddPlusCell parity cell) ≤
          twentyMillionDiagonalOddPlusCell
  oneOdd :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      ∀ parity : Bool,
        paperDiagonalRatio N (.oneOdd parity) ≤
          twentyMillionDiagonalOneOdd
  oneOddCell :
    ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
      ∀ parity : Bool, ∀ cell : Fin 9,
        paperDiagonalRatio N (.oneOddCell parity cell) ≤
          twentyMillionDiagonalOneOddCell

theorem twentyMillionPaperDiagonalCertificates_of_grid
    (hgrid : TwentyMillionPaperDiagonalGridBound) :
    TwentyMillionPaperDiagonalCertificates := by
  refine
    { unrestricted := ?_
      concentrated := ?_
      lowTwoAdic := ?_
      evenTwoCell := ?_
      oddUnion := ?_
      oddPlusCell := ?_
      oneOdd := ?_
      oneOddCell := ?_ }
  · intro N hLower hUpper
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalUnrestricted] using
        hgrid N hLower hUpper .unrestricted
  · intro N hLower hUpper residueClass cell
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalConcentrated] using
        hgrid N hLower hUpper (.concentrated residueClass cell)
  · intro N hLower hUpper
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalLowTwoAdic] using
        hgrid N hLower hUpper .lowTwoAdic
  · intro N hLower hUpper cell
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalEvenTwoCell] using
        hgrid N hLower hUpper (.evenTwoCell cell)
  · intro N hLower hUpper
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalOddUnion] using
        hgrid N hLower hUpper .oddUnion
  · intro N hLower hUpper parity cell
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalOddPlusCell] using
        hgrid N hLower hUpper (.oddPlusCell parity cell)
  · intro N hLower hUpper parity
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalOneOdd] using
        hgrid N hLower hUpper (.oneOdd parity)
  · intro N hLower hUpper parity cell
    simpa [PaperDiagonalRegime.envelopeNumerator,
      twentyMillionDiagonalOneOddCell] using
        hgrid N hLower hUpper (.oneOddCell parity cell)

#print axioms twentyMillionPaperDiagonalCertificates_of_grid

end Erdos848
