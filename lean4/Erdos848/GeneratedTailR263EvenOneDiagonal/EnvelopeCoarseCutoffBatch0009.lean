import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0004

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0072BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7195974
      (envelope0072BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0072CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7195974
      (envelope0072CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0072SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7195974 181050 := by
  decide

theorem envelope0072FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0072FibreCounts cell residue ≤
      envelope0072FibreMax cell := by
  decide +revert

theorem envelope0072UnrestrictedRatio :
    ((181050 : Rat) / 7160175) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0072ConcentratedRatio (cell : Fin 9) :
    (((envelope0072BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0072BaseCounts (.evenTwoCell residue) +
        envelope0072CellCounts cell : Nat) : Rat) /
      7160175) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0072BaseCounts, envelope0072CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0072FibreRatio :
    (((envelope0072BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0072BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0072FibreMax cell : Nat) : Rat) /
      7160175) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0072BaseCounts, envelope0072FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0073BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7231953
      (envelope0073BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0073CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7231953
      (envelope0073CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0073SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7231953 181949 := by
  decide

theorem envelope0073FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0073FibreCounts cell residue ≤
      envelope0073FibreMax cell := by
  decide +revert

theorem envelope0073UnrestrictedRatio :
    ((181949 : Rat) / 7195975) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0073ConcentratedRatio (cell : Fin 9) :
    (((envelope0073BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0073BaseCounts (.evenTwoCell residue) +
        envelope0073CellCounts cell : Nat) : Rat) /
      7195975) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0073BaseCounts, envelope0073CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0073FibreRatio :
    (((envelope0073BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0073BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0073FibreMax cell : Nat) : Rat) /
      7195975) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0073BaseCounts, envelope0073FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0074BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7268112
      (envelope0074BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0074CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7268112
      (envelope0074CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0074SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7268112 182873 := by
  decide

theorem envelope0074FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0074FibreCounts cell residue ≤
      envelope0074FibreMax cell := by
  decide +revert

theorem envelope0074UnrestrictedRatio :
    ((182873 : Rat) / 7231954) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0074ConcentratedRatio (cell : Fin 9) :
    (((envelope0074BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0074BaseCounts (.evenTwoCell residue) +
        envelope0074CellCounts cell : Nat) : Rat) /
      7231954) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0074BaseCounts, envelope0074CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0074FibreRatio :
    (((envelope0074BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0074BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0074FibreMax cell : Nat) : Rat) /
      7231954) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0074BaseCounts, envelope0074FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0075BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7304452
      (envelope0075BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0075CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7304452
      (envelope0075CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0075SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7304452 183782 := by
  decide

theorem envelope0075FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0075FibreCounts cell residue ≤
      envelope0075FibreMax cell := by
  decide +revert

theorem envelope0075UnrestrictedRatio :
    ((183782 : Rat) / 7268113) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0075ConcentratedRatio (cell : Fin 9) :
    (((envelope0075BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0075BaseCounts (.evenTwoCell residue) +
        envelope0075CellCounts cell : Nat) : Rat) /
      7268113) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0075BaseCounts, envelope0075CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0075FibreRatio :
    (((envelope0075BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0075BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0075FibreMax cell : Nat) : Rat) /
      7268113) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0075BaseCounts, envelope0075FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0076BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7340974
      (envelope0076BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0076CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7340974
      (envelope0076CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0076SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7340974 184697 := by
  decide

theorem envelope0076FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0076FibreCounts cell residue ≤
      envelope0076FibreMax cell := by
  decide +revert

theorem envelope0076UnrestrictedRatio :
    ((184697 : Rat) / 7304453) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0076ConcentratedRatio (cell : Fin 9) :
    (((envelope0076BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0076BaseCounts (.evenTwoCell residue) +
        envelope0076CellCounts cell : Nat) : Rat) /
      7304453) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0076BaseCounts, envelope0076CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0076FibreRatio :
    (((envelope0076BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0076BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0076FibreMax cell : Nat) : Rat) /
      7304453) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0076BaseCounts, envelope0076FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0077BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7377678
      (envelope0077BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0077CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7377678
      (envelope0077CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0077SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7377678 185632 := by
  decide

theorem envelope0077FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0077FibreCounts cell residue ≤
      envelope0077FibreMax cell := by
  decide +revert

theorem envelope0077UnrestrictedRatio :
    ((185632 : Rat) / 7340975) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0077ConcentratedRatio (cell : Fin 9) :
    (((envelope0077BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0077BaseCounts (.evenTwoCell residue) +
        envelope0077CellCounts cell : Nat) : Rat) /
      7340975) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0077BaseCounts, envelope0077CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0077FibreRatio :
    (((envelope0077BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0077BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0077FibreMax cell : Nat) : Rat) /
      7340975) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0077BaseCounts, envelope0077FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0078BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7414566
      (envelope0078BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0078CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7414566
      (envelope0078CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0078SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7414566 186561 := by
  decide

theorem envelope0078FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0078FibreCounts cell residue ≤
      envelope0078FibreMax cell := by
  decide +revert

theorem envelope0078UnrestrictedRatio :
    ((186561 : Rat) / 7377679) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0078ConcentratedRatio (cell : Fin 9) :
    (((envelope0078BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0078BaseCounts (.evenTwoCell residue) +
        envelope0078CellCounts cell : Nat) : Rat) /
      7377679) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0078BaseCounts, envelope0078CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0078FibreRatio :
    (((envelope0078BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0078BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0078FibreMax cell : Nat) : Rat) /
      7377679) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0078BaseCounts, envelope0078FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0079BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7451638
      (envelope0079BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0079CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7451638
      (envelope0079CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0079SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7451638 187490 := by
  decide

theorem envelope0079FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0079FibreCounts cell residue ≤
      envelope0079FibreMax cell := by
  decide +revert

theorem envelope0079UnrestrictedRatio :
    ((187490 : Rat) / 7414567) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0079ConcentratedRatio (cell : Fin 9) :
    (((envelope0079BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0079BaseCounts (.evenTwoCell residue) +
        envelope0079CellCounts cell : Nat) : Rat) /
      7414567) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0079BaseCounts, envelope0079CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0079FibreRatio :
    (((envelope0079BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0079BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0079FibreMax cell : Nat) : Rat) /
      7414567) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0079BaseCounts, envelope0079FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
