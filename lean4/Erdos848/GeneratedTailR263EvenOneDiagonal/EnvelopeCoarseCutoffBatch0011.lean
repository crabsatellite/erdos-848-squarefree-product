import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0005

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0088BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7793740
      (envelope0088BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0088CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7793740
      (envelope0088CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0088SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7793740 196091 := by
  decide

theorem envelope0088FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0088FibreCounts cell residue ≤
      envelope0088FibreMax cell := by
  decide +revert

theorem envelope0088UnrestrictedRatio :
    ((196091 : Rat) / 7754967) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0088ConcentratedRatio (cell : Fin 9) :
    (((envelope0088BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0088BaseCounts (.evenTwoCell residue) +
        envelope0088CellCounts cell : Nat) : Rat) /
      7754967) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0088BaseCounts, envelope0088CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0088FibreRatio :
    (((envelope0088BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0088BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0088FibreMax cell : Nat) : Rat) /
      7754967) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0088BaseCounts, envelope0088FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0089BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7832708
      (envelope0089BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0089CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7832708
      (envelope0089CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0089SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7832708 197072 := by
  decide

theorem envelope0089FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0089FibreCounts cell residue ≤
      envelope0089FibreMax cell := by
  decide +revert

theorem envelope0089UnrestrictedRatio :
    ((197072 : Rat) / 7793741) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0089ConcentratedRatio (cell : Fin 9) :
    (((envelope0089BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0089BaseCounts (.evenTwoCell residue) +
        envelope0089CellCounts cell : Nat) : Rat) /
      7793741) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0089BaseCounts, envelope0089CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0089FibreRatio :
    (((envelope0089BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0089BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0089FibreMax cell : Nat) : Rat) /
      7793741) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0089BaseCounts, envelope0089FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0090BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7871871
      (envelope0090BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0090CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7871871
      (envelope0090CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0090SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7871871 198064 := by
  decide

theorem envelope0090FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0090FibreCounts cell residue ≤
      envelope0090FibreMax cell := by
  decide +revert

theorem envelope0090UnrestrictedRatio :
    ((198064 : Rat) / 7832709) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0090ConcentratedRatio (cell : Fin 9) :
    (((envelope0090BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0090BaseCounts (.evenTwoCell residue) +
        envelope0090CellCounts cell : Nat) : Rat) /
      7832709) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0090BaseCounts, envelope0090CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0090FibreRatio :
    (((envelope0090BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0090BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0090FibreMax cell : Nat) : Rat) /
      7832709) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0090BaseCounts, envelope0090FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0091BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7911230
      (envelope0091BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0091CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7911230
      (envelope0091CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0091SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7911230 199042 := by
  decide

theorem envelope0091FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0091FibreCounts cell residue ≤
      envelope0091FibreMax cell := by
  decide +revert

theorem envelope0091UnrestrictedRatio :
    ((199042 : Rat) / 7871872) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0091ConcentratedRatio (cell : Fin 9) :
    (((envelope0091BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0091BaseCounts (.evenTwoCell residue) +
        envelope0091CellCounts cell : Nat) : Rat) /
      7871872) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0091BaseCounts, envelope0091CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0091FibreRatio :
    (((envelope0091BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0091BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0091FibreMax cell : Nat) : Rat) /
      7871872) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0091BaseCounts, envelope0091FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0092BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7950786
      (envelope0092BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0092CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7950786
      (envelope0092CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0092SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7950786 200040 := by
  decide

theorem envelope0092FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0092FibreCounts cell residue ≤
      envelope0092FibreMax cell := by
  decide +revert

theorem envelope0092UnrestrictedRatio :
    ((200040 : Rat) / 7911231) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0092ConcentratedRatio (cell : Fin 9) :
    (((envelope0092BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0092BaseCounts (.evenTwoCell residue) +
        envelope0092CellCounts cell : Nat) : Rat) /
      7911231) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0092BaseCounts, envelope0092CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0092FibreRatio :
    (((envelope0092BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0092BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0092FibreMax cell : Nat) : Rat) /
      7911231) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0092BaseCounts, envelope0092FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0093BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7990539
      (envelope0093BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0093CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7990539
      (envelope0093CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0093SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7990539 201032 := by
  decide

theorem envelope0093FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0093FibreCounts cell residue ≤
      envelope0093FibreMax cell := by
  decide +revert

theorem envelope0093UnrestrictedRatio :
    ((201032 : Rat) / 7950787) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0093ConcentratedRatio (cell : Fin 9) :
    (((envelope0093BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0093BaseCounts (.evenTwoCell residue) +
        envelope0093CellCounts cell : Nat) : Rat) /
      7950787) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0093BaseCounts, envelope0093CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0093FibreRatio :
    (((envelope0093BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0093BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0093FibreMax cell : Nat) : Rat) /
      7950787) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0093BaseCounts, envelope0093FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0094BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8030491
      (envelope0094BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0094CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8030491
      (envelope0094CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0094SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8030491 202038 := by
  decide

theorem envelope0094FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0094FibreCounts cell residue ≤
      envelope0094FibreMax cell := by
  decide +revert

theorem envelope0094UnrestrictedRatio :
    ((202038 : Rat) / 7990540) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0094ConcentratedRatio (cell : Fin 9) :
    (((envelope0094BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0094BaseCounts (.evenTwoCell residue) +
        envelope0094CellCounts cell : Nat) : Rat) /
      7990540) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0094BaseCounts, envelope0094CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0094FibreRatio :
    (((envelope0094BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0094BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0094FibreMax cell : Nat) : Rat) /
      7990540) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0094BaseCounts, envelope0094FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0095BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8070643
      (envelope0095BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0095CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8070643
      (envelope0095CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0095SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8070643 203040 := by
  decide

theorem envelope0095FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0095FibreCounts cell residue ≤
      envelope0095FibreMax cell := by
  decide +revert

theorem envelope0095UnrestrictedRatio :
    ((203040 : Rat) / 8030492) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0095ConcentratedRatio (cell : Fin 9) :
    (((envelope0095BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0095BaseCounts (.evenTwoCell residue) +
        envelope0095CellCounts cell : Nat) : Rat) /
      8030492) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0095BaseCounts, envelope0095CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0095FibreRatio :
    (((envelope0095BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0095BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0095FibreMax cell : Nat) : Rat) /
      8030492) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0095BaseCounts, envelope0095FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
