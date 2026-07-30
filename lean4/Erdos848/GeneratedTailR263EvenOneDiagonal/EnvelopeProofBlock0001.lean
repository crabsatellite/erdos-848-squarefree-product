import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0002
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0003
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0001
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0001

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0016FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5442422
      (envelope0016FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0016FibreCutoffCell0 residue
  · exact envelope0016FibreCutoffCell1 residue
  · exact envelope0016FibreCutoffCell2 residue
  · exact envelope0016FibreCutoffCell3 residue
  · exact envelope0016FibreCutoffCell4 residue
  · exact envelope0016FibreCutoffCell5 residue
  · exact envelope0016FibreCutoffCell6 residue
  · exact envelope0016FibreCutoffCell7 residue
  · exact envelope0016FibreCutoffCell8 residue

theorem envelope0016 : TailR263EvenOneDiagonalRange 5415347 5442423 := by
  intro N hLower hStop
  have hNUpper : N <= 5442422 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5442422
        (envelope0016BaseCounts target) :=
    envelope0016BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5442422
        (envelope0016CellCounts cell) :=
    envelope0016CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5442422
        (envelope0016FibreCounts cell residue) :=
    envelope0016FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5442422) (count := 136947) envelope0016SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0016BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0016UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0016ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0016FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0016FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0016FibreMax cell) <=
          ∑ cell : Fin 9, envelope0016FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0016BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0016BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0016FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0016FibreRatio

theorem envelope0017FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5469634
      (envelope0017FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0017FibreCutoffCell0 residue
  · exact envelope0017FibreCutoffCell1 residue
  · exact envelope0017FibreCutoffCell2 residue
  · exact envelope0017FibreCutoffCell3 residue
  · exact envelope0017FibreCutoffCell4 residue
  · exact envelope0017FibreCutoffCell5 residue
  · exact envelope0017FibreCutoffCell6 residue
  · exact envelope0017FibreCutoffCell7 residue
  · exact envelope0017FibreCutoffCell8 residue

theorem envelope0017 : TailR263EvenOneDiagonalRange 5442423 5469635 := by
  intro N hLower hStop
  have hNUpper : N <= 5469634 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5469634
        (envelope0017BaseCounts target) :=
    envelope0017BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5469634
        (envelope0017CellCounts cell) :=
    envelope0017CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5469634
        (envelope0017FibreCounts cell residue) :=
    envelope0017FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5469634) (count := 137633) envelope0017SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0017BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0017UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0017ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0017FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0017FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0017FibreMax cell) <=
          ∑ cell : Fin 9, envelope0017FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0017BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0017BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0017FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0017FibreRatio

theorem envelope0018FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5496982
      (envelope0018FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0018FibreCutoffCell0 residue
  · exact envelope0018FibreCutoffCell1 residue
  · exact envelope0018FibreCutoffCell2 residue
  · exact envelope0018FibreCutoffCell3 residue
  · exact envelope0018FibreCutoffCell4 residue
  · exact envelope0018FibreCutoffCell5 residue
  · exact envelope0018FibreCutoffCell6 residue
  · exact envelope0018FibreCutoffCell7 residue
  · exact envelope0018FibreCutoffCell8 residue

theorem envelope0018 : TailR263EvenOneDiagonalRange 5469635 5496983 := by
  intro N hLower hStop
  have hNUpper : N <= 5496982 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5496982
        (envelope0018BaseCounts target) :=
    envelope0018BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5496982
        (envelope0018CellCounts cell) :=
    envelope0018CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5496982
        (envelope0018FibreCounts cell residue) :=
    envelope0018FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5496982) (count := 138328) envelope0018SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0018BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0018UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0018ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0018FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0018FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0018FibreMax cell) <=
          ∑ cell : Fin 9, envelope0018FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0018BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0018BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0018FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0018FibreRatio

