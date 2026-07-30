import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0002

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0040BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6134464
      (envelope0040BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0040CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6134464
      (envelope0040CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0040SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6134464 154364 := by
  decide

theorem envelope0040FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0040FibreCounts cell residue ≤
      envelope0040FibreMax cell := by
  decide +revert

theorem envelope0040UnrestrictedRatio :
    ((154364 : Rat) / 6103946) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0040ConcentratedRatio (cell : Fin 9) :
    (((envelope0040BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0040BaseCounts (.evenTwoCell residue) +
        envelope0040CellCounts cell : Nat) : Rat) /
      6103946) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0040BaseCounts, envelope0040CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0040FibreRatio :
    (((envelope0040BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0040BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0040FibreMax cell : Nat) : Rat) /
      6103946) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0040BaseCounts, envelope0040FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0041BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6165136
      (envelope0041BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0041CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6165136
      (envelope0041CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0041SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6165136 155127 := by
  decide

theorem envelope0041FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0041FibreCounts cell residue ≤
      envelope0041FibreMax cell := by
  decide +revert

theorem envelope0041UnrestrictedRatio :
    ((155127 : Rat) / 6134465) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0041ConcentratedRatio (cell : Fin 9) :
    (((envelope0041BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0041BaseCounts (.evenTwoCell residue) +
        envelope0041CellCounts cell : Nat) : Rat) /
      6134465) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0041BaseCounts, envelope0041CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0041FibreRatio :
    (((envelope0041BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0041BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0041FibreMax cell : Nat) : Rat) /
      6134465) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0041BaseCounts, envelope0041FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0042BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6195961
      (envelope0042BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0042CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6195961
      (envelope0042CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0042SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6195961 155910 := by
  decide

theorem envelope0042FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0042FibreCounts cell residue ≤
      envelope0042FibreMax cell := by
  decide +revert

theorem envelope0042UnrestrictedRatio :
    ((155910 : Rat) / 6165137) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0042ConcentratedRatio (cell : Fin 9) :
    (((envelope0042BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0042BaseCounts (.evenTwoCell residue) +
        envelope0042CellCounts cell : Nat) : Rat) /
      6165137) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0042BaseCounts, envelope0042CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0042FibreRatio :
    (((envelope0042BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0042BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0042FibreMax cell : Nat) : Rat) /
      6165137) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0042BaseCounts, envelope0042FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0043BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6226940
      (envelope0043BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0043CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6226940
      (envelope0043CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0043SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6226940 156687 := by
  decide

theorem envelope0043FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0043FibreCounts cell residue ≤
      envelope0043FibreMax cell := by
  decide +revert

theorem envelope0043UnrestrictedRatio :
    ((156687 : Rat) / 6195962) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0043ConcentratedRatio (cell : Fin 9) :
    (((envelope0043BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0043BaseCounts (.evenTwoCell residue) +
        envelope0043CellCounts cell : Nat) : Rat) /
      6195962) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0043BaseCounts, envelope0043CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0043FibreRatio :
    (((envelope0043BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0043BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0043FibreMax cell : Nat) : Rat) /
      6195962) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0043BaseCounts, envelope0043FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0044BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6258074
      (envelope0044BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0044CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6258074
      (envelope0044CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0044SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6258074 157466 := by
  decide

theorem envelope0044FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0044FibreCounts cell residue ≤
      envelope0044FibreMax cell := by
  decide +revert

theorem envelope0044UnrestrictedRatio :
    ((157466 : Rat) / 6226941) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0044ConcentratedRatio (cell : Fin 9) :
    (((envelope0044BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0044BaseCounts (.evenTwoCell residue) +
        envelope0044CellCounts cell : Nat) : Rat) /
      6226941) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0044BaseCounts, envelope0044CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0044FibreRatio :
    (((envelope0044BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0044BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0044FibreMax cell : Nat) : Rat) /
      6226941) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0044BaseCounts, envelope0044FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0045BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6289364
      (envelope0045BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0045CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6289364
      (envelope0045CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0045SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6289364 158260 := by
  decide

theorem envelope0045FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0045FibreCounts cell residue ≤
      envelope0045FibreMax cell := by
  decide +revert

theorem envelope0045UnrestrictedRatio :
    ((158260 : Rat) / 6258075) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0045ConcentratedRatio (cell : Fin 9) :
    (((envelope0045BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0045BaseCounts (.evenTwoCell residue) +
        envelope0045CellCounts cell : Nat) : Rat) /
      6258075) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0045BaseCounts, envelope0045CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0045FibreRatio :
    (((envelope0045BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0045BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0045FibreMax cell : Nat) : Rat) /
      6258075) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0045BaseCounts, envelope0045FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0046BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6320810
      (envelope0046BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0046CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6320810
      (envelope0046CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0046SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6320810 159046 := by
  decide

theorem envelope0046FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0046FibreCounts cell residue ≤
      envelope0046FibreMax cell := by
  decide +revert

theorem envelope0046UnrestrictedRatio :
    ((159046 : Rat) / 6289365) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0046ConcentratedRatio (cell : Fin 9) :
    (((envelope0046BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0046BaseCounts (.evenTwoCell residue) +
        envelope0046CellCounts cell : Nat) : Rat) /
      6289365) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0046BaseCounts, envelope0046CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0046FibreRatio :
    (((envelope0046BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0046BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0046FibreMax cell : Nat) : Rat) /
      6289365) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0046BaseCounts, envelope0046FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0047BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6352414
      (envelope0047BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0047CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 6352414
      (envelope0047CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0047SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      6352414 159842 := by
  decide

theorem envelope0047FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0047FibreCounts cell residue ≤
      envelope0047FibreMax cell := by
  decide +revert

theorem envelope0047UnrestrictedRatio :
    ((159842 : Rat) / 6320811) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0047ConcentratedRatio (cell : Fin 9) :
    (((envelope0047BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0047BaseCounts (.evenTwoCell residue) +
        envelope0047CellCounts cell : Nat) : Rat) /
      6320811) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0047BaseCounts, envelope0047CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0047FibreRatio :
    (((envelope0047BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0047BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0047FibreMax cell : Nat) : Rat) /
      6320811) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0047BaseCounts, envelope0047FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
