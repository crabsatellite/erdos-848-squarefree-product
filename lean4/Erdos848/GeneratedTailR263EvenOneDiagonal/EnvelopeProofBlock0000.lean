import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0000
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0000

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0000FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5024999
      (envelope0000FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0000FibreCutoffCell0 residue
  · exact envelope0000FibreCutoffCell1 residue
  · exact envelope0000FibreCutoffCell2 residue
  · exact envelope0000FibreCutoffCell3 residue
  · exact envelope0000FibreCutoffCell4 residue
  · exact envelope0000FibreCutoffCell5 residue
  · exact envelope0000FibreCutoffCell6 residue
  · exact envelope0000FibreCutoffCell7 residue
  · exact envelope0000FibreCutoffCell8 residue

theorem envelope0000 : TailR263EvenOneDiagonalRange 5000000 5025000 := by
  intro N hLower hStop
  have hNUpper : N <= 5024999 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5024999
        (envelope0000BaseCounts target) :=
    envelope0000BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5024999
        (envelope0000CellCounts cell) :=
    envelope0000CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5024999
        (envelope0000FibreCounts cell residue) :=
    envelope0000FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5024999) (count := 126442) envelope0000SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0000BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0000UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0000ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0000FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0000FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0000FibreMax cell) <=
          ∑ cell : Fin 9, envelope0000FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0000BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0000BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0000FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5000000) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0000FibreRatio

theorem envelope0001FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5050124
      (envelope0001FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0001FibreCutoffCell0 residue
  · exact envelope0001FibreCutoffCell1 residue
  · exact envelope0001FibreCutoffCell2 residue
  · exact envelope0001FibreCutoffCell3 residue
  · exact envelope0001FibreCutoffCell4 residue
  · exact envelope0001FibreCutoffCell5 residue
  · exact envelope0001FibreCutoffCell6 residue
  · exact envelope0001FibreCutoffCell7 residue
  · exact envelope0001FibreCutoffCell8 residue

theorem envelope0001 : TailR263EvenOneDiagonalRange 5025000 5050125 := by
  intro N hLower hStop
  have hNUpper : N <= 5050124 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5050124
        (envelope0001BaseCounts target) :=
    envelope0001BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5050124
        (envelope0001CellCounts cell) :=
    envelope0001CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5050124
        (envelope0001FibreCounts cell residue) :=
    envelope0001FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5050124) (count := 127070) envelope0001SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0001BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0001UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0001ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0001FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0001FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0001FibreMax cell) <=
          ∑ cell : Fin 9, envelope0001FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0001BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0001BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0001FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5025000) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0001FibreRatio

theorem envelope0002FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5075374
      (envelope0002FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0002FibreCutoffCell0 residue
  · exact envelope0002FibreCutoffCell1 residue
  · exact envelope0002FibreCutoffCell2 residue
  · exact envelope0002FibreCutoffCell3 residue
  · exact envelope0002FibreCutoffCell4 residue
  · exact envelope0002FibreCutoffCell5 residue
  · exact envelope0002FibreCutoffCell6 residue
  · exact envelope0002FibreCutoffCell7 residue
  · exact envelope0002FibreCutoffCell8 residue

theorem envelope0002 : TailR263EvenOneDiagonalRange 5050125 5075375 := by
  intro N hLower hStop
  have hNUpper : N <= 5075374 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5075374
        (envelope0002BaseCounts target) :=
    envelope0002BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5075374
        (envelope0002CellCounts cell) :=
    envelope0002CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5075374
        (envelope0002FibreCounts cell residue) :=
    envelope0002FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5075374) (count := 127698) envelope0002SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0002BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0002UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0002ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0002FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0002FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0002FibreMax cell) <=
          ∑ cell : Fin 9, envelope0002FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0002BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0002BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0002FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5050125) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0002FibreRatio