theorem envelope0019FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5524466
      (envelope0019FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0019FibreCutoffCell0 residue
  · exact envelope0019FibreCutoffCell1 residue
  · exact envelope0019FibreCutoffCell2 residue
  · exact envelope0019FibreCutoffCell3 residue
  · exact envelope0019FibreCutoffCell4 residue
  · exact envelope0019FibreCutoffCell5 residue
  · exact envelope0019FibreCutoffCell6 residue
  · exact envelope0019FibreCutoffCell7 residue
  · exact envelope0019FibreCutoffCell8 residue

theorem envelope0019 : TailR263EvenOneDiagonalRange 5496983 5524467 := by
  intro N hLower hStop
  have hNUpper : N <= 5524466 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5524466
        (envelope0019BaseCounts target) :=
    envelope0019BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5524466
        (envelope0019CellCounts cell) :=
    envelope0019CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5524466
        (envelope0019FibreCounts cell residue) :=
    envelope0019FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5524466) (count := 139022) envelope0019SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0019BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0019UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0019ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0019FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0019FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0019FibreMax cell) <=
          ∑ cell : Fin 9, envelope0019FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0019BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0019BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0019FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0019FibreRatio

theorem envelope0020FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5552088
      (envelope0020FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0020FibreCutoffCell0 residue
  · exact envelope0020FibreCutoffCell1 residue
  · exact envelope0020FibreCutoffCell2 residue
  · exact envelope0020FibreCutoffCell3 residue
  · exact envelope0020FibreCutoffCell4 residue
  · exact envelope0020FibreCutoffCell5 residue
  · exact envelope0020FibreCutoffCell6 residue
  · exact envelope0020FibreCutoffCell7 residue
  · exact envelope0020FibreCutoffCell8 residue

theorem envelope0020 : TailR263EvenOneDiagonalRange 5524467 5552089 := by
  intro N hLower hStop
  have hNUpper : N <= 5552088 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5552088
        (envelope0020BaseCounts target) :=
    envelope0020BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5552088
        (envelope0020CellCounts cell) :=
    envelope0020CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5552088
        (envelope0020FibreCounts cell residue) :=
    envelope0020FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5552088) (count := 139714) envelope0020SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0020BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0020UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0020ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0020FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0020FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0020FibreMax cell) <=
          ∑ cell : Fin 9, envelope0020FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0020BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0020BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0020FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0020FibreRatio

theorem envelope0021FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5579848
      (envelope0021FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0021FibreCutoffCell0 residue
  · exact envelope0021FibreCutoffCell1 residue
  · exact envelope0021FibreCutoffCell2 residue
  · exact envelope0021FibreCutoffCell3 residue
  · exact envelope0021FibreCutoffCell4 residue
  · exact envelope0021FibreCutoffCell5 residue
  · exact envelope0021FibreCutoffCell6 residue
  · exact envelope0021FibreCutoffCell7 residue
  · exact envelope0021FibreCutoffCell8 residue

theorem envelope0021 : TailR263EvenOneDiagonalRange 5552089 5579849 := by
  intro N hLower hStop
  have hNUpper : N <= 5579848 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5579848
        (envelope0021BaseCounts target) :=
    envelope0021BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5579848
        (envelope0021CellCounts cell) :=
    envelope0021CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5579848
        (envelope0021FibreCounts cell residue) :=
    envelope0021FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5579848) (count := 140412) envelope0021SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0021BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0021UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0021ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0021FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0021FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0021FibreMax cell) <=
          ∑ cell : Fin 9, envelope0021FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0021BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0021BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0021FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0021FibreRatio

