import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0003

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0048FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6384176
      (envelope0048FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0048FibreCutoffCell0 residue
  · exact envelope0048FibreCutoffCell1 residue
  · exact envelope0048FibreCutoffCell2 residue
  · exact envelope0048FibreCutoffCell3 residue
  · exact envelope0048FibreCutoffCell4 residue
  · exact envelope0048FibreCutoffCell5 residue
  · exact envelope0048FibreCutoffCell6 residue
  · exact envelope0048FibreCutoffCell7 residue
  · exact envelope0048FibreCutoffCell8 residue

theorem envelope0048 : TailR263EvenOneDiagonalRange 6352415 6384177 := by
  intro N hLower hStop
  have hNUpper : N <= 6384176 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6384176
        (envelope0048BaseCounts target) :=
    envelope0048BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6384176
        (envelope0048CellCounts cell) :=
    envelope0048CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6384176
        (envelope0048FibreCounts cell residue) :=
    envelope0048FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6384176) (count := 160645) envelope0048SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0048BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0048UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0048ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0048FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0048FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0048FibreMax cell) <=
          ∑ cell : Fin 9, envelope0048FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0048BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0048BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0048FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0048FibreRatio

theorem envelope0049FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6416096
      (envelope0049FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0049FibreCutoffCell0 residue
  · exact envelope0049FibreCutoffCell1 residue
  · exact envelope0049FibreCutoffCell2 residue
  · exact envelope0049FibreCutoffCell3 residue
  · exact envelope0049FibreCutoffCell4 residue
  · exact envelope0049FibreCutoffCell5 residue
  · exact envelope0049FibreCutoffCell6 residue
  · exact envelope0049FibreCutoffCell7 residue
  · exact envelope0049FibreCutoffCell8 residue

theorem envelope0049 : TailR263EvenOneDiagonalRange 6384177 6416097 := by
  intro N hLower hStop
  have hNUpper : N <= 6416096 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6416096
        (envelope0049BaseCounts target) :=
    envelope0049BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6416096
        (envelope0049CellCounts cell) :=
    envelope0049CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6416096
        (envelope0049FibreCounts cell residue) :=
    envelope0049FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6416096) (count := 161449) envelope0049SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0049BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0049UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0049ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0049FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0049FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0049FibreMax cell) <=
          ∑ cell : Fin 9, envelope0049FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0049BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0049BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0049FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0049FibreRatio

theorem envelope0050FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6448176
      (envelope0050FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0050FibreCutoffCell0 residue
  · exact envelope0050FibreCutoffCell1 residue
  · exact envelope0050FibreCutoffCell2 residue
  · exact envelope0050FibreCutoffCell3 residue
  · exact envelope0050FibreCutoffCell4 residue
  · exact envelope0050FibreCutoffCell5 residue
  · exact envelope0050FibreCutoffCell6 residue
  · exact envelope0050FibreCutoffCell7 residue
  · exact envelope0050FibreCutoffCell8 residue

theorem envelope0050 : TailR263EvenOneDiagonalRange 6416097 6448177 := by
  intro N hLower hStop
  have hNUpper : N <= 6448176 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6448176
        (envelope0050BaseCounts target) :=
    envelope0050BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6448176
        (envelope0050CellCounts cell) :=
    envelope0050CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6448176
        (envelope0050FibreCounts cell residue) :=
    envelope0050FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6448176) (count := 162264) envelope0050SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0050BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0050UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0050ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0050FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0050FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0050FibreMax cell) <=
          ∑ cell : Fin 9, envelope0050FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0050BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0050BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0050FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0050FibreRatio

theorem envelope0051FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6480416
      (envelope0051FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0051FibreCutoffCell0 residue
  · exact envelope0051FibreCutoffCell1 residue
  · exact envelope0051FibreCutoffCell2 residue
  · exact envelope0051FibreCutoffCell3 residue
  · exact envelope0051FibreCutoffCell4 residue
  · exact envelope0051FibreCutoffCell5 residue
  · exact envelope0051FibreCutoffCell6 residue
  · exact envelope0051FibreCutoffCell7 residue
  · exact envelope0051FibreCutoffCell8 residue

theorem envelope0051 : TailR263EvenOneDiagonalRange 6448177 6480417 := by
  intro N hLower hStop
  have hNUpper : N <= 6480416 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6480416
        (envelope0051BaseCounts target) :=
    envelope0051BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6480416
        (envelope0051CellCounts cell) :=
    envelope0051CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6480416
        (envelope0051FibreCounts cell residue) :=
    envelope0051FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6480416) (count := 163069) envelope0051SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0051BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0051UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0051ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0051FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0051FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0051FibreMax cell) <=
          ∑ cell : Fin 9, envelope0051FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0051BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0051BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0051FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0051FibreRatio