theorem envelope0003FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5100750
      (envelope0003FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0003FibreCutoffCell0 residue
  · exact envelope0003FibreCutoffCell1 residue
  · exact envelope0003FibreCutoffCell2 residue
  · exact envelope0003FibreCutoffCell3 residue
  · exact envelope0003FibreCutoffCell4 residue
  · exact envelope0003FibreCutoffCell5 residue
  · exact envelope0003FibreCutoffCell6 residue
  · exact envelope0003FibreCutoffCell7 residue
  · exact envelope0003FibreCutoffCell8 residue

theorem envelope0003 : TailR263EvenOneDiagonalRange 5075375 5100751 := by
  intro N hLower hStop
  have hNUpper : N <= 5100750 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5100750
        (envelope0003BaseCounts target) :=
    envelope0003BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5100750
        (envelope0003CellCounts cell) :=
    envelope0003CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5100750
        (envelope0003FibreCounts cell residue) :=
    envelope0003FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5100750) (count := 128346) envelope0003SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0003BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0003UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0003ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0003FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0003FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0003FibreMax cell) <=
          ∑ cell : Fin 9, envelope0003FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0003BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0003BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0003FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5075375) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0003FibreRatio

theorem envelope0004FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5126253
      (envelope0004FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0004FibreCutoffCell0 residue
  · exact envelope0004FibreCutoffCell1 residue
  · exact envelope0004FibreCutoffCell2 residue
  · exact envelope0004FibreCutoffCell3 residue
  · exact envelope0004FibreCutoffCell4 residue
  · exact envelope0004FibreCutoffCell5 residue
  · exact envelope0004FibreCutoffCell6 residue
  · exact envelope0004FibreCutoffCell7 residue
  · exact envelope0004FibreCutoffCell8 residue

theorem envelope0004 : TailR263EvenOneDiagonalRange 5100751 5126254 := by
  intro N hLower hStop
  have hNUpper : N <= 5126253 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5126253
        (envelope0004BaseCounts target) :=
    envelope0004BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5126253
        (envelope0004CellCounts cell) :=
    envelope0004CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5126253
        (envelope0004FibreCounts cell residue) :=
    envelope0004FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5126253) (count := 128982) envelope0004SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0004BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0004UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0004ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0004FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0004FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0004FibreMax cell) <=
          ∑ cell : Fin 9, envelope0004FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0004BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0004BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0004FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5100751) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0004FibreRatio

theorem envelope0005FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5151884
      (envelope0005FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0005FibreCutoffCell0 residue
  · exact envelope0005FibreCutoffCell1 residue
  · exact envelope0005FibreCutoffCell2 residue
  · exact envelope0005FibreCutoffCell3 residue
  · exact envelope0005FibreCutoffCell4 residue
  · exact envelope0005FibreCutoffCell5 residue
  · exact envelope0005FibreCutoffCell6 residue
  · exact envelope0005FibreCutoffCell7 residue
  · exact envelope0005FibreCutoffCell8 residue

theorem envelope0005 : TailR263EvenOneDiagonalRange 5126254 5151885 := by
  intro N hLower hStop
  have hNUpper : N <= 5151884 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5151884
        (envelope0005BaseCounts target) :=
    envelope0005BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5151884
        (envelope0005CellCounts cell) :=
    envelope0005CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5151884
        (envelope0005FibreCounts cell residue) :=
    envelope0005FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5151884) (count := 129624) envelope0005SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0005BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0005UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0005ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0005FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0005FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0005FibreMax cell) <=
          ∑ cell : Fin 9, envelope0005FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0005BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0005BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0005FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5126254) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0005FibreRatio

