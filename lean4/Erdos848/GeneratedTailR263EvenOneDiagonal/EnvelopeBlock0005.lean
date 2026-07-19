import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0080BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 117762
  | .evenTwoCell residue => ![2620, 2605, 2626, 2613, 2628, 2603, 2623, 2620, 2622] residue

def envelope0080CellCounts : Fin 9 -> Nat :=
  ![5227, 5223, 5234, 5241, 5225, 5247, 5229, 5238, 5235]

def envelope0080FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![111, 102, 100, 106, 106, 105, 106, 106, 105, 115, 102, 107, 107, 105, 103, 106, 102, 107, 106, 110, 109, 109, 101, 109, 107, 105, 100, 109, 107, 103, 105, 103, 112, 110, 104, 109, 110, 109, 109, 111, 105, 109, 103, 110, 107, 106, 104, 114, 111], ![99, 112, 107, 105, 107, 106, 108, 113, 106, 104, 105, 110, 105, 107, 103, 112, 108, 105, 108, 99, 111, 107, 104, 107, 106, 106, 107, 112, 108, 111, 114, 106, 111, 104, 101, 109, 101, 109, 110, 104, 105, 109, 105, 103, 105, 105, 104, 107, 103], ![115, 105, 106, 109, 104, 108, 104, 106, 108, 108, 106, 107, 110, 113, 107, 105, 104, 108, 108, 108, 105, 112, 103, 110, 105, 102, 106, 109, 101, 106, 106, 103, 106, 108, 106, 108, 116, 111, 103, 103, 106, 102, 108, 109, 107, 102, 106, 110, 106], ![106, 109, 105, 114, 107, 106, 106, 109, 107, 110, 106, 109, 109, 104, 106, 109, 107, 107, 106, 108, 110, 112, 102, 105, 104, 110, 109, 99, 108, 113, 111, 104, 104, 106, 112, 104, 108, 102, 103, 106, 110, 109, 108, 111, 112, 102, 103, 104, 100], ![113, 108, 107, 107, 100, 109, 107, 99, 106, 108, 104, 105, 108, 103, 111, 104, 104, 108, 102, 108, 104, 107, 109, 111, 106, 110, 110, 101, 110, 114, 102, 109, 111, 110, 109, 108, 104, 107, 102, 103, 109, 105, 108, 100, 102, 108, 110, 104, 111], ![103, 99, 109, 110, 109, 115, 108, 105, 111, 105, 106, 107, 108, 106, 110, 110, 102, 107, 108, 106, 111, 105, 112, 105, 108, 104, 106, 102, 107, 109, 103, 110, 102, 107, 111, 106, 106, 103, 112, 109, 107, 103, 111, 111, 111, 110, 104, 102, 106], ![107, 112, 109, 114, 104, 106, 107, 105, 103, 104, 105, 111, 106, 104, 113, 104, 109, 104, 111, 107, 100, 103, 112, 104, 106, 110, 105, 114, 107, 103, 104, 103, 100, 108, 102, 102, 107, 108, 105, 111, 102, 107, 111, 108, 107, 111, 110, 104, 110], ![101, 110, 106, 105, 111, 101, 103, 111, 108, 107, 109, 104, 104, 105, 100, 106, 109, 109, 113, 110, 108, 107, 109, 102, 109, 109, 102, 113, 104, 102, 105, 108, 106, 112, 109, 109, 109, 107, 109, 102, 109, 102, 107, 108, 106, 106, 104, 115, 108], ![111, 111, 113, 101, 101, 106, 111, 112, 103, 101, 114, 107, 100, 112, 110, 109, 113, 107, 109, 103, 103, 102, 108, 101, 110, 106, 109, 107, 98, 104, 110, 104, 109, 107, 103, 111, 107, 102, 108, 107, 107, 111, 105, 105, 109, 106, 109, 107, 106]]

def envelope0080FibreMax : Fin 9 -> Nat :=
  ![115, 114, 116, 114, 114, 115, 114, 115, 114]

theorem envelope0080 : TailR263EvenOneDiagonalRange 7451639 7488897 := by
  intro N hLower hStop
  have hNUpper : N <= 7488896 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7488896 (envelope0080BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7488896 (envelope0080CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7488896 (envelope0080FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7488896) (count := 188421) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0080BaseCounts, envelope0080CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0080FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0080FibreCounts, envelope0080FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0080FibreMax cell) <=
          ∑ cell : Fin 9, envelope0080FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0080FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0080BaseCounts, envelope0080FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0081BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 118336
  | .evenTwoCell residue => ![2632, 2618, 2636, 2629, 2644, 2615, 2638, 2635, 2636] residue

def envelope0081CellCounts : Fin 9 -> Nat :=
  ![5252, 5254, 5264, 5269, 5249, 5271, 5252, 5265, 5263]

def envelope0081FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![112, 102, 100, 106, 106, 105, 107, 106, 106, 115, 102, 107, 110, 105, 105, 106, 103, 107, 106, 110, 110, 109, 102, 109, 108, 105, 100, 109, 108, 103, 106, 105, 113, 110, 104, 109, 110, 109, 110, 111, 107, 110, 103, 110, 108, 106, 107, 114, 111], ![100, 112, 109, 106, 109, 107, 109, 113, 106, 104, 105, 110, 108, 107, 104, 113, 108, 106, 110, 100, 112, 109, 105, 108, 106, 106, 107, 112, 109, 111, 115, 107, 112, 104, 101, 110, 102, 109, 110, 105, 105, 109, 105, 103, 105, 106, 104, 108, 103], ![115, 105, 108, 109, 105, 108, 104, 107, 108, 108, 108, 107, 112, 114, 107, 105, 104, 108, 110, 108, 106, 112, 103, 110, 105, 102, 108, 110, 102, 107, 106, 103, 108, 108, 107, 108, 116, 112, 103, 103, 106, 102, 109, 110, 108, 105, 107, 110, 108], ![107, 110, 106, 115, 108, 107, 106, 109, 108, 110, 107, 109, 109, 104, 106, 109, 107, 109, 106, 110, 111, 112, 102, 105, 105, 111, 109, 100, 108, 115, 111, 104, 104, 107, 112, 107, 109, 102, 103, 106, 110, 110, 109, 112, 112, 104, 103, 104, 100], ![114, 108, 107, 107, 100, 109, 107, 100, 107, 109, 105, 105, 108, 103, 111, 105, 106, 109, 102, 108, 104, 107, 109, 112, 107, 112, 112, 102, 110, 115, 102, 110, 111, 110, 109, 108, 104, 107, 102, 104, 109, 107, 109, 101, 102, 108, 110, 105, 111], ![103, 100, 109, 111, 109, 116, 108, 106, 111, 106, 106, 107, 109, 107, 110, 112, 102, 108, 108, 106, 111, 106, 112, 106, 108, 104, 106, 102, 107, 110, 103, 112, 103, 107, 112, 106, 106, 103, 112, 110, 107, 103, 111, 111, 111, 110, 108, 102, 108], ![107, 112, 109, 115, 104, 107, 107, 105, 104, 104, 105, 112, 106, 106, 113, 104, 109, 105, 111, 108, 100, 103, 113, 105, 107, 111, 105, 115, 107, 104, 104, 103, 100, 111, 102, 102, 108, 109, 105, 112, 102, 108, 111, 108, 108, 111, 111, 104, 110], ![101, 111, 106, 106, 111, 101, 103, 111, 109, 108, 109, 105, 104, 106, 103, 107, 110, 110, 114, 111, 109, 107, 109, 102, 109, 109, 103, 113, 105, 102, 106, 108, 107, 112, 110, 109, 111, 107, 109, 103, 109, 103, 107, 108, 107, 106, 105, 115, 109], ![111, 115, 113, 101, 102, 106, 112, 113, 103, 101, 115, 107, 100, 112, 110, 109, 116, 107, 111, 103, 103, 103, 108, 102, 111, 107, 110, 107, 98, 104, 110, 104, 110, 107, 104, 111, 107, 103, 108, 108, 108, 111, 106, 105, 111, 106, 109, 107, 108]]

def envelope0081FibreMax : Fin 9 -> Nat :=
  ![115, 115, 116, 115, 115, 116, 115, 115, 116]