theorem envelope0052FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6512818
      (envelope0052FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0052FibreCutoffCell0 residue
  · exact envelope0052FibreCutoffCell1 residue
  · exact envelope0052FibreCutoffCell2 residue
  · exact envelope0052FibreCutoffCell3 residue
  · exact envelope0052FibreCutoffCell4 residue
  · exact envelope0052FibreCutoffCell5 residue
  · exact envelope0052FibreCutoffCell6 residue
  · exact envelope0052FibreCutoffCell7 residue
  · exact envelope0052FibreCutoffCell8 residue

theorem envelope0052 : TailR263EvenOneDiagonalRange 6480417 6512819 := by
  intro N hLower hStop
  have hNUpper : N <= 6512818 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6512818
        (envelope0052BaseCounts target) :=
    envelope0052BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6512818
        (envelope0052CellCounts cell) :=
    envelope0052CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6512818
        (envelope0052FibreCounts cell residue) :=
    envelope0052FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6512818) (count := 163889) envelope0052SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0052BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0052UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0052ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0052FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0052FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0052FibreMax cell) <=
          ∑ cell : Fin 9, envelope0052FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0052BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0052BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0052FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0052FibreRatio

theorem envelope0053FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6545382
      (envelope0053FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0053FibreCutoffCell0 residue
  · exact envelope0053FibreCutoffCell1 residue
  · exact envelope0053FibreCutoffCell2 residue
  · exact envelope0053FibreCutoffCell3 residue
  · exact envelope0053FibreCutoffCell4 residue
  · exact envelope0053FibreCutoffCell5 residue
  · exact envelope0053FibreCutoffCell6 residue
  · exact envelope0053FibreCutoffCell7 residue
  · exact envelope0053FibreCutoffCell8 residue

theorem envelope0053 : TailR263EvenOneDiagonalRange 6512819 6545383 := by
  intro N hLower hStop
  have hNUpper : N <= 6545382 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6545382
        (envelope0053BaseCounts target) :=
    envelope0053BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6545382
        (envelope0053CellCounts cell) :=
    envelope0053CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6545382
        (envelope0053FibreCounts cell residue) :=
    envelope0053FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6545382) (count := 164699) envelope0053SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0053BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0053UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0053ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0053FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0053FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0053FibreMax cell) <=
          ∑ cell : Fin 9, envelope0053FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0053BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0053BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0053FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0053FibreRatio

theorem envelope0054FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6578108
      (envelope0054FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0054FibreCutoffCell0 residue
  · exact envelope0054FibreCutoffCell1 residue
  · exact envelope0054FibreCutoffCell2 residue
  · exact envelope0054FibreCutoffCell3 residue
  · exact envelope0054FibreCutoffCell4 residue
  · exact envelope0054FibreCutoffCell5 residue
  · exact envelope0054FibreCutoffCell6 residue
  · exact envelope0054FibreCutoffCell7 residue
  · exact envelope0054FibreCutoffCell8 residue

theorem envelope0054 : TailR263EvenOneDiagonalRange 6545383 6578109 := by
  intro N hLower hStop
  have hNUpper : N <= 6578108 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6578108
        (envelope0054BaseCounts target) :=
    envelope0054BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6578108
        (envelope0054CellCounts cell) :=
    envelope0054CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6578108
        (envelope0054FibreCounts cell residue) :=
    envelope0054FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6578108) (count := 165527) envelope0054SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0054BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0054UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0054ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0054FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0054FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0054FibreMax cell) <=
          ∑ cell : Fin 9, envelope0054FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0054BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0054BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0054FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0054FibreRatio

theorem envelope0055FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6610998
      (envelope0055FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0055FibreCutoffCell0 residue
  · exact envelope0055FibreCutoffCell1 residue
  · exact envelope0055FibreCutoffCell2 residue
  · exact envelope0055FibreCutoffCell3 residue
  · exact envelope0055FibreCutoffCell4 residue
  · exact envelope0055FibreCutoffCell5 residue
  · exact envelope0055FibreCutoffCell6 residue
  · exact envelope0055FibreCutoffCell7 residue
  · exact envelope0055FibreCutoffCell8 residue

theorem envelope0055 : TailR263EvenOneDiagonalRange 6578109 6610999 := by
  intro N hLower hStop
  have hNUpper : N <= 6610998 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6610998
        (envelope0055BaseCounts target) :=
    envelope0055BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6610998
        (envelope0055CellCounts cell) :=
    envelope0055CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6610998
        (envelope0055FibreCounts cell residue) :=
    envelope0055FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6610998) (count := 166346) envelope0055SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0055BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0055UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0055ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0055FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0055FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0055FibreMax cell) <=
          ∑ cell : Fin 9, envelope0055FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0055BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0055BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0055FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0055FibreRatio

