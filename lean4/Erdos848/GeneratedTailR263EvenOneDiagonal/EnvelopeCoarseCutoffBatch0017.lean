import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0008

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0136BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9901832
      (envelope0136BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0136CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9901832
      (envelope0136CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0136SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9901832 249110 := by
  decide

theorem envelope0136FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0136FibreCounts cell residue ≤
      envelope0136FibreMax cell := by
  decide +revert

theorem envelope0136UnrestrictedRatio :
    ((249110 : Rat) / 9852571) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0136ConcentratedRatio (cell : Fin 9) :
    (((envelope0136BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0136BaseCounts (.evenTwoCell residue) +
        envelope0136CellCounts cell : Nat) : Rat) /
      9852571) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0136BaseCounts, envelope0136CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0136FibreRatio :
    (((envelope0136BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0136BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0136FibreMax cell : Nat) : Rat) /
      9852571) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0136BaseCounts, envelope0136FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0137BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9951341
      (envelope0137BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0137CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9951341
      (envelope0137CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0137SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9951341 250359 := by
  decide

theorem envelope0137FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0137FibreCounts cell residue ≤
      envelope0137FibreMax cell := by
  decide +revert

theorem envelope0137UnrestrictedRatio :
    ((250359 : Rat) / 9901833) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0137ConcentratedRatio (cell : Fin 9) :
    (((envelope0137BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0137BaseCounts (.evenTwoCell residue) +
        envelope0137CellCounts cell : Nat) : Rat) /
      9901833) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0137BaseCounts, envelope0137CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0137FibreRatio :
    (((envelope0137BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0137BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0137FibreMax cell : Nat) : Rat) /
      9901833) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0137BaseCounts, envelope0137FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0138BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9999999
      (envelope0138BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0138CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9999999
      (envelope0138CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0138SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9999999 251583 := by
  decide

theorem envelope0138FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0138FibreCounts cell residue ≤
      envelope0138FibreMax cell := by
  decide +revert

theorem envelope0138UnrestrictedRatio :
    ((251583 : Rat) / 9951342) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0138ConcentratedRatio (cell : Fin 9) :
    (((envelope0138BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0138BaseCounts (.evenTwoCell residue) +
        envelope0138CellCounts cell : Nat) : Rat) /
      9951342) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0138BaseCounts, envelope0138CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0138FibreRatio :
    (((envelope0138BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0138BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0138FibreMax cell : Nat) : Rat) /
      9951342) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0138BaseCounts, envelope0138FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
