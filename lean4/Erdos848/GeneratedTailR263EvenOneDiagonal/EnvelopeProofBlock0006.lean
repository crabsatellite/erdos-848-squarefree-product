import Erdos848.GeneratedTailDiagonalCoverage.TailOrderAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0012
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeCoarseCutoffBatch0013
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeDataBlock0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell0Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell1Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell2Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell3Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell4Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell5Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell6Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell7Batch0006
import Erdos848.GeneratedTailR263EvenOneDiagonal.EnvelopeFibreCutoffCell8Batch0006

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem envelope0096FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8110996
      (envelope0096FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0096FibreCutoffCell0 residue
  · exact envelope0096FibreCutoffCell1 residue
  · exact envelope0096FibreCutoffCell2 residue
  · exact envelope0096FibreCutoffCell3 residue
  · exact envelope0096FibreCutoffCell4 residue
  · exact envelope0096FibreCutoffCell5 residue
  · exact envelope0096FibreCutoffCell6 residue
  · exact envelope0096FibreCutoffCell7 residue
  · exact envelope0096FibreCutoffCell8 residue

theorem envelope0096 : TailR263EvenOneDiagonalRange 8070644 8110997 := by
  intro N hLower hStop
  have hNUpper : N <= 8110996 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8110996
        (envelope0096BaseCounts target) :=
    envelope0096BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8110996
        (envelope0096CellCounts cell) :=
    envelope0096CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8110996
        (envelope0096FibreCounts cell residue) :=
    envelope0096FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8110996) (count := 204051) envelope0096SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0096BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0096UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0096ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0096FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0096FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0096FibreMax cell) <=
          ∑ cell : Fin 9, envelope0096FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0096BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0096BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0096FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0096FibreRatio

theorem envelope0097FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8151550
      (envelope0097FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0097FibreCutoffCell0 residue
  · exact envelope0097FibreCutoffCell1 residue
  · exact envelope0097FibreCutoffCell2 residue
  · exact envelope0097FibreCutoffCell3 residue
  · exact envelope0097FibreCutoffCell4 residue
  · exact envelope0097FibreCutoffCell5 residue
  · exact envelope0097FibreCutoffCell6 residue
  · exact envelope0097FibreCutoffCell7 residue
  · exact envelope0097FibreCutoffCell8 residue

theorem envelope0097 : TailR263EvenOneDiagonalRange 8110997 8151551 := by
  intro N hLower hStop
  have hNUpper : N <= 8151550 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8151550
        (envelope0097BaseCounts target) :=
    envelope0097BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8151550
        (envelope0097CellCounts cell) :=
    envelope0097CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8151550
        (envelope0097FibreCounts cell residue) :=
    envelope0097FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8151550) (count := 205076) envelope0097SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0097BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0097UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0097ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0097FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0097FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0097FibreMax cell) <=
          ∑ cell : Fin 9, envelope0097FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0097BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0097BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0097FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0097FibreRatio

theorem envelope0098FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8192307
      (envelope0098FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0098FibreCutoffCell0 residue
  · exact envelope0098FibreCutoffCell1 residue
  · exact envelope0098FibreCutoffCell2 residue
  · exact envelope0098FibreCutoffCell3 residue
  · exact envelope0098FibreCutoffCell4 residue
  · exact envelope0098FibreCutoffCell5 residue
  · exact envelope0098FibreCutoffCell6 residue
  · exact envelope0098FibreCutoffCell7 residue
  · exact envelope0098FibreCutoffCell8 residue

theorem envelope0098 : TailR263EvenOneDiagonalRange 8151551 8192308 := by
  intro N hLower hStop
  have hNUpper : N <= 8192307 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8192307
        (envelope0098BaseCounts target) :=
    envelope0098BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8192307
        (envelope0098CellCounts cell) :=
    envelope0098CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8192307
        (envelope0098FibreCounts cell residue) :=
    envelope0098FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8192307) (count := 206110) envelope0098SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0098BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0098UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0098ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0098FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0098FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0098FibreMax cell) <=
          ∑ cell : Fin 9, envelope0098FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0098BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0098BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0098FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0098FibreRatio

