import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0004

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0064BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6914509
      (envelope0064BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0064CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6914509
      (envelope0064CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0064SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6914509 173994 := by
  decide

theorem envelope0064FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0064FibreCounts cell residue ≤
      envelope0064FibreMax cell := by
  decide +revert

theorem envelope0064UnrestrictedRatio :
    ((173994 : Rat) / 6880110) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0064ConcentratedRatio (cell : Fin 9) :
    (((envelope0064BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0064BaseCounts (.evenTwoCell residue) +
        envelope0064CellCounts cell : Nat) : Rat) /
      6880110) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0064BaseCounts, envelope0064CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0064FibreRatio :
    (((envelope0064BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0064BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0064FibreMax cell : Nat) : Rat) /
      6880110) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0064BaseCounts, envelope0064FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0065BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6949081
      (envelope0065BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0065CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6949081
      (envelope0065CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0065SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6949081 174854 := by
  decide

theorem envelope0065FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0065FibreCounts cell residue ≤
      envelope0065FibreMax cell := by
  decide +revert

theorem envelope0065UnrestrictedRatio :
    ((174854 : Rat) / 6914510) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0065ConcentratedRatio (cell : Fin 9) :
    (((envelope0065BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0065BaseCounts (.evenTwoCell residue) +
        envelope0065CellCounts cell : Nat) : Rat) /
      6914510) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0065BaseCounts, envelope0065CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0065FibreRatio :
    (((envelope0065BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0065BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0065FibreMax cell : Nat) : Rat) /
      6914510) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0065BaseCounts, envelope0065FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0066BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6983826
      (envelope0066BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0066CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6983826
      (envelope0066CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0066SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6983826 175727 := by
  decide

theorem envelope0066FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0066FibreCounts cell residue ≤
      envelope0066FibreMax cell := by
  decide +revert

theorem envelope0066UnrestrictedRatio :
    ((175727 : Rat) / 6949082) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0066ConcentratedRatio (cell : Fin 9) :
    (((envelope0066BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0066BaseCounts (.evenTwoCell residue) +
        envelope0066CellCounts cell : Nat) : Rat) /
      6949082) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0066BaseCounts, envelope0066CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0066FibreRatio :
    (((envelope0066BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0066BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0066FibreMax cell : Nat) : Rat) /
      6949082) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0066BaseCounts, envelope0066FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0067BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7018745
      (envelope0067BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0067CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7018745
      (envelope0067CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0067SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7018745 176602 := by
  decide

theorem envelope0067FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0067FibreCounts cell residue ≤
      envelope0067FibreMax cell := by
  decide +revert

theorem envelope0067UnrestrictedRatio :
    ((176602 : Rat) / 6983827) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0067ConcentratedRatio (cell : Fin 9) :
    (((envelope0067BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0067BaseCounts (.evenTwoCell residue) +
        envelope0067CellCounts cell : Nat) : Rat) /
      6983827) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0067BaseCounts, envelope0067CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0067FibreRatio :
    (((envelope0067BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0067BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0067FibreMax cell : Nat) : Rat) /
      6983827) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0067BaseCounts, envelope0067FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0068BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7053838
      (envelope0068BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0068CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7053838
      (envelope0068CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0068SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7053838 177478 := by
  decide

theorem envelope0068FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0068FibreCounts cell residue ≤
      envelope0068FibreMax cell := by
  decide +revert

theorem envelope0068UnrestrictedRatio :
    ((177478 : Rat) / 7018746) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0068ConcentratedRatio (cell : Fin 9) :
    (((envelope0068BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0068BaseCounts (.evenTwoCell residue) +
        envelope0068CellCounts cell : Nat) : Rat) /
      7018746) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0068BaseCounts, envelope0068CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0068FibreRatio :
    (((envelope0068BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0068BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0068FibreMax cell : Nat) : Rat) /
      7018746) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0068BaseCounts, envelope0068FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0069BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7089107
      (envelope0069BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0069CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7089107
      (envelope0069CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0069SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7089107 178361 := by
  decide

theorem envelope0069FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0069FibreCounts cell residue ≤
      envelope0069FibreMax cell := by
  decide +revert

theorem envelope0069UnrestrictedRatio :
    ((178361 : Rat) / 7053839) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0069ConcentratedRatio (cell : Fin 9) :
    (((envelope0069BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0069BaseCounts (.evenTwoCell residue) +
        envelope0069CellCounts cell : Nat) : Rat) /
      7053839) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0069BaseCounts, envelope0069CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0069FibreRatio :
    (((envelope0069BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0069BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0069FibreMax cell : Nat) : Rat) /
      7053839) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0069BaseCounts, envelope0069FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0070BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7124552
      (envelope0070BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0070CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7124552
      (envelope0070CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0070SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7124552 179263 := by
  decide

theorem envelope0070FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0070FibreCounts cell residue ≤
      envelope0070FibreMax cell := by
  decide +revert

theorem envelope0070UnrestrictedRatio :
    ((179263 : Rat) / 7089108) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0070ConcentratedRatio (cell : Fin 9) :
    (((envelope0070BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0070BaseCounts (.evenTwoCell residue) +
        envelope0070CellCounts cell : Nat) : Rat) /
      7089108) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0070BaseCounts, envelope0070CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0070FibreRatio :
    (((envelope0070BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0070BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0070FibreMax cell : Nat) : Rat) /
      7089108) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0070BaseCounts, envelope0070FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0071BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7160174
      (envelope0071BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0071CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7160174
      (envelope0071CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0071SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7160174 180157 := by
  decide

theorem envelope0071FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0071FibreCounts cell residue ≤
      envelope0071FibreMax cell := by
  decide +revert

theorem envelope0071UnrestrictedRatio :
    ((180157 : Rat) / 7124553) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0071ConcentratedRatio (cell : Fin 9) :
    (((envelope0071BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0071BaseCounts (.evenTwoCell residue) +
        envelope0071CellCounts cell : Nat) : Rat) /
      7124553) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0071BaseCounts, envelope0071CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0071FibreRatio :
    (((envelope0071BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0071BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0071FibreMax cell : Nat) : Rat) /
      7124553) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0071BaseCounts, envelope0071FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
