import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0010
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0011
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0005
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0005

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0080FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7488896
      (envelope0080FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0080FibreCutoffCell0 residue
  · exact envelope0080FibreCutoffCell1 residue
  · exact envelope0080FibreCutoffCell2 residue
  · exact envelope0080FibreCutoffCell3 residue
  · exact envelope0080FibreCutoffCell4 residue
  · exact envelope0080FibreCutoffCell5 residue
  · exact envelope0080FibreCutoffCell6 residue
  · exact envelope0080FibreCutoffCell7 residue
  · exact envelope0080FibreCutoffCell8 residue

theorem envelope0080 : TailR263EvenOneDiagonalRange 7451639 7488897 := by
  intro N hLower hStop
  have hNUpper : N <= 7488896 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7488896
        (envelope0080BaseCounts target) :=
    envelope0080BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7488896
        (envelope0080CellCounts cell) :=
    envelope0080CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7488896
        (envelope0080FibreCounts cell residue) :=
    envelope0080FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7488896) (count := 188421) envelope0080SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0080BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0080UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0080ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0080FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0080FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0080FibreMax cell) <=
          ∑ cell : Fin 9, envelope0080FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0080BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0080BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0080FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0080FibreRatio

theorem envelope0081FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7526340
      (envelope0081FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0081FibreCutoffCell0 residue
  · exact envelope0081FibreCutoffCell1 residue
  · exact envelope0081FibreCutoffCell2 residue
  · exact envelope0081FibreCutoffCell3 residue
  · exact envelope0081FibreCutoffCell4 residue
  · exact envelope0081FibreCutoffCell5 residue
  · exact envelope0081FibreCutoffCell6 residue
  · exact envelope0081FibreCutoffCell7 residue
  · exact envelope0081FibreCutoffCell8 residue

theorem envelope0081 : TailR263EvenOneDiagonalRange 7488897 7526341 := by
  intro N hLower hStop
  have hNUpper : N <= 7526340 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7526340
        (envelope0081BaseCounts target) :=
    envelope0081BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7526340
        (envelope0081CellCounts cell) :=
    envelope0081CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7526340
        (envelope0081FibreCounts cell residue) :=
    envelope0081FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7526340) (count := 189358) envelope0081SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0081BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0081UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0081ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0081FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0081FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0081FibreMax cell) <=
          ∑ cell : Fin 9, envelope0081FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0081BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0081BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0081FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0081FibreRatio

theorem envelope0082FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7563971
      (envelope0082FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0082FibreCutoffCell0 residue
  · exact envelope0082FibreCutoffCell1 residue
  · exact envelope0082FibreCutoffCell2 residue
  · exact envelope0082FibreCutoffCell3 residue
  · exact envelope0082FibreCutoffCell4 residue
  · exact envelope0082FibreCutoffCell5 residue
  · exact envelope0082FibreCutoffCell6 residue
  · exact envelope0082FibreCutoffCell7 residue
  · exact envelope0082FibreCutoffCell8 residue

theorem envelope0082 : TailR263EvenOneDiagonalRange 7526341 7563972 := by
  intro N hLower hStop
  have hNUpper : N <= 7563971 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7563971
        (envelope0082BaseCounts target) :=
    envelope0082BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7563971
        (envelope0082CellCounts cell) :=
    envelope0082CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7563971
        (envelope0082FibreCounts cell residue) :=
    envelope0082FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7563971) (count := 190318) envelope0082SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0082BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0082UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0082ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0082FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0082FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0082FibreMax cell) <=
          ∑ cell : Fin 9, envelope0082FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0082BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0082BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0082FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0082FibreRatio

theorem envelope0083FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7601790
      (envelope0083FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0083FibreCutoffCell0 residue
  · exact envelope0083FibreCutoffCell1 residue
  · exact envelope0083FibreCutoffCell2 residue
  · exact envelope0083FibreCutoffCell3 residue
  · exact envelope0083FibreCutoffCell4 residue
  · exact envelope0083FibreCutoffCell5 residue
  · exact envelope0083FibreCutoffCell6 residue
  · exact envelope0083FibreCutoffCell7 residue
  · exact envelope0083FibreCutoffCell8 residue

theorem envelope0083 : TailR263EvenOneDiagonalRange 7563972 7601791 := by
  intro N hLower hStop
  have hNUpper : N <= 7601790 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7601790
        (envelope0083BaseCounts target) :=
    envelope0083BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7601790
        (envelope0083CellCounts cell) :=
    envelope0083CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7601790
        (envelope0083FibreCounts cell residue) :=
    envelope0083FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7601790) (count := 191273) envelope0083SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0083BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0083UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0083ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0083FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0083FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0083FibreMax cell) <=
          ∑ cell : Fin 9, envelope0083FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0083BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0083BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0083FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0083FibreRatio

