import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0003

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0048BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6384176
      (envelope0048BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0048CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6384176
      (envelope0048CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0048SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6384176 160645 := by
  decide

theorem envelope0048FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0048FibreCounts cell residue ≤
      envelope0048FibreMax cell := by
  decide +revert

theorem envelope0048UnrestrictedRatio :
    ((160645 : Rat) / 6352415) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0048ConcentratedRatio (cell : Fin 9) :
    (((envelope0048BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0048BaseCounts (.evenTwoCell residue) +
        envelope0048CellCounts cell : Nat) : Rat) /
      6352415) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0048BaseCounts, envelope0048CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0048FibreRatio :
    (((envelope0048BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0048BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0048FibreMax cell : Nat) : Rat) /
      6352415) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0048BaseCounts, envelope0048FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0049BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6416096
      (envelope0049BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0049CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6416096
      (envelope0049CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0049SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6416096 161449 := by
  decide

theorem envelope0049FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0049FibreCounts cell residue ≤
      envelope0049FibreMax cell := by
  decide +revert

theorem envelope0049UnrestrictedRatio :
    ((161449 : Rat) / 6384177) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0049ConcentratedRatio (cell : Fin 9) :
    (((envelope0049BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0049BaseCounts (.evenTwoCell residue) +
        envelope0049CellCounts cell : Nat) : Rat) /
      6384177) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0049BaseCounts, envelope0049CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0049FibreRatio :
    (((envelope0049BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0049BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0049FibreMax cell : Nat) : Rat) /
      6384177) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0049BaseCounts, envelope0049FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0050BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6448176
      (envelope0050BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0050CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6448176
      (envelope0050CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0050SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6448176 162264 := by
  decide

theorem envelope0050FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0050FibreCounts cell residue ≤
      envelope0050FibreMax cell := by
  decide +revert

theorem envelope0050UnrestrictedRatio :
    ((162264 : Rat) / 6416097) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0050ConcentratedRatio (cell : Fin 9) :
    (((envelope0050BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0050BaseCounts (.evenTwoCell residue) +
        envelope0050CellCounts cell : Nat) : Rat) /
      6416097) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0050BaseCounts, envelope0050CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0050FibreRatio :
    (((envelope0050BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0050BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0050FibreMax cell : Nat) : Rat) /
      6416097) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0050BaseCounts, envelope0050FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0051BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6480416
      (envelope0051BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0051CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6480416
      (envelope0051CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0051SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6480416 163069 := by
  decide

theorem envelope0051FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0051FibreCounts cell residue ≤
      envelope0051FibreMax cell := by
  decide +revert

theorem envelope0051UnrestrictedRatio :
    ((163069 : Rat) / 6448177) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0051ConcentratedRatio (cell : Fin 9) :
    (((envelope0051BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0051BaseCounts (.evenTwoCell residue) +
        envelope0051CellCounts cell : Nat) : Rat) /
      6448177) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0051BaseCounts, envelope0051CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0051FibreRatio :
    (((envelope0051BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0051BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0051FibreMax cell : Nat) : Rat) /
      6448177) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0051BaseCounts, envelope0051FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0052BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6512818
      (envelope0052BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0052CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6512818
      (envelope0052CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0052SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6512818 163889 := by
  decide

theorem envelope0052FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0052FibreCounts cell residue ≤
      envelope0052FibreMax cell := by
  decide +revert

theorem envelope0052UnrestrictedRatio :
    ((163889 : Rat) / 6480417) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0052ConcentratedRatio (cell : Fin 9) :
    (((envelope0052BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0052BaseCounts (.evenTwoCell residue) +
        envelope0052CellCounts cell : Nat) : Rat) /
      6480417) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0052BaseCounts, envelope0052CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0052FibreRatio :
    (((envelope0052BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0052BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0052FibreMax cell : Nat) : Rat) /
      6480417) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0052BaseCounts, envelope0052FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0053BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6545382
      (envelope0053BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0053CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6545382
      (envelope0053CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0053SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6545382 164699 := by
  decide

theorem envelope0053FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0053FibreCounts cell residue ≤
      envelope0053FibreMax cell := by
  decide +revert

theorem envelope0053UnrestrictedRatio :
    ((164699 : Rat) / 6512819) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0053ConcentratedRatio (cell : Fin 9) :
    (((envelope0053BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0053BaseCounts (.evenTwoCell residue) +
        envelope0053CellCounts cell : Nat) : Rat) /
      6512819) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0053BaseCounts, envelope0053CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0053FibreRatio :
    (((envelope0053BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0053BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0053FibreMax cell : Nat) : Rat) /
      6512819) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0053BaseCounts, envelope0053FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0054BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6578108
      (envelope0054BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0054CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6578108
      (envelope0054CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0054SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6578108 165527 := by
  decide

theorem envelope0054FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0054FibreCounts cell residue ≤
      envelope0054FibreMax cell := by
  decide +revert

theorem envelope0054UnrestrictedRatio :
    ((165527 : Rat) / 6545383) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0054ConcentratedRatio (cell : Fin 9) :
    (((envelope0054BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0054BaseCounts (.evenTwoCell residue) +
        envelope0054CellCounts cell : Nat) : Rat) /
      6545383) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0054BaseCounts, envelope0054CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0054FibreRatio :
    (((envelope0054BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0054BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0054FibreMax cell : Nat) : Rat) /
      6545383) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0054BaseCounts, envelope0054FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0055BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6610998
      (envelope0055BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0055CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6610998
      (envelope0055CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0055SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6610998 166346 := by
  decide

theorem envelope0055FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0055FibreCounts cell residue ≤
      envelope0055FibreMax cell := by
  decide +revert

theorem envelope0055UnrestrictedRatio :
    ((166346 : Rat) / 6578109) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0055ConcentratedRatio (cell : Fin 9) :
    (((envelope0055BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0055BaseCounts (.evenTwoCell residue) +
        envelope0055CellCounts cell : Nat) : Rat) /
      6578109) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0055BaseCounts, envelope0055CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0055FibreRatio :
    (((envelope0055BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0055BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0055FibreMax cell : Nat) : Rat) /
      6578109) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0055BaseCounts, envelope0055FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
