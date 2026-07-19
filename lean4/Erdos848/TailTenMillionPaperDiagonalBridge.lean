import Erdos848.TailTenMillionCertificateTypes
import Erdos848.TailPaperDiagonalSelectionBridge

namespace Erdos848

/-!
# The compact paper grid supplies the ten-million diagonal interfaces

This module is independent of the generated grid.  It proves that a bound for
the eight computable paper selections has exactly the seven semantic
certificate types already exposed by the ten-million development.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TenMillionPaperDiagonalGridBound : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ selection : PaperDiagonalSelection,
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
          N ≤
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator selection : Rat) /
          1_000_000_000

theorem tenMillionDiagonalCertificates_of_paperGrid
    (hgrid : TenMillionPaperDiagonalGridBound) :
    TenMillionDiagonalCertificates := by
  refine
    { unrestricted := ?_
      concentrated := ?_
      lowTwoAdic := ?_
      e2Cell := ?_
      oddUnion := ?_
      oneOdd := ?_
      oneOddCell := ?_ }
  · intro N hLower hUpper
    have hbound := hgrid N hLower hUpper .unrestricted
    have henvelope :
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
          .unrestricted : Rat) / 1_000_000_000 =
            tenMillionDiagonalUnrestricted := by
      norm_num [PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalUnrestricted]
    have hbound' := hbound.trans_eq henvelope
    simpa [PaperDiagonalSelection.atoms,
      PaperDiagonalSelection.AcceptsAtom] using hbound'
  · intro N hLower hUpper evenClass hevenClass
      modNineCell hmodNineCell
    rcases hevenClass with rfl | rfl
    · let cell : Fin 9 := ⟨modNineCell, hmodNineCell⟩
      have hbound :=
        hgrid N hLower hUpper (.concentrated ⟨0, by decide⟩ cell)
      simpa [tenMillionDiagonalConcentratedSet,
        mem_paperDiagonalConcentratedAtoms_iff, cell,
        PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalConcentrated] using hbound
    · let cell : Fin 9 := ⟨modNineCell, hmodNineCell⟩
      have hbound :=
        hgrid N hLower hUpper (.concentrated ⟨2, by decide⟩ cell)
      simpa [tenMillionDiagonalConcentratedSet,
        mem_paperDiagonalConcentratedAtoms_iff, cell,
        PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalConcentrated] using hbound
  · intro N hLower hUpper
    have hbound := hgrid N hLower hUpper .lowTwoAdic
    have henvelope :
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
          .lowTwoAdic : Rat) / 1_000_000_000 =
            tenMillionDiagonalLowTwoAdic := by
      norm_num [PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalLowTwoAdic]
    have hbound' := hbound.trans_eq henvelope
    simpa [tenMillionDiagonalLowTwoAdicSet,
      mem_paperDiagonalLowTwoAdicAtoms_iff] using hbound'
  · intro N hLower hUpper modNineCell hmodNineCell
    let cell : Fin 9 := ⟨modNineCell, hmodNineCell⟩
    have hbound :=
      hgrid N hLower hUpper (.evenTwoCell cell)
    have henvelope :
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
          (.evenTwoCell cell) : Rat) / 1_000_000_000 =
            tenMillionDiagonalE2Cell := by
      norm_num [PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalE2Cell]
    have hbound' := hbound.trans_eq henvelope
    simpa [tenMillionDiagonalE2CellSet,
      mem_paperDiagonalEvenTwoCellAtoms_iff, cell] using hbound'
  · intro N hLower hUpper
    have hbound := hgrid N hLower hUpper .oddUnion
    have henvelope :
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
          .oddUnion : Rat) / 1_000_000_000 =
            tenMillionDiagonalOddUnion := by
      norm_num [PaperDiagonalRegime.envelopeNumerator,
        tenMillionDiagonalOddUnion]
    have hbound' := hbound.trans_eq henvelope
    simpa [tenMillionDiagonalOddUnionSet,
      mem_paperDiagonalOddUnionAtoms_iff] using hbound'
  · intro N hLower hUpper oddClass hoddClass
    rcases hoddClass with rfl | rfl
    · have hbound := hgrid N hLower hUpper (.oneOdd false)
      have henvelope :
          (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
            (.oneOdd false) : Rat) / 1_000_000_000 =
              tenMillionDiagonalOneOdd := by
        norm_num [PaperDiagonalRegime.envelopeNumerator,
          tenMillionDiagonalOneOdd]
      have hbound' := hbound.trans_eq henvelope
      simpa [tenMillionDiagonalOneOddSet,
        mem_paperDiagonalOneOddAtoms_iff,
        oddModFourClass] using hbound'
    · have hbound := hgrid N hLower hUpper (.oneOdd true)
      have henvelope :
          (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
            (.oneOdd true) : Rat) / 1_000_000_000 =
              tenMillionDiagonalOneOdd := by
        norm_num [PaperDiagonalRegime.envelopeNumerator,
          tenMillionDiagonalOneOdd]
      have hbound' := hbound.trans_eq henvelope
      simpa [tenMillionDiagonalOneOddSet,
        mem_paperDiagonalOneOddAtoms_iff,
        oddModFourClass] using hbound'
  · intro N hLower hUpper oddClass hoddClass
      modNineCell hmodNineCell
    rcases hoddClass with rfl | rfl
    · let cell : Fin 9 := ⟨modNineCell, hmodNineCell⟩
      have hbound :=
        hgrid N hLower hUpper (.oneOddCell false cell)
      have henvelope :
          (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
            (.oneOddCell false cell) : Rat) / 1_000_000_000 =
              tenMillionDiagonalOneOddCell := by
        norm_num [PaperDiagonalRegime.envelopeNumerator,
          tenMillionDiagonalOneOddCell]
      have hbound' := hbound.trans_eq henvelope
      simpa [tenMillionDiagonalOneOddCellSet,
        mem_paperDiagonalOneOddCellAtoms_iff, oddModFourClass,
        cell] using hbound'
    · let cell : Fin 9 := ⟨modNineCell, hmodNineCell⟩
      have hbound :=
        hgrid N hLower hUpper (.oneOddCell true cell)
      have henvelope :
          (PaperDiagonalRegime.tenToTwenty.envelopeNumerator
            (.oneOddCell true cell) : Rat) / 1_000_000_000 =
              tenMillionDiagonalOneOddCell := by
        norm_num [PaperDiagonalRegime.envelopeNumerator,
          tenMillionDiagonalOneOddCell]
      have hbound' := hbound.trans_eq henvelope
      simpa [tenMillionDiagonalOneOddCellSet,
        mem_paperDiagonalOneOddCellAtoms_iff, oddModFourClass,
        cell] using hbound'

#print axioms tenMillionDiagonalCertificates_of_paperGrid

end Erdos848