theorem envelope0099FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8233268
      (envelope0099FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0099FibreCutoffCell0 residue
  · exact envelope0099FibreCutoffCell1 residue
  · exact envelope0099FibreCutoffCell2 residue
  · exact envelope0099FibreCutoffCell3 residue
  · exact envelope0099FibreCutoffCell4 residue
  · exact envelope0099FibreCutoffCell5 residue
  · exact envelope0099FibreCutoffCell6 residue
  · exact envelope0099FibreCutoffCell7 residue
  · exact envelope0099FibreCutoffCell8 residue

theorem envelope0099 : TailR263EvenOneDiagonalRange 8192308 8233269 := by
  intro N hLower hStop
  have hNUpper : N <= 8233268 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8233268
        (envelope0099BaseCounts target) :=
    envelope0099BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8233268
        (envelope0099CellCounts cell) :=
    envelope0099CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8233268
        (envelope0099FibreCounts cell residue) :=
    envelope0099FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8233268) (count := 207144) envelope0099SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0099BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0099UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0099ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0099FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0099FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0099FibreMax cell) <=
          ∑ cell : Fin 9, envelope0099FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0099BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0099BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0099FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0099FibreRatio

theorem envelope0100FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8274434
      (envelope0100FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0100FibreCutoffCell0 residue
  · exact envelope0100FibreCutoffCell1 residue
  · exact envelope0100FibreCutoffCell2 residue
  · exact envelope0100FibreCutoffCell3 residue
  · exact envelope0100FibreCutoffCell4 residue
  · exact envelope0100FibreCutoffCell5 residue
  · exact envelope0100FibreCutoffCell6 residue
  · exact envelope0100FibreCutoffCell7 residue
  · exact envelope0100FibreCutoffCell8 residue

theorem envelope0100 : TailR263EvenOneDiagonalRange 8233269 8274435 := by
  intro N hLower hStop
  have hNUpper : N <= 8274434 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8274434
        (envelope0100BaseCounts target) :=
    envelope0100BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8274434
        (envelope0100CellCounts cell) :=
    envelope0100CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8274434
        (envelope0100FibreCounts cell residue) :=
    envelope0100FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8274434) (count := 208181) envelope0100SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0100BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0100UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0100ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0100FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0100FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0100FibreMax cell) <=
          ∑ cell : Fin 9, envelope0100FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0100BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0100BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0100FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0100FibreRatio

theorem envelope0101FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8315806
      (envelope0101FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0101FibreCutoffCell0 residue
  · exact envelope0101FibreCutoffCell1 residue
  · exact envelope0101FibreCutoffCell2 residue
  · exact envelope0101FibreCutoffCell3 residue
  · exact envelope0101FibreCutoffCell4 residue
  · exact envelope0101FibreCutoffCell5 residue
  · exact envelope0101FibreCutoffCell6 residue
  · exact envelope0101FibreCutoffCell7 residue
  · exact envelope0101FibreCutoffCell8 residue

theorem envelope0101 : TailR263EvenOneDiagonalRange 8274435 8315807 := by
  intro N hLower hStop
  have hNUpper : N <= 8315806 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8315806
        (envelope0101BaseCounts target) :=
    envelope0101BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8315806
        (envelope0101CellCounts cell) :=
    envelope0101CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8315806
        (envelope0101FibreCounts cell residue) :=
    envelope0101FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8315806) (count := 209213) envelope0101SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0101BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0101UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0101ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0101FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0101FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0101FibreMax cell) <=
          ∑ cell : Fin 9, envelope0101FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0101BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0101BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0101FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0101FibreRatio