theorem envelope0022FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5607747
      (envelope0022FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0022FibreCutoffCell0 residue
  · exact envelope0022FibreCutoffCell1 residue
  · exact envelope0022FibreCutoffCell2 residue
  · exact envelope0022FibreCutoffCell3 residue
  · exact envelope0022FibreCutoffCell4 residue
  · exact envelope0022FibreCutoffCell5 residue
  · exact envelope0022FibreCutoffCell6 residue
  · exact envelope0022FibreCutoffCell7 residue
  · exact envelope0022FibreCutoffCell8 residue

theorem envelope0022 : TailR263EvenOneDiagonalRange 5579849 5607748 := by
  intro N hLower hStop
  have hNUpper : N <= 5607747 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5607747
        (envelope0022BaseCounts target) :=
    envelope0022BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5607747
        (envelope0022CellCounts cell) :=
    envelope0022CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5607747
        (envelope0022FibreCounts cell residue) :=
    envelope0022FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5607747) (count := 141118) envelope0022SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0022BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0022UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0022ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0022FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0022FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0022FibreMax cell) <=
          ∑ cell : Fin 9, envelope0022FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0022BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0022BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0022FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0022FibreRatio

theorem envelope0023FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5635785
      (envelope0023FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0023FibreCutoffCell0 residue
  · exact envelope0023FibreCutoffCell1 residue
  · exact envelope0023FibreCutoffCell2 residue
  · exact envelope0023FibreCutoffCell3 residue
  · exact envelope0023FibreCutoffCell4 residue
  · exact envelope0023FibreCutoffCell5 residue
  · exact envelope0023FibreCutoffCell6 residue
  · exact envelope0023FibreCutoffCell7 residue
  · exact envelope0023FibreCutoffCell8 residue

theorem envelope0023 : TailR263EvenOneDiagonalRange 5607748 5635786 := by
  intro N hLower hStop
  have hNUpper : N <= 5635785 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5635785
        (envelope0023BaseCounts target) :=
    envelope0023BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5635785
        (envelope0023CellCounts cell) :=
    envelope0023CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5635785
        (envelope0023FibreCounts cell residue) :=
    envelope0023FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5635785) (count := 141819) envelope0023SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0023BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0023UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0023ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0023FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0023FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0023FibreMax cell) <=
          ∑ cell : Fin 9, envelope0023FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0023BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0023BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0023FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0023FibreRatio

theorem envelope0024FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5663963
      (envelope0024FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0024FibreCutoffCell0 residue
  · exact envelope0024FibreCutoffCell1 residue
  · exact envelope0024FibreCutoffCell2 residue
  · exact envelope0024FibreCutoffCell3 residue
  · exact envelope0024FibreCutoffCell4 residue
  · exact envelope0024FibreCutoffCell5 residue
  · exact envelope0024FibreCutoffCell6 residue
  · exact envelope0024FibreCutoffCell7 residue
  · exact envelope0024FibreCutoffCell8 residue

theorem envelope0024 : TailR263EvenOneDiagonalRange 5635786 5663964 := by
  intro N hLower hStop
  have hNUpper : N <= 5663963 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5663963
        (envelope0024BaseCounts target) :=
    envelope0024BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5663963
        (envelope0024CellCounts cell) :=
    envelope0024CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5663963
        (envelope0024FibreCounts cell residue) :=
    envelope0024FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5663963) (count := 142525) envelope0024SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0024BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0024UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0024ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0024FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0024FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0024FibreMax cell) <=
          ∑ cell : Fin 9, envelope0024FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0024BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0024BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0024FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0024FibreRatio

theorem envelope0025FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5692282
      (envelope0025FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0025FibreCutoffCell0 residue
  · exact envelope0025FibreCutoffCell1 residue
  · exact envelope0025FibreCutoffCell2 residue
  · exact envelope0025FibreCutoffCell3 residue
  · exact envelope0025FibreCutoffCell4 residue
  · exact envelope0025FibreCutoffCell5 residue
  · exact envelope0025FibreCutoffCell6 residue
  · exact envelope0025FibreCutoffCell7 residue
  · exact envelope0025FibreCutoffCell8 residue

theorem envelope0025 : TailR263EvenOneDiagonalRange 5663964 5692283 := by
  intro N hLower hStop
  have hNUpper : N <= 5692282 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5692282
        (envelope0025BaseCounts target) :=
    envelope0025BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5692282
        (envelope0025CellCounts cell) :=
    envelope0025CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5692282
        (envelope0025FibreCounts cell residue) :=
    envelope0025FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5692282) (count := 143242) envelope0025SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0025BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0025UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0025ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0025FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0025FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0025FibreMax cell) <=
          ∑ cell : Fin 9, envelope0025FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0025BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0025BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0025FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0025FibreRatio