theorem envelope0006FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5177643
      (envelope0006FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0006FibreCutoffCell0 residue
  · exact envelope0006FibreCutoffCell1 residue
  · exact envelope0006FibreCutoffCell2 residue
  · exact envelope0006FibreCutoffCell3 residue
  · exact envelope0006FibreCutoffCell4 residue
  · exact envelope0006FibreCutoffCell5 residue
  · exact envelope0006FibreCutoffCell6 residue
  · exact envelope0006FibreCutoffCell7 residue
  · exact envelope0006FibreCutoffCell8 residue

theorem envelope0006 : TailR263EvenOneDiagonalRange 5151885 5177644 := by
  intro N hLower hStop
  have hNUpper : N <= 5177643 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5177643
        (envelope0006BaseCounts target) :=
    envelope0006BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5177643
        (envelope0006CellCounts cell) :=
    envelope0006CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5177643
        (envelope0006FibreCounts cell residue) :=
    envelope0006FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5177643) (count := 130288) envelope0006SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0006BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0006UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0006ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0006FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0006FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0006FibreMax cell) <=
          ∑ cell : Fin 9, envelope0006FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0006BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0006BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0006FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5151885) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0006FibreRatio

theorem envelope0007FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5203531
      (envelope0007FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0007FibreCutoffCell0 residue
  · exact envelope0007FibreCutoffCell1 residue
  · exact envelope0007FibreCutoffCell2 residue
  · exact envelope0007FibreCutoffCell3 residue
  · exact envelope0007FibreCutoffCell4 residue
  · exact envelope0007FibreCutoffCell5 residue
  · exact envelope0007FibreCutoffCell6 residue
  · exact envelope0007FibreCutoffCell7 residue
  · exact envelope0007FibreCutoffCell8 residue

theorem envelope0007 : TailR263EvenOneDiagonalRange 5177644 5203532 := by
  intro N hLower hStop
  have hNUpper : N <= 5203531 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5203531
        (envelope0007BaseCounts target) :=
    envelope0007BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5203531
        (envelope0007CellCounts cell) :=
    envelope0007CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5203531
        (envelope0007FibreCounts cell residue) :=
    envelope0007FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5203531) (count := 130936) envelope0007SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0007BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0007UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0007ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0007FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0007FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0007FibreMax cell) <=
          ∑ cell : Fin 9, envelope0007FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0007BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0007BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0007FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5177644) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0007FibreRatio

theorem envelope0008FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5229548
      (envelope0008FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0008FibreCutoffCell0 residue
  · exact envelope0008FibreCutoffCell1 residue
  · exact envelope0008FibreCutoffCell2 residue
  · exact envelope0008FibreCutoffCell3 residue
  · exact envelope0008FibreCutoffCell4 residue
  · exact envelope0008FibreCutoffCell5 residue
  · exact envelope0008FibreCutoffCell6 residue
  · exact envelope0008FibreCutoffCell7 residue
  · exact envelope0008FibreCutoffCell8 residue

theorem envelope0008 : TailR263EvenOneDiagonalRange 5203532 5229549 := by
  intro N hLower hStop
  have hNUpper : N <= 5229548 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5229548
        (envelope0008BaseCounts target) :=
    envelope0008BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5229548
        (envelope0008CellCounts cell) :=
    envelope0008CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5229548
        (envelope0008FibreCounts cell residue) :=
    envelope0008FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5229548) (count := 131584) envelope0008SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0008BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0008UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0008ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0008FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0008FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0008FibreMax cell) <=
          ∑ cell : Fin 9, envelope0008FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0008BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0008BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0008FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5203532) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0008FibreRatio

theorem envelope0009FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5255695
      (envelope0009FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0009FibreCutoffCell0 residue
  · exact envelope0009FibreCutoffCell1 residue
  · exact envelope0009FibreCutoffCell2 residue
  · exact envelope0009FibreCutoffCell3 residue
  · exact envelope0009FibreCutoffCell4 residue
  · exact envelope0009FibreCutoffCell5 residue
  · exact envelope0009FibreCutoffCell6 residue
  · exact envelope0009FibreCutoffCell7 residue
  · exact envelope0009FibreCutoffCell8 residue

theorem envelope0009 : TailR263EvenOneDiagonalRange 5229549 5255696 := by
  intro N hLower hStop
  have hNUpper : N <= 5255695 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5255695
        (envelope0009BaseCounts target) :=
    envelope0009BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5255695
        (envelope0009CellCounts cell) :=
    envelope0009CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5255695
        (envelope0009FibreCounts cell residue) :=
    envelope0009FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5255695) (count := 132243) envelope0009SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0009BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0009UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0009ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0009FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0009FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0009FibreMax cell) <=
          ∑ cell : Fin 9, envelope0009FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0009BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0009BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0009FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5229549) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0009FibreRatio

