import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0002

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0032BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5894521
      (envelope0032BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0032CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5894521
      (envelope0032CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0032SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5894521 148320 := by
  decide

theorem envelope0032FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0032FibreCounts cell residue ≤
      envelope0032FibreMax cell := by
  decide +revert

theorem envelope0032UnrestrictedRatio :
    ((148320 : Rat) / 5865197) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0032ConcentratedRatio (cell : Fin 9) :
    (((envelope0032BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0032BaseCounts (.evenTwoCell residue) +
        envelope0032CellCounts cell : Nat) : Rat) /
      5865197) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0032BaseCounts, envelope0032CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0032FibreRatio :
    (((envelope0032BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0032BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0032FibreMax cell : Nat) : Rat) /
      5865197) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0032BaseCounts, envelope0032FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0033BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5923993
      (envelope0033BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0033CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5923993
      (envelope0033CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0033SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5923993 149058 := by
  decide

theorem envelope0033FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0033FibreCounts cell residue ≤
      envelope0033FibreMax cell := by
  decide +revert

theorem envelope0033UnrestrictedRatio :
    ((149058 : Rat) / 5894522) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0033ConcentratedRatio (cell : Fin 9) :
    (((envelope0033BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0033BaseCounts (.evenTwoCell residue) +
        envelope0033CellCounts cell : Nat) : Rat) /
      5894522) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0033BaseCounts, envelope0033CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0033FibreRatio :
    (((envelope0033BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0033BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0033FibreMax cell : Nat) : Rat) /
      5894522) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0033BaseCounts, envelope0033FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0034BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5953612
      (envelope0034BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0034CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5953612
      (envelope0034CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0034SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5953612 149807 := by
  decide

theorem envelope0034FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0034FibreCounts cell residue ≤
      envelope0034FibreMax cell := by
  decide +revert

theorem envelope0034UnrestrictedRatio :
    ((149807 : Rat) / 5923994) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0034ConcentratedRatio (cell : Fin 9) :
    (((envelope0034BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0034BaseCounts (.evenTwoCell residue) +
        envelope0034CellCounts cell : Nat) : Rat) /
      5923994) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0034BaseCounts, envelope0034CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0034FibreRatio :
    (((envelope0034BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0034BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0034FibreMax cell : Nat) : Rat) /
      5923994) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0034BaseCounts, envelope0034FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0035BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5983380
      (envelope0035BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0035CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5983380
      (envelope0035CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0035SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5983380 150558 := by
  decide

theorem envelope0035FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0035FibreCounts cell residue ≤
      envelope0035FibreMax cell := by
  decide +revert

theorem envelope0035UnrestrictedRatio :
    ((150558 : Rat) / 5953613) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0035ConcentratedRatio (cell : Fin 9) :
    (((envelope0035BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0035BaseCounts (.evenTwoCell residue) +
        envelope0035CellCounts cell : Nat) : Rat) /
      5953613) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0035BaseCounts, envelope0035CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0035FibreRatio :
    (((envelope0035BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0035BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0035FibreMax cell : Nat) : Rat) /
      5953613) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0035BaseCounts, envelope0035FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0036BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6013296
      (envelope0036BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0036CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6013296
      (envelope0036CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0036SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6013296 151308 := by
  decide

theorem envelope0036FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0036FibreCounts cell residue ≤
      envelope0036FibreMax cell := by
  decide +revert

theorem envelope0036UnrestrictedRatio :
    ((151308 : Rat) / 5983381) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0036ConcentratedRatio (cell : Fin 9) :
    (((envelope0036BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0036BaseCounts (.evenTwoCell residue) +
        envelope0036CellCounts cell : Nat) : Rat) /
      5983381) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0036BaseCounts, envelope0036CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0036FibreRatio :
    (((envelope0036BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0036BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0036FibreMax cell : Nat) : Rat) /
      5983381) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0036BaseCounts, envelope0036FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0037BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6043362
      (envelope0037BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0037CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6043362
      (envelope0037CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0037SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6043362 152065 := by
  decide

theorem envelope0037FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0037FibreCounts cell residue ≤
      envelope0037FibreMax cell := by
  decide +revert

theorem envelope0037UnrestrictedRatio :
    ((152065 : Rat) / 6013297) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0037ConcentratedRatio (cell : Fin 9) :
    (((envelope0037BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0037BaseCounts (.evenTwoCell residue) +
        envelope0037CellCounts cell : Nat) : Rat) /
      6013297) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0037BaseCounts, envelope0037CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0037FibreRatio :
    (((envelope0037BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0037BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0037FibreMax cell : Nat) : Rat) /
      6013297) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0037BaseCounts, envelope0037FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0038BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6073578
      (envelope0038BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0038CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6073578
      (envelope0038CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0038SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6073578 152825 := by
  decide

theorem envelope0038FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0038FibreCounts cell residue ≤
      envelope0038FibreMax cell := by
  decide +revert

theorem envelope0038UnrestrictedRatio :
    ((152825 : Rat) / 6043363) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0038ConcentratedRatio (cell : Fin 9) :
    (((envelope0038BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0038BaseCounts (.evenTwoCell residue) +
        envelope0038CellCounts cell : Nat) : Rat) /
      6043363) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0038BaseCounts, envelope0038CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0038FibreRatio :
    (((envelope0038BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0038BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0038FibreMax cell : Nat) : Rat) /
      6043363) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0038BaseCounts, envelope0038FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0039BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6103945
      (envelope0039BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0039CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6103945
      (envelope0039CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0039SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6103945 153599 := by
  decide

theorem envelope0039FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0039FibreCounts cell residue ≤
      envelope0039FibreMax cell := by
  decide +revert

theorem envelope0039UnrestrictedRatio :
    ((153599 : Rat) / 6073579) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0039ConcentratedRatio (cell : Fin 9) :
    (((envelope0039BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0039BaseCounts (.evenTwoCell residue) +
        envelope0039CellCounts cell : Nat) : Rat) /
      6073579) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0039BaseCounts, envelope0039CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0039FibreRatio :
    (((envelope0039BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0039BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0039FibreMax cell : Nat) : Rat) /
      6073579) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0039BaseCounts, envelope0039FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
