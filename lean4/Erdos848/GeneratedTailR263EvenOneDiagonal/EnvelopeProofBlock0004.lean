import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0008
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0009
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0004
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0004

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0064FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6914509
      (envelope0064FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0064FibreCutoffCell0 residue
  · exact envelope0064FibreCutoffCell1 residue
  · exact envelope0064FibreCutoffCell2 residue
  · exact envelope0064FibreCutoffCell3 residue
  · exact envelope0064FibreCutoffCell4 residue
  · exact envelope0064FibreCutoffCell5 residue
  · exact envelope0064FibreCutoffCell6 residue
  · exact envelope0064FibreCutoffCell7 residue
  · exact envelope0064FibreCutoffCell8 residue

theorem envelope0064 : TailR263EvenOneDiagonalRange 6880110 6914510 := by
  intro N hLower hStop
  have hNUpper : N <= 6914509 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6914509
        (envelope0064BaseCounts target) :=
    envelope0064BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6914509
        (envelope0064CellCounts cell) :=
    envelope0064CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6914509
        (envelope0064FibreCounts cell residue) :=
    envelope0064FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6914509) (count := 173994) envelope0064SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0064BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0064UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0064ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0064FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0064FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0064FibreMax cell) <=
          ∑ cell : Fin 9, envelope0064FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0064BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0064BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0064FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0064FibreRatio

theorem envelope0065FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6949081
      (envelope0065FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0065FibreCutoffCell0 residue
  · exact envelope0065FibreCutoffCell1 residue
  · exact envelope0065FibreCutoffCell2 residue
  · exact envelope0065FibreCutoffCell3 residue
  · exact envelope0065FibreCutoffCell4 residue
  · exact envelope0065FibreCutoffCell5 residue
  · exact envelope0065FibreCutoffCell6 residue
  · exact envelope0065FibreCutoffCell7 residue
  · exact envelope0065FibreCutoffCell8 residue

theorem envelope0065 : TailR263EvenOneDiagonalRange 6914510 6949082 := by
  intro N hLower hStop
  have hNUpper : N <= 6949081 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6949081
        (envelope0065BaseCounts target) :=
    envelope0065BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6949081
        (envelope0065CellCounts cell) :=
    envelope0065CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6949081
        (envelope0065FibreCounts cell residue) :=
    envelope0065FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6949081) (count := 174854) envelope0065SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0065BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0065UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0065ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0065FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0065FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0065FibreMax cell) <=
          ∑ cell : Fin 9, envelope0065FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0065BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0065BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0065FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0065FibreRatio

theorem envelope0066FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 6983826
      (envelope0066FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0066FibreCutoffCell0 residue
  · exact envelope0066FibreCutoffCell1 residue
  · exact envelope0066FibreCutoffCell2 residue
  · exact envelope0066FibreCutoffCell3 residue
  · exact envelope0066FibreCutoffCell4 residue
  · exact envelope0066FibreCutoffCell5 residue
  · exact envelope0066FibreCutoffCell6 residue
  · exact envelope0066FibreCutoffCell7 residue
  · exact envelope0066FibreCutoffCell8 residue

theorem envelope0066 : TailR263EvenOneDiagonalRange 6949082 6983827 := by
  intro N hLower hStop
  have hNUpper : N <= 6983826 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6983826
        (envelope0066BaseCounts target) :=
    envelope0066BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6983826
        (envelope0066CellCounts cell) :=
    envelope0066CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6983826
        (envelope0066FibreCounts cell residue) :=
    envelope0066FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6983826) (count := 175727) envelope0066SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0066BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0066UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0066ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0066FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0066FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0066FibreMax cell) <=
          ∑ cell : Fin 9, envelope0066FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0066BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0066BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0066FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0066FibreRatio

theorem envelope0067FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7018745
      (envelope0067FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0067FibreCutoffCell0 residue
  · exact envelope0067FibreCutoffCell1 residue
  · exact envelope0067FibreCutoffCell2 residue
  · exact envelope0067FibreCutoffCell3 residue
  · exact envelope0067FibreCutoffCell4 residue
  · exact envelope0067FibreCutoffCell5 residue
  · exact envelope0067FibreCutoffCell6 residue
  · exact envelope0067FibreCutoffCell7 residue
  · exact envelope0067FibreCutoffCell8 residue

theorem envelope0067 : TailR263EvenOneDiagonalRange 6983827 7018746 := by
  intro N hLower hStop
  have hNUpper : N <= 7018745 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7018745
        (envelope0067BaseCounts target) :=
    envelope0067BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7018745
        (envelope0067CellCounts cell) :=
    envelope0067CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7018745
        (envelope0067FibreCounts cell residue) :=
    envelope0067FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7018745) (count := 176602) envelope0067SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0067BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0067UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0067ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0067FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0067FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0067FibreMax cell) <=
          ∑ cell : Fin 9, envelope0067FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0067BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0067BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0067FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0067FibreRatio