theorem envelope0026FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5720743
      (envelope0026FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0026FibreCutoffCell0 residue
  · exact envelope0026FibreCutoffCell1 residue
  · exact envelope0026FibreCutoffCell2 residue
  · exact envelope0026FibreCutoffCell3 residue
  · exact envelope0026FibreCutoffCell4 residue
  · exact envelope0026FibreCutoffCell5 residue
  · exact envelope0026FibreCutoffCell6 residue
  · exact envelope0026FibreCutoffCell7 residue
  · exact envelope0026FibreCutoffCell8 residue

theorem envelope0026 : TailR263EvenOneDiagonalRange 5692283 5720744 := by
  intro N hLower hStop
  have hNUpper : N <= 5720743 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5720743
        (envelope0026BaseCounts target) :=
    envelope0026BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5720743
        (envelope0026CellCounts cell) :=
    envelope0026CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5720743
        (envelope0026FibreCounts cell residue) :=
    envelope0026FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5720743) (count := 143951) envelope0026SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0026BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0026UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0026ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0026FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0026FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0026FibreMax cell) <=
          ∑ cell : Fin 9, envelope0026FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0026BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0026BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0026FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0026FibreRatio

theorem envelope0027FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5749346
      (envelope0027FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0027FibreCutoffCell0 residue
  · exact envelope0027FibreCutoffCell1 residue
  · exact envelope0027FibreCutoffCell2 residue
  · exact envelope0027FibreCutoffCell3 residue
  · exact envelope0027FibreCutoffCell4 residue
  · exact envelope0027FibreCutoffCell5 residue
  · exact envelope0027FibreCutoffCell6 residue
  · exact envelope0027FibreCutoffCell7 residue
  · exact envelope0027FibreCutoffCell8 residue

theorem envelope0027 : TailR263EvenOneDiagonalRange 5720744 5749347 := by
  intro N hLower hStop
  have hNUpper : N <= 5749346 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5749346
        (envelope0027BaseCounts target) :=
    envelope0027BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5749346
        (envelope0027CellCounts cell) :=
    envelope0027CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5749346
        (envelope0027FibreCounts cell residue) :=
    envelope0027FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5749346) (count := 144670) envelope0027SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0027BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0027UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0027ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0027FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0027FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0027FibreMax cell) <=
          ∑ cell : Fin 9, envelope0027FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0027BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0027BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0027FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0027FibreRatio

theorem envelope0028FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5778092
      (envelope0028FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0028FibreCutoffCell0 residue
  · exact envelope0028FibreCutoffCell1 residue
  · exact envelope0028FibreCutoffCell2 residue
  · exact envelope0028FibreCutoffCell3 residue
  · exact envelope0028FibreCutoffCell4 residue
  · exact envelope0028FibreCutoffCell5 residue
  · exact envelope0028FibreCutoffCell6 residue
  · exact envelope0028FibreCutoffCell7 residue
  · exact envelope0028FibreCutoffCell8 residue

theorem envelope0028 : TailR263EvenOneDiagonalRange 5749347 5778093 := by
  intro N hLower hStop
  have hNUpper : N <= 5778092 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5778092
        (envelope0028BaseCounts target) :=
    envelope0028BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5778092
        (envelope0028CellCounts cell) :=
    envelope0028CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5778092
        (envelope0028FibreCounts cell residue) :=
    envelope0028FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5778092) (count := 145390) envelope0028SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0028BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0028UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0028ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0028FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0028FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0028FibreMax cell) <=
          ∑ cell : Fin 9, envelope0028FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0028BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0028BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0028FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0028FibreRatio

