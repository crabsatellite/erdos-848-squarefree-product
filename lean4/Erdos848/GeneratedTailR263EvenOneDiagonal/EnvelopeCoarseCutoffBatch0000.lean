import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0000

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0000BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5024999
      (envelope0000BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0000CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5024999
      (envelope0000CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0000SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5024999 126442 := by
  decide

theorem envelope0000FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0000FibreCounts cell residue ≤
      envelope0000FibreMax cell := by
  decide +revert

theorem envelope0000UnrestrictedRatio :
    ((126442 : Rat) / 5000000) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0000ConcentratedRatio (cell : Fin 9) :
    (((envelope0000BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0000BaseCounts (.evenTwoCell residue) +
        envelope0000CellCounts cell : Nat) : Rat) /
      5000000) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0000BaseCounts, envelope0000CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0000FibreRatio :
    (((envelope0000BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0000BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0000FibreMax cell : Nat) : Rat) /
      5000000) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0000BaseCounts, envelope0000FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0001BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5050124
      (envelope0001BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0001CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5050124
      (envelope0001CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0001SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5050124 127070 := by
  decide

theorem envelope0001FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0001FibreCounts cell residue ≤
      envelope0001FibreMax cell := by
  decide +revert

theorem envelope0001UnrestrictedRatio :
    ((127070 : Rat) / 5025000) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0001ConcentratedRatio (cell : Fin 9) :
    (((envelope0001BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0001BaseCounts (.evenTwoCell residue) +
        envelope0001CellCounts cell : Nat) : Rat) /
      5025000) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0001BaseCounts, envelope0001CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0001FibreRatio :
    (((envelope0001BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0001BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0001FibreMax cell : Nat) : Rat) /
      5025000) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0001BaseCounts, envelope0001FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0002BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5075374
      (envelope0002BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0002CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5075374
      (envelope0002CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0002SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5075374 127698 := by
  decide

theorem envelope0002FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0002FibreCounts cell residue ≤
      envelope0002FibreMax cell := by
  decide +revert

theorem envelope0002UnrestrictedRatio :
    ((127698 : Rat) / 5050125) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0002ConcentratedRatio (cell : Fin 9) :
    (((envelope0002BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0002BaseCounts (.evenTwoCell residue) +
        envelope0002CellCounts cell : Nat) : Rat) /
      5050125) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0002BaseCounts, envelope0002CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0002FibreRatio :
    (((envelope0002BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0002BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0002FibreMax cell : Nat) : Rat) /
      5050125) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0002BaseCounts, envelope0002FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0003BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5100750
      (envelope0003BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0003CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5100750
      (envelope0003CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0003SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5100750 128346 := by
  decide

theorem envelope0003FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0003FibreCounts cell residue ≤
      envelope0003FibreMax cell := by
  decide +revert

theorem envelope0003UnrestrictedRatio :
    ((128346 : Rat) / 5075375) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0003ConcentratedRatio (cell : Fin 9) :
    (((envelope0003BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0003BaseCounts (.evenTwoCell residue) +
        envelope0003CellCounts cell : Nat) : Rat) /
      5075375) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0003BaseCounts, envelope0003CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0003FibreRatio :
    (((envelope0003BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0003BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0003FibreMax cell : Nat) : Rat) /
      5075375) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0003BaseCounts, envelope0003FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0004BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5126253
      (envelope0004BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0004CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5126253
      (envelope0004CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0004SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5126253 128982 := by
  decide

theorem envelope0004FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0004FibreCounts cell residue ≤
      envelope0004FibreMax cell := by
  decide +revert

theorem envelope0004UnrestrictedRatio :
    ((128982 : Rat) / 5100751) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0004ConcentratedRatio (cell : Fin 9) :
    (((envelope0004BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0004BaseCounts (.evenTwoCell residue) +
        envelope0004CellCounts cell : Nat) : Rat) /
      5100751) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0004BaseCounts, envelope0004CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0004FibreRatio :
    (((envelope0004BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0004BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0004FibreMax cell : Nat) : Rat) /
      5100751) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0004BaseCounts, envelope0004FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0005BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5151884
      (envelope0005BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0005CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5151884
      (envelope0005CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0005SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5151884 129624 := by
  decide

theorem envelope0005FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0005FibreCounts cell residue ≤
      envelope0005FibreMax cell := by
  decide +revert

theorem envelope0005UnrestrictedRatio :
    ((129624 : Rat) / 5126254) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0005ConcentratedRatio (cell : Fin 9) :
    (((envelope0005BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0005BaseCounts (.evenTwoCell residue) +
        envelope0005CellCounts cell : Nat) : Rat) /
      5126254) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0005BaseCounts, envelope0005CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0005FibreRatio :
    (((envelope0005BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0005BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0005FibreMax cell : Nat) : Rat) /
      5126254) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0005BaseCounts, envelope0005FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0006BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5177643
      (envelope0006BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0006CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5177643
      (envelope0006CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0006SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5177643 130288 := by
  decide

theorem envelope0006FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0006FibreCounts cell residue ≤
      envelope0006FibreMax cell := by
  decide +revert

theorem envelope0006UnrestrictedRatio :
    ((130288 : Rat) / 5151885) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0006ConcentratedRatio (cell : Fin 9) :
    (((envelope0006BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0006BaseCounts (.evenTwoCell residue) +
        envelope0006CellCounts cell : Nat) : Rat) /
      5151885) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0006BaseCounts, envelope0006CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0006FibreRatio :
    (((envelope0006BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0006BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0006FibreMax cell : Nat) : Rat) /
      5151885) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0006BaseCounts, envelope0006FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0007BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5203531
      (envelope0007BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0007CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5203531
      (envelope0007CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0007SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5203531 130936 := by
  decide

theorem envelope0007FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0007FibreCounts cell residue ≤
      envelope0007FibreMax cell := by
  decide +revert

theorem envelope0007UnrestrictedRatio :
    ((130936 : Rat) / 5177644) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0007ConcentratedRatio (cell : Fin 9) :
    (((envelope0007BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0007BaseCounts (.evenTwoCell residue) +
        envelope0007CellCounts cell : Nat) : Rat) /
      5177644) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0007BaseCounts, envelope0007CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0007FibreRatio :
    (((envelope0007BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0007BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0007FibreMax cell : Nat) : Rat) /
      5177644) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0007BaseCounts, envelope0007FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
