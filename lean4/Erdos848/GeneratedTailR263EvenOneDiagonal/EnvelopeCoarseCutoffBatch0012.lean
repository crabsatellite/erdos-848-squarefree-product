import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0006

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0096BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8110996
      (envelope0096BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0096CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8110996
      (envelope0096CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0096SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8110996 204051 := by
  decide

theorem envelope0096FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0096FibreCounts cell residue ≤
      envelope0096FibreMax cell := by
  decide +revert

theorem envelope0096UnrestrictedRatio :
    ((204051 : Rat) / 8070644) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0096ConcentratedRatio (cell : Fin 9) :
    (((envelope0096BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0096BaseCounts (.evenTwoCell residue) +
        envelope0096CellCounts cell : Nat) : Rat) /
      8070644) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0096BaseCounts, envelope0096CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0096FibreRatio :
    (((envelope0096BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0096BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0096FibreMax cell : Nat) : Rat) /
      8070644) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0096BaseCounts, envelope0096FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0097BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8151550
      (envelope0097BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0097CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8151550
      (envelope0097CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0097SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8151550 205076 := by
  decide

theorem envelope0097FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0097FibreCounts cell residue ≤
      envelope0097FibreMax cell := by
  decide +revert

theorem envelope0097UnrestrictedRatio :
    ((205076 : Rat) / 8110997) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0097ConcentratedRatio (cell : Fin 9) :
    (((envelope0097BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0097BaseCounts (.evenTwoCell residue) +
        envelope0097CellCounts cell : Nat) : Rat) /
      8110997) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0097BaseCounts, envelope0097CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0097FibreRatio :
    (((envelope0097BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0097BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0097FibreMax cell : Nat) : Rat) /
      8110997) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0097BaseCounts, envelope0097FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0098BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8192307
      (envelope0098BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0098CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8192307
      (envelope0098CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0098SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8192307 206110 := by
  decide

theorem envelope0098FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0098FibreCounts cell residue ≤
      envelope0098FibreMax cell := by
  decide +revert

theorem envelope0098UnrestrictedRatio :
    ((206110 : Rat) / 8151551) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0098ConcentratedRatio (cell : Fin 9) :
    (((envelope0098BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0098BaseCounts (.evenTwoCell residue) +
        envelope0098CellCounts cell : Nat) : Rat) /
      8151551) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0098BaseCounts, envelope0098CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0098FibreRatio :
    (((envelope0098BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0098BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0098FibreMax cell : Nat) : Rat) /
      8151551) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0098BaseCounts, envelope0098FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0099BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8233268
      (envelope0099BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0099CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8233268
      (envelope0099CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0099SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8233268 207144 := by
  decide

theorem envelope0099FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0099FibreCounts cell residue ≤
      envelope0099FibreMax cell := by
  decide +revert

theorem envelope0099UnrestrictedRatio :
    ((207144 : Rat) / 8192308) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0099ConcentratedRatio (cell : Fin 9) :
    (((envelope0099BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0099BaseCounts (.evenTwoCell residue) +
        envelope0099CellCounts cell : Nat) : Rat) /
      8192308) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0099BaseCounts, envelope0099CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0099FibreRatio :
    (((envelope0099BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0099BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0099FibreMax cell : Nat) : Rat) /
      8192308) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0099BaseCounts, envelope0099FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0100BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8274434
      (envelope0100BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0100CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8274434
      (envelope0100CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0100SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8274434 208181 := by
  decide

theorem envelope0100FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0100FibreCounts cell residue ≤
      envelope0100FibreMax cell := by
  decide +revert

theorem envelope0100UnrestrictedRatio :
    ((208181 : Rat) / 8233269) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0100ConcentratedRatio (cell : Fin 9) :
    (((envelope0100BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0100BaseCounts (.evenTwoCell residue) +
        envelope0100CellCounts cell : Nat) : Rat) /
      8233269) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0100BaseCounts, envelope0100CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0100FibreRatio :
    (((envelope0100BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0100BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0100FibreMax cell : Nat) : Rat) /
      8233269) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0100BaseCounts, envelope0100FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0101BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8315806
      (envelope0101BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0101CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8315806
      (envelope0101CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0101SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8315806 209213 := by
  decide

theorem envelope0101FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0101FibreCounts cell residue ≤
      envelope0101FibreMax cell := by
  decide +revert

theorem envelope0101UnrestrictedRatio :
    ((209213 : Rat) / 8274435) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0101ConcentratedRatio (cell : Fin 9) :
    (((envelope0101BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0101BaseCounts (.evenTwoCell residue) +
        envelope0101CellCounts cell : Nat) : Rat) /
      8274435) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0101BaseCounts, envelope0101CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0101FibreRatio :
    (((envelope0101BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0101BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0101FibreMax cell : Nat) : Rat) /
      8274435) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0101BaseCounts, envelope0101FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0102BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8357385
      (envelope0102BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0102CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8357385
      (envelope0102CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0102SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8357385 210259 := by
  decide

theorem envelope0102FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0102FibreCounts cell residue ≤
      envelope0102FibreMax cell := by
  decide +revert

theorem envelope0102UnrestrictedRatio :
    ((210259 : Rat) / 8315807) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0102ConcentratedRatio (cell : Fin 9) :
    (((envelope0102BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0102BaseCounts (.evenTwoCell residue) +
        envelope0102CellCounts cell : Nat) : Rat) /
      8315807) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0102BaseCounts, envelope0102CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0102FibreRatio :
    (((envelope0102BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0102BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0102FibreMax cell : Nat) : Rat) /
      8315807) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0102BaseCounts, envelope0102FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0103BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8399171
      (envelope0103BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0103CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8399171
      (envelope0103CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0103SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8399171 211319 := by
  decide

theorem envelope0103FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0103FibreCounts cell residue ≤
      envelope0103FibreMax cell := by
  decide +revert

theorem envelope0103UnrestrictedRatio :
    ((211319 : Rat) / 8357386) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0103ConcentratedRatio (cell : Fin 9) :
    (((envelope0103BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0103BaseCounts (.evenTwoCell residue) +
        envelope0103CellCounts cell : Nat) : Rat) /
      8357386) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0103BaseCounts, envelope0103CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0103FibreRatio :
    (((envelope0103BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0103BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0103FibreMax cell : Nat) : Rat) /
      8357386) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0103BaseCounts, envelope0103FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
