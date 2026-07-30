import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0016
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0017
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0008

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0128FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9514529
      (envelope0128FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0128FibreCutoffCell0 residue
  · exact envelope0128FibreCutoffCell1 residue
  · exact envelope0128FibreCutoffCell2 residue
  · exact envelope0128FibreCutoffCell3 residue
  · exact envelope0128FibreCutoffCell4 residue
  · exact envelope0128FibreCutoffCell5 residue
  · exact envelope0128FibreCutoffCell6 residue
  · exact envelope0128FibreCutoffCell7 residue
  · exact envelope0128FibreCutoffCell8 residue

theorem envelope0128 : TailR263EvenOneDiagonalRange 9467195 9514530 := by
  intro N hLower hStop
  have hNUpper : N <= 9514529 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9514529
        (envelope0128BaseCounts target) :=
    envelope0128BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9514529
        (envelope0128CellCounts cell) :=
    envelope0128CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9514529
        (envelope0128FibreCounts cell residue) :=
    envelope0128FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9514529) (count := 239374) envelope0128SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0128BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0128UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0128ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0128FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0128FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0128FibreMax cell) <=
          ∑ cell : Fin 9, envelope0128FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0128BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0128BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0128FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0128FibreRatio

theorem envelope0129FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9562101
      (envelope0129FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0129FibreCutoffCell0 residue
  · exact envelope0129FibreCutoffCell1 residue
  · exact envelope0129FibreCutoffCell2 residue
  · exact envelope0129FibreCutoffCell3 residue
  · exact envelope0129FibreCutoffCell4 residue
  · exact envelope0129FibreCutoffCell5 residue
  · exact envelope0129FibreCutoffCell6 residue
  · exact envelope0129FibreCutoffCell7 residue
  · exact envelope0129FibreCutoffCell8 residue

theorem envelope0129 : TailR263EvenOneDiagonalRange 9514530 9562102 := by
  intro N hLower hStop
  have hNUpper : N <= 9562101 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9562101
        (envelope0129BaseCounts target) :=
    envelope0129BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9562101
        (envelope0129CellCounts cell) :=
    envelope0129CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9562101
        (envelope0129FibreCounts cell residue) :=
    envelope0129FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9562101) (count := 240556) envelope0129SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0129BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0129UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0129ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0129FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0129FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0129FibreMax cell) <=
          ∑ cell : Fin 9, envelope0129FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0129BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0129BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0129FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0129FibreRatio

theorem envelope0130FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9609911
      (envelope0130FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0130FibreCutoffCell0 residue
  · exact envelope0130FibreCutoffCell1 residue
  · exact envelope0130FibreCutoffCell2 residue
  · exact envelope0130FibreCutoffCell3 residue
  · exact envelope0130FibreCutoffCell4 residue
  · exact envelope0130FibreCutoffCell5 residue
  · exact envelope0130FibreCutoffCell6 residue
  · exact envelope0130FibreCutoffCell7 residue
  · exact envelope0130FibreCutoffCell8 residue

theorem envelope0130 : TailR263EvenOneDiagonalRange 9562102 9609912 := by
  intro N hLower hStop
  have hNUpper : N <= 9609911 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9609911
        (envelope0130BaseCounts target) :=
    envelope0130BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9609911
        (envelope0130CellCounts cell) :=
    envelope0130CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9609911
        (envelope0130FibreCounts cell residue) :=
    envelope0130FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9609911) (count := 241757) envelope0130SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0130BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0130UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0130ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0130FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0130FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0130FibreMax cell) <=
          ∑ cell : Fin 9, envelope0130FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0130BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0130BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0130FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0130FibreRatio

theorem envelope0131FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9657960
      (envelope0131FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0131FibreCutoffCell0 residue
  · exact envelope0131FibreCutoffCell1 residue
  · exact envelope0131FibreCutoffCell2 residue
  · exact envelope0131FibreCutoffCell3 residue
  · exact envelope0131FibreCutoffCell4 residue
  · exact envelope0131FibreCutoffCell5 residue
  · exact envelope0131FibreCutoffCell6 residue
  · exact envelope0131FibreCutoffCell7 residue
  · exact envelope0131FibreCutoffCell8 residue

theorem envelope0131 : TailR263EvenOneDiagonalRange 9609912 9657961 := by
  intro N hLower hStop
  have hNUpper : N <= 9657960 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9657960
        (envelope0131BaseCounts target) :=
    envelope0131BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9657960
        (envelope0131CellCounts cell) :=
    envelope0131CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9657960
        (envelope0131FibreCounts cell residue) :=
    envelope0131FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9657960) (count := 242978) envelope0131SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0131BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0131UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0131ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0131FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0131FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0131FibreMax cell) <=
          ∑ cell : Fin 9, envelope0131FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0131BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0131BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0131FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0131FibreRatio

