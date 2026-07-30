import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0014
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0015
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0007
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0007

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0112FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8784776
      (envelope0112FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0112FibreCutoffCell0 residue
  · exact envelope0112FibreCutoffCell1 residue
  · exact envelope0112FibreCutoffCell2 residue
  · exact envelope0112FibreCutoffCell3 residue
  · exact envelope0112FibreCutoffCell4 residue
  · exact envelope0112FibreCutoffCell5 residue
  · exact envelope0112FibreCutoffCell6 residue
  · exact envelope0112FibreCutoffCell7 residue
  · exact envelope0112FibreCutoffCell8 residue

theorem envelope0112 : TailR263EvenOneDiagonalRange 8741072 8784777 := by
  intro N hLower hStop
  have hNUpper : N <= 8784776 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8784776
        (envelope0112BaseCounts target) :=
    envelope0112BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8784776
        (envelope0112CellCounts cell) :=
    envelope0112CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8784776
        (envelope0112FibreCounts cell residue) :=
    envelope0112FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8784776) (count := 221003) envelope0112SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0112BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0112UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0112ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0112FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0112FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0112FibreMax cell) <=
          ∑ cell : Fin 9, envelope0112FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0112BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0112BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0112FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0112FibreRatio

theorem envelope0113FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8828699
      (envelope0113FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0113FibreCutoffCell0 residue
  · exact envelope0113FibreCutoffCell1 residue
  · exact envelope0113FibreCutoffCell2 residue
  · exact envelope0113FibreCutoffCell3 residue
  · exact envelope0113FibreCutoffCell4 residue
  · exact envelope0113FibreCutoffCell5 residue
  · exact envelope0113FibreCutoffCell6 residue
  · exact envelope0113FibreCutoffCell7 residue
  · exact envelope0113FibreCutoffCell8 residue

theorem envelope0113 : TailR263EvenOneDiagonalRange 8784777 8828700 := by
  intro N hLower hStop
  have hNUpper : N <= 8828699 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8828699
        (envelope0113BaseCounts target) :=
    envelope0113BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8828699
        (envelope0113CellCounts cell) :=
    envelope0113CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8828699
        (envelope0113FibreCounts cell residue) :=
    envelope0113FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8828699) (count := 222122) envelope0113SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0113BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0113UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0113ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0113FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0113FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0113FibreMax cell) <=
          ∑ cell : Fin 9, envelope0113FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0113BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0113BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0113FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0113FibreRatio

theorem envelope0114FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8872842
      (envelope0114FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0114FibreCutoffCell0 residue
  · exact envelope0114FibreCutoffCell1 residue
  · exact envelope0114FibreCutoffCell2 residue
  · exact envelope0114FibreCutoffCell3 residue
  · exact envelope0114FibreCutoffCell4 residue
  · exact envelope0114FibreCutoffCell5 residue
  · exact envelope0114FibreCutoffCell6 residue
  · exact envelope0114FibreCutoffCell7 residue
  · exact envelope0114FibreCutoffCell8 residue

theorem envelope0114 : TailR263EvenOneDiagonalRange 8828700 8872843 := by
  intro N hLower hStop
  have hNUpper : N <= 8872842 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8872842
        (envelope0114BaseCounts target) :=
    envelope0114BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8872842
        (envelope0114CellCounts cell) :=
    envelope0114CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8872842
        (envelope0114FibreCounts cell residue) :=
    envelope0114FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8872842) (count := 223225) envelope0114SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0114BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0114UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0114ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0114FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0114FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0114FibreMax cell) <=
          ∑ cell : Fin 9, envelope0114FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0114BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0114BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0114FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0114FibreRatio

theorem envelope0115FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8917206
      (envelope0115FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0115FibreCutoffCell0 residue
  · exact envelope0115FibreCutoffCell1 residue
  · exact envelope0115FibreCutoffCell2 residue
  · exact envelope0115FibreCutoffCell3 residue
  · exact envelope0115FibreCutoffCell4 residue
  · exact envelope0115FibreCutoffCell5 residue
  · exact envelope0115FibreCutoffCell6 residue
  · exact envelope0115FibreCutoffCell7 residue
  · exact envelope0115FibreCutoffCell8 residue

theorem envelope0115 : TailR263EvenOneDiagonalRange 8872843 8917207 := by
  intro N hLower hStop
  have hNUpper : N <= 8917206 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8917206
        (envelope0115BaseCounts target) :=
    envelope0115BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8917206
        (envelope0115CellCounts cell) :=
    envelope0115CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8917206
        (envelope0115FibreCounts cell residue) :=
    envelope0115FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8917206) (count := 224343) envelope0115SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0115BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0115UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0115ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0115FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0115FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0115FibreMax cell) <=
          ∑ cell : Fin 9, envelope0115FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0115BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0115BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0115FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0115FibreRatio