theorem envelope0084FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7639798
      (envelope0084FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0084FibreCutoffCell0 residue
  · exact envelope0084FibreCutoffCell1 residue
  · exact envelope0084FibreCutoffCell2 residue
  · exact envelope0084FibreCutoffCell3 residue
  · exact envelope0084FibreCutoffCell4 residue
  · exact envelope0084FibreCutoffCell5 residue
  · exact envelope0084FibreCutoffCell6 residue
  · exact envelope0084FibreCutoffCell7 residue
  · exact envelope0084FibreCutoffCell8 residue

theorem envelope0084 : TailR263EvenOneDiagonalRange 7601791 7639799 := by
  intro N hLower hStop
  have hNUpper : N <= 7639798 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7639798
        (envelope0084BaseCounts target) :=
    envelope0084BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7639798
        (envelope0084CellCounts cell) :=
    envelope0084CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7639798
        (envelope0084FibreCounts cell residue) :=
    envelope0084FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7639798) (count := 192226) envelope0084SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0084BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0084UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0084ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0084FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0084FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0084FibreMax cell) <=
          ∑ cell : Fin 9, envelope0084FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0084BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0084BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0084FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0084FibreRatio

theorem envelope0085FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7677996
      (envelope0085FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0085FibreCutoffCell0 residue
  · exact envelope0085FibreCutoffCell1 residue
  · exact envelope0085FibreCutoffCell2 residue
  · exact envelope0085FibreCutoffCell3 residue
  · exact envelope0085FibreCutoffCell4 residue
  · exact envelope0085FibreCutoffCell5 residue
  · exact envelope0085FibreCutoffCell6 residue
  · exact envelope0085FibreCutoffCell7 residue
  · exact envelope0085FibreCutoffCell8 residue

theorem envelope0085 : TailR263EvenOneDiagonalRange 7639799 7677997 := by
  intro N hLower hStop
  have hNUpper : N <= 7677996 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7677996
        (envelope0085BaseCounts target) :=
    envelope0085BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7677996
        (envelope0085CellCounts cell) :=
    envelope0085CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7677996
        (envelope0085FibreCounts cell residue) :=
    envelope0085FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7677996) (count := 193184) envelope0085SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0085BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0085UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0085ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0085FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0085FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0085FibreMax cell) <=
          ∑ cell : Fin 9, envelope0085FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0085BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0085BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0085FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0085FibreRatio

theorem envelope0086FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7716385
      (envelope0086FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0086FibreCutoffCell0 residue
  · exact envelope0086FibreCutoffCell1 residue
  · exact envelope0086FibreCutoffCell2 residue
  · exact envelope0086FibreCutoffCell3 residue
  · exact envelope0086FibreCutoffCell4 residue
  · exact envelope0086FibreCutoffCell5 residue
  · exact envelope0086FibreCutoffCell6 residue
  · exact envelope0086FibreCutoffCell7 residue
  · exact envelope0086FibreCutoffCell8 residue

theorem envelope0086 : TailR263EvenOneDiagonalRange 7677997 7716386 := by
  intro N hLower hStop
  have hNUpper : N <= 7716385 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7716385
        (envelope0086BaseCounts target) :=
    envelope0086BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7716385
        (envelope0086CellCounts cell) :=
    envelope0086CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7716385
        (envelope0086FibreCounts cell residue) :=
    envelope0086FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7716385) (count := 194151) envelope0086SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0086BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0086UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0086ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0086FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0086FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0086FibreMax cell) <=
          ∑ cell : Fin 9, envelope0086FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0086BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0086BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0086FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0086FibreRatio

theorem envelope0087FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7754966
      (envelope0087FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0087FibreCutoffCell0 residue
  · exact envelope0087FibreCutoffCell1 residue
  · exact envelope0087FibreCutoffCell2 residue
  · exact envelope0087FibreCutoffCell3 residue
  · exact envelope0087FibreCutoffCell4 residue
  · exact envelope0087FibreCutoffCell5 residue
  · exact envelope0087FibreCutoffCell6 residue
  · exact envelope0087FibreCutoffCell7 residue
  · exact envelope0087FibreCutoffCell8 residue

theorem envelope0087 : TailR263EvenOneDiagonalRange 7716386 7754967 := by
  intro N hLower hStop
  have hNUpper : N <= 7754966 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7754966
        (envelope0087BaseCounts target) :=
    envelope0087BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7754966
        (envelope0087CellCounts cell) :=
    envelope0087CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7754966
        (envelope0087FibreCounts cell residue) :=
    envelope0087FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7754966) (count := 195123) envelope0087SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0087BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0087UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0087ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0087FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0087FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0087FibreMax cell) <=
          ∑ cell : Fin 9, envelope0087FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0087BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0087BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0087FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0087FibreRatio

