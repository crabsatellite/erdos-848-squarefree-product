import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0002

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0032FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5894521
      (envelope0032FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0032FibreCutoffCell0 residue
  · exact envelope0032FibreCutoffCell1 residue
  · exact envelope0032FibreCutoffCell2 residue
  · exact envelope0032FibreCutoffCell3 residue
  · exact envelope0032FibreCutoffCell4 residue
  · exact envelope0032FibreCutoffCell5 residue
  · exact envelope0032FibreCutoffCell6 residue
  · exact envelope0032FibreCutoffCell7 residue
  · exact envelope0032FibreCutoffCell8 residue

theorem envelope0032 : TailR263EvenOneDiagonalRange 5865197 5894522 := by
  intro N hLower hStop
  have hNUpper : N <= 5894521 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5894521
        (envelope0032BaseCounts target) :=
    envelope0032BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5894521
        (envelope0032CellCounts cell) :=
    envelope0032CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5894521
        (envelope0032FibreCounts cell residue) :=
    envelope0032FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5894521) (count := 148320) envelope0032SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0032BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0032UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0032ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0032FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0032FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0032FibreMax cell) <=
          ∑ cell : Fin 9, envelope0032FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0032BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0032BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0032FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0032FibreRatio

theorem envelope0033FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5923993
      (envelope0033FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0033FibreCutoffCell0 residue
  · exact envelope0033FibreCutoffCell1 residue
  · exact envelope0033FibreCutoffCell2 residue
  · exact envelope0033FibreCutoffCell3 residue
  · exact envelope0033FibreCutoffCell4 residue
  · exact envelope0033FibreCutoffCell5 residue
  · exact envelope0033FibreCutoffCell6 residue
  · exact envelope0033FibreCutoffCell7 residue
  · exact envelope0033FibreCutoffCell8 residue

theorem envelope0033 : TailR263EvenOneDiagonalRange 5894522 5923994 := by
  intro N hLower hStop
  have hNUpper : N <= 5923993 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5923993
        (envelope0033BaseCounts target) :=
    envelope0033BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5923993
        (envelope0033CellCounts cell) :=
    envelope0033CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5923993
        (envelope0033FibreCounts cell residue) :=
    envelope0033FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5923993) (count := 149058) envelope0033SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0033BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0033UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0033ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0033FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0033FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0033FibreMax cell) <=
          ∑ cell : Fin 9, envelope0033FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0033BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0033BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0033FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0033FibreRatio

theorem envelope0034FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5953612
      (envelope0034FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0034FibreCutoffCell0 residue
  · exact envelope0034FibreCutoffCell1 residue
  · exact envelope0034FibreCutoffCell2 residue
  · exact envelope0034FibreCutoffCell3 residue
  · exact envelope0034FibreCutoffCell4 residue
  · exact envelope0034FibreCutoffCell5 residue
  · exact envelope0034FibreCutoffCell6 residue
  · exact envelope0034FibreCutoffCell7 residue
  · exact envelope0034FibreCutoffCell8 residue

theorem envelope0034 : TailR263EvenOneDiagonalRange 5923994 5953613 := by
  intro N hLower hStop
  have hNUpper : N <= 5953612 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5953612
        (envelope0034BaseCounts target) :=
    envelope0034BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5953612
        (envelope0034CellCounts cell) :=
    envelope0034CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5953612
        (envelope0034FibreCounts cell residue) :=
    envelope0034FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5953612) (count := 149807) envelope0034SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0034BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0034UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0034ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0034FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0034FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0034FibreMax cell) <=
          ∑ cell : Fin 9, envelope0034FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0034BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0034BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0034FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0034FibreRatio

theorem envelope0035FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5983380
      (envelope0035FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0035FibreCutoffCell0 residue
  · exact envelope0035FibreCutoffCell1 residue
  · exact envelope0035FibreCutoffCell2 residue
  · exact envelope0035FibreCutoffCell3 residue
  · exact envelope0035FibreCutoffCell4 residue
  · exact envelope0035FibreCutoffCell5 residue
  · exact envelope0035FibreCutoffCell6 residue
  · exact envelope0035FibreCutoffCell7 residue
  · exact envelope0035FibreCutoffCell8 residue

theorem envelope0035 : TailR263EvenOneDiagonalRange 5953613 5983381 := by
  intro N hLower hStop
  have hNUpper : N <= 5983380 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5983380
        (envelope0035BaseCounts target) :=
    envelope0035BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5983380
        (envelope0035CellCounts cell) :=
    envelope0035CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5983380
        (envelope0035FibreCounts cell residue) :=
    envelope0035FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5983380) (count := 150558) envelope0035SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0035BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0035UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0035ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0035FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0035FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0035FibreMax cell) <=
          ∑ cell : Fin 9, envelope0035FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0035BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0035BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0035FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0035FibreRatio

