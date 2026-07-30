import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0005

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0080BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7488896
      (envelope0080BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0080CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7488896
      (envelope0080CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0080SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7488896 188421 := by
  decide

theorem envelope0080FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0080FibreCounts cell residue ≤
      envelope0080FibreMax cell := by
  decide +revert

theorem envelope0080UnrestrictedRatio :
    ((188421 : Rat) / 7451639) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0080ConcentratedRatio (cell : Fin 9) :
    (((envelope0080BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0080BaseCounts (.evenTwoCell residue) +
        envelope0080CellCounts cell : Nat) : Rat) /
      7451639) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0080BaseCounts, envelope0080CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0080FibreRatio :
    (((envelope0080BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0080BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0080FibreMax cell : Nat) : Rat) /
      7451639) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0080BaseCounts, envelope0080FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0081BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7526340
      (envelope0081BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0081CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7526340
      (envelope0081CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0081SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7526340 189358 := by
  decide

theorem envelope0081FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0081FibreCounts cell residue ≤
      envelope0081FibreMax cell := by
  decide +revert

theorem envelope0081UnrestrictedRatio :
    ((189358 : Rat) / 7488897) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0081ConcentratedRatio (cell : Fin 9) :
    (((envelope0081BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0081BaseCounts (.evenTwoCell residue) +
        envelope0081CellCounts cell : Nat) : Rat) /
      7488897) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0081BaseCounts, envelope0081CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0081FibreRatio :
    (((envelope0081BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0081BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0081FibreMax cell : Nat) : Rat) /
      7488897) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0081BaseCounts, envelope0081FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0082BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7563971
      (envelope0082BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0082CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7563971
      (envelope0082CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0082SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7563971 190318 := by
  decide

theorem envelope0082FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0082FibreCounts cell residue ≤
      envelope0082FibreMax cell := by
  decide +revert

theorem envelope0082UnrestrictedRatio :
    ((190318 : Rat) / 7526341) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0082ConcentratedRatio (cell : Fin 9) :
    (((envelope0082BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0082BaseCounts (.evenTwoCell residue) +
        envelope0082CellCounts cell : Nat) : Rat) /
      7526341) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0082BaseCounts, envelope0082CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0082FibreRatio :
    (((envelope0082BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0082BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0082FibreMax cell : Nat) : Rat) /
      7526341) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0082BaseCounts, envelope0082FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0083BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7601790
      (envelope0083BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0083CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7601790
      (envelope0083CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0083SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7601790 191273 := by
  decide

theorem envelope0083FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0083FibreCounts cell residue ≤
      envelope0083FibreMax cell := by
  decide +revert

theorem envelope0083UnrestrictedRatio :
    ((191273 : Rat) / 7563972) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0083ConcentratedRatio (cell : Fin 9) :
    (((envelope0083BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0083BaseCounts (.evenTwoCell residue) +
        envelope0083CellCounts cell : Nat) : Rat) /
      7563972) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0083BaseCounts, envelope0083CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0083FibreRatio :
    (((envelope0083BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0083BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0083FibreMax cell : Nat) : Rat) /
      7563972) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0083BaseCounts, envelope0083FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0084BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7639798
      (envelope0084BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0084CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7639798
      (envelope0084CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0084SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7639798 192226 := by
  decide

theorem envelope0084FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0084FibreCounts cell residue ≤
      envelope0084FibreMax cell := by
  decide +revert

theorem envelope0084UnrestrictedRatio :
    ((192226 : Rat) / 7601791) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0084ConcentratedRatio (cell : Fin 9) :
    (((envelope0084BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0084BaseCounts (.evenTwoCell residue) +
        envelope0084CellCounts cell : Nat) : Rat) /
      7601791) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0084BaseCounts, envelope0084CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0084FibreRatio :
    (((envelope0084BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0084BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0084FibreMax cell : Nat) : Rat) /
      7601791) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0084BaseCounts, envelope0084FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0085BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7677996
      (envelope0085BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0085CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7677996
      (envelope0085CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0085SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7677996 193184 := by
  decide

theorem envelope0085FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0085FibreCounts cell residue ≤
      envelope0085FibreMax cell := by
  decide +revert

theorem envelope0085UnrestrictedRatio :
    ((193184 : Rat) / 7639799) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0085ConcentratedRatio (cell : Fin 9) :
    (((envelope0085BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0085BaseCounts (.evenTwoCell residue) +
        envelope0085CellCounts cell : Nat) : Rat) /
      7639799) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0085BaseCounts, envelope0085CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0085FibreRatio :
    (((envelope0085BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0085BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0085FibreMax cell : Nat) : Rat) /
      7639799) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0085BaseCounts, envelope0085FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0086BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7716385
      (envelope0086BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0086CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7716385
      (envelope0086CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0086SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7716385 194151 := by
  decide

theorem envelope0086FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0086FibreCounts cell residue ≤
      envelope0086FibreMax cell := by
  decide +revert

theorem envelope0086UnrestrictedRatio :
    ((194151 : Rat) / 7677997) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0086ConcentratedRatio (cell : Fin 9) :
    (((envelope0086BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0086BaseCounts (.evenTwoCell residue) +
        envelope0086CellCounts cell : Nat) : Rat) /
      7677997) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0086BaseCounts, envelope0086CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0086FibreRatio :
    (((envelope0086BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0086BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0086FibreMax cell : Nat) : Rat) /
      7677997) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0086BaseCounts, envelope0086FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0087BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7754966
      (envelope0087BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0087CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 7754966
      (envelope0087CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0087SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      7754966 195123 := by
  decide

theorem envelope0087FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0087FibreCounts cell residue ≤
      envelope0087FibreMax cell := by
  decide +revert

theorem envelope0087UnrestrictedRatio :
    ((195123 : Rat) / 7716386) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0087ConcentratedRatio (cell : Fin 9) :
    (((envelope0087BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0087BaseCounts (.evenTwoCell residue) +
        envelope0087CellCounts cell : Nat) : Rat) /
      7716386) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0087BaseCounts, envelope0087CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0087FibreRatio :
    (((envelope0087BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0087BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0087FibreMax cell : Nat) : Rat) /
      7716386) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0087BaseCounts, envelope0087FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