theorem envelope0116FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8961792
      (envelope0116FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0116FibreCutoffCell0 residue
  · exact envelope0116FibreCutoffCell1 residue
  · exact envelope0116FibreCutoffCell2 residue
  · exact envelope0116FibreCutoffCell3 residue
  · exact envelope0116FibreCutoffCell4 residue
  · exact envelope0116FibreCutoffCell5 residue
  · exact envelope0116FibreCutoffCell6 residue
  · exact envelope0116FibreCutoffCell7 residue
  · exact envelope0116FibreCutoffCell8 residue

theorem envelope0116 : TailR263EvenOneDiagonalRange 8917207 8961793 := by
  intro N hLower hStop
  have hNUpper : N <= 8961792 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8961792
        (envelope0116BaseCounts target) :=
    envelope0116BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8961792
        (envelope0116CellCounts cell) :=
    envelope0116CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8961792
        (envelope0116FibreCounts cell residue) :=
    envelope0116FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8961792) (count := 225456) envelope0116SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0116BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0116UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0116ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0116FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0116FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0116FibreMax cell) <=
          ∑ cell : Fin 9, envelope0116FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0116BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0116BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0116FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0116FibreRatio

theorem envelope0117FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9006600
      (envelope0117FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0117FibreCutoffCell0 residue
  · exact envelope0117FibreCutoffCell1 residue
  · exact envelope0117FibreCutoffCell2 residue
  · exact envelope0117FibreCutoffCell3 residue
  · exact envelope0117FibreCutoffCell4 residue
  · exact envelope0117FibreCutoffCell5 residue
  · exact envelope0117FibreCutoffCell6 residue
  · exact envelope0117FibreCutoffCell7 residue
  · exact envelope0117FibreCutoffCell8 residue

theorem envelope0117 : TailR263EvenOneDiagonalRange 8961793 9006601 := by
  intro N hLower hStop
  have hNUpper : N <= 9006600 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9006600
        (envelope0117BaseCounts target) :=
    envelope0117BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9006600
        (envelope0117CellCounts cell) :=
    envelope0117CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9006600
        (envelope0117FibreCounts cell residue) :=
    envelope0117FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9006600) (count := 226596) envelope0117SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0117BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0117UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0117ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0117FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0117FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0117FibreMax cell) <=
          ∑ cell : Fin 9, envelope0117FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0117BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0117BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0117FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0117FibreRatio

theorem envelope0118FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9051633
      (envelope0118FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0118FibreCutoffCell0 residue
  · exact envelope0118FibreCutoffCell1 residue
  · exact envelope0118FibreCutoffCell2 residue
  · exact envelope0118FibreCutoffCell3 residue
  · exact envelope0118FibreCutoffCell4 residue
  · exact envelope0118FibreCutoffCell5 residue
  · exact envelope0118FibreCutoffCell6 residue
  · exact envelope0118FibreCutoffCell7 residue
  · exact envelope0118FibreCutoffCell8 residue

theorem envelope0118 : TailR263EvenOneDiagonalRange 9006601 9051634 := by
  intro N hLower hStop
  have hNUpper : N <= 9051633 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9051633
        (envelope0118BaseCounts target) :=
    envelope0118BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9051633
        (envelope0118CellCounts cell) :=
    envelope0118CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9051633
        (envelope0118FibreCounts cell residue) :=
    envelope0118FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9051633) (count := 227725) envelope0118SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0118BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0118UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0118ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0118FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0118FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0118FibreMax cell) <=
          ∑ cell : Fin 9, envelope0118FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0118BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0118BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0118FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0118FibreRatio

theorem envelope0119FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9096891
      (envelope0119FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0119FibreCutoffCell0 residue
  · exact envelope0119FibreCutoffCell1 residue
  · exact envelope0119FibreCutoffCell2 residue
  · exact envelope0119FibreCutoffCell3 residue
  · exact envelope0119FibreCutoffCell4 residue
  · exact envelope0119FibreCutoffCell5 residue
  · exact envelope0119FibreCutoffCell6 residue
  · exact envelope0119FibreCutoffCell7 residue
  · exact envelope0119FibreCutoffCell8 residue

theorem envelope0119 : TailR263EvenOneDiagonalRange 9051634 9096892 := by
  intro N hLower hStop
  have hNUpper : N <= 9096891 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9096891
        (envelope0119BaseCounts target) :=
    envelope0119BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9096891
        (envelope0119CellCounts cell) :=
    envelope0119CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9096891
        (envelope0119FibreCounts cell residue) :=
    envelope0119FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9096891) (count := 228864) envelope0119SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0119BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0119UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0119ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0119FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0119FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0119FibreMax cell) <=
          ∑ cell : Fin 9, envelope0119FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0119BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0119BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0119FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0119FibreRatio