theorem envelope0132FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9706249
      (envelope0132FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0132FibreCutoffCell0 residue
  · exact envelope0132FibreCutoffCell1 residue
  · exact envelope0132FibreCutoffCell2 residue
  · exact envelope0132FibreCutoffCell3 residue
  · exact envelope0132FibreCutoffCell4 residue
  · exact envelope0132FibreCutoffCell5 residue
  · exact envelope0132FibreCutoffCell6 residue
  · exact envelope0132FibreCutoffCell7 residue
  · exact envelope0132FibreCutoffCell8 residue

theorem envelope0132 : TailR263EvenOneDiagonalRange 9657961 9706250 := by
  intro N hLower hStop
  have hNUpper : N <= 9706249 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9706249
        (envelope0132BaseCounts target) :=
    envelope0132BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9706249
        (envelope0132CellCounts cell) :=
    envelope0132CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9706249
        (envelope0132FibreCounts cell residue) :=
    envelope0132FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9706249) (count := 244188) envelope0132SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0132BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0132UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0132ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0132FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0132FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0132FibreMax cell) <=
          ∑ cell : Fin 9, envelope0132FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0132BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0132BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0132FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0132FibreRatio

theorem envelope0133FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9754780
      (envelope0133FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0133FibreCutoffCell0 residue
  · exact envelope0133FibreCutoffCell1 residue
  · exact envelope0133FibreCutoffCell2 residue
  · exact envelope0133FibreCutoffCell3 residue
  · exact envelope0133FibreCutoffCell4 residue
  · exact envelope0133FibreCutoffCell5 residue
  · exact envelope0133FibreCutoffCell6 residue
  · exact envelope0133FibreCutoffCell7 residue
  · exact envelope0133FibreCutoffCell8 residue

theorem envelope0133 : TailR263EvenOneDiagonalRange 9706250 9754781 := by
  intro N hLower hStop
  have hNUpper : N <= 9754780 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9754780
        (envelope0133BaseCounts target) :=
    envelope0133BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9754780
        (envelope0133CellCounts cell) :=
    envelope0133CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9754780
        (envelope0133FibreCounts cell residue) :=
    envelope0133FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9754780) (count := 245417) envelope0133SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0133BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0133UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0133ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0133FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0133FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0133FibreMax cell) <=
          ∑ cell : Fin 9, envelope0133FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0133BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0133BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0133FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0133FibreRatio

theorem envelope0134FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9803553
      (envelope0134FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0134FibreCutoffCell0 residue
  · exact envelope0134FibreCutoffCell1 residue
  · exact envelope0134FibreCutoffCell2 residue
  · exact envelope0134FibreCutoffCell3 residue
  · exact envelope0134FibreCutoffCell4 residue
  · exact envelope0134FibreCutoffCell5 residue
  · exact envelope0134FibreCutoffCell6 residue
  · exact envelope0134FibreCutoffCell7 residue
  · exact envelope0134FibreCutoffCell8 residue

theorem envelope0134 : TailR263EvenOneDiagonalRange 9754781 9803554 := by
  intro N hLower hStop
  have hNUpper : N <= 9803553 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9803553
        (envelope0134BaseCounts target) :=
    envelope0134BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9803553
        (envelope0134CellCounts cell) :=
    envelope0134CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9803553
        (envelope0134FibreCounts cell residue) :=
    envelope0134FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9803553) (count := 246641) envelope0134SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0134BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0134UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0134ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0134FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0134FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0134FibreMax cell) <=
          ∑ cell : Fin 9, envelope0134FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0134BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0134BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0134FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0134FibreRatio

