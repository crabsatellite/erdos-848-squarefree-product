import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0007

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0112BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8784776
      (envelope0112BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0112CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8784776
      (envelope0112CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0112SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8784776 221003 := by
  decide

theorem envelope0112FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0112FibreCounts cell residue ≤
      envelope0112FibreMax cell := by
  decide +revert

theorem envelope0112UnrestrictedRatio :
    ((221003 : Rat) / 8741072) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0112ConcentratedRatio (cell : Fin 9) :
    (((envelope0112BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0112BaseCounts (.evenTwoCell residue) +
        envelope0112CellCounts cell : Nat) : Rat) /
      8741072) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0112BaseCounts, envelope0112CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0112FibreRatio :
    (((envelope0112BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0112BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0112FibreMax cell : Nat) : Rat) /
      8741072) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0112BaseCounts, envelope0112FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0113BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8828699
      (envelope0113BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0113CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8828699
      (envelope0113CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0113SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8828699 222122 := by
  decide

theorem envelope0113FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0113FibreCounts cell residue ≤
      envelope0113FibreMax cell := by
  decide +revert

theorem envelope0113UnrestrictedRatio :
    ((222122 : Rat) / 8784777) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0113ConcentratedRatio (cell : Fin 9) :
    (((envelope0113BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0113BaseCounts (.evenTwoCell residue) +
        envelope0113CellCounts cell : Nat) : Rat) /
      8784777) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0113BaseCounts, envelope0113CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0113FibreRatio :
    (((envelope0113BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0113BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0113FibreMax cell : Nat) : Rat) /
      8784777) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0113BaseCounts, envelope0113FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0114BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8872842
      (envelope0114BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0114CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8872842
      (envelope0114CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0114SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8872842 223225 := by
  decide

theorem envelope0114FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0114FibreCounts cell residue ≤
      envelope0114FibreMax cell := by
  decide +revert

theorem envelope0114UnrestrictedRatio :
    ((223225 : Rat) / 8828700) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0114ConcentratedRatio (cell : Fin 9) :
    (((envelope0114BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0114BaseCounts (.evenTwoCell residue) +
        envelope0114CellCounts cell : Nat) : Rat) /
      8828700) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0114BaseCounts, envelope0114CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0114FibreRatio :
    (((envelope0114BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0114BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0114FibreMax cell : Nat) : Rat) /
      8828700) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0114BaseCounts, envelope0114FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0115BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8917206
      (envelope0115BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0115CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8917206
      (envelope0115CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0115SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8917206 224343 := by
  decide

theorem envelope0115FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0115FibreCounts cell residue ≤
      envelope0115FibreMax cell := by
  decide +revert

theorem envelope0115UnrestrictedRatio :
    ((224343 : Rat) / 8872843) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0115ConcentratedRatio (cell : Fin 9) :
    (((envelope0115BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0115BaseCounts (.evenTwoCell residue) +
        envelope0115CellCounts cell : Nat) : Rat) /
      8872843) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0115BaseCounts, envelope0115CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0115FibreRatio :
    (((envelope0115BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0115BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0115FibreMax cell : Nat) : Rat) /
      8872843) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0115BaseCounts, envelope0115FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0116BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8961792
      (envelope0116BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0116CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8961792
      (envelope0116CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0116SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8961792 225456 := by
  decide

theorem envelope0116FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0116FibreCounts cell residue ≤
      envelope0116FibreMax cell := by
  decide +revert

theorem envelope0116UnrestrictedRatio :
    ((225456 : Rat) / 8917207) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0116ConcentratedRatio (cell : Fin 9) :
    (((envelope0116BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0116BaseCounts (.evenTwoCell residue) +
        envelope0116CellCounts cell : Nat) : Rat) /
      8917207) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0116BaseCounts, envelope0116CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0116FibreRatio :
    (((envelope0116BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0116BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0116FibreMax cell : Nat) : Rat) /
      8917207) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0116BaseCounts, envelope0116FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0117BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9006600
      (envelope0117BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0117CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9006600
      (envelope0117CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0117SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9006600 226596 := by
  decide

theorem envelope0117FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0117FibreCounts cell residue ≤
      envelope0117FibreMax cell := by
  decide +revert

theorem envelope0117UnrestrictedRatio :
    ((226596 : Rat) / 8961793) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0117ConcentratedRatio (cell : Fin 9) :
    (((envelope0117BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0117BaseCounts (.evenTwoCell residue) +
        envelope0117CellCounts cell : Nat) : Rat) /
      8961793) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0117BaseCounts, envelope0117CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0117FibreRatio :
    (((envelope0117BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0117BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0117FibreMax cell : Nat) : Rat) /
      8961793) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0117BaseCounts, envelope0117FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0118BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9051633
      (envelope0118BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0118CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9051633
      (envelope0118CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0118SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9051633 227725 := by
  decide

theorem envelope0118FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0118FibreCounts cell residue ≤
      envelope0118FibreMax cell := by
  decide +revert

theorem envelope0118UnrestrictedRatio :
    ((227725 : Rat) / 9006601) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0118ConcentratedRatio (cell : Fin 9) :
    (((envelope0118BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0118BaseCounts (.evenTwoCell residue) +
        envelope0118CellCounts cell : Nat) : Rat) /
      9006601) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0118BaseCounts, envelope0118CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0118FibreRatio :
    (((envelope0118BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0118BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0118FibreMax cell : Nat) : Rat) /
      9006601) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0118BaseCounts, envelope0118FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0119BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9096891
      (envelope0119BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0119CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9096891
      (envelope0119CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0119SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9096891 228864 := by
  decide

theorem envelope0119FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0119FibreCounts cell residue ≤
      envelope0119FibreMax cell := by
  decide +revert

theorem envelope0119UnrestrictedRatio :
    ((228864 : Rat) / 9051634) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0119ConcentratedRatio (cell : Fin 9) :
    (((envelope0119BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0119BaseCounts (.evenTwoCell residue) +
        envelope0119CellCounts cell : Nat) : Rat) /
      9051634) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0119BaseCounts, envelope0119CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0119FibreRatio :
    (((envelope0119BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0119BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0119FibreMax cell : Nat) : Rat) /
      9051634) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0119BaseCounts, envelope0119FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