theorem envelope0068FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7053838
      (envelope0068FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0068FibreCutoffCell0 residue
  · exact envelope0068FibreCutoffCell1 residue
  · exact envelope0068FibreCutoffCell2 residue
  · exact envelope0068FibreCutoffCell3 residue
  · exact envelope0068FibreCutoffCell4 residue
  · exact envelope0068FibreCutoffCell5 residue
  · exact envelope0068FibreCutoffCell6 residue
  · exact envelope0068FibreCutoffCell7 residue
  · exact envelope0068FibreCutoffCell8 residue

theorem envelope0068 : TailR263EvenOneDiagonalRange 7018746 7053839 := by
  intro N hLower hStop
  have hNUpper : N <= 7053838 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7053838
        (envelope0068BaseCounts target) :=
    envelope0068BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7053838
        (envelope0068CellCounts cell) :=
    envelope0068CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7053838
        (envelope0068FibreCounts cell residue) :=
    envelope0068FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7053838) (count := 177478) envelope0068SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0068BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0068UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0068ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0068FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0068FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0068FibreMax cell) <=
          ∑ cell : Fin 9, envelope0068FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0068BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0068BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0068FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0068FibreRatio

theorem envelope0069FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7089107
      (envelope0069FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0069FibreCutoffCell0 residue
  · exact envelope0069FibreCutoffCell1 residue
  · exact envelope0069FibreCutoffCell2 residue
  · exact envelope0069FibreCutoffCell3 residue
  · exact envelope0069FibreCutoffCell4 residue
  · exact envelope0069FibreCutoffCell5 residue
  · exact envelope0069FibreCutoffCell6 residue
  · exact envelope0069FibreCutoffCell7 residue
  · exact envelope0069FibreCutoffCell8 residue

theorem envelope0069 : TailR263EvenOneDiagonalRange 7053839 7089108 := by
  intro N hLower hStop
  have hNUpper : N <= 7089107 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7089107
        (envelope0069BaseCounts target) :=
    envelope0069BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7089107
        (envelope0069CellCounts cell) :=
    envelope0069CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7089107
        (envelope0069FibreCounts cell residue) :=
    envelope0069FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7089107) (count := 178361) envelope0069SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0069BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0069UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0069ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0069FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0069FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0069FibreMax cell) <=
          ∑ cell : Fin 9, envelope0069FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0069BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0069BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0069FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0069FibreRatio

theorem envelope0070FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7124552
      (envelope0070FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0070FibreCutoffCell0 residue
  · exact envelope0070FibreCutoffCell1 residue
  · exact envelope0070FibreCutoffCell2 residue
  · exact envelope0070FibreCutoffCell3 residue
  · exact envelope0070FibreCutoffCell4 residue
  · exact envelope0070FibreCutoffCell5 residue
  · exact envelope0070FibreCutoffCell6 residue
  · exact envelope0070FibreCutoffCell7 residue
  · exact envelope0070FibreCutoffCell8 residue

theorem envelope0070 : TailR263EvenOneDiagonalRange 7089108 7124553 := by
  intro N hLower hStop
  have hNUpper : N <= 7124552 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7124552
        (envelope0070BaseCounts target) :=
    envelope0070BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7124552
        (envelope0070CellCounts cell) :=
    envelope0070CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7124552
        (envelope0070FibreCounts cell residue) :=
    envelope0070FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7124552) (count := 179263) envelope0070SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0070BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0070UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0070ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0070FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0070FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0070FibreMax cell) <=
          ∑ cell : Fin 9, envelope0070FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0070BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0070BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0070FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0070FibreRatio

theorem envelope0071FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7160174
      (envelope0071FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0071FibreCutoffCell0 residue
  · exact envelope0071FibreCutoffCell1 residue
  · exact envelope0071FibreCutoffCell2 residue
  · exact envelope0071FibreCutoffCell3 residue
  · exact envelope0071FibreCutoffCell4 residue
  · exact envelope0071FibreCutoffCell5 residue
  · exact envelope0071FibreCutoffCell6 residue
  · exact envelope0071FibreCutoffCell7 residue
  · exact envelope0071FibreCutoffCell8 residue

theorem envelope0071 : TailR263EvenOneDiagonalRange 7124553 7160175 := by
  intro N hLower hStop
  have hNUpper : N <= 7160174 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7160174
        (envelope0071BaseCounts target) :=
    envelope0071BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7160174
        (envelope0071CellCounts cell) :=
    envelope0071CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7160174
        (envelope0071FibreCounts cell residue) :=
    envelope0071FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7160174) (count := 180157) envelope0071SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0071BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0071UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0071ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0071FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0071FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0071FibreMax cell) <=
          ∑ cell : Fin 9, envelope0071FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0071BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0071BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0071FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0071FibreRatio