theorem envelope0056FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6644052
      (envelope0056FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0056FibreCutoffCell0 residue
  · exact envelope0056FibreCutoffCell1 residue
  · exact envelope0056FibreCutoffCell2 residue
  · exact envelope0056FibreCutoffCell3 residue
  · exact envelope0056FibreCutoffCell4 residue
  · exact envelope0056FibreCutoffCell5 residue
  · exact envelope0056FibreCutoffCell6 residue
  · exact envelope0056FibreCutoffCell7 residue
  · exact envelope0056FibreCutoffCell8 residue

theorem envelope0056 : TailR263EvenOneDiagonalRange 6610999 6644053 := by
  intro N hLower hStop
  have hNUpper : N <= 6644052 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6644052
        (envelope0056BaseCounts target) :=
    envelope0056BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6644052
        (envelope0056CellCounts cell) :=
    envelope0056CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6644052
        (envelope0056FibreCounts cell residue) :=
    envelope0056FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6644052) (count := 167186) envelope0056SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0056BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0056UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0056ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0056FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0056FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0056FibreMax cell) <=
          ∑ cell : Fin 9, envelope0056FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0056BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0056BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0056FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0056FibreRatio

theorem envelope0057FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6677272
      (envelope0057FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0057FibreCutoffCell0 residue
  · exact envelope0057FibreCutoffCell1 residue
  · exact envelope0057FibreCutoffCell2 residue
  · exact envelope0057FibreCutoffCell3 residue
  · exact envelope0057FibreCutoffCell4 residue
  · exact envelope0057FibreCutoffCell5 residue
  · exact envelope0057FibreCutoffCell6 residue
  · exact envelope0057FibreCutoffCell7 residue
  · exact envelope0057FibreCutoffCell8 residue

theorem envelope0057 : TailR263EvenOneDiagonalRange 6644053 6677273 := by
  intro N hLower hStop
  have hNUpper : N <= 6677272 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6677272
        (envelope0057BaseCounts target) :=
    envelope0057BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6677272
        (envelope0057CellCounts cell) :=
    envelope0057CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6677272
        (envelope0057FibreCounts cell residue) :=
    envelope0057FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6677272) (count := 168023) envelope0057SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0057BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0057UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0057ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0057FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0057FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0057FibreMax cell) <=
          ∑ cell : Fin 9, envelope0057FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0057BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0057BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0057FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0057FibreRatio

theorem envelope0058FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6710658
      (envelope0058FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0058FibreCutoffCell0 residue
  · exact envelope0058FibreCutoffCell1 residue
  · exact envelope0058FibreCutoffCell2 residue
  · exact envelope0058FibreCutoffCell3 residue
  · exact envelope0058FibreCutoffCell4 residue
  · exact envelope0058FibreCutoffCell5 residue
  · exact envelope0058FibreCutoffCell6 residue
  · exact envelope0058FibreCutoffCell7 residue
  · exact envelope0058FibreCutoffCell8 residue

theorem envelope0058 : TailR263EvenOneDiagonalRange 6677273 6710659 := by
  intro N hLower hStop
  have hNUpper : N <= 6710658 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6710658
        (envelope0058BaseCounts target) :=
    envelope0058BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6710658
        (envelope0058CellCounts cell) :=
    envelope0058CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6710658
        (envelope0058FibreCounts cell residue) :=
    envelope0058FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6710658) (count := 168859) envelope0058SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0058BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0058UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0058ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0058FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0058FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0058FibreMax cell) <=
          ∑ cell : Fin 9, envelope0058FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0058BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0058BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0058FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0058FibreRatio

theorem envelope0059FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6744211
      (envelope0059FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0059FibreCutoffCell0 residue
  · exact envelope0059FibreCutoffCell1 residue
  · exact envelope0059FibreCutoffCell2 residue
  · exact envelope0059FibreCutoffCell3 residue
  · exact envelope0059FibreCutoffCell4 residue
  · exact envelope0059FibreCutoffCell5 residue
  · exact envelope0059FibreCutoffCell6 residue
  · exact envelope0059FibreCutoffCell7 residue
  · exact envelope0059FibreCutoffCell8 residue

theorem envelope0059 : TailR263EvenOneDiagonalRange 6710659 6744212 := by
  intro N hLower hStop
  have hNUpper : N <= 6744211 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6744211
        (envelope0059BaseCounts target) :=
    envelope0059BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6744211
        (envelope0059CellCounts cell) :=
    envelope0059CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6744211
        (envelope0059FibreCounts cell residue) :=
    envelope0059FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6744211) (count := 169709) envelope0059SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0059BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0059UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0059ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0059FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0059FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0059FibreMax cell) <=
          ∑ cell : Fin 9, envelope0059FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0059BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0059BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0059FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0059FibreRatio