theorem envelope0081 : TailR263EvenOneDiagonalRange 7488897 7526341 := by
  intro N hLower hStop
  have hNUpper : N <= 7526340 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7526340 (envelope0081BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7526340 (envelope0081CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7526340 (envelope0081FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7526340) (count := 189358) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0081BaseCounts, envelope0081CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0081FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0081FibreCounts, envelope0081FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0081FibreMax cell) <=
          ∑ cell : Fin 9, envelope0081FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0081FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0081BaseCounts, envelope0081FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0082BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 118940
  | .evenTwoCell residue => ![2644, 2628, 2652, 2642, 2658, 2627, 2650, 2646, 2651] residue

def envelope0082CellCounts : Fin 9 -> Nat :=
  ![5278, 5276, 5286, 5296, 5283, 5294, 5283, 5289, 5295]

def envelope0082FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![112, 102, 100, 106, 106, 106, 107, 107, 106, 115, 103, 108, 111, 108, 105, 107, 103, 107, 106, 110, 110, 110, 102, 109, 108, 107, 100, 110, 108, 105, 107, 106, 113, 111, 104, 109, 110, 110, 110, 112, 107, 110, 103, 111, 108, 108, 108, 115, 112], ![100, 113, 109, 108, 109, 109, 111, 113, 106, 104, 105, 111, 108, 108, 104, 113, 108, 106, 111, 101, 113, 110, 105, 108, 106, 106, 107, 112, 109, 112, 115, 107, 112, 104, 102, 111, 103, 110, 111, 105, 105, 109, 105, 104, 106, 106, 105, 108, 103], ![115, 106, 108, 110, 105, 108, 104, 107, 109, 110, 108, 108, 112, 114, 107, 105, 104, 109, 111, 109, 106, 112, 103, 110, 105, 104, 108, 110, 102, 108, 106, 103, 108, 109, 108, 109, 117, 112, 103, 103, 106, 103, 112, 111, 109, 105, 107, 110, 108], ![109, 112, 107, 115, 108, 107, 106, 110, 109, 111, 108, 109, 109, 104, 106, 109, 109, 109, 108, 110, 111, 112, 102, 107, 107, 111, 110, 100, 108, 115, 111, 104, 105, 108, 114, 107, 109, 102, 103, 106, 111, 110, 110, 112, 113, 104, 103, 104, 102], ![114, 108, 107, 107, 102, 110, 108, 102, 108, 110, 107, 105, 108, 104, 113, 105, 106, 110, 103, 108, 104, 107, 110, 113, 108, 113, 112, 103, 111, 115, 103, 110, 112, 110, 110, 109, 105, 107, 103, 105, 111, 108, 110, 101, 102, 108, 111, 105, 112], ![103, 100, 109, 111, 110, 116, 109, 106, 111, 106, 106, 107, 110, 107, 112, 112, 103, 108, 108, 106, 111, 106, 113, 106, 108, 104, 106, 102, 108, 110, 105, 112, 104, 108, 112, 106, 107, 103, 113, 110, 109, 103, 112, 111, 111, 112, 109, 105, 108], ![107, 112, 110, 116, 105, 108, 107, 106, 105, 104, 106, 112, 109, 107, 113, 104, 109, 106, 112, 108, 101, 106, 113, 107, 107, 111, 106, 117, 108, 105, 104, 103, 100, 111, 102, 103, 108, 110, 106, 112, 104, 108, 111, 109, 108, 112, 111, 104, 110], ![102, 111, 107, 106, 111, 101, 103, 111, 113, 108, 110, 105, 105, 106, 105, 107, 111, 110, 114, 112, 109, 107, 109, 102, 109, 109, 103, 114, 107, 103, 107, 109, 107, 113, 110, 110, 111, 107, 109, 103, 110, 104, 107, 109, 107, 106, 105, 116, 109], ![112, 115, 114, 102, 102, 107, 114, 113, 105, 102, 115, 107, 100, 112, 110, 111, 116, 108, 111, 104, 104, 104, 110, 103, 111, 109, 110, 107, 98, 104, 111, 105, 110, 108, 104, 111, 108, 103, 111, 109, 108, 112, 107, 106, 111, 106, 109, 108, 108]]

def envelope0082FibreMax : Fin 9 -> Nat :=
  ![115, 115, 117, 115, 115, 116, 117, 116, 116]

theorem envelope0082 : TailR263EvenOneDiagonalRange 7526341 7563972 := by
  intro N hLower hStop
  have hNUpper : N <= 7563971 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7563971 (envelope0082BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7563971 (envelope0082CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7563971 (envelope0082FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7563971) (count := 190318) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0082BaseCounts, envelope0082CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0082FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0082FibreCounts, envelope0082FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0082FibreMax cell) <=
          ∑ cell : Fin 9, envelope0082FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0082FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0082BaseCounts, envelope0082FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0083BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 119539
  | .evenTwoCell residue => ![2662, 2643, 2663, 2658, 2669, 2640, 2659, 2659, 2668] residue

def envelope0083CellCounts : Fin 9 -> Nat :=
  ![5302, 5306, 5316, 5318, 5311, 5321, 5310, 5312, 5317]

def envelope0083FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![112, 102, 100, 106, 107, 106, 107, 107, 106, 116, 103, 109, 112, 111, 106, 107, 103, 107, 106, 110, 111, 110, 103, 109, 108, 107, 101, 111, 110, 105, 108, 106, 113, 111, 104, 109, 112, 111, 111, 112, 107, 111, 104, 111, 110, 108, 109, 115, 112], ![103, 113, 111, 109, 110, 109, 111, 113, 106, 104, 106, 112, 109, 108, 104, 113, 109, 107, 113, 103, 114, 111, 105, 108, 107, 106, 108, 112, 110, 112, 115, 107, 112, 105, 104, 112, 104, 111, 111, 105, 105, 109, 105, 105, 107, 107, 105, 108, 103], ![116, 106, 109, 110, 105, 108, 104, 108, 110, 111, 110, 108, 112, 114, 108, 105, 106, 109, 112, 110, 106, 112, 103, 110, 107, 104, 110, 111, 102, 109, 108, 103, 108, 110, 108, 111, 118, 112, 103, 104, 107, 104, 113, 112, 109, 105, 108, 110, 108], ![111, 112, 107, 115, 108, 107, 107, 110, 109, 111, 108, 109, 109, 104, 107, 110, 109, 112, 108, 110, 111, 112, 102, 108, 107, 113, 110, 100, 108, 115, 111, 106, 105, 110, 114, 108, 109, 102, 104, 107, 111, 111, 110, 112, 113, 104, 104, 106, 102], ![114, 109, 107, 107, 103, 111, 109, 104, 110, 110, 107, 105, 108, 105, 113, 106, 106, 111, 103, 108, 104, 108, 111, 114, 110, 113, 112, 103, 111, 116, 103, 111, 112, 110, 110, 109, 105, 108, 104, 106, 112, 108, 110, 102, 102, 109, 111, 108, 113], ![103, 100, 109, 112, 110, 117, 109, 106, 111, 106, 106, 108, 110, 107, 112, 114, 103, 108, 108, 108, 111, 107, 113, 106, 109, 104, 106, 103, 108, 112, 105, 113, 105, 108, 114, 107, 108, 104, 113, 110, 109, 103, 112, 112, 112, 113, 110, 107, 110], ![107, 113, 110, 117, 106, 108, 108, 107, 105, 105, 106, 113, 110, 108, 113, 106, 109, 106, 112, 109, 102, 106, 114, 107, 107, 112, 106, 118, 108, 106, 105, 103, 100, 112, 103, 103, 110, 111, 107, 112, 104, 108, 112, 109, 109, 112, 112, 104, 110], ![102, 111, 108, 106, 111, 101, 103, 112, 113, 109, 110, 106, 105, 107, 105, 108, 111, 111, 114, 112, 109, 107, 109, 103, 110, 110, 104, 115, 107, 103, 107, 110, 108, 113, 111, 110, 111, 108, 109, 103, 111, 104, 108, 109, 108, 108, 106, 116, 110], ![112, 115, 115, 102, 103, 107, 114, 114, 105, 103, 115, 107, 101, 112, 111, 111, 118, 108, 112, 104, 105, 104, 110, 103, 112, 109, 110, 108, 98, 104, 112, 105, 113, 108, 104, 111, 108, 104, 112, 109, 109, 112, 107, 107, 111, 106, 110, 108, 109]]

def envelope0083FibreMax : Fin 9 -> Nat :=
  ![116, 115, 118, 115, 116, 117, 118, 116, 118]