theorem envelope0036FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6013296
      (envelope0036FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0036FibreCutoffCell0 residue
  · exact envelope0036FibreCutoffCell1 residue
  · exact envelope0036FibreCutoffCell2 residue
  · exact envelope0036FibreCutoffCell3 residue
  · exact envelope0036FibreCutoffCell4 residue
  · exact envelope0036FibreCutoffCell5 residue
  · exact envelope0036FibreCutoffCell6 residue
  · exact envelope0036FibreCutoffCell7 residue
  · exact envelope0036FibreCutoffCell8 residue

theorem envelope0036 : TailR263EvenOneDiagonalRange 5983381 6013297 := by
  intro N hLower hStop
  have hNUpper : N <= 6013296 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6013296
        (envelope0036BaseCounts target) :=
    envelope0036BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6013296
        (envelope0036CellCounts cell) :=
    envelope0036CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6013296
        (envelope0036FibreCounts cell residue) :=
    envelope0036FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6013296) (count := 151308) envelope0036SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0036BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0036UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0036ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0036FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0036FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0036FibreMax cell) <=
          ∑ cell : Fin 9, envelope0036FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0036BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0036BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0036FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0036FibreRatio

theorem envelope0037FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6043362
      (envelope0037FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0037FibreCutoffCell0 residue
  · exact envelope0037FibreCutoffCell1 residue
  · exact envelope0037FibreCutoffCell2 residue
  · exact envelope0037FibreCutoffCell3 residue
  · exact envelope0037FibreCutoffCell4 residue
  · exact envelope0037FibreCutoffCell5 residue
  · exact envelope0037FibreCutoffCell6 residue
  · exact envelope0037FibreCutoffCell7 residue
  · exact envelope0037FibreCutoffCell8 residue

theorem envelope0037 : TailR263EvenOneDiagonalRange 6013297 6043363 := by
  intro N hLower hStop
  have hNUpper : N <= 6043362 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6043362
        (envelope0037BaseCounts target) :=
    envelope0037BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6043362
        (envelope0037CellCounts cell) :=
    envelope0037CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6043362
        (envelope0037FibreCounts cell residue) :=
    envelope0037FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6043362) (count := 152065) envelope0037SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0037BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0037UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0037ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0037FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0037FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0037FibreMax cell) <=
          ∑ cell : Fin 9, envelope0037FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0037BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0037BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0037FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0037FibreRatio

theorem envelope0038FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6073578
      (envelope0038FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0038FibreCutoffCell0 residue
  · exact envelope0038FibreCutoffCell1 residue
  · exact envelope0038FibreCutoffCell2 residue
  · exact envelope0038FibreCutoffCell3 residue
  · exact envelope0038FibreCutoffCell4 residue
  · exact envelope0038FibreCutoffCell5 residue
  · exact envelope0038FibreCutoffCell6 residue
  · exact envelope0038FibreCutoffCell7 residue
  · exact envelope0038FibreCutoffCell8 residue

theorem envelope0038 : TailR263EvenOneDiagonalRange 6043363 6073579 := by
  intro N hLower hStop
  have hNUpper : N <= 6073578 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6073578
        (envelope0038BaseCounts target) :=
    envelope0038BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6073578
        (envelope0038CellCounts cell) :=
    envelope0038CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6073578
        (envelope0038FibreCounts cell residue) :=
    envelope0038FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6073578) (count := 152825) envelope0038SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0038BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0038UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0038ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0038FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0038FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0038FibreMax cell) <=
          ∑ cell : Fin 9, envelope0038FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0038BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0038BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0038FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0038FibreRatio

theorem envelope0039FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6103945
      (envelope0039FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0039FibreCutoffCell0 residue
  · exact envelope0039FibreCutoffCell1 residue
  · exact envelope0039FibreCutoffCell2 residue
  · exact envelope0039FibreCutoffCell3 residue
  · exact envelope0039FibreCutoffCell4 residue
  · exact envelope0039FibreCutoffCell5 residue
  · exact envelope0039FibreCutoffCell6 residue
  · exact envelope0039FibreCutoffCell7 residue
  · exact envelope0039FibreCutoffCell8 residue

theorem envelope0039 : TailR263EvenOneDiagonalRange 6073579 6103946 := by
  intro N hLower hStop
  have hNUpper : N <= 6103945 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6103945
        (envelope0039BaseCounts target) :=
    envelope0039BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6103945
        (envelope0039CellCounts cell) :=
    envelope0039CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6103945
        (envelope0039FibreCounts cell residue) :=
    envelope0039FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6103945) (count := 153599) envelope0039SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0039BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0039UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0039ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0039FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0039FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0039FibreMax cell) <=
          ∑ cell : Fin 9, envelope0039FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0039BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0039BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0039FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0039FibreRatio