theorem envelope0010FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5281973
      (envelope0010FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0010FibreCutoffCell0 residue
  · exact envelope0010FibreCutoffCell1 residue
  · exact envelope0010FibreCutoffCell2 residue
  · exact envelope0010FibreCutoffCell3 residue
  · exact envelope0010FibreCutoffCell4 residue
  · exact envelope0010FibreCutoffCell5 residue
  · exact envelope0010FibreCutoffCell6 residue
  · exact envelope0010FibreCutoffCell7 residue
  · exact envelope0010FibreCutoffCell8 residue

theorem envelope0010 : TailR263EvenOneDiagonalRange 5255696 5281974 := by
  intro N hLower hStop
  have hNUpper : N <= 5281973 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5281973
        (envelope0010BaseCounts target) :=
    envelope0010BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5281973
        (envelope0010CellCounts cell) :=
    envelope0010CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5281973
        (envelope0010FibreCounts cell residue) :=
    envelope0010FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5281973) (count := 132889) envelope0010SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0010BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0010UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0010ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0010FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0010FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0010FibreMax cell) <=
          ∑ cell : Fin 9, envelope0010FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0010BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0010BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0010FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5255696) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0010FibreRatio

theorem envelope0011FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5308382
      (envelope0011FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0011FibreCutoffCell0 residue
  · exact envelope0011FibreCutoffCell1 residue
  · exact envelope0011FibreCutoffCell2 residue
  · exact envelope0011FibreCutoffCell3 residue
  · exact envelope0011FibreCutoffCell4 residue
  · exact envelope0011FibreCutoffCell5 residue
  · exact envelope0011FibreCutoffCell6 residue
  · exact envelope0011FibreCutoffCell7 residue
  · exact envelope0011FibreCutoffCell8 residue

theorem envelope0011 : TailR263EvenOneDiagonalRange 5281974 5308383 := by
  intro N hLower hStop
  have hNUpper : N <= 5308382 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5308382
        (envelope0011BaseCounts target) :=
    envelope0011BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5308382
        (envelope0011CellCounts cell) :=
    envelope0011CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5308382
        (envelope0011FibreCounts cell residue) :=
    envelope0011FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5308382) (count := 133564) envelope0011SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0011BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0011UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0011ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0011FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0011FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0011FibreMax cell) <=
          ∑ cell : Fin 9, envelope0011FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0011BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0011BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0011FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5281974) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0011FibreRatio

theorem envelope0012FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5334923
      (envelope0012FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0012FibreCutoffCell0 residue
  · exact envelope0012FibreCutoffCell1 residue
  · exact envelope0012FibreCutoffCell2 residue
  · exact envelope0012FibreCutoffCell3 residue
  · exact envelope0012FibreCutoffCell4 residue
  · exact envelope0012FibreCutoffCell5 residue
  · exact envelope0012FibreCutoffCell6 residue
  · exact envelope0012FibreCutoffCell7 residue
  · exact envelope0012FibreCutoffCell8 residue

theorem envelope0012 : TailR263EvenOneDiagonalRange 5308383 5334924 := by
  intro N hLower hStop
  have hNUpper : N <= 5334923 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5334923
        (envelope0012BaseCounts target) :=
    envelope0012BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5334923
        (envelope0012CellCounts cell) :=
    envelope0012CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5334923
        (envelope0012FibreCounts cell residue) :=
    envelope0012FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5334923) (count := 134229) envelope0012SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0012BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0012UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0012ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0012FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0012FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0012FibreMax cell) <=
          ∑ cell : Fin 9, envelope0012FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0012BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0012BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0012FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5308383) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0012FibreRatio

