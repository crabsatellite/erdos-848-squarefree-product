import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0007

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0120BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9142375
      (envelope0120BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0120CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9142375
      (envelope0120CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0120SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9142375 230011 := by
  decide

theorem envelope0120FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0120FibreCounts cell residue ≤
      envelope0120FibreMax cell := by
  decide +revert

theorem envelope0120UnrestrictedRatio :
    ((230011 : Rat) / 9096892) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0120ConcentratedRatio (cell : Fin 9) :
    (((envelope0120BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0120BaseCounts (.evenTwoCell residue) +
        envelope0120CellCounts cell : Nat) : Rat) /
      9096892) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0120BaseCounts, envelope0120CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0120FibreRatio :
    (((envelope0120BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0120BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0120FibreMax cell : Nat) : Rat) /
      9096892) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0120BaseCounts, envelope0120FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0121BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9188086
      (envelope0121BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0121CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9188086
      (envelope0121CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0121SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9188086 231159 := by
  decide

theorem envelope0121FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0121FibreCounts cell residue ≤
      envelope0121FibreMax cell := by
  decide +revert

theorem envelope0121UnrestrictedRatio :
    ((231159 : Rat) / 9142376) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0121ConcentratedRatio (cell : Fin 9) :
    (((envelope0121BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0121BaseCounts (.evenTwoCell residue) +
        envelope0121CellCounts cell : Nat) : Rat) /
      9142376) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0121BaseCounts, envelope0121CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0121FibreRatio :
    (((envelope0121BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0121BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0121FibreMax cell : Nat) : Rat) /
      9142376) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0121BaseCounts, envelope0121FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0122BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9234026
      (envelope0122BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0122CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9234026
      (envelope0122CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0122SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9234026 232307 := by
  decide

theorem envelope0122FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0122FibreCounts cell residue ≤
      envelope0122FibreMax cell := by
  decide +revert

theorem envelope0122UnrestrictedRatio :
    ((232307 : Rat) / 9188087) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0122ConcentratedRatio (cell : Fin 9) :
    (((envelope0122BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0122BaseCounts (.evenTwoCell residue) +
        envelope0122CellCounts cell : Nat) : Rat) /
      9188087) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0122BaseCounts, envelope0122CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0122FibreRatio :
    (((envelope0122BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0122BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0122FibreMax cell : Nat) : Rat) /
      9188087) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0122BaseCounts, envelope0122FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0123BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9280196
      (envelope0123BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0123CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9280196
      (envelope0123CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0123SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9280196 233468 := by
  decide

theorem envelope0123FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0123FibreCounts cell residue ≤
      envelope0123FibreMax cell := by
  decide +revert

theorem envelope0123UnrestrictedRatio :
    ((233468 : Rat) / 9234027) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0123ConcentratedRatio (cell : Fin 9) :
    (((envelope0123BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0123BaseCounts (.evenTwoCell residue) +
        envelope0123CellCounts cell : Nat) : Rat) /
      9234027) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0123BaseCounts, envelope0123CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0123FibreRatio :
    (((envelope0123BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0123BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0123FibreMax cell : Nat) : Rat) /
      9234027) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0123BaseCounts, envelope0123FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0124BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9326596
      (envelope0124BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0124CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9326596
      (envelope0124CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0124SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9326596 234640 := by
  decide

theorem envelope0124FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0124FibreCounts cell residue ≤
      envelope0124FibreMax cell := by
  decide +revert

theorem envelope0124UnrestrictedRatio :
    ((234640 : Rat) / 9280197) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0124ConcentratedRatio (cell : Fin 9) :
    (((envelope0124BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0124BaseCounts (.evenTwoCell residue) +
        envelope0124CellCounts cell : Nat) : Rat) /
      9280197) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0124BaseCounts, envelope0124CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0124FibreRatio :
    (((envelope0124BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0124BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0124FibreMax cell : Nat) : Rat) /
      9280197) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0124BaseCounts, envelope0124FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0125BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9373228
      (envelope0125BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0125CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9373228
      (envelope0125CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0125SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9373228 235809 := by
  decide

theorem envelope0125FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0125FibreCounts cell residue ≤
      envelope0125FibreMax cell := by
  decide +revert

theorem envelope0125UnrestrictedRatio :
    ((235809 : Rat) / 9326597) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0125ConcentratedRatio (cell : Fin 9) :
    (((envelope0125BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0125BaseCounts (.evenTwoCell residue) +
        envelope0125CellCounts cell : Nat) : Rat) /
      9326597) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0125BaseCounts, envelope0125CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0125FibreRatio :
    (((envelope0125BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0125BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0125FibreMax cell : Nat) : Rat) /
      9326597) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0125BaseCounts, envelope0125FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0126BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9420094
      (envelope0126BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0126CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9420094
      (envelope0126CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0126SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9420094 236993 := by
  decide

theorem envelope0126FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0126FibreCounts cell residue ≤
      envelope0126FibreMax cell := by
  decide +revert

theorem envelope0126UnrestrictedRatio :
    ((236993 : Rat) / 9373229) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0126ConcentratedRatio (cell : Fin 9) :
    (((envelope0126BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0126BaseCounts (.evenTwoCell residue) +
        envelope0126CellCounts cell : Nat) : Rat) /
      9373229) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0126BaseCounts, envelope0126CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0126FibreRatio :
    (((envelope0126BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0126BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0126FibreMax cell : Nat) : Rat) /
      9373229) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0126BaseCounts, envelope0126FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0127BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9467194
      (envelope0127BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0127CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9467194
      (envelope0127CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0127SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9467194 238176 := by
  decide

theorem envelope0127FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0127FibreCounts cell residue ≤
      envelope0127FibreMax cell := by
  decide +revert

theorem envelope0127UnrestrictedRatio :
    ((238176 : Rat) / 9420095) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0127ConcentratedRatio (cell : Fin 9) :
    (((envelope0127BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0127BaseCounts (.evenTwoCell residue) +
        envelope0127CellCounts cell : Nat) : Rat) /
      9420095) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0127BaseCounts, envelope0127CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0127FibreRatio :
    (((envelope0127BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0127BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0127FibreMax cell : Nat) : Rat) /
      9420095) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0127BaseCounts, envelope0127FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