theorem envelope0060FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6777932
      (envelope0060FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0060FibreCutoffCell0 residue
  · exact envelope0060FibreCutoffCell1 residue
  · exact envelope0060FibreCutoffCell2 residue
  · exact envelope0060FibreCutoffCell3 residue
  · exact envelope0060FibreCutoffCell4 residue
  · exact envelope0060FibreCutoffCell5 residue
  · exact envelope0060FibreCutoffCell6 residue
  · exact envelope0060FibreCutoffCell7 residue
  · exact envelope0060FibreCutoffCell8 residue

theorem envelope0060 : TailR263EvenOneDiagonalRange 6744212 6777933 := by
  intro N hLower hStop
  have hNUpper : N <= 6777932 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6777932
        (envelope0060BaseCounts target) :=
    envelope0060BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6777932
        (envelope0060CellCounts cell) :=
    envelope0060CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6777932
        (envelope0060FibreCounts cell residue) :=
    envelope0060FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6777932) (count := 170563) envelope0060SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0060BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0060UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0060ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0060FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0060FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0060FibreMax cell) <=
          ∑ cell : Fin 9, envelope0060FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0060BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0060BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0060FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0060FibreRatio

theorem envelope0061FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6811821
      (envelope0061FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0061FibreCutoffCell0 residue
  · exact envelope0061FibreCutoffCell1 residue
  · exact envelope0061FibreCutoffCell2 residue
  · exact envelope0061FibreCutoffCell3 residue
  · exact envelope0061FibreCutoffCell4 residue
  · exact envelope0061FibreCutoffCell5 residue
  · exact envelope0061FibreCutoffCell6 residue
  · exact envelope0061FibreCutoffCell7 residue
  · exact envelope0061FibreCutoffCell8 residue

theorem envelope0061 : TailR263EvenOneDiagonalRange 6777933 6811822 := by
  intro N hLower hStop
  have hNUpper : N <= 6811821 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6811821
        (envelope0061BaseCounts target) :=
    envelope0061BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6811821
        (envelope0061CellCounts cell) :=
    envelope0061CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6811821
        (envelope0061FibreCounts cell residue) :=
    envelope0061FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6811821) (count := 171414) envelope0061SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0061BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0061UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0061ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0061FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0061FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0061FibreMax cell) <=
          ∑ cell : Fin 9, envelope0061FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0061BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0061BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0061FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0061FibreRatio

theorem envelope0062FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6845880
      (envelope0062FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0062FibreCutoffCell0 residue
  · exact envelope0062FibreCutoffCell1 residue
  · exact envelope0062FibreCutoffCell2 residue
  · exact envelope0062FibreCutoffCell3 residue
  · exact envelope0062FibreCutoffCell4 residue
  · exact envelope0062FibreCutoffCell5 residue
  · exact envelope0062FibreCutoffCell6 residue
  · exact envelope0062FibreCutoffCell7 residue
  · exact envelope0062FibreCutoffCell8 residue

theorem envelope0062 : TailR263EvenOneDiagonalRange 6811822 6845881 := by
  intro N hLower hStop
  have hNUpper : N <= 6845880 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6845880
        (envelope0062BaseCounts target) :=
    envelope0062BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6845880
        (envelope0062CellCounts cell) :=
    envelope0062CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6845880
        (envelope0062FibreCounts cell residue) :=
    envelope0062FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6845880) (count := 172271) envelope0062SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0062BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0062UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0062ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0062FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0062FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0062FibreMax cell) <=
          ∑ cell : Fin 9, envelope0062FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0062BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0062BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0062FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0062FibreRatio

theorem envelope0063FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6880109
      (envelope0063FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0063FibreCutoffCell0 residue
  · exact envelope0063FibreCutoffCell1 residue
  · exact envelope0063FibreCutoffCell2 residue
  · exact envelope0063FibreCutoffCell3 residue
  · exact envelope0063FibreCutoffCell4 residue
  · exact envelope0063FibreCutoffCell5 residue
  · exact envelope0063FibreCutoffCell6 residue
  · exact envelope0063FibreCutoffCell7 residue
  · exact envelope0063FibreCutoffCell8 residue

theorem envelope0063 : TailR263EvenOneDiagonalRange 6845881 6880110 := by
  intro N hLower hStop
  have hNUpper : N <= 6880109 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6880109
        (envelope0063BaseCounts target) :=
    envelope0063BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6880109
        (envelope0063CellCounts cell) :=
    envelope0063CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6880109
        (envelope0063FibreCounts cell residue) :=
    envelope0063FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6880109) (count := 173125) envelope0063SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0063BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0063UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0063ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0063FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0063FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0063FibreMax cell) <=
          ∑ cell : Fin 9, envelope0063FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0063BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0063BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0063FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0063FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