theorem envelope0120FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9142375
      (envelope0120FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0120FibreCutoffCell0 residue
  · exact envelope0120FibreCutoffCell1 residue
  · exact envelope0120FibreCutoffCell2 residue
  · exact envelope0120FibreCutoffCell3 residue
  · exact envelope0120FibreCutoffCell4 residue
  · exact envelope0120FibreCutoffCell5 residue
  · exact envelope0120FibreCutoffCell6 residue
  · exact envelope0120FibreCutoffCell7 residue
  · exact envelope0120FibreCutoffCell8 residue

theorem envelope0120 : TailR263EvenOneDiagonalRange 9096892 9142376 := by
  intro N hLower hStop
  have hNUpper : N <= 9142375 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9142375
        (envelope0120BaseCounts target) :=
    envelope0120BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9142375
        (envelope0120CellCounts cell) :=
    envelope0120CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9142375
        (envelope0120FibreCounts cell residue) :=
    envelope0120FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9142375) (count := 230011) envelope0120SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0120BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0120UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0120ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0120FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0120FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0120FibreMax cell) <=
          ∑ cell : Fin 9, envelope0120FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0120BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0120BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0120FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0120FibreRatio

theorem envelope0121FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9188086
      (envelope0121FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0121FibreCutoffCell0 residue
  · exact envelope0121FibreCutoffCell1 residue
  · exact envelope0121FibreCutoffCell2 residue
  · exact envelope0121FibreCutoffCell3 residue
  · exact envelope0121FibreCutoffCell4 residue
  · exact envelope0121FibreCutoffCell5 residue
  · exact envelope0121FibreCutoffCell6 residue
  · exact envelope0121FibreCutoffCell7 residue
  · exact envelope0121FibreCutoffCell8 residue

theorem envelope0121 : TailR263EvenOneDiagonalRange 9142376 9188087 := by
  intro N hLower hStop
  have hNUpper : N <= 9188086 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9188086
        (envelope0121BaseCounts target) :=
    envelope0121BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9188086
        (envelope0121CellCounts cell) :=
    envelope0121CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9188086
        (envelope0121FibreCounts cell residue) :=
    envelope0121FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9188086) (count := 231159) envelope0121SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0121BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0121UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0121ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0121FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0121FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0121FibreMax cell) <=
          ∑ cell : Fin 9, envelope0121FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0121BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0121BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0121FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0121FibreRatio

theorem envelope0122FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9234026
      (envelope0122FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0122FibreCutoffCell0 residue
  · exact envelope0122FibreCutoffCell1 residue
  · exact envelope0122FibreCutoffCell2 residue
  · exact envelope0122FibreCutoffCell3 residue
  · exact envelope0122FibreCutoffCell4 residue
  · exact envelope0122FibreCutoffCell5 residue
  · exact envelope0122FibreCutoffCell6 residue
  · exact envelope0122FibreCutoffCell7 residue
  · exact envelope0122FibreCutoffCell8 residue

theorem envelope0122 : TailR263EvenOneDiagonalRange 9188087 9234027 := by
  intro N hLower hStop
  have hNUpper : N <= 9234026 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9234026
        (envelope0122BaseCounts target) :=
    envelope0122BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9234026
        (envelope0122CellCounts cell) :=
    envelope0122CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9234026
        (envelope0122FibreCounts cell residue) :=
    envelope0122FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9234026) (count := 232307) envelope0122SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0122BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0122UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0122ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0122FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0122FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0122FibreMax cell) <=
          ∑ cell : Fin 9, envelope0122FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0122BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0122BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0122FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0122FibreRatio

theorem envelope0123FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9280196
      (envelope0123FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0123FibreCutoffCell0 residue
  · exact envelope0123FibreCutoffCell1 residue
  · exact envelope0123FibreCutoffCell2 residue
  · exact envelope0123FibreCutoffCell3 residue
  · exact envelope0123FibreCutoffCell4 residue
  · exact envelope0123FibreCutoffCell5 residue
  · exact envelope0123FibreCutoffCell6 residue
  · exact envelope0123FibreCutoffCell7 residue
  · exact envelope0123FibreCutoffCell8 residue

theorem envelope0123 : TailR263EvenOneDiagonalRange 9234027 9280197 := by
  intro N hLower hStop
  have hNUpper : N <= 9280196 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9280196
        (envelope0123BaseCounts target) :=
    envelope0123BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9280196
        (envelope0123CellCounts cell) :=
    envelope0123CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9280196
        (envelope0123FibreCounts cell residue) :=
    envelope0123FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9280196) (count := 233468) envelope0123SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0123BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0123UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0123ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0123FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0123FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0123FibreMax cell) <=
          ∑ cell : Fin 9, envelope0123FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0123BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0123BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0123FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0123FibreRatio

