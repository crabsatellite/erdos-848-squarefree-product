import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0006

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0104BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8441166
      (envelope0104BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0104CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8441166
      (envelope0104CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0104SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8441166 212374 := by
  decide

theorem envelope0104FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0104FibreCounts cell residue ≤
      envelope0104FibreMax cell := by
  decide +revert

theorem envelope0104UnrestrictedRatio :
    ((212374 : Rat) / 8399172) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0104ConcentratedRatio (cell : Fin 9) :
    (((envelope0104BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0104BaseCounts (.evenTwoCell residue) +
        envelope0104CellCounts cell : Nat) : Rat) /
      8399172) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0104BaseCounts, envelope0104CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0104FibreRatio :
    (((envelope0104BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0104BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0104FibreMax cell : Nat) : Rat) /
      8399172) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0104BaseCounts, envelope0104FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0105BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8483371
      (envelope0105BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0105CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8483371
      (envelope0105CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0105SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8483371 213435 := by
  decide

theorem envelope0105FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0105FibreCounts cell residue ≤
      envelope0105FibreMax cell := by
  decide +revert

theorem envelope0105UnrestrictedRatio :
    ((213435 : Rat) / 8441167) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0105ConcentratedRatio (cell : Fin 9) :
    (((envelope0105BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0105BaseCounts (.evenTwoCell residue) +
        envelope0105CellCounts cell : Nat) : Rat) /
      8441167) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0105BaseCounts, envelope0105CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0105FibreRatio :
    (((envelope0105BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0105BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0105FibreMax cell : Nat) : Rat) /
      8441167) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0105BaseCounts, envelope0105FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0106BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8525787
      (envelope0106BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0106CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8525787
      (envelope0106CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0106SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8525787 214499 := by
  decide

theorem envelope0106FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0106FibreCounts cell residue ≤
      envelope0106FibreMax cell := by
  decide +revert

theorem envelope0106UnrestrictedRatio :
    ((214499 : Rat) / 8483372) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0106ConcentratedRatio (cell : Fin 9) :
    (((envelope0106BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0106BaseCounts (.evenTwoCell residue) +
        envelope0106CellCounts cell : Nat) : Rat) /
      8483372) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0106BaseCounts, envelope0106CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0106FibreRatio :
    (((envelope0106BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0106BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0106FibreMax cell : Nat) : Rat) /
      8483372) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0106BaseCounts, envelope0106FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0107BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8568415
      (envelope0107BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0107CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8568415
      (envelope0107CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0107SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8568415 215569 := by
  decide

theorem envelope0107FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0107FibreCounts cell residue ≤
      envelope0107FibreMax cell := by
  decide +revert

theorem envelope0107UnrestrictedRatio :
    ((215569 : Rat) / 8525788) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0107ConcentratedRatio (cell : Fin 9) :
    (((envelope0107BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0107BaseCounts (.evenTwoCell residue) +
        envelope0107CellCounts cell : Nat) : Rat) /
      8525788) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0107BaseCounts, envelope0107CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0107FibreRatio :
    (((envelope0107BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0107BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0107FibreMax cell : Nat) : Rat) /
      8525788) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0107BaseCounts, envelope0107FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0108BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8611257
      (envelope0108BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0108CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8611257
      (envelope0108CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0108SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8611257 216646 := by
  decide

theorem envelope0108FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0108FibreCounts cell residue ≤
      envelope0108FibreMax cell := by
  decide +revert

theorem envelope0108UnrestrictedRatio :
    ((216646 : Rat) / 8568416) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0108ConcentratedRatio (cell : Fin 9) :
    (((envelope0108BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0108BaseCounts (.evenTwoCell residue) +
        envelope0108CellCounts cell : Nat) : Rat) /
      8568416) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0108BaseCounts, envelope0108CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0108FibreRatio :
    (((envelope0108BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0108BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0108FibreMax cell : Nat) : Rat) /
      8568416) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0108BaseCounts, envelope0108FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0109BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8654313
      (envelope0109BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0109CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8654313
      (envelope0109CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0109SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8654313 217725 := by
  decide

theorem envelope0109FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0109FibreCounts cell residue ≤
      envelope0109FibreMax cell := by
  decide +revert

theorem envelope0109UnrestrictedRatio :
    ((217725 : Rat) / 8611258) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0109ConcentratedRatio (cell : Fin 9) :
    (((envelope0109BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0109BaseCounts (.evenTwoCell residue) +
        envelope0109CellCounts cell : Nat) : Rat) /
      8611258) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0109BaseCounts, envelope0109CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0109FibreRatio :
    (((envelope0109BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0109BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0109FibreMax cell : Nat) : Rat) /
      8611258) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0109BaseCounts, envelope0109FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0110BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8697584
      (envelope0110BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0110CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8697584
      (envelope0110CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0110SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8697584 218823 := by
  decide

theorem envelope0110FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0110FibreCounts cell residue ≤
      envelope0110FibreMax cell := by
  decide +revert

theorem envelope0110UnrestrictedRatio :
    ((218823 : Rat) / 8654314) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0110ConcentratedRatio (cell : Fin 9) :
    (((envelope0110BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0110BaseCounts (.evenTwoCell residue) +
        envelope0110CellCounts cell : Nat) : Rat) /
      8654314) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0110BaseCounts, envelope0110CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0110FibreRatio :
    (((envelope0110BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0110BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0110FibreMax cell : Nat) : Rat) /
      8654314) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0110BaseCounts, envelope0110FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0111BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8741071
      (envelope0111BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0111CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 8741071
      (envelope0111CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0111SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      8741071 219908 := by
  decide

theorem envelope0111FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0111FibreCounts cell residue ≤
      envelope0111FibreMax cell := by
  decide +revert

theorem envelope0111UnrestrictedRatio :
    ((219908 : Rat) / 8697585) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0111ConcentratedRatio (cell : Fin 9) :
    (((envelope0111BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0111BaseCounts (.evenTwoCell residue) +
        envelope0111CellCounts cell : Nat) : Rat) /
      8697585) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0111BaseCounts, envelope0111CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0111FibreRatio :
    (((envelope0111BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0111BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0111FibreMax cell : Nat) : Rat) /
      8697585) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0111BaseCounts, envelope0111FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
