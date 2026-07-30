import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0008

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0128BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9514529
      (envelope0128BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0128CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9514529
      (envelope0128CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0128SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9514529 239374 := by
  decide

theorem envelope0128FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0128FibreCounts cell residue ≤
      envelope0128FibreMax cell := by
  decide +revert

theorem envelope0128UnrestrictedRatio :
    ((239374 : Rat) / 9467195) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0128ConcentratedRatio (cell : Fin 9) :
    (((envelope0128BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0128BaseCounts (.evenTwoCell residue) +
        envelope0128CellCounts cell : Nat) : Rat) /
      9467195) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0128BaseCounts, envelope0128CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0128FibreRatio :
    (((envelope0128BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0128BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0128FibreMax cell : Nat) : Rat) /
      9467195) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0128BaseCounts, envelope0128FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0129BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9562101
      (envelope0129BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0129CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9562101
      (envelope0129CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0129SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9562101 240556 := by
  decide

theorem envelope0129FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0129FibreCounts cell residue ≤
      envelope0129FibreMax cell := by
  decide +revert

theorem envelope0129UnrestrictedRatio :
    ((240556 : Rat) / 9514530) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0129ConcentratedRatio (cell : Fin 9) :
    (((envelope0129BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0129BaseCounts (.evenTwoCell residue) +
        envelope0129CellCounts cell : Nat) : Rat) /
      9514530) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0129BaseCounts, envelope0129CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0129FibreRatio :
    (((envelope0129BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0129BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0129FibreMax cell : Nat) : Rat) /
      9514530) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0129BaseCounts, envelope0129FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0130BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9609911
      (envelope0130BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0130CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9609911
      (envelope0130CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0130SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9609911 241757 := by
  decide

theorem envelope0130FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0130FibreCounts cell residue ≤
      envelope0130FibreMax cell := by
  decide +revert

theorem envelope0130UnrestrictedRatio :
    ((241757 : Rat) / 9562102) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0130ConcentratedRatio (cell : Fin 9) :
    (((envelope0130BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0130BaseCounts (.evenTwoCell residue) +
        envelope0130CellCounts cell : Nat) : Rat) /
      9562102) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0130BaseCounts, envelope0130CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0130FibreRatio :
    (((envelope0130BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0130BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0130FibreMax cell : Nat) : Rat) /
      9562102) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0130BaseCounts, envelope0130FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0131BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9657960
      (envelope0131BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0131CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9657960
      (envelope0131CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0131SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9657960 242978 := by
  decide

theorem envelope0131FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0131FibreCounts cell residue ≤
      envelope0131FibreMax cell := by
  decide +revert

theorem envelope0131UnrestrictedRatio :
    ((242978 : Rat) / 9609912) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0131ConcentratedRatio (cell : Fin 9) :
    (((envelope0131BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0131BaseCounts (.evenTwoCell residue) +
        envelope0131CellCounts cell : Nat) : Rat) /
      9609912) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0131BaseCounts, envelope0131CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0131FibreRatio :
    (((envelope0131BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0131BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0131FibreMax cell : Nat) : Rat) /
      9609912) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0131BaseCounts, envelope0131FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0132BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9706249
      (envelope0132BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0132CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9706249
      (envelope0132CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0132SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9706249 244188 := by
  decide

theorem envelope0132FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0132FibreCounts cell residue ≤
      envelope0132FibreMax cell := by
  decide +revert

theorem envelope0132UnrestrictedRatio :
    ((244188 : Rat) / 9657961) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0132ConcentratedRatio (cell : Fin 9) :
    (((envelope0132BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0132BaseCounts (.evenTwoCell residue) +
        envelope0132CellCounts cell : Nat) : Rat) /
      9657961) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0132BaseCounts, envelope0132CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0132FibreRatio :
    (((envelope0132BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0132BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0132FibreMax cell : Nat) : Rat) /
      9657961) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0132BaseCounts, envelope0132FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0133BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9754780
      (envelope0133BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0133CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9754780
      (envelope0133CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0133SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9754780 245417 := by
  decide

theorem envelope0133FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0133FibreCounts cell residue ≤
      envelope0133FibreMax cell := by
  decide +revert

theorem envelope0133UnrestrictedRatio :
    ((245417 : Rat) / 9706250) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0133ConcentratedRatio (cell : Fin 9) :
    (((envelope0133BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0133BaseCounts (.evenTwoCell residue) +
        envelope0133CellCounts cell : Nat) : Rat) /
      9706250) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0133BaseCounts, envelope0133CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0133FibreRatio :
    (((envelope0133BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0133BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0133FibreMax cell : Nat) : Rat) /
      9706250) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0133BaseCounts, envelope0133FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0134BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9803553
      (envelope0134BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0134CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9803553
      (envelope0134CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0134SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9803553 246641 := by
  decide

theorem envelope0134FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0134FibreCounts cell residue ≤
      envelope0134FibreMax cell := by
  decide +revert

theorem envelope0134UnrestrictedRatio :
    ((246641 : Rat) / 9754781) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0134ConcentratedRatio (cell : Fin 9) :
    (((envelope0134BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0134BaseCounts (.evenTwoCell residue) +
        envelope0134CellCounts cell : Nat) : Rat) /
      9754781) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0134BaseCounts, envelope0134CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0134FibreRatio :
    (((envelope0134BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0134BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0134FibreMax cell : Nat) : Rat) /
      9754781) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0134BaseCounts, envelope0134FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

theorem envelope0135BaseCutoff : ∀ target,
    (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9852570
      (envelope0135BaseCounts target) := by
  intro target
  cases target with
  | lowTwo => decide
  | evenTwoCell residue => fin_cases residue <;> decide

theorem envelope0135CellCutoff : ∀ cell,
    (cellTargets cell).Cutoff 9852570
      (envelope0135CellCounts cell) := by
  intro cell
  fin_cases cell <;> decide

theorem envelope0135SourceCutoff :
    GeneratedTailDiagonalCoverage.certificate.marker.Cutoff
      9852570 247878 := by
  decide

theorem envelope0135FibreCounts_le
    (cell : Fin 9) (residue : Fin 49) :
    envelope0135FibreCounts cell residue ≤
      envelope0135FibreMax cell := by
  decide +revert

theorem envelope0135UnrestrictedRatio :
    ((247878 : Rat) / 9803554) ≤
      tailR263EvenOneUnrestrictedDiagonalEnvelope := by
  norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope]

theorem envelope0135ConcentratedRatio (cell : Fin 9) :
    (((envelope0135BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0135BaseCounts (.evenTwoCell residue) +
        envelope0135CellCounts cell : Nat) : Rat) /
      9803554) ≤
        tailR263EvenOneConcentratedDiagonalEnvelope := by
  fin_cases cell <;>
    norm_num [envelope0135BaseCounts, envelope0135CellCounts,
      tailR263EvenOneConcentratedDiagonalEnvelope,
      Fin.sum_univ_succ]

theorem envelope0135FibreRatio :
    (((envelope0135BaseCounts .lowTwo +
        ∑ residue : Fin 9,
          envelope0135BaseCounts (.evenTwoCell residue) +
        ∑ cell : Fin 9,
          envelope0135FibreMax cell : Nat) : Rat) /
      9803554) ≤
        tailR263EvenOneFibreCoverDiagonalEnvelope := by
  norm_num [envelope0135BaseCounts, envelope0135FibreMax,
    tailR263EvenOneFibreCoverDiagonalEnvelope,
    Fin.sum_univ_succ]

end Erdos848.GeneratedTailR263EvenOneDiagonal
