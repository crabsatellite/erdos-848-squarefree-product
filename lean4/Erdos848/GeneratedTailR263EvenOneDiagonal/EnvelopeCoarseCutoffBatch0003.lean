import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0001

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0024BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5663963
      (envelope0024BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0024CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5663963
      (envelope0024CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0024SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5663963 142525 := by
  decide

theorem envelope0024FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0024FibreCounts cell residue ≤
      envelope0024FibreMax cell := by
  decide +revert

theorem envelope0024UnrestrictedRatio :
    ((142525 : Rat) / 5635786) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0024ConcentratedRatio (cell : Fin 9) :
    (((envelope0024BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0024BaseCounts (.evenTwoCell residue) +
        envelope0024CellCounts cell : Nat) : Rat) /
      5635786) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0024BaseCounts, envelope0024CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0024FibreRatio :
    (((envelope0024BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0024BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0024FibreMax cell : Nat) : Rat) /
      5635786) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0024BaseCounts, envelope0024FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0025BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5692282
      (envelope0025BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0025CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5692282
      (envelope0025CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0025SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5692282 143242 := by
  decide

theorem envelope0025FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0025FibreCounts cell residue ≤
      envelope0025FibreMax cell := by
  decide +revert

theorem envelope0025UnrestrictedRatio :
    ((143242 : Rat) / 5663964) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0025ConcentratedRatio (cell : Fin 9) :
    (((envelope0025BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0025BaseCounts (.evenTwoCell residue) +
        envelope0025CellCounts cell : Nat) : Rat) /
      5663964) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0025BaseCounts, envelope0025CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0025FibreRatio :
    (((envelope0025BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0025BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0025FibreMax cell : Nat) : Rat) /
      5663964) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0025BaseCounts, envelope0025FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0026BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5720743
      (envelope0026BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0026CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5720743
      (envelope0026CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0026SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5720743 143951 := by
  decide

theorem envelope0026FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0026FibreCounts cell residue ≤
      envelope0026FibreMax cell := by
  decide +revert

theorem envelope0026UnrestrictedRatio :
    ((143951 : Rat) / 5692283) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0026ConcentratedRatio (cell : Fin 9) :
    (((envelope0026BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0026BaseCounts (.evenTwoCell residue) +
        envelope0026CellCounts cell : Nat) : Rat) /
      5692283) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0026BaseCounts, envelope0026CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0026FibreRatio :
    (((envelope0026BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0026BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0026FibreMax cell : Nat) : Rat) /
      5692283) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0026BaseCounts, envelope0026FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0027BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5749346
      (envelope0027BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0027CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5749346
      (envelope0027CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0027SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5749346 144670 := by
  decide

theorem envelope0027FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0027FibreCounts cell residue ≤
      envelope0027FibreMax cell := by
  decide +revert

theorem envelope0027UnrestrictedRatio :
    ((144670 : Rat) / 5720744) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0027ConcentratedRatio (cell : Fin 9) :
    (((envelope0027BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0027BaseCounts (.evenTwoCell residue) +
        envelope0027CellCounts cell : Nat) : Rat) /
      5720744) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0027BaseCounts, envelope0027CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0027FibreRatio :
    (((envelope0027BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0027BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0027FibreMax cell : Nat) : Rat) /
      5720744) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0027BaseCounts, envelope0027FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0028BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5778092
      (envelope0028BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0028CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5778092
      (envelope0028CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0028SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5778092 145390 := by
  decide

theorem envelope0028FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0028FibreCounts cell residue ≤
      envelope0028FibreMax cell := by
  decide +revert

theorem envelope0028UnrestrictedRatio :
    ((145390 : Rat) / 5749347) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0028ConcentratedRatio (cell : Fin 9) :
    (((envelope0028BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0028BaseCounts (.evenTwoCell residue) +
        envelope0028CellCounts cell : Nat) : Rat) /
      5749347) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0028BaseCounts, envelope0028CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0028FibreRatio :
    (((envelope0028BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0028BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0028FibreMax cell : Nat) : Rat) /
      5749347) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0028BaseCounts, envelope0028FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0029BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5806982
      (envelope0029BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0029CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5806982
      (envelope0029CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0029SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5806982 146123 := by
  decide

theorem envelope0029FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0029FibreCounts cell residue ≤
      envelope0029FibreMax cell := by
  decide +revert

theorem envelope0029UnrestrictedRatio :
    ((146123 : Rat) / 5778093) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0029ConcentratedRatio (cell : Fin 9) :
    (((envelope0029BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0029BaseCounts (.evenTwoCell residue) +
        envelope0029CellCounts cell : Nat) : Rat) /
      5778093) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0029BaseCounts, envelope0029CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0029FibreRatio :
    (((envelope0029BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0029BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0029FibreMax cell : Nat) : Rat) /
      5778093) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0029BaseCounts, envelope0029FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0030BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5836016
      (envelope0030BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0030CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5836016
      (envelope0030CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0030SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5836016 146845 := by
  decide

theorem envelope0030FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0030FibreCounts cell residue ≤
      envelope0030FibreMax cell := by
  decide +revert

theorem envelope0030UnrestrictedRatio :
    ((146845 : Rat) / 5806983) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0030ConcentratedRatio (cell : Fin 9) :
    (((envelope0030BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0030BaseCounts (.evenTwoCell residue) +
        envelope0030CellCounts cell : Nat) : Rat) /
      5806983) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0030BaseCounts, envelope0030CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0030FibreRatio :
    (((envelope0030BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0030BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0030FibreMax cell : Nat) : Rat) /
      5806983) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0030BaseCounts, envelope0030FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0031BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5865196
      (envelope0031BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0031CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5865196
      (envelope0031CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0031SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5865196 147584 := by
  decide

theorem envelope0031FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0031FibreCounts cell residue ≤
      envelope0031FibreMax cell := by
  decide +revert

theorem envelope0031UnrestrictedRatio :
    ((147584 : Rat) / 5836017) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0031ConcentratedRatio (cell : Fin 9) :
    (((envelope0031BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0031BaseCounts (.evenTwoCell residue) +
        envelope0031CellCounts cell : Nat) : Rat) /
      5836017) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0031BaseCounts, envelope0031CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0031FibreRatio :
    (((envelope0031BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0031BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0031FibreMax cell : Nat) : Rat) /
      5836017) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0031BaseCounts, envelope0031FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
