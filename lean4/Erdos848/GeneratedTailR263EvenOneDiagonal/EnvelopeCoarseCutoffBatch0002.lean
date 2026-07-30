import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0001

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0016BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5442422
      (envelope0016BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0016CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5442422
      (envelope0016CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0016SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5442422 136947 := by
  decide

theorem envelope0016FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0016FibreCounts cell residue ≤
      envelope0016FibreMax cell := by
  decide +revert

theorem envelope0016UnrestrictedRatio :
    ((136947 : Rat) / 5415347) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0016ConcentratedRatio (cell : Fin 9) :
    (((envelope0016BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0016BaseCounts (.evenTwoCell residue) +
        envelope0016CellCounts cell : Nat) : Rat) /
      5415347) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0016BaseCounts, envelope0016CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0016FibreRatio :
    (((envelope0016BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0016BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0016FibreMax cell : Nat) : Rat) /
      5415347) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0016BaseCounts, envelope0016FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0017BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5469634
      (envelope0017BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0017CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5469634
      (envelope0017CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0017SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5469634 137633 := by
  decide

theorem envelope0017FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0017FibreCounts cell residue ≤
      envelope0017FibreMax cell := by
  decide +revert

theorem envelope0017UnrestrictedRatio :
    ((137633 : Rat) / 5442423) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0017ConcentratedRatio (cell : Fin 9) :
    (((envelope0017BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0017BaseCounts (.evenTwoCell residue) +
        envelope0017CellCounts cell : Nat) : Rat) /
      5442423) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0017BaseCounts, envelope0017CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0017FibreRatio :
    (((envelope0017BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0017BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0017FibreMax cell : Nat) : Rat) /
      5442423) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0017BaseCounts, envelope0017FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0018BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5496982
      (envelope0018BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0018CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5496982
      (envelope0018CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0018SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5496982 138328 := by
  decide

theorem envelope0018FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0018FibreCounts cell residue ≤
      envelope0018FibreMax cell := by
  decide +revert

theorem envelope0018UnrestrictedRatio :
    ((138328 : Rat) / 5469635) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0018ConcentratedRatio (cell : Fin 9) :
    (((envelope0018BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0018BaseCounts (.evenTwoCell residue) +
        envelope0018CellCounts cell : Nat) : Rat) /
      5469635) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0018BaseCounts, envelope0018CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0018FibreRatio :
    (((envelope0018BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0018BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0018FibreMax cell : Nat) : Rat) /
      5469635) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0018BaseCounts, envelope0018FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0019BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5524466
      (envelope0019BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0019CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5524466
      (envelope0019CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0019SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5524466 139022 := by
  decide

theorem envelope0019FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0019FibreCounts cell residue ≤
      envelope0019FibreMax cell := by
  decide +revert

theorem envelope0019UnrestrictedRatio :
    ((139022 : Rat) / 5496983) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0019ConcentratedRatio (cell : Fin 9) :
    (((envelope0019BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0019BaseCounts (.evenTwoCell residue) +
        envelope0019CellCounts cell : Nat) : Rat) /
      5496983) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0019BaseCounts, envelope0019CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0019FibreRatio :
    (((envelope0019BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0019BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0019FibreMax cell : Nat) : Rat) /
      5496983) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0019BaseCounts, envelope0019FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0020BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5552088
      (envelope0020BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0020CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5552088
      (envelope0020CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0020SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5552088 139714 := by
  decide

theorem envelope0020FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0020FibreCounts cell residue ≤
      envelope0020FibreMax cell := by
  decide +revert

theorem envelope0020UnrestrictedRatio :
    ((139714 : Rat) / 5524467) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0020ConcentratedRatio (cell : Fin 9) :
    (((envelope0020BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0020BaseCounts (.evenTwoCell residue) +
        envelope0020CellCounts cell : Nat) : Rat) /
      5524467) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0020BaseCounts, envelope0020CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0020FibreRatio :
    (((envelope0020BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0020BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0020FibreMax cell : Nat) : Rat) /
      5524467) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0020BaseCounts, envelope0020FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0021BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5579848
      (envelope0021BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0021CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5579848
      (envelope0021CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0021SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5579848 140412 := by
  decide

theorem envelope0021FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0021FibreCounts cell residue ≤
      envelope0021FibreMax cell := by
  decide +revert

theorem envelope0021UnrestrictedRatio :
    ((140412 : Rat) / 5552089) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0021ConcentratedRatio (cell : Fin 9) :
    (((envelope0021BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0021BaseCounts (.evenTwoCell residue) +
        envelope0021CellCounts cell : Nat) : Rat) /
      5552089) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0021BaseCounts, envelope0021CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0021FibreRatio :
    (((envelope0021BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0021BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0021FibreMax cell : Nat) : Rat) /
      5552089) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0021BaseCounts, envelope0021FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0022BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5607747
      (envelope0022BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0022CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5607747
      (envelope0022CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0022SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5607747 141118 := by
  decide

theorem envelope0022FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0022FibreCounts cell residue ≤
      envelope0022FibreMax cell := by
  decide +revert

theorem envelope0022UnrestrictedRatio :
    ((141118 : Rat) / 5579849) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0022ConcentratedRatio (cell : Fin 9) :
    (((envelope0022BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0022BaseCounts (.evenTwoCell residue) +
        envelope0022CellCounts cell : Nat) : Rat) /
      5579849) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0022BaseCounts, envelope0022CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0022FibreRatio :
    (((envelope0022BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0022BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0022FibreMax cell : Nat) : Rat) /
      5579849) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0022BaseCounts, envelope0022FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0023BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5635785
      (envelope0023BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0023CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5635785
      (envelope0023CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0023SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5635785 141819 := by
  decide

theorem envelope0023FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0023FibreCounts cell residue ≤
      envelope0023FibreMax cell := by
  decide +revert

theorem envelope0023UnrestrictedRatio :
    ((141819 : Rat) / 5607748) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0023ConcentratedRatio (cell : Fin 9) :
    (((envelope0023BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0023BaseCounts (.evenTwoCell residue) +
        envelope0023CellCounts cell : Nat) : Rat) /
      5607748) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0023BaseCounts, envelope0023CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0023FibreRatio :
    (((envelope0023BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0023BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0023FibreMax cell : Nat) : Rat) /
      5607748) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0023BaseCounts, envelope0023FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