theorem envelope0040FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6134464
      (envelope0040FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0040FibreCutoffCell0 residue
  · exact envelope0040FibreCutoffCell1 residue
  · exact envelope0040FibreCutoffCell2 residue
  · exact envelope0040FibreCutoffCell3 residue
  · exact envelope0040FibreCutoffCell4 residue
  · exact envelope0040FibreCutoffCell5 residue
  · exact envelope0040FibreCutoffCell6 residue
  · exact envelope0040FibreCutoffCell7 residue
  · exact envelope0040FibreCutoffCell8 residue

theorem envelope0040 : TailR263EvenOneDiagonalRange 6103946 6134465 := by
  intro N hLower hStop
  have hNUpper : N <= 6134464 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6134464
        (envelope0040BaseCounts target) :=
    envelope0040BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6134464
        (envelope0040CellCounts cell) :=
    envelope0040CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6134464
        (envelope0040FibreCounts cell residue) :=
    envelope0040FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6134464) (count := 154364) envelope0040SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0040BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0040UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0040ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0040FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0040FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0040FibreMax cell) <=
          ∑ cell : Fin 9, envelope0040FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0040BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0040BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0040FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0040FibreRatio

theorem envelope0041FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6165136
      (envelope0041FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0041FibreCutoffCell0 residue
  · exact envelope0041FibreCutoffCell1 residue
  · exact envelope0041FibreCutoffCell2 residue
  · exact envelope0041FibreCutoffCell3 residue
  · exact envelope0041FibreCutoffCell4 residue
  · exact envelope0041FibreCutoffCell5 residue
  · exact envelope0041FibreCutoffCell6 residue
  · exact envelope0041FibreCutoffCell7 residue
  · exact envelope0041FibreCutoffCell8 residue

theorem envelope0041 : TailR263EvenOneDiagonalRange 6134465 6165137 := by
  intro N hLower hStop
  have hNUpper : N <= 6165136 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6165136
        (envelope0041BaseCounts target) :=
    envelope0041BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6165136
        (envelope0041CellCounts cell) :=
    envelope0041CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6165136
        (envelope0041FibreCounts cell residue) :=
    envelope0041FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6165136) (count := 155127) envelope0041SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0041BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0041UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0041ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0041FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0041FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0041FibreMax cell) <=
          ∑ cell : Fin 9, envelope0041FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0041BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0041BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0041FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0041FibreRatio

theorem envelope0042FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6195961
      (envelope0042FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0042FibreCutoffCell0 residue
  · exact envelope0042FibreCutoffCell1 residue
  · exact envelope0042FibreCutoffCell2 residue
  · exact envelope0042FibreCutoffCell3 residue
  · exact envelope0042FibreCutoffCell4 residue
  · exact envelope0042FibreCutoffCell5 residue
  · exact envelope0042FibreCutoffCell6 residue
  · exact envelope0042FibreCutoffCell7 residue
  · exact envelope0042FibreCutoffCell8 residue

theorem envelope0042 : TailR263EvenOneDiagonalRange 6165137 6195962 := by
  intro N hLower hStop
  have hNUpper : N <= 6195961 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6195961
        (envelope0042BaseCounts target) :=
    envelope0042BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6195961
        (envelope0042CellCounts cell) :=
    envelope0042CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6195961
        (envelope0042FibreCounts cell residue) :=
    envelope0042FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6195961) (count := 155910) envelope0042SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0042BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0042UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0042ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0042FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0042FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0042FibreMax cell) <=
          ∑ cell : Fin 9, envelope0042FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0042BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0042BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0042FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0042FibreRatio

theorem envelope0043FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6226940
      (envelope0043FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0043FibreCutoffCell0 residue
  · exact envelope0043FibreCutoffCell1 residue
  · exact envelope0043FibreCutoffCell2 residue
  · exact envelope0043FibreCutoffCell3 residue
  · exact envelope0043FibreCutoffCell4 residue
  · exact envelope0043FibreCutoffCell5 residue
  · exact envelope0043FibreCutoffCell6 residue
  · exact envelope0043FibreCutoffCell7 residue
  · exact envelope0043FibreCutoffCell8 residue

theorem envelope0043 : TailR263EvenOneDiagonalRange 6195962 6226941 := by
  intro N hLower hStop
  have hNUpper : N <= 6226940 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6226940
        (envelope0043BaseCounts target) :=
    envelope0043BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6226940
        (envelope0043CellCounts cell) :=
    envelope0043CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6226940
        (envelope0043FibreCounts cell residue) :=
    envelope0043FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6226940) (count := 156687) envelope0043SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0043BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0043UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0043ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0043FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0043FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0043FibreMax cell) <=
          ∑ cell : Fin 9, envelope0043FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0043BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0043BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0043FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0043FibreRatio