theorem envelope0072FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7195974
      (envelope0072FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0072FibreCutoffCell0 residue
  · exact envelope0072FibreCutoffCell1 residue
  · exact envelope0072FibreCutoffCell2 residue
  · exact envelope0072FibreCutoffCell3 residue
  · exact envelope0072FibreCutoffCell4 residue
  · exact envelope0072FibreCutoffCell5 residue
  · exact envelope0072FibreCutoffCell6 residue
  · exact envelope0072FibreCutoffCell7 residue
  · exact envelope0072FibreCutoffCell8 residue

theorem envelope0072 : TailR263EvenOneDiagonalRange 7160175 7195975 := by
  intro N hLower hStop
  have hNUpper : N <= 7195974 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7195974
        (envelope0072BaseCounts target) :=
    envelope0072BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7195974
        (envelope0072CellCounts cell) :=
    envelope0072CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7195974
        (envelope0072FibreCounts cell residue) :=
    envelope0072FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7195974) (count := 181050) envelope0072SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0072BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0072UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0072ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0072FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0072FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0072FibreMax cell) <=
          ∑ cell : Fin 9, envelope0072FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0072BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0072BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0072FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0072FibreRatio

theorem envelope0073FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7231953
      (envelope0073FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0073FibreCutoffCell0 residue
  · exact envelope0073FibreCutoffCell1 residue
  · exact envelope0073FibreCutoffCell2 residue
  · exact envelope0073FibreCutoffCell3 residue
  · exact envelope0073FibreCutoffCell4 residue
  · exact envelope0073FibreCutoffCell5 residue
  · exact envelope0073FibreCutoffCell6 residue
  · exact envelope0073FibreCutoffCell7 residue
  · exact envelope0073FibreCutoffCell8 residue

theorem envelope0073 : TailR263EvenOneDiagonalRange 7195975 7231954 := by
  intro N hLower hStop
  have hNUpper : N <= 7231953 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7231953
        (envelope0073BaseCounts target) :=
    envelope0073BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7231953
        (envelope0073CellCounts cell) :=
    envelope0073CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7231953
        (envelope0073FibreCounts cell residue) :=
    envelope0073FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7231953) (count := 181949) envelope0073SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0073BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0073UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0073ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0073FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0073FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0073FibreMax cell) <=
          ∑ cell : Fin 9, envelope0073FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0073BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0073BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0073FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0073FibreRatio

theorem envelope0074FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7268112
      (envelope0074FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0074FibreCutoffCell0 residue
  · exact envelope0074FibreCutoffCell1 residue
  · exact envelope0074FibreCutoffCell2 residue
  · exact envelope0074FibreCutoffCell3 residue
  · exact envelope0074FibreCutoffCell4 residue
  · exact envelope0074FibreCutoffCell5 residue
  · exact envelope0074FibreCutoffCell6 residue
  · exact envelope0074FibreCutoffCell7 residue
  · exact envelope0074FibreCutoffCell8 residue

theorem envelope0074 : TailR263EvenOneDiagonalRange 7231954 7268113 := by
  intro N hLower hStop
  have hNUpper : N <= 7268112 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7268112
        (envelope0074BaseCounts target) :=
    envelope0074BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7268112
        (envelope0074CellCounts cell) :=
    envelope0074CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7268112
        (envelope0074FibreCounts cell residue) :=
    envelope0074FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7268112) (count := 182873) envelope0074SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0074BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0074UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0074ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0074FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0074FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0074FibreMax cell) <=
          ∑ cell : Fin 9, envelope0074FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0074BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0074BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0074FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0074FibreRatio

theorem envelope0075FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7304452
      (envelope0075FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0075FibreCutoffCell0 residue
  · exact envelope0075FibreCutoffCell1 residue
  · exact envelope0075FibreCutoffCell2 residue
  · exact envelope0075FibreCutoffCell3 residue
  · exact envelope0075FibreCutoffCell4 residue
  · exact envelope0075FibreCutoffCell5 residue
  · exact envelope0075FibreCutoffCell6 residue
  · exact envelope0075FibreCutoffCell7 residue
  · exact envelope0075FibreCutoffCell8 residue

theorem envelope0075 : TailR263EvenOneDiagonalRange 7268113 7304453 := by
  intro N hLower hStop
  have hNUpper : N <= 7304452 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7304452
        (envelope0075BaseCounts target) :=
    envelope0075BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7304452
        (envelope0075CellCounts cell) :=
    envelope0075CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7304452
        (envelope0075FibreCounts cell residue) :=
    envelope0075FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7304452) (count := 183782) envelope0075SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0075BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0075UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0075ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0075FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0075FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0075FibreMax cell) <=
          ∑ cell : Fin 9, envelope0075FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0075BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0075BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0075FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0075FibreRatio