theorem envelope0102FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8357385
      (envelope0102FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0102FibreCutoffCell0 residue
  · exact envelope0102FibreCutoffCell1 residue
  · exact envelope0102FibreCutoffCell2 residue
  · exact envelope0102FibreCutoffCell3 residue
  · exact envelope0102FibreCutoffCell4 residue
  · exact envelope0102FibreCutoffCell5 residue
  · exact envelope0102FibreCutoffCell6 residue
  · exact envelope0102FibreCutoffCell7 residue
  · exact envelope0102FibreCutoffCell8 residue

theorem envelope0102 : TailR263EvenOneDiagonalRange 8315807 8357386 := by
  intro N hLower hStop
  have hNUpper : N <= 8357385 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8357385
        (envelope0102BaseCounts target) :=
    envelope0102BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8357385
        (envelope0102CellCounts cell) :=
    envelope0102CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8357385
        (envelope0102FibreCounts cell residue) :=
    envelope0102FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8357385) (count := 210259) envelope0102SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0102BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0102UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0102ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0102FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0102FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0102FibreMax cell) <=
          ∑ cell : Fin 9, envelope0102FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0102BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0102BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0102FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0102FibreRatio

theorem envelope0103FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8399171
      (envelope0103FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0103FibreCutoffCell0 residue
  · exact envelope0103FibreCutoffCell1 residue
  · exact envelope0103FibreCutoffCell2 residue
  · exact envelope0103FibreCutoffCell3 residue
  · exact envelope0103FibreCutoffCell4 residue
  · exact envelope0103FibreCutoffCell5 residue
  · exact envelope0103FibreCutoffCell6 residue
  · exact envelope0103FibreCutoffCell7 residue
  · exact envelope0103FibreCutoffCell8 residue

theorem envelope0103 : TailR263EvenOneDiagonalRange 8357386 8399172 := by
  intro N hLower hStop
  have hNUpper : N <= 8399171 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8399171
        (envelope0103BaseCounts target) :=
    envelope0103BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8399171
        (envelope0103CellCounts cell) :=
    envelope0103CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8399171
        (envelope0103FibreCounts cell residue) :=
    envelope0103FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8399171) (count := 211319) envelope0103SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0103BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0103UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0103ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0103FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0103FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0103FibreMax cell) <=
          ∑ cell : Fin 9, envelope0103FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0103BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0103BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0103FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0103FibreRatio

theorem envelope0104FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8441166
      (envelope0104FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0104FibreCutoffCell0 residue
  · exact envelope0104FibreCutoffCell1 residue
  · exact envelope0104FibreCutoffCell2 residue
  · exact envelope0104FibreCutoffCell3 residue
  · exact envelope0104FibreCutoffCell4 residue
  · exact envelope0104FibreCutoffCell5 residue
  · exact envelope0104FibreCutoffCell6 residue
  · exact envelope0104FibreCutoffCell7 residue
  · exact envelope0104FibreCutoffCell8 residue

theorem envelope0104 : TailR263EvenOneDiagonalRange 8399172 8441167 := by
  intro N hLower hStop
  have hNUpper : N <= 8441166 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8441166
        (envelope0104BaseCounts target) :=
    envelope0104BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8441166
        (envelope0104CellCounts cell) :=
    envelope0104CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8441166
        (envelope0104FibreCounts cell residue) :=
    envelope0104FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8441166) (count := 212374) envelope0104SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0104BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0104UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0104ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0104FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0104FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0104FibreMax cell) <=
          ∑ cell : Fin 9, envelope0104FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0104BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0104BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0104FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0104FibreRatio

theorem envelope0105FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8483371
      (envelope0105FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0105FibreCutoffCell0 residue
  · exact envelope0105FibreCutoffCell1 residue
  · exact envelope0105FibreCutoffCell2 residue
  · exact envelope0105FibreCutoffCell3 residue
  · exact envelope0105FibreCutoffCell4 residue
  · exact envelope0105FibreCutoffCell5 residue
  · exact envelope0105FibreCutoffCell6 residue
  · exact envelope0105FibreCutoffCell7 residue
  · exact envelope0105FibreCutoffCell8 residue

theorem envelope0105 : TailR263EvenOneDiagonalRange 8441167 8483372 := by
  intro N hLower hStop
  have hNUpper : N <= 8483371 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8483371
        (envelope0105BaseCounts target) :=
    envelope0105BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8483371
        (envelope0105CellCounts cell) :=
    envelope0105CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8483371
        (envelope0105FibreCounts cell residue) :=
    envelope0105FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8483371) (count := 213435) envelope0105SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0105BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0105UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0105ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0105FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0105FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0105FibreMax cell) <=
          ∑ cell : Fin 9, envelope0105FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0105BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0105BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0105FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0105FibreRatio