theorem envelope0013FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5361597
      (envelope0013FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0013FibreCutoffCell0 residue
  · exact envelope0013FibreCutoffCell1 residue
  · exact envelope0013FibreCutoffCell2 residue
  · exact envelope0013FibreCutoffCell3 residue
  · exact envelope0013FibreCutoffCell4 residue
  · exact envelope0013FibreCutoffCell5 residue
  · exact envelope0013FibreCutoffCell6 residue
  · exact envelope0013FibreCutoffCell7 residue
  · exact envelope0013FibreCutoffCell8 residue

theorem envelope0013 : TailR263EvenOneDiagonalRange 5334924 5361598 := by
  intro N hLower hStop
  have hNUpper : N <= 5361597 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5361597
        (envelope0013BaseCounts target) :=
    envelope0013BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5361597
        (envelope0013CellCounts cell) :=
    envelope0013CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5361597
        (envelope0013FibreCounts cell residue) :=
    envelope0013FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5361597) (count := 134905) envelope0013SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0013BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0013UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0013ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0013FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0013FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0013FibreMax cell) <=
          ∑ cell : Fin 9, envelope0013FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0013BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0013BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0013FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5334924) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0013FibreRatio

theorem envelope0014FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5388404
      (envelope0014FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0014FibreCutoffCell0 residue
  · exact envelope0014FibreCutoffCell1 residue
  · exact envelope0014FibreCutoffCell2 residue
  · exact envelope0014FibreCutoffCell3 residue
  · exact envelope0014FibreCutoffCell4 residue
  · exact envelope0014FibreCutoffCell5 residue
  · exact envelope0014FibreCutoffCell6 residue
  · exact envelope0014FibreCutoffCell7 residue
  · exact envelope0014FibreCutoffCell8 residue

theorem envelope0014 : TailR263EvenOneDiagonalRange 5361598 5388405 := by
  intro N hLower hStop
  have hNUpper : N <= 5388404 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5388404
        (envelope0014BaseCounts target) :=
    envelope0014BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5388404
        (envelope0014CellCounts cell) :=
    envelope0014CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5388404
        (envelope0014FibreCounts cell residue) :=
    envelope0014FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5388404) (count := 135585) envelope0014SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0014BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0014UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0014ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0014FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0014FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0014FibreMax cell) <=
          ∑ cell : Fin 9, envelope0014FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0014BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0014BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0014FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5361598) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0014FibreRatio

theorem envelope0015FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5415346
      (envelope0015FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0015FibreCutoffCell0 residue
  · exact envelope0015FibreCutoffCell1 residue
  · exact envelope0015FibreCutoffCell2 residue
  · exact envelope0015FibreCutoffCell3 residue
  · exact envelope0015FibreCutoffCell4 residue
  · exact envelope0015FibreCutoffCell5 residue
  · exact envelope0015FibreCutoffCell6 residue
  · exact envelope0015FibreCutoffCell7 residue
  · exact envelope0015FibreCutoffCell8 residue

theorem envelope0015 : TailR263EvenOneDiagonalRange 5388405 5415347 := by
  intro N hLower hStop
  have hNUpper : N <= 5415346 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5415346
        (envelope0015BaseCounts target) :=
    envelope0015BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5415346
        (envelope0015CellCounts cell) :=
    envelope0015CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5415346
        (envelope0015FibreCounts cell residue) :=
    envelope0015FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5415346) (count := 136267) envelope0015SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0015BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0015UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0015ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0015FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0015FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0015FibreMax cell) <=
          ∑ cell : Fin 9, envelope0015FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0015BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0015BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0015FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5388405) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0015FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
