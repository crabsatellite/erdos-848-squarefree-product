import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0003

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0056BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6644052
      (envelope0056BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0056CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6644052
      (envelope0056CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0056SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6644052 167186 := by
  decide

theorem envelope0056FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0056FibreCounts cell residue ≤
      envelope0056FibreMax cell := by
  decide +revert

theorem envelope0056UnrestrictedRatio :
    ((167186 : Rat) / 6610999) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0056ConcentratedRatio (cell : Fin 9) :
    (((envelope0056BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0056BaseCounts (.evenTwoCell residue) +
        envelope0056CellCounts cell : Nat) : Rat) /
      6610999) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0056BaseCounts, envelope0056CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0056FibreRatio :
    (((envelope0056BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0056BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0056FibreMax cell : Nat) : Rat) /
      6610999) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0056BaseCounts, envelope0056FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0057BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6677272
      (envelope0057BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0057CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6677272
      (envelope0057CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0057SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6677272 168023 := by
  decide

theorem envelope0057FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0057FibreCounts cell residue ≤
      envelope0057FibreMax cell := by
  decide +revert

theorem envelope0057UnrestrictedRatio :
    ((168023 : Rat) / 6644053) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0057ConcentratedRatio (cell : Fin 9) :
    (((envelope0057BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0057BaseCounts (.evenTwoCell residue) +
        envelope0057CellCounts cell : Nat) : Rat) /
      6644053) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0057BaseCounts, envelope0057CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0057FibreRatio :
    (((envelope0057BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0057BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0057FibreMax cell : Nat) : Rat) /
      6644053) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0057BaseCounts, envelope0057FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0058BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6710658
      (envelope0058BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0058CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6710658
      (envelope0058CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0058SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6710658 168859 := by
  decide

theorem envelope0058FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0058FibreCounts cell residue ≤
      envelope0058FibreMax cell := by
  decide +revert

theorem envelope0058UnrestrictedRatio :
    ((168859 : Rat) / 6677273) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0058ConcentratedRatio (cell : Fin 9) :
    (((envelope0058BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0058BaseCounts (.evenTwoCell residue) +
        envelope0058CellCounts cell : Nat) : Rat) /
      6677273) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0058BaseCounts, envelope0058CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0058FibreRatio :
    (((envelope0058BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0058BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0058FibreMax cell : Nat) : Rat) /
      6677273) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0058BaseCounts, envelope0058FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0059BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6744211
      (envelope0059BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0059CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6744211
      (envelope0059CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0059SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6744211 169709 := by
  decide

theorem envelope0059FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0059FibreCounts cell residue ≤
      envelope0059FibreMax cell := by
  decide +revert

theorem envelope0059UnrestrictedRatio :
    ((169709 : Rat) / 6710659) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0059ConcentratedRatio (cell : Fin 9) :
    (((envelope0059BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0059BaseCounts (.evenTwoCell residue) +
        envelope0059CellCounts cell : Nat) : Rat) /
      6710659) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0059BaseCounts, envelope0059CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0059FibreRatio :
    (((envelope0059BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0059BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0059FibreMax cell : Nat) : Rat) /
      6710659) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0059BaseCounts, envelope0059FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0060BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6777932
      (envelope0060BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0060CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6777932
      (envelope0060CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0060SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6777932 170563 := by
  decide

theorem envelope0060FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0060FibreCounts cell residue ≤
      envelope0060FibreMax cell := by
  decide +revert

theorem envelope0060UnrestrictedRatio :
    ((170563 : Rat) / 6744212) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0060ConcentratedRatio (cell : Fin 9) :
    (((envelope0060BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0060BaseCounts (.evenTwoCell residue) +
        envelope0060CellCounts cell : Nat) : Rat) /
      6744212) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0060BaseCounts, envelope0060CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0060FibreRatio :
    (((envelope0060BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0060BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0060FibreMax cell : Nat) : Rat) /
      6744212) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0060BaseCounts, envelope0060FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0061BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6811821
      (envelope0061BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0061CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6811821
      (envelope0061CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0061SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6811821 171414 := by
  decide

theorem envelope0061FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0061FibreCounts cell residue ≤
      envelope0061FibreMax cell := by
  decide +revert

theorem envelope0061UnrestrictedRatio :
    ((171414 : Rat) / 6777933) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0061ConcentratedRatio (cell : Fin 9) :
    (((envelope0061BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0061BaseCounts (.evenTwoCell residue) +
        envelope0061CellCounts cell : Nat) : Rat) /
      6777933) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0061BaseCounts, envelope0061CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0061FibreRatio :
    (((envelope0061BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0061BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0061FibreMax cell : Nat) : Rat) /
      6777933) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0061BaseCounts, envelope0061FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0062BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6845880
      (envelope0062BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0062CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6845880
      (envelope0062CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0062SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6845880 172271 := by
  decide

theorem envelope0062FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0062FibreCounts cell residue ≤
      envelope0062FibreMax cell := by
  decide +revert

theorem envelope0062UnrestrictedRatio :
    ((172271 : Rat) / 6811822) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0062ConcentratedRatio (cell : Fin 9) :
    (((envelope0062BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0062BaseCounts (.evenTwoCell residue) +
        envelope0062CellCounts cell : Nat) : Rat) /
      6811822) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0062BaseCounts, envelope0062CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0062FibreRatio :
    (((envelope0062BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0062BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0062FibreMax cell : Nat) : Rat) /
      6811822) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0062BaseCounts, envelope0062FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0063BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6880109
      (envelope0063BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0063CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6880109
      (envelope0063CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0063SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6880109 173125 := by
  decide

theorem envelope0063FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0063FibreCounts cell residue ≤
      envelope0063FibreMax cell := by
  decide +revert

theorem envelope0063UnrestrictedRatio :
    ((173125 : Rat) / 6845881) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0063ConcentratedRatio (cell : Fin 9) :
    (((envelope0063BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0063BaseCounts (.evenTwoCell residue) +
        envelope0063CellCounts cell : Nat) : Rat) /
      6845881) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0063BaseCounts, envelope0063CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0063FibreRatio :
    (((envelope0063BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0063BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0063FibreMax cell : Nat) : Rat) /
      6845881) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0063BaseCounts, envelope0063FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