theorem envelope0083 : TailR263EvenOneDiagonalRange 7563972 7601791 := by
  intro N hLower hStop
  have hNUpper : N <= 7601790 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7601790 (envelope0083BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7601790 (envelope0083CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7601790 (envelope0083FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7601790) (count := 191273) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0083BaseCounts, envelope0083CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0083FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0083FibreCounts, envelope0083FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0083FibreMax cell) <=
          ∑ cell : Fin 9, envelope0083FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0083FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0083BaseCounts, envelope0083FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0084BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 120137
  | .evenTwoCell residue => ![2674, 2656, 2672, 2669, 2684, 2655, 2675, 2670, 2683] residue

def envelope0084CellCounts : Fin 9 -> Nat :=
  ![5329, 5331, 5345, 5341, 5335, 5348, 5337, 5342, 5343]

def envelope0084FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![113, 102, 100, 107, 107, 108, 107, 109, 107, 116, 104, 110, 112, 112, 107, 107, 103, 107, 106, 111, 112, 111, 103, 109, 109, 107, 103, 112, 110, 106, 108, 106, 113, 111, 104, 110, 112, 112, 111, 112, 107, 112, 105, 114, 110, 109, 109, 115, 112], ![103, 116, 111, 109, 111, 109, 112, 113, 106, 105, 106, 113, 109, 108, 104, 113, 109, 109, 113, 104, 115, 111, 105, 108, 107, 107, 108, 113, 110, 112, 115, 109, 114, 106, 105, 112, 105, 111, 111, 105, 105, 109, 106, 107, 108, 107, 105, 108, 104], ![116, 107, 109, 110, 105, 108, 105, 108, 111, 113, 110, 109, 112, 114, 108, 107, 106, 110, 112, 110, 106, 112, 105, 112, 110, 107, 110, 111, 102, 109, 108, 103, 109, 110, 109, 112, 119, 112, 104, 105, 108, 105, 114, 112, 109, 105, 108, 110, 109], ![111, 112, 107, 115, 108, 109, 107, 111, 109, 111, 108, 111, 109, 106, 108, 112, 111, 112, 108, 110, 111, 112, 103, 108, 108, 113, 110, 100, 108, 115, 113, 106, 106, 111, 114, 108, 109, 102, 105, 107, 111, 111, 110, 112, 113, 105, 105, 106, 104], ![114, 109, 107, 108, 104, 112, 111, 104, 111, 110, 107, 105, 108, 105, 115, 107, 106, 111, 103, 108, 105, 109, 112, 115, 110, 113, 112, 103, 112, 116, 104, 111, 112, 110, 111, 109, 106, 109, 105, 108, 112, 110, 110, 102, 102, 109, 112, 108, 113], ![103, 100, 110, 112, 111, 117, 109, 106, 111, 106, 107, 108, 112, 107, 113, 114, 103, 109, 109, 108, 112, 107, 115, 106, 109, 104, 107, 103, 113, 112, 106, 114, 105, 108, 116, 108, 109, 104, 114, 110, 109, 104, 113, 112, 113, 113, 110, 107, 110], ![107, 113, 112, 117, 107, 110, 108, 107, 106, 108, 107, 113, 110, 109, 113, 106, 110, 106, 113, 110, 102, 107, 114, 107, 108, 112, 107, 118, 108, 106, 106, 103, 101, 112, 103, 105, 110, 112, 107, 112, 104, 109, 112, 110, 109, 112, 114, 105, 110], ![103, 111, 108, 106, 111, 101, 104, 112, 114, 109, 111, 106, 106, 107, 107, 108, 112, 111, 114, 113, 110, 109, 110, 104, 111, 111, 105, 115, 108, 103, 107, 111, 108, 114, 111, 110, 111, 108, 109, 106, 111, 106, 108, 110, 109, 110, 106, 117, 110], ![112, 116, 116, 104, 104, 107, 115, 114, 105, 103, 115, 107, 102, 113, 111, 112, 118, 109, 112, 104, 105, 105, 110, 104, 112, 109, 112, 108, 98, 107, 112, 106, 113, 109, 105, 112, 109, 105, 112, 110, 109, 112, 107, 107, 111, 108, 110, 108, 109]]

def envelope0084FibreMax : Fin 9 -> Nat :=
  ![116, 116, 119, 115, 116, 117, 118, 117, 118]

theorem envelope0084 : TailR263EvenOneDiagonalRange 7601791 7639799 := by
  intro N hLower hStop
  have hNUpper : N <= 7639798 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7639798 (envelope0084BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7639798 (envelope0084CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7639798 (envelope0084FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7639798) (count := 192226) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0084BaseCounts, envelope0084CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0084FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0084FibreCounts, envelope0084FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0084FibreMax cell) <=
          ∑ cell : Fin 9, envelope0084FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0084FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0084BaseCounts, envelope0084FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0085BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 120736
  | .evenTwoCell residue => ![2690, 2672, 2686, 2681, 2699, 2669, 2691, 2685, 2691] residue

def envelope0085CellCounts : Fin 9 -> Nat :=
  ![5357, 5357, 5366, 5371, 5360, 5377, 5360, 5369, 5367]

def envelope0085FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![113, 106, 100, 107, 108, 108, 107, 110, 107, 116, 107, 110, 113, 112, 107, 108, 104, 107, 107, 111, 113, 111, 104, 110, 109, 108, 104, 112, 111, 106, 108, 107, 113, 112, 104, 110, 113, 112, 111, 113, 108, 113, 107, 114, 111, 109, 109, 115, 112], ![105, 116, 112, 109, 111, 109, 112, 113, 107, 105, 107, 113, 109, 108, 105, 113, 111, 109, 114, 104, 115, 111, 105, 108, 108, 107, 109, 113, 110, 112, 116, 111, 115, 107, 107, 112, 105, 113, 111, 105, 107, 110, 106, 108, 108, 107, 105, 109, 105], ![118, 107, 109, 110, 105, 108, 106, 109, 112, 113, 110, 109, 112, 114, 110, 108, 107, 110, 113, 110, 106, 113, 106, 113, 111, 107, 110, 111, 102, 109, 109, 104, 109, 111, 109, 112, 119, 112, 105, 105, 109, 106, 114, 112, 109, 105, 108, 111, 109], ![111, 112, 107, 115, 109, 110, 108, 111, 109, 111, 108, 111, 111, 106, 110, 112, 111, 112, 108, 110, 111, 113, 103, 110, 108, 113, 111, 100, 109, 117, 114, 108, 106, 111, 114, 108, 109, 103, 105, 110, 111, 111, 111, 112, 113, 108, 105, 109, 106], ![114, 109, 108, 109, 105, 113, 111, 104, 111, 111, 107, 106, 108, 106, 115, 107, 107, 111, 103, 110, 106, 111, 113, 115, 110, 113, 112, 104, 112, 117, 104, 111, 112, 110, 111, 111, 107, 110, 106, 108, 112, 110, 110, 104, 102, 110, 112, 109, 113], ![104, 101, 111, 113, 111, 117, 109, 106, 111, 107, 108, 110, 113, 108, 113, 114, 105, 110, 109, 109, 113, 107, 115, 106, 109, 105, 107, 105, 114, 113, 106, 114, 106, 109, 116, 109, 109, 104, 114, 110, 109, 104, 113, 114, 114, 115, 110, 107, 111], ![108, 115, 112, 121, 107, 110, 108, 108, 106, 109, 108, 113, 110, 109, 113, 107, 110, 107, 114, 110, 103, 107, 115, 108, 108, 112, 107, 118, 108, 106, 106, 105, 101, 113, 105, 105, 110, 112, 107, 112, 105, 109, 112, 110, 109, 112, 114, 105, 111], ![103, 111, 108, 106, 111, 102, 104, 113, 115, 110, 111, 109, 106, 108, 107, 109, 112, 111, 114, 113, 110, 111, 110, 104, 112, 112, 105, 117, 108, 103, 108, 111, 109, 116, 111, 110, 111, 108, 110, 106, 112, 107, 109, 111, 110, 110, 106, 118, 111], ![113, 117, 117, 105, 104, 108, 115, 114, 105, 103, 115, 108, 102, 113, 114, 112, 119, 109, 113, 104, 107, 105, 111, 104, 112, 109, 112, 108, 99, 107, 113, 107, 113, 109, 106, 113, 110, 105, 113, 110, 109, 112, 107, 107, 112, 108, 111, 108, 110]]

def envelope0085FibreMax : Fin 9 -> Nat :=
  ![116, 116, 119, 117, 117, 117, 121, 118, 119]

