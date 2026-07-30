import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0000

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0008BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5229548
      (envelope0008BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0008CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5229548
      (envelope0008CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0008SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5229548 131584 := by
  decide

theorem envelope0008FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0008FibreCounts cell residue ≤
      envelope0008FibreMax cell := by
  decide +revert

theorem envelope0008UnrestrictedRatio :
    ((131584 : Rat) / 5203532) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0008ConcentratedRatio (cell : Fin 9) :
    (((envelope0008BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0008BaseCounts (.evenTwoCell residue) +
        envelope0008CellCounts cell : Nat) : Rat) /
      5203532) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0008BaseCounts, envelope0008CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0008FibreRatio :
    (((envelope0008BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0008BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0008FibreMax cell : Nat) : Rat) /
      5203532) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0008BaseCounts, envelope0008FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0009BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5255695
      (envelope0009BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0009CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5255695
      (envelope0009CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0009SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5255695 132243 := by
  decide

theorem envelope0009FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0009FibreCounts cell residue ≤
      envelope0009FibreMax cell := by
  decide +revert

theorem envelope0009UnrestrictedRatio :
    ((132243 : Rat) / 5229549) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0009ConcentratedRatio (cell : Fin 9) :
    (((envelope0009BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0009BaseCounts (.evenTwoCell residue) +
        envelope0009CellCounts cell : Nat) : Rat) /
      5229549) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0009BaseCounts, envelope0009CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0009FibreRatio :
    (((envelope0009BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0009BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0009FibreMax cell : Nat) : Rat) /
      5229549) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0009BaseCounts, envelope0009FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0010BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5281973
      (envelope0010BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0010CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5281973
      (envelope0010CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0010SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5281973 132889 := by
  decide

theorem envelope0010FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0010FibreCounts cell residue ≤
      envelope0010FibreMax cell := by
  decide +revert

theorem envelope0010UnrestrictedRatio :
    ((132889 : Rat) / 5255696) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0010ConcentratedRatio (cell : Fin 9) :
    (((envelope0010BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0010BaseCounts (.evenTwoCell residue) +
        envelope0010CellCounts cell : Nat) : Rat) /
      5255696) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0010BaseCounts, envelope0010CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0010FibreRatio :
    (((envelope0010BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0010BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0010FibreMax cell : Nat) : Rat) /
      5255696) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0010BaseCounts, envelope0010FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0011BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5308382
      (envelope0011BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0011CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5308382
      (envelope0011CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0011SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5308382 133564 := by
  decide

theorem envelope0011FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0011FibreCounts cell residue ≤
      envelope0011FibreMax cell := by
  decide +revert

theorem envelope0011UnrestrictedRatio :
    ((133564 : Rat) / 5281974) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0011ConcentratedRatio (cell : Fin 9) :
    (((envelope0011BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0011BaseCounts (.evenTwoCell residue) +
        envelope0011CellCounts cell : Nat) : Rat) /
      5281974) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0011BaseCounts, envelope0011CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0011FibreRatio :
    (((envelope0011BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0011BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0011FibreMax cell : Nat) : Rat) /
      5281974) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0011BaseCounts, envelope0011FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0012BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5334923
      (envelope0012BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0012CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5334923
      (envelope0012CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0012SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5334923 134229 := by
  decide

theorem envelope0012FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0012FibreCounts cell residue ≤
      envelope0012FibreMax cell := by
  decide +revert

theorem envelope0012UnrestrictedRatio :
    ((134229 : Rat) / 5308383) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0012ConcentratedRatio (cell : Fin 9) :
    (((envelope0012BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0012BaseCounts (.evenTwoCell residue) +
        envelope0012CellCounts cell : Nat) : Rat) /
      5308383) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0012BaseCounts, envelope0012CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0012FibreRatio :
    (((envelope0012BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0012BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0012FibreMax cell : Nat) : Rat) /
      5308383) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0012BaseCounts, envelope0012FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0013BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5361597
      (envelope0013BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0013CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5361597
      (envelope0013CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0013SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5361597 134905 := by
  decide

theorem envelope0013FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0013FibreCounts cell residue ≤
      envelope0013FibreMax cell := by
  decide +revert

theorem envelope0013UnrestrictedRatio :
    ((134905 : Rat) / 5334924) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0013ConcentratedRatio (cell : Fin 9) :
    (((envelope0013BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0013BaseCounts (.evenTwoCell residue) +
        envelope0013CellCounts cell : Nat) : Rat) /
      5334924) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0013BaseCounts, envelope0013CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0013FibreRatio :
    (((envelope0013BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0013BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0013FibreMax cell : Nat) : Rat) /
      5334924) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0013BaseCounts, envelope0013FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0014BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5388404
      (envelope0014BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0014CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5388404
      (envelope0014CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0014SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5388404 135585 := by
  decide

theorem envelope0014FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0014FibreCounts cell residue ≤
      envelope0014FibreMax cell := by
  decide +revert

theorem envelope0014UnrestrictedRatio :
    ((135585 : Rat) / 5361598) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0014ConcentratedRatio (cell : Fin 9) :
    (((envelope0014BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0014BaseCounts (.evenTwoCell residue) +
        envelope0014CellCounts cell : Nat) : Rat) /
      5361598) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0014BaseCounts, envelope0014CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0014FibreRatio :
    (((envelope0014BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0014BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0014FibreMax cell : Nat) : Rat) /
      5361598) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0014BaseCounts, envelope0014FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0015BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5415346
      (envelope0015BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0015CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 5415346
      (envelope0015CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0015SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      5415346 136267 := by
  decide

theorem envelope0015FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0015FibreCounts cell residue ≤
      envelope0015FibreMax cell := by
  decide +revert

theorem envelope0015UnrestrictedRatio :
    ((136267 : Rat) / 5388405) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0015ConcentratedRatio (cell : Fin 9) :
    (((envelope0015BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0015BaseCounts (.evenTwoCell residue) +
        envelope0015CellCounts cell : Nat) : Rat) /
      5388405) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0015BaseCounts, envelope0015CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0015FibreRatio :
    (((envelope0015BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0015BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0015FibreMax cell : Nat) : Rat) /
      5388405) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0015BaseCounts, envelope0015FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