theorem envelope0124FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9326596
      (envelope0124FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0124FibreCutoffCell0 residue
  · exact envelope0124FibreCutoffCell1 residue
  · exact envelope0124FibreCutoffCell2 residue
  · exact envelope0124FibreCutoffCell3 residue
  · exact envelope0124FibreCutoffCell4 residue
  · exact envelope0124FibreCutoffCell5 residue
  · exact envelope0124FibreCutoffCell6 residue
  · exact envelope0124FibreCutoffCell7 residue
  · exact envelope0124FibreCutoffCell8 residue

theorem envelope0124 : TailR263EvenOneDiagonalRange 9280197 9326597 := by
  intro N hLower hStop
  have hNUpper : N <= 9326596 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9326596
        (envelope0124BaseCounts target) :=
    envelope0124BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9326596
        (envelope0124CellCounts cell) :=
    envelope0124CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9326596
        (envelope0124FibreCounts cell residue) :=
    envelope0124FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9326596) (count := 234640) envelope0124SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0124BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0124UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0124ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0124FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0124FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0124FibreMax cell) <=
          ∑ cell : Fin 9, envelope0124FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0124BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0124BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0124FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0124FibreRatio

theorem envelope0125FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9373228
      (envelope0125FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0125FibreCutoffCell0 residue
  · exact envelope0125FibreCutoffCell1 residue
  · exact envelope0125FibreCutoffCell2 residue
  · exact envelope0125FibreCutoffCell3 residue
  · exact envelope0125FibreCutoffCell4 residue
  · exact envelope0125FibreCutoffCell5 residue
  · exact envelope0125FibreCutoffCell6 residue
  · exact envelope0125FibreCutoffCell7 residue
  · exact envelope0125FibreCutoffCell8 residue

theorem envelope0125 : TailR263EvenOneDiagonalRange 9326597 9373229 := by
  intro N hLower hStop
  have hNUpper : N <= 9373228 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9373228
        (envelope0125BaseCounts target) :=
    envelope0125BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9373228
        (envelope0125CellCounts cell) :=
    envelope0125CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9373228
        (envelope0125FibreCounts cell residue) :=
    envelope0125FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9373228) (count := 235809) envelope0125SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0125BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0125UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0125ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0125FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0125FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0125FibreMax cell) <=
          ∑ cell : Fin 9, envelope0125FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0125BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0125BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0125FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0125FibreRatio

theorem envelope0126FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9420094
      (envelope0126FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0126FibreCutoffCell0 residue
  · exact envelope0126FibreCutoffCell1 residue
  · exact envelope0126FibreCutoffCell2 residue
  · exact envelope0126FibreCutoffCell3 residue
  · exact envelope0126FibreCutoffCell4 residue
  · exact envelope0126FibreCutoffCell5 residue
  · exact envelope0126FibreCutoffCell6 residue
  · exact envelope0126FibreCutoffCell7 residue
  · exact envelope0126FibreCutoffCell8 residue

theorem envelope0126 : TailR263EvenOneDiagonalRange 9373229 9420095 := by
  intro N hLower hStop
  have hNUpper : N <= 9420094 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9420094
        (envelope0126BaseCounts target) :=
    envelope0126BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9420094
        (envelope0126CellCounts cell) :=
    envelope0126CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9420094
        (envelope0126FibreCounts cell residue) :=
    envelope0126FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9420094) (count := 236993) envelope0126SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0126BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0126UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0126ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0126FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0126FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0126FibreMax cell) <=
          ∑ cell : Fin 9, envelope0126FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0126BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0126BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0126FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0126FibreRatio

theorem envelope0127FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 9467194
      (envelope0127FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0127FibreCutoffCell0 residue
  · exact envelope0127FibreCutoffCell1 residue
  · exact envelope0127FibreCutoffCell2 residue
  · exact envelope0127FibreCutoffCell3 residue
  · exact envelope0127FibreCutoffCell4 residue
  · exact envelope0127FibreCutoffCell5 residue
  · exact envelope0127FibreCutoffCell6 residue
  · exact envelope0127FibreCutoffCell7 residue
  · exact envelope0127FibreCutoffCell8 residue

theorem envelope0127 : TailR263EvenOneDiagonalRange 9420095 9467195 := by
  intro N hLower hStop
  have hNUpper : N <= 9467194 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9467194
        (envelope0127BaseCounts target) :=
    envelope0127BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9467194
        (envelope0127CellCounts cell) :=
    envelope0127CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9467194
        (envelope0127FibreCounts cell residue) :=
    envelope0127FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9467194) (count := 238176) envelope0127SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0127BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0127UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0127ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0127FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0127FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0127FibreMax cell) <=
          ∑ cell : Fin 9, envelope0127FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0127BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0127BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0127FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0127FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