theorem envelope0085 : TailR263EvenOneDiagonalRange 7639799 7677997 := by
  intro N hLower hStop
  have hNUpper : N <= 7677996 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7677996 (envelope0085BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7677996 (envelope0085CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7677996 (envelope0085FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7677996) (count := 193184) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0085BaseCounts, envelope0085CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0085FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0085FibreCounts, envelope0085FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0085FibreMax cell) <=
          ∑ cell : Fin 9, envelope0085FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0085FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0085BaseCounts, envelope0085FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0086BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 121336
  | .evenTwoCell residue => ![2702, 2682, 2701, 2693, 2713, 2683, 2703, 2700, 2702] residue

def envelope0086CellCounts : Fin 9 -> Nat :=
  ![5384, 5384, 5392, 5396, 5391, 5403, 5393, 5394, 5399]

def envelope0086FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![115, 107, 101, 108, 108, 109, 108, 111, 108, 117, 107, 111, 113, 112, 107, 109, 104, 109, 107, 112, 113, 111, 105, 110, 110, 109, 104, 112, 111, 106, 108, 107, 113, 113, 104, 111, 113, 112, 112, 113, 109, 114, 107, 116, 113, 109, 109, 115, 112], ![105, 117, 112, 109, 111, 110, 112, 115, 107, 106, 107, 115, 109, 109, 105, 115, 111, 110, 114, 104, 115, 111, 105, 109, 109, 109, 110, 114, 110, 113, 117, 112, 115, 108, 107, 112, 105, 113, 111, 106, 107, 110, 107, 108, 108, 108, 106, 110, 106], ![118, 107, 109, 110, 106, 110, 108, 110, 112, 113, 110, 109, 114, 115, 110, 108, 108, 110, 113, 110, 107, 114, 107, 114, 111, 107, 111, 112, 102, 110, 109, 104, 109, 111, 109, 112, 120, 114, 106, 106, 110, 106, 114, 112, 109, 105, 109, 111, 111], ![112, 112, 107, 116, 109, 111, 108, 111, 109, 111, 108, 113, 111, 108, 110, 112, 111, 112, 108, 110, 112, 113, 104, 111, 108, 113, 111, 102, 110, 119, 115, 108, 107, 111, 114, 108, 109, 103, 106, 110, 111, 111, 113, 112, 114, 109, 108, 109, 106], ![114, 110, 110, 110, 107, 113, 111, 104, 111, 112, 109, 106, 109, 106, 115, 107, 107, 111, 105, 110, 107, 111, 113, 117, 110, 113, 113, 104, 113, 119, 104, 111, 112, 110, 113, 112, 109, 111, 108, 109, 112, 110, 111, 105, 103, 110, 112, 109, 113], ![105, 101, 112, 113, 112, 117, 109, 106, 112, 108, 111, 111, 114, 108, 113, 114, 106, 110, 110, 109, 113, 107, 116, 106, 109, 106, 109, 106, 115, 113, 106, 114, 108, 109, 117, 110, 109, 104, 114, 110, 110, 104, 115, 114, 115, 115, 110, 107, 111], ![110, 115, 113, 122, 107, 110, 109, 108, 107, 109, 108, 113, 110, 109, 114, 107, 112, 108, 115, 111, 103, 107, 116, 108, 109, 112, 107, 118, 108, 106, 108, 106, 103, 114, 105, 106, 111, 112, 107, 113, 107, 111, 115, 110, 109, 112, 116, 106, 111], ![103, 111, 108, 106, 112, 102, 105, 114, 115, 112, 112, 109, 108, 108, 108, 109, 112, 112, 115, 114, 111, 111, 110, 105, 113, 112, 105, 119, 109, 103, 108, 112, 109, 116, 111, 110, 111, 109, 110, 107, 113, 107, 110, 111, 110, 111, 106, 119, 111], ![114, 117, 118, 105, 106, 109, 115, 114, 107, 103, 116, 108, 103, 114, 115, 114, 120, 110, 113, 105, 107, 106, 111, 104, 112, 110, 112, 109, 99, 109, 113, 108, 114, 110, 106, 115, 110, 106, 113, 110, 110, 113, 107, 108, 112, 109, 111, 109, 110]]

def envelope0086FibreMax : Fin 9 -> Nat :=
  ![117, 117, 120, 119, 119, 117, 122, 119, 120]

theorem envelope0086 : TailR263EvenOneDiagonalRange 7677997 7716386 := by
  intro N hLower hStop
  have hNUpper : N <= 7716385 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7716385 (envelope0086BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7716385 (envelope0086CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7716385 (envelope0086FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7716385) (count := 194151) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0086BaseCounts, envelope0086CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0086FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0086FibreCounts, envelope0086FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0086FibreMax cell) <=
          ∑ cell : Fin 9, envelope0086FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0086FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0086BaseCounts, envelope0086FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0087BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 121939
  | .evenTwoCell residue => ![2713, 2697, 2715, 2707, 2726, 2699, 2719, 2712, 2714] residue

def envelope0087CellCounts : Fin 9 -> Nat :=
  ![5413, 5410, 5420, 5423, 5416, 5432, 5420, 5425, 5423]

def envelope0087FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![115, 108, 101, 108, 109, 110, 109, 111, 109, 117, 107, 111, 113, 112, 107, 109, 106, 109, 108, 113, 113, 112, 105, 111, 111, 109, 105, 112, 111, 106, 108, 107, 116, 113, 105, 111, 113, 114, 115, 115, 110, 114, 108, 117, 114, 109, 109, 115, 113], ![106, 117, 112, 109, 112, 110, 114, 115, 109, 106, 107, 116, 109, 110, 107, 115, 112, 110, 114, 105, 115, 111, 106, 109, 110, 109, 110, 115, 111, 114, 119, 112, 116, 108, 107, 112, 105, 113, 112, 106, 108, 111, 107, 108, 109, 108, 107, 111, 106], ![120, 107, 109, 111, 108, 111, 110, 110, 112, 113, 110, 109, 115, 115, 111, 108, 108, 110, 113, 111, 108, 115, 108, 114, 111, 108, 112, 112, 104, 110, 110, 105, 109, 111, 109, 113, 120, 116, 107, 107, 110, 106, 114, 112, 110, 106, 109, 112, 111], ![112, 112, 108, 116, 111, 111, 108, 111, 109, 111, 110, 113, 112, 109, 110, 112, 111, 112, 109, 111, 113, 114, 104, 111, 108, 113, 112, 103, 110, 120, 115, 109, 107, 111, 114, 109, 112, 104, 106, 110, 111, 111, 114, 114, 115, 111, 109, 109, 106], ![115, 111, 111, 112, 107, 113, 111, 104, 112, 112, 109, 107, 110, 106, 115, 107, 108, 115, 105, 112, 107, 111, 113, 117, 110, 114, 113, 105, 113, 119, 104, 111, 112, 112, 113, 114, 109, 111, 108, 109, 113, 111, 111, 107, 103, 110, 112, 109, 113], ![106, 102, 113, 113, 114, 117, 109, 107, 113, 109, 112, 111, 115, 108, 113, 115, 106, 110, 111, 109, 113, 108, 116, 109, 109, 107, 110, 106, 115, 113, 106, 115, 108, 110, 117, 110, 109, 104, 114, 111, 111, 107, 115, 115, 115, 116, 110, 108, 112], ![110, 116, 113, 122, 107, 111, 109, 109, 107, 109, 108, 114, 110, 110, 114, 109, 112, 109, 115, 111, 103, 107, 116, 109, 110, 112, 108, 118, 108, 107, 108, 108, 105, 115, 107, 106, 112, 113, 108, 113, 108, 111, 116, 110, 109, 112, 117, 106, 113], ![103, 112, 108, 107, 112, 102, 106, 115, 116, 112, 112, 110, 108, 109, 108, 111, 112, 112, 115, 115, 112, 114, 112, 106, 114, 113, 105, 121, 110, 103, 109, 112, 109, 116, 111, 110, 112, 110, 111, 108, 113, 108, 110, 112, 111, 111, 107, 119, 111], ![114, 118, 118, 107, 106, 110, 115, 114, 107, 103, 116, 109, 103, 115, 115, 115, 120, 110, 115, 105, 108, 106, 111, 104, 112, 110, 112, 109, 100, 109, 114, 109, 115, 111, 107, 115, 111, 106, 113, 110, 110, 113, 108, 108, 113, 110, 112, 110, 112]]

def envelope0087FibreMax : Fin 9 -> Nat :=
  ![117, 119, 120, 120, 119, 117, 122, 121, 120]