theorem envelope0076FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7340974
      (envelope0076FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0076FibreCutoffCell0 residue
  · exact envelope0076FibreCutoffCell1 residue
  · exact envelope0076FibreCutoffCell2 residue
  · exact envelope0076FibreCutoffCell3 residue
  · exact envelope0076FibreCutoffCell4 residue
  · exact envelope0076FibreCutoffCell5 residue
  · exact envelope0076FibreCutoffCell6 residue
  · exact envelope0076FibreCutoffCell7 residue
  · exact envelope0076FibreCutoffCell8 residue

theorem envelope0076 : TailR263EvenOneDiagonalRange 7304453 7340975 := by
  intro N hLower hStop
  have hNUpper : N <= 7340974 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7340974
        (envelope0076BaseCounts target) :=
    envelope0076BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7340974
        (envelope0076CellCounts cell) :=
    envelope0076CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7340974
        (envelope0076FibreCounts cell residue) :=
    envelope0076FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7340974) (count := 184697) envelope0076SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0076BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0076UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0076ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0076FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0076FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0076FibreMax cell) <=
          ∑ cell : Fin 9, envelope0076FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0076BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0076BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0076FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0076FibreRatio

theorem envelope0077FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7377678
      (envelope0077FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0077FibreCutoffCell0 residue
  · exact envelope0077FibreCutoffCell1 residue
  · exact envelope0077FibreCutoffCell2 residue
  · exact envelope0077FibreCutoffCell3 residue
  · exact envelope0077FibreCutoffCell4 residue
  · exact envelope0077FibreCutoffCell5 residue
  · exact envelope0077FibreCutoffCell6 residue
  · exact envelope0077FibreCutoffCell7 residue
  · exact envelope0077FibreCutoffCell8 residue

theorem envelope0077 : TailR263EvenOneDiagonalRange 7340975 7377679 := by
  intro N hLower hStop
  have hNUpper : N <= 7377678 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7377678
        (envelope0077BaseCounts target) :=
    envelope0077BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7377678
        (envelope0077CellCounts cell) :=
    envelope0077CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7377678
        (envelope0077FibreCounts cell residue) :=
    envelope0077FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7377678) (count := 185632) envelope0077SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0077BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0077UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0077ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0077FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0077FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0077FibreMax cell) <=
          ∑ cell : Fin 9, envelope0077FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0077BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0077BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0077FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0077FibreRatio

theorem envelope0078FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7414566
      (envelope0078FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0078FibreCutoffCell0 residue
  · exact envelope0078FibreCutoffCell1 residue
  · exact envelope0078FibreCutoffCell2 residue
  · exact envelope0078FibreCutoffCell3 residue
  · exact envelope0078FibreCutoffCell4 residue
  · exact envelope0078FibreCutoffCell5 residue
  · exact envelope0078FibreCutoffCell6 residue
  · exact envelope0078FibreCutoffCell7 residue
  · exact envelope0078FibreCutoffCell8 residue

theorem envelope0078 : TailR263EvenOneDiagonalRange 7377679 7414567 := by
  intro N hLower hStop
  have hNUpper : N <= 7414566 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7414566
        (envelope0078BaseCounts target) :=
    envelope0078BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7414566
        (envelope0078CellCounts cell) :=
    envelope0078CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7414566
        (envelope0078FibreCounts cell residue) :=
    envelope0078FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7414566) (count := 186561) envelope0078SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0078BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0078UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0078ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0078FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0078FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0078FibreMax cell) <=
          ∑ cell : Fin 9, envelope0078FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0078BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0078BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0078FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0078FibreRatio

theorem envelope0079FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 7451638
      (envelope0079FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0079FibreCutoffCell0 residue
  · exact envelope0079FibreCutoffCell1 residue
  · exact envelope0079FibreCutoffCell2 residue
  · exact envelope0079FibreCutoffCell3 residue
  · exact envelope0079FibreCutoffCell4 residue
  · exact envelope0079FibreCutoffCell5 residue
  · exact envelope0079FibreCutoffCell6 residue
  · exact envelope0079FibreCutoffCell7 residue
  · exact envelope0079FibreCutoffCell8 residue

theorem envelope0079 : TailR263EvenOneDiagonalRange 7414567 7451639 := by
  intro N hLower hStop
  have hNUpper : N <= 7451638 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7451638
        (envelope0079BaseCounts target) :=
    envelope0079BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7451638
        (envelope0079CellCounts cell) :=
    envelope0079CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7451638
        (envelope0079FibreCounts cell residue) :=
    envelope0079FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7451638) (count := 187490) envelope0079SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0079BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0079UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0079ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0079FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0079FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0079FibreMax cell) <=
          ∑ cell : Fin 9, envelope0079FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0079BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0079BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0079FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0079FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