theorem envelope0029FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5806982
      (envelope0029FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0029FibreCutoffCell0 residue
  · exact envelope0029FibreCutoffCell1 residue
  · exact envelope0029FibreCutoffCell2 residue
  · exact envelope0029FibreCutoffCell3 residue
  · exact envelope0029FibreCutoffCell4 residue
  · exact envelope0029FibreCutoffCell5 residue
  · exact envelope0029FibreCutoffCell6 residue
  · exact envelope0029FibreCutoffCell7 residue
  · exact envelope0029FibreCutoffCell8 residue

theorem envelope0029 : TailR263EvenOneDiagonalRange 5778093 5806983 := by
  intro N hLower hStop
  have hNUpper : N <= 5806982 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5806982
        (envelope0029BaseCounts target) :=
    envelope0029BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5806982
        (envelope0029CellCounts cell) :=
    envelope0029CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5806982
        (envelope0029FibreCounts cell residue) :=
    envelope0029FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5806982) (count := 146123) envelope0029SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0029BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0029UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0029ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0029FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0029FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0029FibreMax cell) <=
          ∑ cell : Fin 9, envelope0029FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0029BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0029BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0029FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0029FibreRatio

theorem envelope0030FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5836016
      (envelope0030FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0030FibreCutoffCell0 residue
  · exact envelope0030FibreCutoffCell1 residue
  · exact envelope0030FibreCutoffCell2 residue
  · exact envelope0030FibreCutoffCell3 residue
  · exact envelope0030FibreCutoffCell4 residue
  · exact envelope0030FibreCutoffCell5 residue
  · exact envelope0030FibreCutoffCell6 residue
  · exact envelope0030FibreCutoffCell7 residue
  · exact envelope0030FibreCutoffCell8 residue

theorem envelope0030 : TailR263EvenOneDiagonalRange 5806983 5836017 := by
  intro N hLower hStop
  have hNUpper : N <= 5836016 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5836016
        (envelope0030BaseCounts target) :=
    envelope0030BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5836016
        (envelope0030CellCounts cell) :=
    envelope0030CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5836016
        (envelope0030FibreCounts cell residue) :=
    envelope0030FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5836016) (count := 146845) envelope0030SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0030BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0030UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0030ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0030FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0030FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0030FibreMax cell) <=
          ∑ cell : Fin 9, envelope0030FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0030BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0030BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0030FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0030FibreRatio

theorem envelope0031FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 5865196
      (envelope0031FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0031FibreCutoffCell0 residue
  · exact envelope0031FibreCutoffCell1 residue
  · exact envelope0031FibreCutoffCell2 residue
  · exact envelope0031FibreCutoffCell3 residue
  · exact envelope0031FibreCutoffCell4 residue
  · exact envelope0031FibreCutoffCell5 residue
  · exact envelope0031FibreCutoffCell6 residue
  · exact envelope0031FibreCutoffCell7 residue
  · exact envelope0031FibreCutoffCell8 residue

theorem envelope0031 : TailR263EvenOneDiagonalRange 5836017 5865197 := by
  intro N hLower hStop
  have hNUpper : N <= 5865196 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5865196
        (envelope0031BaseCounts target) :=
    envelope0031BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5865196
        (envelope0031CellCounts cell) :=
    envelope0031CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5865196
        (envelope0031FibreCounts cell residue) :=
    envelope0031FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5865196) (count := 147584) envelope0031SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0031BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0031UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0031ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0031FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0031FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0031FibreMax cell) <=
          ∑ cell : Fin 9, envelope0031FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0031BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0031BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0031FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0031FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