theorem envelope0087 : TailR263EvenOneDiagonalRange 7716386 7754967 := by
  intro N hLower hStop
  have hNUpper : N <= 7754966 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7754966 (envelope0087BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7754966 (envelope0087CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7754966 (envelope0087FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7754966) (count := 195123) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0087BaseCounts, envelope0087CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0087FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0087FibreCounts, envelope0087FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0087FibreMax cell) <=
          ∑ cell : Fin 9, envelope0087FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0087FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0087BaseCounts, envelope0087FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0088BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 122545
  | .evenTwoCell residue => ![2726, 2711, 2730, 2720, 2740, 2709, 2731, 2723, 2728] residue

def envelope0088CellCounts : Fin 9 -> Nat :=
  ![5442, 5430, 5447, 5454, 5443, 5460, 5446, 5457, 5449]

def envelope0088FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![117, 108, 101, 109, 109, 111, 109, 112, 110, 118, 107, 111, 113, 113, 107, 110, 108, 110, 108, 114, 114, 113, 107, 112, 111, 110, 107, 112, 111, 106, 108, 108, 116, 114, 105, 111, 114, 114, 116, 116, 110, 115, 108, 117, 114, 110, 109, 116, 113], ![106, 117, 112, 109, 113, 111, 114, 116, 109, 106, 108, 116, 110, 113, 107, 116, 112, 110, 114, 105, 115, 112, 106, 110, 110, 109, 110, 116, 111, 116, 119, 113, 116, 108, 107, 112, 105, 114, 112, 106, 108, 111, 107, 109, 109, 109, 108, 111, 107], ![120, 108, 109, 113, 108, 112, 111, 110, 112, 113, 110, 109, 116, 116, 112, 108, 108, 111, 114, 113, 109, 116, 108, 114, 111, 108, 112, 113, 105, 111, 110, 105, 109, 111, 110, 114, 122, 116, 109, 107, 110, 106, 114, 114, 111, 106, 110, 112, 111], ![113, 113, 108, 118, 111, 111, 108, 111, 110, 114, 111, 115, 112, 109, 110, 112, 111, 113, 109, 112, 113, 114, 104, 111, 110, 114, 113, 105, 112, 120, 117, 109, 108, 112, 116, 109, 113, 104, 106, 110, 112, 111, 115, 115, 115, 111, 109, 109, 106], ![116, 113, 112, 112, 108, 113, 111, 105, 112, 113, 110, 109, 110, 106, 115, 107, 109, 115, 106, 112, 107, 111, 113, 117, 111, 114, 114, 106, 113, 119, 104, 111, 114, 113, 115, 115, 109, 112, 108, 110, 114, 111, 112, 107, 103, 110, 112, 109, 115], ![106, 103, 114, 113, 114, 117, 110, 108, 115, 110, 112, 111, 115, 108, 114, 115, 107, 110, 111, 109, 113, 108, 118, 110, 111, 108, 110, 106, 115, 113, 107, 115, 109, 110, 117, 110, 109, 104, 115, 112, 112, 110, 116, 115, 115, 116, 111, 110, 113], ![111, 116, 113, 122, 107, 111, 110, 109, 107, 109, 109, 114, 112, 110, 116, 109, 113, 109, 115, 111, 104, 107, 117, 109, 110, 112, 108, 118, 111, 108, 110, 108, 107, 116, 107, 106, 113, 113, 109, 115, 108, 111, 116, 110, 109, 113, 117, 107, 114], ![104, 112, 109, 107, 114, 104, 106, 116, 116, 114, 113, 110, 109, 109, 108, 111, 112, 112, 116, 115, 113, 116, 112, 108, 114, 113, 106, 121, 111, 104, 109, 112, 109, 116, 111, 111, 112, 112, 112, 109, 115, 108, 110, 113, 112, 112, 107, 120, 112], ![115, 118, 118, 107, 106, 110, 115, 114, 108, 103, 117, 109, 104, 115, 116, 116, 121, 111, 115, 107, 108, 107, 111, 104, 112, 111, 112, 110, 101, 110, 115, 110, 115, 112, 107, 116, 112, 106, 113, 110, 110, 114, 108, 109, 113, 112, 113, 111, 112]]

def envelope0088FibreMax : Fin 9 -> Nat :=
  ![118, 119, 122, 120, 119, 118, 122, 121, 121]

theorem envelope0088 : TailR263EvenOneDiagonalRange 7754967 7793741 := by
  intro N hLower hStop
  have hNUpper : N <= 7793740 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7793740 (envelope0088BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7793740 (envelope0088CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7793740 (envelope0088FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7793740) (count := 196091) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0088BaseCounts, envelope0088CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0088FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0088FibreCounts, envelope0088FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0088FibreMax cell) <=
          ∑ cell : Fin 9, envelope0088FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0088FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0088BaseCounts, envelope0088FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0089BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 123160
  | .evenTwoCell residue => ![2740, 2723, 2744, 2735, 2754, 2722, 2744, 2741, 2746] residue

def envelope0089CellCounts : Fin 9 -> Nat :=
  ![5471, 5461, 5471, 5482, 5465, 5483, 5472, 5481, 5477]

def envelope0089FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![117, 108, 102, 110, 110, 113, 109, 113, 111, 118, 107, 111, 113, 113, 108, 110, 109, 111, 109, 114, 117, 113, 108, 112, 112, 111, 107, 112, 111, 107, 109, 108, 117, 114, 106, 112, 115, 116, 116, 116, 111, 115, 108, 117, 114, 111, 110, 116, 114], ![106, 118, 112, 109, 114, 111, 115, 118, 109, 107, 109, 117, 111, 113, 108, 116, 112, 110, 114, 105, 116, 112, 107, 110, 110, 110, 112, 117, 114, 116, 120, 114, 116, 108, 107, 112, 106, 114, 113, 106, 109, 111, 108, 109, 112, 110, 109, 112, 107], ![121, 108, 111, 113, 109, 112, 111, 110, 112, 113, 111, 109, 117, 116, 112, 109, 109, 111, 118, 113, 110, 116, 108, 114, 111, 108, 113, 113, 106, 111, 110, 105, 109, 112, 112, 114, 122, 119, 109, 108, 110, 106, 114, 114, 111, 107, 110, 113, 111], ![114, 114, 109, 118, 112, 111, 108, 112, 111, 116, 112, 115, 112, 110, 110, 112, 112, 113, 110, 112, 113, 114, 104, 112, 112, 115, 114, 106, 112, 122, 117, 109, 108, 113, 116, 110, 113, 104, 106, 110, 113, 112, 117, 116, 115, 111, 110, 109, 106], ![118, 113, 112, 113, 108, 115, 112, 105, 113, 113, 110, 109, 110, 106, 117, 109, 110, 118, 106, 112, 107, 111, 113, 119, 111, 115, 114, 106, 113, 119, 104, 112, 114, 114, 115, 115, 109, 112, 108, 111, 114, 111, 112, 107, 103, 110, 112, 110, 115], ![106, 103, 114, 113, 115, 119, 111, 110, 115, 110, 113, 111, 115, 109, 114, 116, 107, 110, 111, 109, 113, 109, 119, 111, 112, 108, 110, 106, 115, 114, 107, 116, 109, 110, 117, 111, 109, 105, 116, 113, 113, 111, 116, 115, 115, 116, 111, 112, 113], ![111, 116, 113, 123, 107, 112, 111, 110, 107, 109, 109, 115, 112, 112, 116, 110, 115, 109, 115, 112, 104, 108, 120, 109, 110, 112, 108, 119, 111, 109, 111, 109, 107, 116, 107, 107, 113, 114, 110, 115, 108, 111, 116, 110, 110, 114, 118, 107, 115], ![105, 112, 109, 110, 114, 104, 107, 116, 116, 115, 113, 111, 109, 109, 109, 111, 112, 113, 117, 116, 114, 116, 113, 108, 114, 114, 106, 122, 111, 104, 110, 112, 109, 116, 112, 111, 114, 113, 113, 109, 115, 108, 111, 113, 113, 112, 108, 120, 112], ![115, 119, 118, 107, 106, 112, 115, 115, 108, 104, 117, 110, 104, 116, 116, 117, 121, 112, 116, 107, 108, 107, 111, 104, 113, 112, 113, 111, 101, 111, 115, 111, 116, 114, 108, 116, 112, 106, 113, 112, 111, 114, 109, 109, 114, 113, 114, 111, 113]]

def envelope0089FibreMax : Fin 9 -> Nat :=
  ![118, 120, 122, 122, 119, 119, 123, 122, 121]