theorem envelope0106FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8525787
      (envelope0106FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0106FibreCutoffCell0 residue
  · exact envelope0106FibreCutoffCell1 residue
  · exact envelope0106FibreCutoffCell2 residue
  · exact envelope0106FibreCutoffCell3 residue
  · exact envelope0106FibreCutoffCell4 residue
  · exact envelope0106FibreCutoffCell5 residue
  · exact envelope0106FibreCutoffCell6 residue
  · exact envelope0106FibreCutoffCell7 residue
  · exact envelope0106FibreCutoffCell8 residue

theorem envelope0106 : TailR263EvenOneDiagonalRange 8483372 8525788 := by
  intro N hLower hStop
  have hNUpper : N <= 8525787 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8525787
        (envelope0106BaseCounts target) :=
    envelope0106BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8525787
        (envelope0106CellCounts cell) :=
    envelope0106CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8525787
        (envelope0106FibreCounts cell residue) :=
    envelope0106FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8525787) (count := 214499) envelope0106SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0106BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0106UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0106ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0106FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0106FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0106FibreMax cell) <=
          ∑ cell : Fin 9, envelope0106FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0106BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0106BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0106FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0106FibreRatio

theorem envelope0107FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8568415
      (envelope0107FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0107FibreCutoffCell0 residue
  · exact envelope0107FibreCutoffCell1 residue
  · exact envelope0107FibreCutoffCell2 residue
  · exact envelope0107FibreCutoffCell3 residue
  · exact envelope0107FibreCutoffCell4 residue
  · exact envelope0107FibreCutoffCell5 residue
  · exact envelope0107FibreCutoffCell6 residue
  · exact envelope0107FibreCutoffCell7 residue
  · exact envelope0107FibreCutoffCell8 residue

theorem envelope0107 : TailR263EvenOneDiagonalRange 8525788 8568416 := by
  intro N hLower hStop
  have hNUpper : N <= 8568415 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8568415
        (envelope0107BaseCounts target) :=
    envelope0107BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8568415
        (envelope0107CellCounts cell) :=
    envelope0107CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8568415
        (envelope0107FibreCounts cell residue) :=
    envelope0107FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8568415) (count := 215569) envelope0107SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0107BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0107UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0107ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0107FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0107FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0107FibreMax cell) <=
          ∑ cell : Fin 9, envelope0107FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0107BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0107BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0107FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0107FibreRatio

theorem envelope0108FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8611257
      (envelope0108FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0108FibreCutoffCell0 residue
  · exact envelope0108FibreCutoffCell1 residue
  · exact envelope0108FibreCutoffCell2 residue
  · exact envelope0108FibreCutoffCell3 residue
  · exact envelope0108FibreCutoffCell4 residue
  · exact envelope0108FibreCutoffCell5 residue
  · exact envelope0108FibreCutoffCell6 residue
  · exact envelope0108FibreCutoffCell7 residue
  · exact envelope0108FibreCutoffCell8 residue

theorem envelope0108 : TailR263EvenOneDiagonalRange 8568416 8611258 := by
  intro N hLower hStop
  have hNUpper : N <= 8611257 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8611257
        (envelope0108BaseCounts target) :=
    envelope0108BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8611257
        (envelope0108CellCounts cell) :=
    envelope0108CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8611257
        (envelope0108FibreCounts cell residue) :=
    envelope0108FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8611257) (count := 216646) envelope0108SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0108BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0108UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0108ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0108FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0108FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0108FibreMax cell) <=
          ∑ cell : Fin 9, envelope0108FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0108BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0108BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0108FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0108FibreRatio