theorem envelope0088FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7793740
      (envelope0088FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0088FibreCutoffCell0 residue
  · exact envelope0088FibreCutoffCell1 residue
  · exact envelope0088FibreCutoffCell2 residue
  · exact envelope0088FibreCutoffCell3 residue
  · exact envelope0088FibreCutoffCell4 residue
  · exact envelope0088FibreCutoffCell5 residue
  · exact envelope0088FibreCutoffCell6 residue
  · exact envelope0088FibreCutoffCell7 residue
  · exact envelope0088FibreCutoffCell8 residue

theorem envelope0088 : TailR263EvenOneDiagonalRange 7754967 7793741 := by
  intro N hLower hStop
  have hNUpper : N <= 7793740 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7793740
        (envelope0088BaseCounts target) :=
    envelope0088BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7793740
        (envelope0088CellCounts cell) :=
    envelope0088CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7793740
        (envelope0088FibreCounts cell residue) :=
    envelope0088FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7793740) (count := 196091) envelope0088SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0088BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0088UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0088ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0088FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0088FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0088FibreMax cell) <=
          ∑ cell : Fin 9, envelope0088FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0088BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0088BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0088FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0088FibreRatio

theorem envelope0089FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7832708
      (envelope0089FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0089FibreCutoffCell0 residue
  · exact envelope0089FibreCutoffCell1 residue
  · exact envelope0089FibreCutoffCell2 residue
  · exact envelope0089FibreCutoffCell3 residue
  · exact envelope0089FibreCutoffCell4 residue
  · exact envelope0089FibreCutoffCell5 residue
  · exact envelope0089FibreCutoffCell6 residue
  · exact envelope0089FibreCutoffCell7 residue
  · exact envelope0089FibreCutoffCell8 residue

theorem envelope0089 : TailR263EvenOneDiagonalRange 7793741 7832709 := by
  intro N hLower hStop
  have hNUpper : N <= 7832708 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7832708
        (envelope0089BaseCounts target) :=
    envelope0089BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7832708
        (envelope0089CellCounts cell) :=
    envelope0089CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7832708
        (envelope0089FibreCounts cell residue) :=
    envelope0089FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7832708) (count := 197072) envelope0089SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0089BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0089UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0089ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0089FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0089FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0089FibreMax cell) <=
          ∑ cell : Fin 9, envelope0089FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0089BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0089BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0089FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0089FibreRatio

theorem envelope0090FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7871871
      (envelope0090FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0090FibreCutoffCell0 residue
  · exact envelope0090FibreCutoffCell1 residue
  · exact envelope0090FibreCutoffCell2 residue
  · exact envelope0090FibreCutoffCell3 residue
  · exact envelope0090FibreCutoffCell4 residue
  · exact envelope0090FibreCutoffCell5 residue
  · exact envelope0090FibreCutoffCell6 residue
  · exact envelope0090FibreCutoffCell7 residue
  · exact envelope0090FibreCutoffCell8 residue

theorem envelope0090 : TailR263EvenOneDiagonalRange 7832709 7871872 := by
  intro N hLower hStop
  have hNUpper : N <= 7871871 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7871871
        (envelope0090BaseCounts target) :=
    envelope0090BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7871871
        (envelope0090CellCounts cell) :=
    envelope0090CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7871871
        (envelope0090FibreCounts cell residue) :=
    envelope0090FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7871871) (count := 198064) envelope0090SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0090BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0090UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0090ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0090FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0090FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0090FibreMax cell) <=
          ∑ cell : Fin 9, envelope0090FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0090BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0090BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0090FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0090FibreRatio

theorem envelope0091FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7911230
      (envelope0091FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0091FibreCutoffCell0 residue
  · exact envelope0091FibreCutoffCell1 residue
  · exact envelope0091FibreCutoffCell2 residue
  · exact envelope0091FibreCutoffCell3 residue
  · exact envelope0091FibreCutoffCell4 residue
  · exact envelope0091FibreCutoffCell5 residue
  · exact envelope0091FibreCutoffCell6 residue
  · exact envelope0091FibreCutoffCell7 residue
  · exact envelope0091FibreCutoffCell8 residue

theorem envelope0091 : TailR263EvenOneDiagonalRange 7871872 7911231 := by
  intro N hLower hStop
  have hNUpper : N <= 7911230 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7911230
        (envelope0091BaseCounts target) :=
    envelope0091BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7911230
        (envelope0091CellCounts cell) :=
    envelope0091CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7911230
        (envelope0091FibreCounts cell residue) :=
    envelope0091FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7911230) (count := 199042) envelope0091SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0091BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0091UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0091ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0091FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0091FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0091FibreMax cell) <=
          ∑ cell : Fin 9, envelope0091FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0091BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0091BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0091FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0091FibreRatio