theorem envelope0089 : TailR263EvenOneDiagonalRange 7793741 7832709 := by
  intro N hLower hStop
  have hNUpper : N <= 7832708 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7832708 (envelope0089BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7832708 (envelope0089CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7832708 (envelope0089FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7832708) (count := 197072) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0089BaseCounts, envelope0089CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0089FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0089FibreCounts, envelope0089FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0089FibreMax cell) <=
          ∑ cell : Fin 9, envelope0089FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0089FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0089BaseCounts, envelope0089FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0090BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 123781
  | .evenTwoCell residue => ![2755, 2739, 2754, 2754, 2767, 2738, 2755, 2755, 2756] residue

def envelope0090CellCounts : Fin 9 -> Nat :=
  ![5498, 5490, 5496, 5506, 5493, 5512, 5500, 5507, 5508]

def envelope0090FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![118, 109, 103, 111, 111, 113, 110, 113, 112, 118, 107, 111, 114, 114, 110, 111, 109, 112, 110, 116, 117, 114, 108, 113, 112, 111, 108, 112, 111, 108, 109, 108, 117, 114, 106, 113, 115, 117, 116, 117, 111, 115, 109, 117, 114, 112, 111, 117, 114], ![107, 119, 112, 110, 114, 112, 115, 118, 111, 107, 110, 118, 111, 114, 108, 116, 112, 110, 114, 107, 116, 113, 107, 111, 112, 110, 113, 118, 114, 117, 120, 114, 116, 109, 107, 112, 106, 115, 113, 106, 110, 112, 109, 111, 114, 111, 109, 112, 108], ![121, 110, 111, 114, 109, 112, 111, 110, 112, 114, 111, 110, 117, 116, 112, 110, 109, 113, 118, 113, 110, 116, 108, 115, 112, 111, 113, 114, 106, 111, 110, 108, 110, 113, 113, 115, 122, 120, 109, 108, 110, 106, 115, 114, 112, 107, 110, 113, 112], ![114, 115, 109, 118, 112, 111, 109, 113, 112, 117, 112, 115, 114, 110, 111, 113, 112, 114, 110, 112, 113, 114, 105, 112, 113, 117, 115, 106, 112, 122, 117, 109, 111, 113, 117, 110, 113, 104, 106, 111, 113, 113, 118, 116, 115, 111, 110, 109, 108], ![118, 113, 112, 113, 108, 116, 112, 108, 113, 113, 110, 109, 111, 108, 117, 110, 112, 118, 106, 112, 107, 111, 114, 119, 111, 115, 114, 106, 113, 120, 107, 112, 116, 114, 115, 115, 109, 112, 109, 111, 116, 111, 114, 107, 103, 110, 114, 110, 119], ![106, 103, 115, 114, 116, 120, 113, 110, 115, 111, 113, 112, 116, 109, 115, 117, 107, 110, 111, 109, 115, 109, 121, 113, 112, 108, 110, 106, 115, 116, 108, 116, 109, 110, 117, 111, 111, 107, 117, 114, 113, 112, 116, 115, 116, 116, 112, 112, 113], ![111, 116, 114, 123, 108, 113, 111, 110, 107, 109, 112, 115, 115, 114, 117, 110, 115, 109, 116, 112, 105, 108, 120, 109, 110, 112, 109, 119, 113, 109, 112, 109, 107, 116, 109, 107, 114, 114, 110, 115, 109, 111, 118, 111, 111, 115, 119, 107, 115], ![106, 112, 111, 111, 115, 105, 107, 116, 117, 115, 114, 111, 109, 109, 109, 111, 113, 113, 118, 117, 115, 117, 113, 108, 116, 114, 106, 122, 111, 105, 110, 112, 110, 116, 112, 113, 115, 113, 113, 109, 115, 109, 111, 114, 113, 113, 110, 121, 112], ![116, 119, 118, 107, 106, 112, 118, 116, 109, 104, 118, 111, 105, 116, 117, 117, 122, 112, 116, 107, 108, 107, 112, 105, 113, 113, 114, 113, 102, 111, 116, 112, 116, 116, 108, 118, 112, 106, 114, 113, 111, 115, 110, 109, 116, 113, 114, 112, 113]]

def envelope0090FibreMax : Fin 9 -> Nat :=
  ![118, 120, 122, 122, 120, 121, 123, 122, 122]

theorem envelope0090 : TailR263EvenOneDiagonalRange 7832709 7871872 := by
  intro N hLower hStop
  have hNUpper : N <= 7871871 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7871871 (envelope0090BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7871871 (envelope0090CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7871871 (envelope0090FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7871871) (count := 198064) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0090BaseCounts, envelope0090CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0090FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0090FibreCounts, envelope0090FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0090FibreMax cell) <=
          ∑ cell : Fin 9, envelope0090FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0090FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0090BaseCounts, envelope0090FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0091BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 124395
  | .evenTwoCell residue => ![2769, 2755, 2766, 2767, 2781, 2751, 2768, 2765, 2772] residue

def envelope0091CellCounts : Fin 9 -> Nat :=
  ![5523, 5517, 5525, 5534, 5522, 5537, 5531, 5532, 5532]

def envelope0091FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![118, 110, 104, 112, 111, 114, 111, 113, 113, 119, 108, 112, 114, 115, 110, 111, 110, 112, 111, 116, 118, 114, 109, 113, 112, 112, 108, 112, 112, 108, 110, 108, 118, 114, 107, 113, 116, 117, 117, 117, 111, 115, 110, 117, 115, 112, 112, 117, 115], ![107, 120, 113, 110, 115, 112, 116, 119, 114, 108, 111, 118, 112, 114, 108, 116, 112, 110, 114, 107, 118, 113, 107, 111, 112, 111, 114, 118, 115, 117, 120, 114, 117, 110, 108, 112, 107, 115, 115, 107, 110, 113, 110, 111, 115, 112, 109, 112, 108], ![123, 110, 113, 115, 109, 112, 111, 110, 114, 114, 112, 110, 117, 116, 113, 110, 111, 113, 119, 116, 111, 116, 108, 115, 113, 111, 114, 114, 106, 111, 111, 108, 112, 113, 114, 115, 122, 120, 109, 108, 112, 107, 115, 115, 112, 107, 111, 114, 113], ![115, 115, 110, 118, 112, 112, 112, 114, 113, 117, 112, 115, 114, 110, 112, 113, 112, 114, 110, 112, 113, 115, 107, 114, 114, 117, 115, 106, 112, 122, 120, 110, 111, 114, 117, 110, 113, 105, 108, 113, 114, 114, 118, 116, 115, 111, 110, 110, 108], ![118, 113, 112, 113, 109, 116, 113, 108, 113, 113, 110, 110, 113, 110, 120, 110, 112, 118, 106, 112, 107, 112, 114, 120, 111, 115, 114, 106, 114, 121, 108, 114, 116, 114, 115, 115, 111, 113, 109, 112, 116, 112, 115, 108, 103, 112, 115, 112, 119], ![107, 103, 116, 116, 116, 120, 113, 110, 115, 111, 114, 113, 116, 110, 115, 117, 107, 111, 111, 111, 115, 111, 121, 115, 113, 108, 110, 107, 115, 117, 108, 116, 109, 110, 117, 113, 112, 108, 118, 115, 113, 112, 116, 116, 116, 117, 112, 112, 113], ![111, 117, 115, 124, 110, 113, 111, 110, 107, 110, 114, 116, 116, 114, 118, 110, 115, 111, 116, 113, 105, 108, 120, 109, 110, 112, 111, 121, 114, 110, 112, 109, 107, 117, 109, 109, 114, 114, 110, 116, 109, 112, 119, 113, 112, 117, 119, 107, 115], ![106, 113, 111, 112, 115, 105, 107, 117, 117, 115, 114, 111, 109, 109, 109, 112, 113, 115, 119, 118, 116, 117, 113, 109, 116, 115, 107, 122, 111, 105, 110, 113, 110, 117, 114, 114, 116, 114, 113, 109, 117, 109, 112, 115, 114, 113, 110, 121, 113], ![116, 120, 118, 107, 106, 113, 118, 118, 110, 105, 119, 112, 105, 116, 117, 118, 122, 112, 116, 107, 108, 110, 112, 106, 114, 114, 114, 113, 102, 111, 116, 112, 117, 116, 109, 118, 112, 106, 115, 113, 112, 116, 110, 110, 117, 113, 115, 112, 114]]

def envelope0091FibreMax : Fin 9 -> Nat :=
  ![119, 120, 123, 122, 121, 121, 124, 122, 122]