theorem envelope0109FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8654313
      (envelope0109FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0109FibreCutoffCell0 residue
  · exact envelope0109FibreCutoffCell1 residue
  · exact envelope0109FibreCutoffCell2 residue
  · exact envelope0109FibreCutoffCell3 residue
  · exact envelope0109FibreCutoffCell4 residue
  · exact envelope0109FibreCutoffCell5 residue
  · exact envelope0109FibreCutoffCell6 residue
  · exact envelope0109FibreCutoffCell7 residue
  · exact envelope0109FibreCutoffCell8 residue

theorem envelope0109 : TailR263EvenOneDiagonalRange 8611258 8654314 := by
  intro N hLower hStop
  have hNUpper : N <= 8654313 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8654313
        (envelope0109BaseCounts target) :=
    envelope0109BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8654313
        (envelope0109CellCounts cell) :=
    envelope0109CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8654313
        (envelope0109FibreCounts cell residue) :=
    envelope0109FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8654313) (count := 217725) envelope0109SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0109BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0109UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0109ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0109FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0109FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0109FibreMax cell) <=
          ∑ cell : Fin 9, envelope0109FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0109BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0109BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0109FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0109FibreRatio

theorem envelope0110FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8697584
      (envelope0110FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0110FibreCutoffCell0 residue
  · exact envelope0110FibreCutoffCell1 residue
  · exact envelope0110FibreCutoffCell2 residue
  · exact envelope0110FibreCutoffCell3 residue
  · exact envelope0110FibreCutoffCell4 residue
  · exact envelope0110FibreCutoffCell5 residue
  · exact envelope0110FibreCutoffCell6 residue
  · exact envelope0110FibreCutoffCell7 residue
  · exact envelope0110FibreCutoffCell8 residue

theorem envelope0110 : TailR263EvenOneDiagonalRange 8654314 8697585 := by
  intro N hLower hStop
  have hNUpper : N <= 8697584 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8697584
        (envelope0110BaseCounts target) :=
    envelope0110BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8697584
        (envelope0110CellCounts cell) :=
    envelope0110CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8697584
        (envelope0110FibreCounts cell residue) :=
    envelope0110FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8697584) (count := 218823) envelope0110SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0110BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0110UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0110ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0110FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0110FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0110FibreMax cell) <=
          ∑ cell : Fin 9, envelope0110FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0110BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0110BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0110FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0110FibreRatio

theorem envelope0111FibreCutoff
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets cell residue).Cutoff 8741071
      (envelope0111FibreCounts cell residue) := by
  fin_cases cell
  · exact envelope0111FibreCutoffCell0 residue
  · exact envelope0111FibreCutoffCell1 residue
  · exact envelope0111FibreCutoffCell2 residue
  · exact envelope0111FibreCutoffCell3 residue
  · exact envelope0111FibreCutoffCell4 residue
  · exact envelope0111FibreCutoffCell5 residue
  · exact envelope0111FibreCutoffCell6 residue
  · exact envelope0111FibreCutoffCell7 residue
  · exact envelope0111FibreCutoffCell8 residue

theorem envelope0111 : TailR263EvenOneDiagonalRange 8697585 8741072 := by
  intro N hLower hStop
  have hNUpper : N <= 8741071 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8741071
        (envelope0111BaseCounts target) :=
    envelope0111BaseCutoff
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8741071
        (envelope0111CellCounts cell) :=
    envelope0111CellCutoff
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8741071
        (envelope0111FibreCounts cell residue) :=
    envelope0111FibreCutoff
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8741071) (count := 219908) envelope0111SourceCutoff
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0111BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hsource
    exact hratio.trans envelope0111UnrestrictedRatio
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hcard
    exact hratio.trans (envelope0111ConcentratedRatio cell)
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0111FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      exact hexact.trans
        (envelope0111FibreCounts_le cell (residues cell))
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0111FibreMax cell) <=
          ∑ cell : Fin 9, envelope0111FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          (envelope0111BaseCounts .lowTwo +
            ∑ residue : Fin 9,
              envelope0111BaseCounts (.evenTwoCell residue) +
            ∑ cell : Fin 9, envelope0111FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hcard'
    exact hratio.trans envelope0111FibreRatio

end Erdos848.GeneratedTailR263EvenOneDiagonal