theorem envelope0092FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7950786
      (envelope0092FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0092FibreCutoffCell0 residue
  · exact envelope0092FibreCutoffCell1 residue
  · exact envelope0092FibreCutoffCell2 residue
  · exact envelope0092FibreCutoffCell3 residue
  · exact envelope0092FibreCutoffCell4 residue
  · exact envelope0092FibreCutoffCell5 residue
  · exact envelope0092FibreCutoffCell6 residue
  · exact envelope0092FibreCutoffCell7 residue
  · exact envelope0092FibreCutoffCell8 residue

theorem envelope0092 : TailR263EvenOneDiagonalRange 7911231 7950787 := by
  intro N hLower hStop
  have hNUpper : N <= 7950786 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7950786
        (envelope0092BaseCounts target) :=
    envelope0092BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7950786
        (envelope0092CellCounts cell) :=
    envelope0092CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7950786
        (envelope0092FibreCounts cell residue) :=
    envelope0092FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7950786) (count := 200040) envelope0092SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0092BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0092UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0092ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0092FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0092FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0092FibreMax cell) <=
          ∑ cell : Fin 9, envelope0092FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0092BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0092BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0092FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0092FibreRatio

theorem envelope0093FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7990539
      (envelope0093FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0093FibreCutoffCell0 residue
  · exact envelope0093FibreCutoffCell1 residue
  · exact envelope0093FibreCutoffCell2 residue
  · exact envelope0093FibreCutoffCell3 residue
  · exact envelope0093FibreCutoffCell4 residue
  · exact envelope0093FibreCutoffCell5 residue
  · exact envelope0093FibreCutoffCell6 residue
  · exact envelope0093FibreCutoffCell7 residue
  · exact envelope0093FibreCutoffCell8 residue

theorem envelope0093 : TailR263EvenOneDiagonalRange 7950787 7990540 := by
  intro N hLower hStop
  have hNUpper : N <= 7990539 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7990539
        (envelope0093BaseCounts target) :=
    envelope0093BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7990539
        (envelope0093CellCounts cell) :=
    envelope0093CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7990539
        (envelope0093FibreCounts cell residue) :=
    envelope0093FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7990539) (count := 201032) envelope0093SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0093BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0093UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0093ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0093FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0093FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0093FibreMax cell) <=
          ∑ cell : Fin 9, envelope0093FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0093BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0093BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0093FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0093FibreRatio

theorem envelope0094FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8030491
      (envelope0094FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0094FibreCutoffCell0 residue
  · exact envelope0094FibreCutoffCell1 residue
  · exact envelope0094FibreCutoffCell2 residue
  · exact envelope0094FibreCutoffCell3 residue
  · exact envelope0094FibreCutoffCell4 residue
  · exact envelope0094FibreCutoffCell5 residue
  · exact envelope0094FibreCutoffCell6 residue
  · exact envelope0094FibreCutoffCell7 residue
  · exact envelope0094FibreCutoffCell8 residue

theorem envelope0094 : TailR263EvenOneDiagonalRange 7990540 8030492 := by
  intro N hLower hStop
  have hNUpper : N <= 8030491 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8030491
        (envelope0094BaseCounts target) :=
    envelope0094BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8030491
        (envelope0094CellCounts cell) :=
    envelope0094CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8030491
        (envelope0094FibreCounts cell residue) :=
    envelope0094FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8030491) (count := 202038) envelope0094SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0094BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0094UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0094ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0094FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0094FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0094FibreMax cell) <=
          ∑ cell : Fin 9, envelope0094FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0094BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0094BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0094FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0094FibreRatio

theorem envelope0095FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8070643
      (envelope0095FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0095FibreCutoffCell0 residue
  · exact envelope0095FibreCutoffCell1 residue
  · exact envelope0095FibreCutoffCell2 residue
  · exact envelope0095FibreCutoffCell3 residue
  · exact envelope0095FibreCutoffCell4 residue
  · exact envelope0095FibreCutoffCell5 residue
  · exact envelope0095FibreCutoffCell6 residue
  · exact envelope0095FibreCutoffCell7 residue
  · exact envelope0095FibreCutoffCell8 residue

theorem envelope0095 : TailR263EvenOneDiagonalRange 8030492 8070644 := by
  intro N hLower hStop
  have hNUpper : N <= 8070643 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8070643
        (envelope0095BaseCounts target) :=
    envelope0095BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8070643
        (envelope0095CellCounts cell) :=
    envelope0095CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8070643
        (envelope0095FibreCounts cell residue) :=
    envelope0095FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8070643) (count := 203040) envelope0095SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0095BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0095UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0095ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0095FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0095FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0095FibreMax cell) <=
          ∑ cell : Fin 9, envelope0095FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0095BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0095BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0095FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0095FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