theorem envelope0091 : TailR263EvenOneDiagonalRange 7871872 7911231 := by
  intro N hLower hStop
  have hNUpper : N <= 7911230 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7911230 (envelope0091BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7911230 (envelope0091CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7911230 (envelope0091FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7911230) (count := 199042) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0091BaseCounts, envelope0091CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0091FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0091FibreCounts, envelope0091FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0091FibreMax cell) <=
          ∑ cell : Fin 9, envelope0091FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0091FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0091BaseCounts, envelope0091FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0092BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 125025
  | .evenTwoCell residue => ![2782, 2766, 2781, 2778, 2796, 2766, 2783, 2776, 2783] residue

def envelope0092CellCounts : Fin 9 -> Nat :=
  ![5552, 5546, 5555, 5564, 5549, 5565, 5554, 5560, 5559]

def envelope0092FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![119, 110, 105, 112, 112, 114, 111, 114, 113, 119, 108, 112, 115, 116, 112, 113, 111, 112, 112, 118, 118, 115, 109, 113, 113, 112, 108, 113, 112, 109, 110, 109, 118, 115, 107, 114, 116, 118, 117, 118, 111, 115, 110, 118, 115, 115, 112, 118, 116], ![108, 120, 114, 112, 115, 113, 116, 120, 114, 110, 112, 118, 112, 114, 108, 116, 112, 111, 114, 108, 118, 113, 108, 112, 113, 112, 116, 119, 115, 117, 121, 114, 119, 113, 108, 113, 107, 115, 116, 108, 111, 114, 110, 111, 115, 112, 109, 112, 108], ![123, 111, 114, 115, 110, 112, 111, 111, 114, 116, 112, 110, 118, 118, 114, 112, 111, 114, 119, 116, 112, 116, 108, 116, 113, 112, 114, 114, 106, 112, 111, 110, 112, 114, 114, 115, 122, 120, 109, 109, 113, 110, 116, 115, 112, 108, 111, 116, 114], ![117, 115, 110, 119, 113, 114, 113, 115, 113, 117, 112, 115, 114, 112, 112, 114, 112, 114, 110, 113, 114, 116, 109, 115, 114, 117, 115, 106, 113, 123, 120, 112, 112, 114, 117, 110, 114, 105, 110, 113, 115, 114, 118, 118, 115, 112, 111, 110, 108], ![118, 113, 112, 114, 109, 117, 113, 108, 113, 113, 110, 112, 113, 112, 120, 110, 112, 118, 106, 113, 107, 113, 115, 120, 111, 115, 114, 107, 116, 123, 111, 114, 116, 114, 115, 115, 112, 113, 110, 112, 116, 112, 116, 110, 105, 113, 117, 112, 119], ![107, 104, 117, 117, 117, 120, 113, 110, 115, 112, 114, 117, 117, 110, 115, 118, 107, 111, 113, 111, 117, 111, 121, 115, 113, 108, 111, 108, 116, 117, 108, 117, 109, 110, 119, 113, 114, 109, 118, 115, 113, 112, 117, 116, 117, 117, 112, 113, 114], ![112, 117, 116, 124, 110, 113, 111, 110, 107, 111, 115, 117, 116, 114, 118, 110, 116, 111, 118, 113, 105, 108, 120, 109, 111, 113, 112, 122, 114, 110, 112, 110, 108, 117, 110, 110, 114, 114, 110, 116, 110, 113, 121, 113, 112, 117, 119, 109, 116], ![108, 113, 112, 112, 115, 105, 108, 117, 118, 115, 114, 111, 109, 109, 110, 112, 116, 115, 120, 118, 116, 117, 114, 109, 117, 116, 107, 123, 113, 105, 111, 113, 113, 118, 114, 115, 116, 114, 114, 110, 117, 110, 112, 115, 114, 113, 112, 122, 113], ![116, 120, 118, 107, 107, 113, 118, 119, 111, 108, 119, 112, 106, 116, 118, 120, 122, 112, 116, 107, 109, 110, 113, 107, 115, 115, 115, 113, 103, 112, 116, 113, 117, 116, 109, 118, 113, 107, 115, 114, 113, 116, 111, 111, 117, 114, 115, 113, 114]]

def envelope0092FibreMax : Fin 9 -> Nat :=
  ![119, 121, 123, 123, 123, 121, 124, 123, 122]

theorem envelope0092 : TailR263EvenOneDiagonalRange 7911231 7950787 := by
  intro N hLower hStop
  have hNUpper : N <= 7950786 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7950786 (envelope0092BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7950786 (envelope0092CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7950786 (envelope0092FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7950786) (count := 200040) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0092BaseCounts, envelope0092CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0092FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0092FibreCounts, envelope0092FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0092FibreMax cell) <=
          ∑ cell : Fin 9, envelope0092FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0092FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0092BaseCounts, envelope0092FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0093BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 125645
  | .evenTwoCell residue => ![2797, 2787, 2797, 2790, 2808, 2780, 2796, 2787, 2794] residue

def envelope0093CellCounts : Fin 9 -> Nat :=
  ![5576, 5571, 5581, 5594, 5577, 5591, 5583, 5588, 5590]

def envelope0093FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![119, 111, 105, 113, 112, 115, 111, 114, 113, 120, 108, 113, 115, 117, 112, 114, 111, 113, 112, 119, 120, 115, 109, 113, 113, 112, 109, 113, 113, 110, 110, 110, 119, 115, 108, 114, 117, 118, 117, 120, 111, 115, 110, 118, 116, 115, 113, 118, 118], ![108, 121, 114, 112, 116, 113, 117, 121, 115, 111, 113, 118, 112, 115, 108, 116, 113, 111, 115, 108, 120, 114, 109, 113, 114, 112, 117, 119, 115, 117, 121, 114, 120, 113, 109, 113, 107, 116, 116, 109, 113, 114, 111, 111, 115, 112, 109, 112, 109], ![124, 111, 114, 115, 110, 112, 112, 113, 115, 116, 112, 111, 118, 120, 115, 113, 113, 114, 119, 116, 112, 116, 109, 116, 114, 112, 114, 115, 107, 112, 113, 110, 113, 114, 114, 115, 122, 121, 110, 110, 113, 110, 116, 115, 113, 108, 112, 118, 114], ![117, 115, 111, 120, 115, 114, 114, 115, 113, 118, 114, 115, 116, 112, 113, 114, 112, 114, 111, 114, 117, 117, 110, 115, 114, 117, 115, 106, 114, 123, 121, 112, 112, 114, 117, 112, 115, 109, 110, 114, 115, 114, 118, 118, 115, 113, 111, 111, 108], ![118, 113, 113, 114, 110, 117, 113, 108, 113, 114, 112, 113, 115, 112, 122, 110, 112, 118, 108, 113, 108, 113, 115, 120, 113, 115, 116, 108, 117, 125, 111, 114, 116, 114, 115, 116, 113, 114, 110, 112, 116, 112, 118, 111, 106, 113, 117, 112, 119], ![108, 105, 119, 118, 118, 122, 113, 110, 116, 112, 115, 117, 117, 110, 115, 118, 108, 114, 113, 113, 117, 111, 121, 115, 113, 110, 111, 109, 116, 117, 109, 117, 109, 112, 119, 115, 114, 109, 118, 115, 113, 113, 117, 117, 117, 117, 112, 113, 114], ![113, 117, 116, 124, 110, 113, 112, 111, 108, 112, 116, 117, 116, 114, 118, 113, 116, 112, 118, 113, 105, 108, 120, 110, 112, 114, 113, 122, 114, 110, 112, 111, 109, 117, 110, 113, 114, 114, 110, 117, 111, 117, 122, 114, 112, 118, 119, 110, 116], ![110, 114, 112, 112, 115, 106, 108, 118, 118, 115, 114, 111, 109, 110, 111, 114, 116, 116, 121, 118, 116, 118, 116, 110, 118, 116, 108, 123, 114, 106, 111, 115, 113, 119, 114, 115, 116, 114, 114, 111, 118, 110, 112, 115, 114, 113, 113, 124, 114], ![116, 120, 118, 110, 107, 114, 119, 119, 112, 109, 119, 113, 106, 117, 118, 120, 122, 112, 116, 108, 109, 111, 114, 107, 116, 115, 115, 114, 103, 113, 119, 113, 117, 116, 109, 118, 114, 108, 116, 115, 114, 119, 111, 111, 120, 114, 117, 113, 114]]

def envelope0093FibreMax : Fin 9 -> Nat :=
  ![120, 121, 124, 123, 125, 122, 124, 124, 122]