theorem envelope0044FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6258074
      (envelope0044FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0044FibreCutoffCell0 residue
  · exact envelope0044FibreCutoffCell1 residue
  · exact envelope0044FibreCutoffCell2 residue
  · exact envelope0044FibreCutoffCell3 residue
  · exact envelope0044FibreCutoffCell4 residue
  · exact envelope0044FibreCutoffCell5 residue
  · exact envelope0044FibreCutoffCell6 residue
  · exact envelope0044FibreCutoffCell7 residue
  · exact envelope0044FibreCutoffCell8 residue

theorem envelope0044 : TailR263EvenOneDiagonalRange 6226941 6258075 := by
  intro N hLower hStop
  have hNUpper : N <= 6258074 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6258074
        (envelope0044BaseCounts target) :=
    envelope0044BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6258074
        (envelope0044CellCounts cell) :=
    envelope0044CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6258074
        (envelope0044FibreCounts cell residue) :=
    envelope0044FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6258074) (count := 157466) envelope0044SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0044BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0044UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0044ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0044FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0044FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0044FibreMax cell) <=
          ∑ cell : Fin 9, envelope0044FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0044BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0044BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0044FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0044FibreRatio

theorem envelope0045FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6289364
      (envelope0045FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0045FibreCutoffCell0 residue
  · exact envelope0045FibreCutoffCell1 residue
  · exact envelope0045FibreCutoffCell2 residue
  · exact envelope0045FibreCutoffCell3 residue
  · exact envelope0045FibreCutoffCell4 residue
  · exact envelope0045FibreCutoffCell5 residue
  · exact envelope0045FibreCutoffCell6 residue
  · exact envelope0045FibreCutoffCell7 residue
  · exact envelope0045FibreCutoffCell8 residue

theorem envelope0045 : TailR263EvenOneDiagonalRange 6258075 6289365 := by
  intro N hLower hStop
  have hNUpper : N <= 6289364 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6289364
        (envelope0045BaseCounts target) :=
    envelope0045BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6289364
        (envelope0045CellCounts cell) :=
    envelope0045CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6289364
        (envelope0045FibreCounts cell residue) :=
    envelope0045FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6289364) (count := 158260) envelope0045SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0045BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0045UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0045ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0045FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0045FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0045FibreMax cell) <=
          ∑ cell : Fin 9, envelope0045FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0045BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0045BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0045FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0045FibreRatio

theorem envelope0046FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6320810
      (envelope0046FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0046FibreCutoffCell0 residue
  · exact envelope0046FibreCutoffCell1 residue
  · exact envelope0046FibreCutoffCell2 residue
  · exact envelope0046FibreCutoffCell3 residue
  · exact envelope0046FibreCutoffCell4 residue
  · exact envelope0046FibreCutoffCell5 residue
  · exact envelope0046FibreCutoffCell6 residue
  · exact envelope0046FibreCutoffCell7 residue
  · exact envelope0046FibreCutoffCell8 residue

theorem envelope0046 : TailR263EvenOneDiagonalRange 6289365 6320811 := by
  intro N hLower hStop
  have hNUpper : N <= 6320810 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6320810
        (envelope0046BaseCounts target) :=
    envelope0046BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6320810
        (envelope0046CellCounts cell) :=
    envelope0046CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6320810
        (envelope0046FibreCounts cell residue) :=
    envelope0046FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6320810) (count := 159046) envelope0046SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0046BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0046UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0046ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0046FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0046FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0046FibreMax cell) <=
          ∑ cell : Fin 9, envelope0046FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0046BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0046BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0046FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0046FibreRatio

theorem envelope0047FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6352414
      (envelope0047FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0047FibreCutoffCell0 residue
  · exact envelope0047FibreCutoffCell1 residue
  · exact envelope0047FibreCutoffCell2 residue
  · exact envelope0047FibreCutoffCell3 residue
  · exact envelope0047FibreCutoffCell4 residue
  · exact envelope0047FibreCutoffCell5 residue
  · exact envelope0047FibreCutoffCell6 residue
  · exact envelope0047FibreCutoffCell7 residue
  · exact envelope0047FibreCutoffCell8 residue

theorem envelope0047 : TailR263EvenOneDiagonalRange 6320811 6352415 := by
  intro N hLower hStop
  have hNUpper : N <= 6352414 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6352414
        (envelope0047BaseCounts target) :=
    envelope0047BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6352414
        (envelope0047CellCounts cell) :=
    envelope0047CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6352414
        (envelope0047FibreCounts cell residue) :=
    envelope0047FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6352414) (count := 159842) envelope0047SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0047BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0047UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0047ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0047FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0047FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0047FibreMax cell) <=
          ∑ cell : Fin 9, envelope0047FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0047BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0047BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0047FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0047FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