theorem envelope0135FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9852570
      (envelope0135FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0135FibreCutoffCell0 residue
  · exact envelope0135FibreCutoffCell1 residue
  · exact envelope0135FibreCutoffCell2 residue
  · exact envelope0135FibreCutoffCell3 residue
  · exact envelope0135FibreCutoffCell4 residue
  · exact envelope0135FibreCutoffCell5 residue
  · exact envelope0135FibreCutoffCell6 residue
  · exact envelope0135FibreCutoffCell7 residue
  · exact envelope0135FibreCutoffCell8 residue

theorem envelope0135 : TailR263EvenOneDiagonalRange 9803554 9852571 := by
  intro N hLower hStop
  have hNUpper : N <= 9852570 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9852570
        (envelope0135BaseCounts target) :=
    envelope0135BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9852570
        (envelope0135CellCounts cell) :=
    envelope0135CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9852570
        (envelope0135FibreCounts cell residue) :=
    envelope0135FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9852570) (count := 247878) envelope0135SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0135BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0135UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0135ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0135FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0135FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0135FibreMax cell) <=
          ∑ cell : Fin 9, envelope0135FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0135BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0135BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0135FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0135FibreRatio

theorem envelope0136FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9901832
      (envelope0136FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0136FibreCutoffCell0 residue
  · exact envelope0136FibreCutoffCell1 residue
  · exact envelope0136FibreCutoffCell2 residue
  · exact envelope0136FibreCutoffCell3 residue
  · exact envelope0136FibreCutoffCell4 residue
  · exact envelope0136FibreCutoffCell5 residue
  · exact envelope0136FibreCutoffCell6 residue
  · exact envelope0136FibreCutoffCell7 residue
  · exact envelope0136FibreCutoffCell8 residue

theorem envelope0136 : TailR263EvenOneDiagonalRange 9852571 9901833 := by
  intro N hLower hStop
  have hNUpper : N <= 9901832 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9901832
        (envelope0136BaseCounts target) :=
    envelope0136BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9901832
        (envelope0136CellCounts cell) :=
    envelope0136CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9901832
        (envelope0136FibreCounts cell residue) :=
    envelope0136FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9901832) (count := 249110) envelope0136SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0136BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0136UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0136ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0136FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0136FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0136FibreMax cell) <=
          ∑ cell : Fin 9, envelope0136FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0136BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0136BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0136FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0136FibreRatio

theorem envelope0137FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9951341
      (envelope0137FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0137FibreCutoffCell0 residue
  · exact envelope0137FibreCutoffCell1 residue
  · exact envelope0137FibreCutoffCell2 residue
  · exact envelope0137FibreCutoffCell3 residue
  · exact envelope0137FibreCutoffCell4 residue
  · exact envelope0137FibreCutoffCell5 residue
  · exact envelope0137FibreCutoffCell6 residue
  · exact envelope0137FibreCutoffCell7 residue
  · exact envelope0137FibreCutoffCell8 residue

theorem envelope0137 : TailR263EvenOneDiagonalRange 9901833 9951342 := by
  intro N hLower hStop
  have hNUpper : N <= 9951341 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9951341
        (envelope0137BaseCounts target) :=
    envelope0137BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9951341
        (envelope0137CellCounts cell) :=
    envelope0137CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9951341
        (envelope0137FibreCounts cell residue) :=
    envelope0137FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9951341) (count := 250359) envelope0137SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0137BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0137UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0137ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0137FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0137FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0137FibreMax cell) <=
          ∑ cell : Fin 9, envelope0137FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0137BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0137BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0137FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0137FibreRatio

theorem envelope0138FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9999999
      (envelope0138FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0138FibreCutoffCell0 residue
  · exact envelope0138FibreCutoffCell1 residue
  · exact envelope0138FibreCutoffCell2 residue
  · exact envelope0138FibreCutoffCell3 residue
  · exact envelope0138FibreCutoffCell4 residue
  · exact envelope0138FibreCutoffCell5 residue
  · exact envelope0138FibreCutoffCell6 residue
  · exact envelope0138FibreCutoffCell7 residue
  · exact envelope0138FibreCutoffCell8 residue

theorem envelope0138 : TailR263EvenOneDiagonalRange 9951342 10000000 := by
  intro N hLower hStop
  have hNUpper : N <= 9999999 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9999999
        (envelope0138BaseCounts target) :=
    envelope0138BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9999999
        (envelope0138CellCounts cell) :=
    envelope0138CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9999999
        (envelope0138FibreCounts cell residue) :=
    envelope0138FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9999999) (count := 251583) envelope0138SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0138BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0138UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0138ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0138FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0138FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0138FibreMax cell) <=
          ∑ cell : Fin 9, envelope0138FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0138BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0138BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0138FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0138FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