theorem envelope0093 : TailR263EvenOneDiagonalRange 7950787 7990540 := by
  intro N hLower hStop
  have hNUpper : N <= 7990539 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7990539 (envelope0093BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7990539 (envelope0093CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7990539 (envelope0093FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7990539) (count := 201032) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0093BaseCounts, envelope0093CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0093FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0093FibreCounts, envelope0093FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0093FibreMax cell) <=
          ∑ cell : Fin 9, envelope0093FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0093FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0093BaseCounts, envelope0093FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0094BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 126274
  | .evenTwoCell residue => ![2810, 2802, 2808, 2803, 2821, 2792, 2810, 2803, 2810] residue

def envelope0094CellCounts : Fin 9 -> Nat :=
  ![5604, 5603, 5607, 5618, 5607, 5620, 5616, 5614, 5616]

def envelope0094FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![120, 112, 107, 114, 112, 115, 111, 114, 114, 120, 109, 113, 116, 117, 112, 114, 112, 113, 112, 119, 120, 115, 109, 114, 114, 113, 109, 116, 114, 110, 111, 110, 119, 117, 108, 114, 117, 118, 118, 120, 111, 116, 110, 119, 118, 117, 114, 119, 118], ![110, 121, 114, 113, 116, 114, 118, 121, 116, 111, 114, 118, 112, 115, 111, 117, 113, 113, 115, 110, 121, 116, 109, 114, 114, 114, 117, 119, 115, 118, 121, 116, 120, 114, 109, 114, 109, 117, 117, 109, 113, 115, 111, 111, 115, 112, 109, 113, 109], ![124, 111, 114, 115, 111, 113, 112, 114, 116, 116, 112, 111, 119, 121, 115, 114, 113, 114, 119, 116, 112, 117, 109, 116, 114, 112, 115, 116, 108, 114, 113, 111, 113, 114, 114, 115, 122, 122, 110, 111, 114, 110, 117, 117, 115, 110, 112, 119, 115], ![117, 116, 112, 122, 116, 115, 114, 115, 113, 118, 114, 116, 116, 113, 113, 114, 112, 115, 111, 116, 117, 118, 111, 115, 114, 117, 115, 106, 114, 124, 121, 114, 113, 115, 118, 113, 115, 110, 111, 114, 115, 114, 118, 118, 115, 113, 112, 111, 109], ![118, 114, 113, 115, 111, 117, 113, 108, 114, 115, 113, 114, 117, 112, 122, 111, 112, 119, 108, 114, 109, 113, 115, 120, 114, 117, 117, 110, 118, 125, 111, 114, 117, 114, 117, 116, 114, 114, 111, 112, 116, 113, 119, 113, 107, 113, 117, 112, 119], ![108, 109, 119, 118, 118, 123, 113, 112, 116, 113, 115, 117, 117, 110, 115, 120, 109, 117, 116, 113, 117, 111, 121, 115, 114, 110, 113, 109, 116, 117, 109, 117, 110, 112, 120, 116, 114, 109, 118, 115, 114, 113, 119, 117, 117, 117, 112, 113, 117], ![113, 117, 116, 124, 110, 115, 115, 114, 110, 113, 116, 117, 116, 114, 119, 114, 119, 112, 118, 113, 105, 108, 121, 111, 113, 115, 113, 122, 114, 112, 113, 112, 110, 118, 110, 113, 114, 115, 111, 118, 112, 118, 122, 114, 112, 118, 120, 110, 117], ![110, 114, 112, 112, 116, 106, 110, 118, 118, 115, 116, 111, 110, 110, 113, 114, 119, 116, 121, 118, 117, 118, 117, 110, 118, 117, 108, 124, 115, 106, 112, 115, 114, 119, 114, 115, 117, 114, 115, 112, 118, 110, 112, 115, 115, 114, 114, 125, 115], ![116, 120, 119, 110, 109, 115, 120, 120, 112, 109, 120, 113, 108, 117, 119, 120, 122, 112, 117, 108, 110, 112, 114, 108, 116, 115, 116, 115, 105, 113, 119, 113, 117, 116, 109, 119, 114, 110, 116, 116, 114, 119, 111, 112, 120, 115, 119, 113, 114]]

def envelope0094FibreMax : Fin 9 -> Nat :=
  ![120, 121, 124, 124, 125, 123, 124, 125, 122]

theorem envelope0094 : TailR263EvenOneDiagonalRange 7990540 8030492 := by
  intro N hLower hStop
  have hNUpper : N <= 8030491 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8030491 (envelope0094BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8030491 (envelope0094CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8030491 (envelope0094FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8030491) (count := 202038) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0094BaseCounts, envelope0094CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0094FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0094FibreCounts, envelope0094FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0094FibreMax cell) <=
          ∑ cell : Fin 9, envelope0094FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0094FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0094BaseCounts, envelope0094FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0095BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 126898
  | .evenTwoCell residue => ![2825, 2813, 2823, 2821, 2833, 2806, 2826, 2819, 2819] residue

def envelope0095CellCounts : Fin 9 -> Nat :=
  ![5635, 5633, 5636, 5646, 5633, 5648, 5637, 5647, 5642]

def envelope0095FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![121, 113, 109, 114, 112, 115, 111, 115, 114, 121, 110, 114, 117, 118, 112, 115, 112, 114, 112, 120, 120, 118, 109, 115, 114, 114, 110, 117, 115, 112, 111, 110, 120, 117, 110, 114, 117, 118, 118, 120, 112, 116, 111, 120, 118, 118, 114, 119, 119], ![110, 123, 117, 115, 116, 115, 118, 122, 118, 112, 114, 119, 112, 116, 111, 117, 114, 113, 116, 110, 122, 116, 109, 114, 115, 114, 117, 119, 115, 118, 122, 116, 122, 114, 110, 114, 110, 117, 118, 109, 116, 115, 111, 111, 115, 113, 110, 113, 110], ![124, 111, 114, 116, 112, 114, 113, 114, 116, 117, 112, 112, 120, 121, 116, 114, 113, 114, 119, 116, 113, 117, 111, 116, 114, 113, 115, 117, 109, 114, 114, 111, 113, 116, 114, 115, 123, 122, 113, 112, 114, 112, 118, 118, 117, 110, 113, 119, 115], ![117, 116, 114, 122, 117, 116, 114, 116, 113, 119, 115, 116, 117, 113, 113, 114, 113, 115, 113, 118, 117, 118, 111, 115, 114, 119, 116, 106, 115, 124, 121, 114, 114, 116, 119, 114, 117, 110, 111, 114, 115, 115, 119, 119, 115, 114, 113, 111, 109], ![119, 114, 114, 115, 111, 117, 115, 109, 115, 116, 114, 114, 117, 112, 122, 111, 115, 120, 109, 115, 110, 113, 115, 121, 114, 118, 118, 110, 118, 125, 111, 114, 118, 115, 117, 117, 114, 114, 111, 112, 117, 115, 120, 114, 107, 113, 117, 112, 119], ![110, 109, 119, 118, 118, 123, 114, 113, 116, 113, 115, 117, 117, 110, 117, 120, 110, 117, 117, 113, 117, 112, 122, 117, 114, 110, 113, 109, 116, 117, 110, 119, 111, 114, 120, 116, 117, 109, 118, 116, 115, 114, 120, 117, 117, 117, 113, 115, 117], ![113, 117, 116, 124, 111, 116, 116, 115, 110, 113, 116, 117, 117, 115, 119, 115, 119, 112, 118, 113, 105, 111, 121, 114, 114, 115, 113, 122, 114, 112, 113, 113, 110, 118, 110, 113, 114, 116, 112, 119, 113, 118, 122, 114, 112, 119, 120, 111, 117], ![110, 114, 112, 114, 118, 108, 111, 118, 118, 115, 116, 112, 110, 111, 114, 115, 120, 117, 121, 119, 117, 119, 117, 110, 118, 117, 108, 126, 115, 109, 112, 116, 114, 120, 114, 116, 117, 115, 115, 113, 118, 110, 112, 116, 115, 117, 116, 126, 116], ![116, 121, 119, 112, 109, 116, 120, 120, 112, 110, 120, 114, 108, 117, 119, 120, 122, 112, 118, 110, 112, 112, 115, 108, 116, 116, 116, 116, 105, 113, 119, 114, 117, 117, 110, 120, 116, 110, 118, 116, 116, 119, 112, 112, 121, 115, 119, 113, 114]]

def envelope0095FibreMax : Fin 9 -> Nat :=
  ![121, 123, 124, 124, 125, 123, 124, 126, 122]

theorem envelope0095 : TailR263EvenOneDiagonalRange 8030492 8070644 := by
  intro N hLower hStop
  have hNUpper : N <= 8070643 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8070643 (envelope0095BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8070643 (envelope0095CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8070643 (envelope0095FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8070643) (count := 203040) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0095BaseCounts, envelope0095CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0095FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0095FibreCounts, envelope0095FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0095FibreMax cell) <=
          ∑ cell : Fin 9, envelope0095FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0095FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0095BaseCounts, envelope0095FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
