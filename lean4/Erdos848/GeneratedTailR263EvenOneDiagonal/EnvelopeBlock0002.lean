import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0032BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 92687
  | .evenTwoCell residue => ![2071, 2063, 2059, 2053, 2065, 2052, 2063, 2065, 2063] residue

def envelope0032CellCounts : Fin 9 -> Nat :=
  ![4114, 4115, 4117, 4121, 4104, 4129, 4128, 4123, 4128]

def envelope0032FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![82, 81, 77, 85, 84, 84, 83, 87, 84, 90, 79, 83, 85, 83, 79, 87, 80, 84, 82, 88, 87, 83, 81, 89, 82, 83, 83, 85, 79, 82, 83, 84, 85, 86, 82, 85, 86, 81, 86, 93, 81, 84, 79, 90, 88, 82, 78, 93, 87], ![77, 89, 87, 81, 85, 83, 85, 88, 79, 81, 84, 91, 83, 86, 82, 91, 84, 77, 80, 80, 89, 84, 78, 87, 86, 83, 84, 90, 86, 88, 87, 84, 88, 81, 80, 84, 81, 86, 88, 81, 87, 82, 83, 80, 85, 85, 80, 84, 81], ![90, 79, 83, 91, 83, 83, 81, 85, 86, 84, 81, 79, 84, 85, 83, 81, 84, 86, 87, 88, 83, 88, 80, 80, 84, 80, 86, 87, 82, 84, 80, 78, 87, 85, 82, 86, 93, 87, 82, 82, 83, 81, 87, 87, 87, 82, 81, 86, 84], ![87, 88, 79, 88, 85, 79, 84, 89, 87, 87, 81, 86, 88, 81, 83, 86, 86, 85, 84, 80, 86, 85, 80, 83, 85, 88, 85, 76, 90, 91, 81, 79, 84, 84, 90, 77, 85, 81, 80, 85, 86, 89, 86, 84, 85, 80, 81, 82, 80], ![88, 83, 82, 83, 83, 86, 84, 79, 85, 83, 79, 81, 87, 81, 87, 84, 83, 86, 79, 84, 80, 86, 85, 87, 87, 87, 81, 77, 85, 91, 80, 86, 87, 87, 81, 89, 79, 85, 82, 80, 85, 87, 83, 78, 78, 90, 84, 81, 89], ![81, 81, 87, 87, 86, 93, 88, 81, 88, 84, 81, 86, 88, 84, 85, 83, 78, 87, 80, 80, 90, 81, 89, 80, 84, 86, 81, 81, 86, 91, 84, 85, 76, 85, 85, 80, 84, 84, 92, 87, 83, 86, 86, 83, 83, 83, 83, 80, 83], ![84, 91, 82, 87, 79, 85, 83, 83, 80, 85, 82, 89, 84, 85, 87, 81, 84, 85, 88, 84, 81, 82, 88, 86, 81, 85, 84, 87, 83, 78, 86, 83, 80, 87, 82, 78, 86, 86, 80, 83, 82, 84, 90, 82, 87, 89, 89, 82, 89], ![78, 85, 86, 83, 87, 81, 84, 90, 83, 82, 88, 81, 79, 84, 78, 84, 85, 87, 89, 85, 83, 86, 84, 79, 87, 88, 81, 88, 79, 81, 85, 83, 78, 87, 86, 86, 87, 89, 89, 82, 91, 81, 84, 88, 81, 80, 81, 86, 84], ![90, 89, 91, 78, 80, 84, 85, 86, 83, 80, 93, 87, 77, 88, 89, 86, 88, 81, 89, 82, 79, 78, 89, 81, 86, 82, 83, 83, 76, 78, 88, 81, 88, 85, 81, 88, 86, 81, 84, 84, 83, 87, 82, 82, 88, 83, 87, 85, 84]]

def envelope0032FibreMax : Fin 9 -> Nat :=
  ![93, 91, 93, 91, 91, 93, 91, 91, 93]

theorem envelope0032 : TailR263EvenOneDiagonalRange 5865197 5894522 := by
  intro N hLower hStop
  have hNUpper : N <= 5894521 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5894521 (envelope0032BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5894521 (envelope0032CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5894521 (envelope0032FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5894521) (count := 148320) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0032BaseCounts, envelope0032CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0032FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0032FibreCounts, envelope0032FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0032FibreMax cell) <=
          ∑ cell : Fin 9, envelope0032FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0032FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0032BaseCounts, envelope0032FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0033BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 93151
  | .evenTwoCell residue => ![2077, 2073, 2068, 2069, 2074, 2062, 2073, 2075, 2073] residue

def envelope0033CellCounts : Fin 9 -> Nat :=
  ![4131, 4134, 4138, 4139, 4126, 4152, 4148, 4149, 4146]

def envelope0033FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![82, 81, 78, 85, 84, 84, 85, 87, 84, 90, 79, 83, 85, 83, 80, 87, 81, 85, 82, 89, 87, 83, 81, 89, 82, 84, 83, 86, 79, 82, 84, 84, 86, 88, 82, 86, 86, 81, 86, 93, 81, 85, 80, 91, 88, 82, 78, 93, 87], ![77, 90, 87, 81, 85, 83, 86, 90, 79, 82, 84, 91, 83, 86, 82, 91, 85, 78, 80, 80, 89, 85, 78, 88, 86, 84, 85, 90, 86, 88, 87, 85, 88, 82, 80, 84, 83, 87, 88, 82, 87, 83, 83, 80, 85, 85, 80, 84, 82], ![90, 79, 83, 91, 83, 85, 81, 86, 86, 84, 81, 79, 85, 86, 84, 82, 85, 86, 87, 88, 83, 89, 80, 83, 84, 80, 86, 87, 83, 84, 81, 78, 87, 85, 82, 86, 93, 87, 83, 82, 84, 81, 87, 87, 88, 83, 82, 87, 85], ![87, 88, 79, 90, 87, 81, 84, 89, 87, 87, 81, 87, 88, 81, 83, 86, 86, 85, 84, 81, 86, 86, 80, 83, 85, 88, 85, 76, 91, 91, 82, 79, 84, 84, 90, 77, 87, 81, 82, 85, 86, 89, 86, 84, 86, 80, 83, 82, 80], ![88, 84, 82, 84, 83, 86, 84, 79, 86, 83, 80, 81, 88, 81, 88, 84, 83, 86, 80, 84, 81, 86, 85, 88, 87, 87, 82, 77, 86, 93, 80, 86, 87, 87, 82, 89, 80, 85, 82, 80, 87, 87, 84, 79, 79, 91, 85, 81, 89], ![82, 82, 87, 89, 86, 93, 88, 81, 89, 84, 82, 86, 88, 84, 85, 83, 79, 87, 80, 81, 90, 83, 89, 80, 85, 86, 82, 81, 86, 92, 84, 85, 77, 85, 88, 80, 85, 84, 92, 87, 85, 86, 87, 84, 83, 84, 83, 80, 83], ![85, 91, 84, 87, 80, 85, 84, 83, 83, 85, 83, 89, 84, 85, 88, 82, 85, 85, 88, 84, 81, 82, 88, 86, 82, 86, 84, 88, 83, 78, 87, 83, 80, 87, 82, 78, 86, 86, 80, 83, 82, 86, 90, 83, 87, 89, 89, 83, 89], ![78, 87, 86, 83, 88, 81, 84, 90, 83, 82, 88, 81, 80, 86, 79, 84, 87, 87, 90, 85, 84, 86, 84, 79, 87, 88, 81, 88, 80, 81, 86, 84, 79, 87, 88, 86, 87, 90, 91, 83, 91, 82, 84, 88, 81, 81, 82, 87, 85], ![90, 89, 92, 79, 81, 84, 85, 87, 83, 81, 93, 87, 77, 88, 89, 86, 88, 81, 89, 84, 79, 79, 89, 82, 86, 83, 83, 83, 76, 79, 88, 81, 88, 85, 81, 90, 86, 82, 84, 85, 83, 88, 82, 83, 88, 84, 87, 85, 84]]

def envelope0033FibreMax : Fin 9 -> Nat :=
  ![93, 91, 93, 91, 93, 93, 91, 91, 93]

theorem envelope0033 : TailR263EvenOneDiagonalRange 5894522 5923994 := by
  intro N hLower hStop
  have hNUpper : N <= 5923993 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5923993 (envelope0033BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5923993 (envelope0033CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5923993 (envelope0033FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5923993) (count := 149058) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0033BaseCounts, envelope0033CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0033FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0033FibreCounts, envelope0033FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0033FibreMax cell) <=
          ∑ cell : Fin 9, envelope0033FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0033FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0033BaseCounts, envelope0033FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0034BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 93617
  | .evenTwoCell residue => ![2088, 2083, 2083, 2076, 2084, 2069, 2084, 2088, 2081] residue

def envelope0034CellCounts : Fin 9 -> Nat :=
  ![4154, 4155, 4161, 4161, 4145, 4170, 4167, 4172, 4169]

def envelope0034FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![85, 81, 79, 85, 84, 84, 85, 87, 85, 91, 81, 83, 85, 84, 81, 88, 82, 86, 83, 89, 87, 83, 81, 90, 83, 84, 84, 86, 79, 83, 84, 85, 87, 88, 83, 87, 86, 81, 86, 93, 81, 85, 80, 91, 88, 82, 79, 93, 87], ![78, 90, 87, 81, 86, 83, 88, 90, 79, 82, 85, 91, 83, 86, 83, 91, 86, 78, 80, 80, 90, 85, 80, 88, 87, 85, 85, 90, 86, 88, 90, 85, 88, 82, 80, 84, 84, 87, 88, 83, 87, 84, 83, 80, 85, 85, 81, 86, 82], ![90, 79, 83, 91, 84, 85, 82, 86, 88, 84, 81, 80, 85, 88, 85, 82, 85, 88, 87, 88, 83, 89, 81, 83, 84, 80, 86, 89, 83, 86, 81, 79, 87, 85, 82, 86, 94, 88, 83, 83, 84, 81, 87, 87, 88, 84, 84, 88, 85], ![87, 88, 81, 90, 90, 81, 84, 89, 87, 87, 81, 87, 88, 81, 83, 86, 86, 85, 85, 82, 87, 87, 81, 83, 85, 88, 85, 77, 91, 93, 83, 79, 84, 84, 90, 79, 87, 83, 82, 85, 86, 89, 86, 85, 86, 80, 83, 85, 80], ![89, 84, 82, 84, 83, 87, 84, 79, 86, 85, 80, 82, 88, 81, 88, 84, 83, 86, 80, 85, 81, 86, 85, 88, 88, 88, 83, 78, 87, 93, 80, 86, 88, 88, 84, 90, 80, 85, 82, 80, 87, 88, 85, 79, 80, 91, 85, 81, 89], ![83, 82, 88, 89, 86, 93, 88, 82, 89, 85, 82, 86, 88, 84, 85, 85, 79, 89, 81, 82, 90, 83, 89, 81, 85, 87, 82, 81, 86, 92, 84, 86, 77, 86, 88, 82, 85, 84, 92, 87, 85, 86, 88, 84, 83, 84, 83, 80, 84], ![85, 91, 85, 88, 80, 85, 84, 84, 83, 86, 84, 89, 84, 86, 88, 83, 85, 85, 88, 84, 81, 83, 88, 86, 83, 86, 85, 88, 83, 78, 87, 83, 81, 87, 82, 78, 87, 86, 81, 83, 84, 86, 91, 83, 87, 90, 90, 83, 90], ![79, 87, 86, 84, 88, 82, 84, 90, 84, 82, 89, 82, 80, 86, 79, 85, 87, 88, 91, 86, 84, 86, 85, 79, 87, 88, 81, 89, 81, 81, 87, 85, 81, 88, 88, 86, 88, 90, 92, 83, 91, 82, 84, 88, 82, 81, 83, 88, 85], ![90, 89, 92, 79, 81, 84, 86, 87, 84, 81, 93, 87, 78, 90, 89, 86, 88, 81, 90, 84, 80, 79, 90, 82, 88, 84, 84, 83, 77, 79, 88, 81, 89, 85, 82, 90, 87, 82, 86, 86, 84, 88, 84, 83, 89, 84, 87, 85, 84]]

def envelope0034FibreMax : Fin 9 -> Nat :=
  ![93, 91, 94, 93, 93, 93, 91, 92, 93]

theorem envelope0034 : TailR263EvenOneDiagonalRange 5923994 5953613 := by
  intro N hLower hStop
  have hNUpper : N <= 5953612 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5953612 (envelope0034BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5953612 (envelope0034CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5953612 (envelope0034FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5953612) (count := 149807) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0034BaseCounts, envelope0034CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0034FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0034FibreCounts, envelope0034FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0034FibreMax cell) <=
          ∑ cell : Fin 9, envelope0034FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0034FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0034BaseCounts, envelope0034FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0035BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 94093
  | .evenTwoCell residue => ![2099, 2092, 2092, 2086, 2097, 2080, 2096, 2097, 2091] residue

def envelope0035CellCounts : Fin 9 -> Nat :=
  ![4177, 4173, 4181, 4178, 4168, 4189, 4188, 4192, 4189]

def envelope0035FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![85, 82, 79, 86, 84, 84, 85, 88, 85, 92, 81, 83, 86, 84, 82, 89, 82, 87, 84, 89, 87, 83, 81, 91, 83, 85, 84, 86, 80, 83, 85, 86, 87, 88, 83, 87, 86, 81, 86, 93, 82, 85, 82, 94, 88, 83, 79, 94, 88], ![78, 90, 87, 82, 86, 85, 88, 91, 79, 82, 85, 91, 83, 87, 83, 92, 86, 78, 80, 81, 90, 86, 81, 88, 89, 85, 85, 90, 86, 88, 91, 86, 89, 82, 80, 84, 84, 87, 89, 83, 87, 84, 83, 81, 85, 85, 82, 86, 83], ![90, 79, 83, 92, 84, 86, 83, 86, 88, 84, 82, 82, 87, 88, 85, 82, 85, 88, 87, 88, 84, 89, 82, 83, 84, 80, 87, 89, 84, 86, 82, 79, 87, 85, 83, 87, 95, 88, 84, 83, 84, 81, 87, 88, 88, 85, 85, 88, 85], ![87, 89, 81, 91, 90, 82, 84, 89, 87, 87, 82, 87, 89, 81, 83, 86, 86, 86, 86, 83, 88, 87, 81, 83, 85, 88, 86, 77, 92, 93, 83, 79, 84, 84, 91, 79, 90, 83, 82, 85, 86, 90, 87, 85, 86, 80, 83, 85, 80], ![89, 84, 84, 84, 83, 87, 84, 79, 88, 86, 82, 83, 88, 81, 88, 84, 84, 86, 81, 86, 81, 86, 85, 88, 89, 89, 84, 79, 89, 93, 81, 86, 89, 88, 84, 90, 80, 85, 82, 80, 87, 89, 85, 81, 81, 91, 85, 81, 89], ![84, 82, 88, 89, 86, 93, 89, 82, 90, 85, 82, 86, 89, 84, 86, 85, 81, 89, 82, 83, 91, 83, 90, 81, 85, 87, 82, 81, 86, 92, 84, 86, 78, 87, 89, 82, 85, 84, 92, 88, 85, 88, 88, 84, 83, 84, 83, 81, 85], ![86, 91, 85, 89, 81, 85, 85, 84, 83, 86, 84, 89, 85, 86, 88, 83, 85, 85, 88, 84, 81, 83, 88, 88, 83, 87, 85, 89, 83, 79, 87, 85, 81, 87, 82, 79, 87, 87, 81, 85, 84, 87, 91, 84, 88, 92, 90, 83, 90], ![79, 87, 86, 84, 88, 82, 84, 90, 84, 82, 89, 82, 80, 87, 81, 85, 88, 88, 91, 87, 85, 87, 85, 79, 88, 88, 82, 90, 81, 82, 88, 85, 82, 88, 88, 87, 88, 91, 92, 83, 91, 82, 85, 89, 82, 82, 84, 88, 86], ![90, 90, 92, 80, 81, 85, 86, 90, 84, 82, 93, 88, 78, 91, 89, 86, 88, 82, 90, 85, 80, 80, 90, 83, 88, 85, 84, 84, 77, 79, 88, 82, 89, 86, 82, 90, 87, 83, 86, 87, 84, 88, 84, 83, 89, 84, 87, 85, 85]]

def envelope0035FibreMax : Fin 9 -> Nat :=
  ![94, 92, 95, 93, 93, 93, 92, 92, 93]

theorem envelope0035 : TailR263EvenOneDiagonalRange 5953613 5983381 := by
  intro N hLower hStop
  have hNUpper : N <= 5983380 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5983380 (envelope0035BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5983380 (envelope0035CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5983380 (envelope0035FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5983380) (count := 150558) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0035BaseCounts, envelope0035CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0035FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0035FibreCounts, envelope0035FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0035FibreMax cell) <=
          ∑ cell : Fin 9, envelope0035FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0035FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0035BaseCounts, envelope0035FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0036BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 94561
  | .evenTwoCell residue => ![2108, 2102, 2104, 2098, 2108, 2090, 2104, 2109, 2101] residue

def envelope0036CellCounts : Fin 9 -> Nat :=
  ![4203, 4197, 4200, 4203, 4187, 4210, 4206, 4209, 4208]

def envelope0036FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 79, 86, 84, 84, 86, 88, 86, 92, 81, 84, 87, 86, 84, 90, 83, 87, 85, 89, 87, 83, 81, 91, 83, 86, 84, 87, 80, 84, 85, 87, 88, 89, 83, 87, 87, 83, 86, 93, 82, 86, 82, 94, 89, 84, 80, 95, 88], ![78, 90, 88, 82, 88, 85, 89, 91, 80, 82, 85, 91, 83, 87, 83, 92, 88, 78, 83, 81, 91, 87, 81, 89, 89, 85, 86, 90, 86, 89, 91, 87, 89, 82, 80, 85, 84, 90, 89, 84, 87, 84, 83, 81, 85, 86, 82, 88, 83], ![90, 79, 83, 92, 84, 88, 83, 86, 88, 86, 82, 85, 87, 89, 85, 82, 85, 88, 87, 89, 84, 90, 83, 83, 84, 80, 87, 90, 84, 87, 82, 79, 87, 85, 83, 89, 95, 89, 84, 83, 84, 81, 88, 89, 89, 85, 85, 88, 85], ![88, 90, 82, 93, 91, 82, 84, 89, 87, 88, 82, 88, 89, 81, 83, 86, 88, 87, 86, 84, 90, 87, 81, 83, 85, 89, 86, 78, 92, 93, 83, 79, 84, 86, 91, 82, 90, 83, 82, 85, 86, 90, 87, 86, 87, 81, 83, 85, 81], ![89, 86, 84, 84, 83, 87, 84, 82, 88, 88, 82, 83, 88, 81, 88, 85, 84, 87, 81, 86, 81, 86, 87, 90, 89, 89, 85, 79, 89, 93, 81, 86, 89, 88, 85, 90, 80, 85, 82, 80, 89, 89, 86, 81, 81, 91, 85, 81, 90], ![85, 82, 88, 91, 86, 95, 89, 83, 90, 85, 82, 86, 89, 85, 86, 86, 81, 90, 82, 83, 91, 83, 90, 81, 86, 88, 82, 81, 86, 92, 86, 87, 79, 89, 89, 82, 85, 84, 93, 88, 86, 88, 88, 84, 83, 84, 83, 82, 86], ![86, 92, 85, 89, 81, 85, 86, 84, 84, 86, 84, 89, 85, 86, 89, 83, 85, 85, 88, 85, 82, 83, 90, 88, 84, 88, 85, 89, 84, 79, 87, 85, 81, 88, 82, 79, 88, 87, 82, 87, 84, 87, 91, 84, 89, 92, 91, 83, 90], ![79, 87, 86, 84, 89, 82, 84, 90, 85, 82, 90, 82, 81, 88, 81, 86, 88, 88, 92, 87, 87, 87, 85, 79, 88, 88, 83, 90, 82, 83, 88, 87, 82, 88, 88, 88, 89, 91, 92, 83, 91, 82, 85, 89, 82, 83, 84, 88, 86], ![91, 92, 93, 80, 82, 85, 87, 90, 85, 82, 94, 88, 78, 91, 89, 86, 89, 82, 91, 85, 81, 80, 91, 83, 89, 86, 85, 84, 77, 79, 88, 82, 90, 86, 82, 90, 87, 83, 87, 87, 84, 89, 84, 84, 89, 84, 87, 85, 85]]

def envelope0036FibreMax : Fin 9 -> Nat :=
  ![95, 92, 95, 93, 93, 95, 92, 92, 94]

theorem envelope0036 : TailR263EvenOneDiagonalRange 5983381 6013297 := by
  intro N hLower hStop
  have hNUpper : N <= 6013296 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6013296 (envelope0036BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6013296 (envelope0036CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6013296 (envelope0036FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6013296) (count := 151308) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0036BaseCounts, envelope0036CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0036FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0036FibreCounts, envelope0036FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0036FibreMax cell) <=
          ∑ cell : Fin 9, envelope0036FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0036FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0036BaseCounts, envelope0036FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0037BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 95025
  | .evenTwoCell residue => ![2121, 2110, 2115, 2109, 2116, 2101, 2118, 2119, 2116] residue

def envelope0037CellCounts : Fin 9 -> Nat :=
  ![4224, 4217, 4221, 4222, 4210, 4232, 4227, 4233, 4229]

def envelope0037FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 79, 86, 84, 85, 86, 89, 86, 92, 82, 84, 88, 87, 84, 90, 83, 87, 85, 89, 87, 83, 82, 91, 84, 86, 84, 87, 81, 84, 86, 89, 89, 89, 83, 87, 87, 83, 87, 93, 84, 86, 82, 95, 89, 85, 83, 95, 89], ![78, 91, 88, 83, 88, 85, 89, 91, 80, 82, 85, 91, 87, 87, 84, 92, 88, 79, 83, 82, 93, 88, 82, 89, 89, 85, 86, 91, 87, 89, 92, 87, 89, 82, 81, 85, 85, 90, 90, 84, 87, 84, 83, 81, 86, 86, 82, 88, 83], ![90, 79, 85, 92, 85, 88, 83, 86, 89, 86, 84, 85, 88, 89, 85, 82, 86, 88, 88, 89, 84, 90, 83, 83, 84, 81, 88, 91, 85, 87, 82, 79, 87, 85, 84, 89, 95, 89, 84, 83, 85, 82, 88, 90, 90, 86, 85, 88, 87], ![89, 91, 83, 93, 91, 82, 84, 89, 88, 88, 84, 88, 89, 81, 83, 87, 89, 87, 87, 84, 90, 88, 81, 83, 85, 89, 87, 78, 92, 95, 83, 79, 85, 86, 92, 83, 90, 83, 82, 85, 86, 91, 87, 87, 87, 81, 83, 85, 82], ![90, 86, 84, 85, 83, 87, 86, 82, 89, 88, 83, 84, 89, 81, 89, 85, 86, 87, 81, 86, 81, 86, 87, 91, 89, 90, 85, 79, 89, 93, 81, 87, 89, 89, 86, 90, 82, 85, 82, 82, 89, 91, 86, 81, 81, 91, 85, 82, 90], ![85, 82, 88, 91, 86, 95, 89, 83, 90, 86, 83, 86, 89, 85, 86, 87, 82, 90, 82, 83, 91, 85, 90, 82, 86, 88, 82, 81, 86, 92, 87, 89, 81, 89, 89, 82, 85, 85, 94, 89, 86, 88, 88, 84, 83, 86, 86, 83, 87], ![86, 92, 85, 90, 82, 87, 86, 85, 84, 86, 84, 90, 85, 87, 89, 83, 85, 85, 88, 86, 82, 85, 90, 89, 84, 88, 85, 90, 84, 80, 87, 85, 82, 90, 82, 80, 88, 89, 82, 89, 84, 87, 91, 84, 89, 92, 91, 83, 90], ![79, 88, 86, 85, 89, 83, 84, 90, 85, 83, 90, 83, 82, 88, 85, 87, 88, 89, 92, 88, 88, 87, 86, 79, 89, 89, 83, 90, 83, 83, 88, 87, 82, 88, 88, 88, 90, 91, 92, 83, 91, 82, 86, 90, 83, 83, 84, 90, 86], ![91, 93, 93, 82, 82, 86, 87, 91, 85, 83, 94, 88, 78, 91, 89, 87, 89, 83, 91, 86, 81, 81, 92, 83, 89, 86, 86, 84, 77, 79, 88, 82, 91, 86, 83, 91, 87, 84, 87, 87, 85, 89, 85, 84, 91, 84, 87, 85, 86]]

def envelope0037FibreMax : Fin 9 -> Nat :=
  ![95, 93, 95, 95, 93, 95, 92, 92, 94]

theorem envelope0037 : TailR263EvenOneDiagonalRange 6013297 6043363 := by
  intro N hLower hStop
  have hNUpper : N <= 6043362 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6043362 (envelope0037BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6043362 (envelope0037CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6043362 (envelope0037FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6043362) (count := 152065) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0037BaseCounts, envelope0037CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0037FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0037FibreCounts, envelope0037FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0037FibreMax cell) <=
          ∑ cell : Fin 9, envelope0037FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0037FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0037BaseCounts, envelope0037FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0038BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 95503
  | .evenTwoCell residue => ![2129, 2118, 2124, 2120, 2130, 2114, 2128, 2131, 2123] residue

def envelope0038CellCounts : Fin 9 -> Nat :=
  ![4244, 4236, 4245, 4245, 4228, 4253, 4248, 4256, 4250]

def envelope0038FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 79, 87, 84, 85, 86, 89, 86, 93, 82, 85, 88, 88, 84, 90, 84, 88, 85, 90, 87, 84, 82, 92, 84, 87, 84, 88, 81, 85, 86, 90, 89, 89, 83, 87, 87, 85, 87, 94, 84, 86, 83, 95, 90, 86, 83, 96, 89], ![80, 91, 89, 84, 88, 86, 91, 91, 80, 82, 85, 92, 87, 88, 84, 92, 88, 79, 84, 82, 93, 89, 82, 89, 89, 85, 86, 93, 87, 90, 92, 87, 89, 83, 81, 87, 85, 90, 90, 84, 87, 84, 83, 81, 86, 86, 83, 88, 84], ![90, 80, 85, 93, 85, 89, 84, 87, 89, 88, 85, 86, 88, 89, 85, 82, 86, 89, 88, 90, 84, 90, 84, 84, 85, 82, 89, 91, 85, 87, 82, 79, 87, 85, 84, 90, 96, 89, 85, 83, 86, 82, 91, 90, 91, 86, 85, 88, 87], ![91, 92, 83, 93, 91, 82, 84, 90, 88, 89, 84, 88, 90, 81, 83, 88, 90, 88, 87, 84, 91, 89, 81, 85, 85, 89, 88, 78, 92, 95, 83, 80, 86, 87, 93, 83, 90, 83, 82, 85, 87, 91, 89, 87, 87, 81, 83, 86, 83], ![90, 86, 84, 85, 83, 89, 86, 83, 90, 88, 85, 84, 89, 81, 89, 85, 87, 87, 81, 86, 81, 86, 89, 91, 90, 90, 85, 79, 89, 93, 82, 87, 90, 89, 86, 90, 82, 85, 83, 82, 92, 91, 86, 81, 81, 91, 86, 82, 91], ![85, 82, 88, 91, 87, 95, 90, 83, 91, 86, 84, 86, 90, 86, 87, 88, 82, 90, 82, 83, 92, 85, 90, 82, 87, 88, 82, 81, 87, 93, 88, 90, 81, 89, 89, 82, 86, 85, 95, 90, 88, 88, 88, 84, 83, 87, 86, 83, 88], ![86, 92, 86, 91, 83, 87, 87, 86, 84, 86, 85, 90, 86, 87, 89, 83, 85, 85, 89, 86, 84, 85, 91, 90, 84, 88, 85, 92, 85, 80, 87, 85, 82, 90, 82, 80, 89, 90, 83, 90, 84, 87, 91, 85, 89, 93, 91, 83, 90], ![80, 88, 87, 85, 90, 83, 84, 91, 88, 83, 90, 85, 82, 89, 85, 87, 89, 89, 93, 88, 89, 87, 86, 79, 89, 89, 83, 91, 83, 84, 88, 87, 82, 89, 88, 90, 90, 91, 92, 83, 91, 83, 86, 91, 84, 83, 85, 91, 86], ![92, 93, 94, 82, 83, 87, 88, 91, 86, 83, 95, 88, 78, 91, 89, 87, 89, 83, 92, 86, 81, 81, 92, 84, 89, 87, 87, 85, 78, 79, 89, 82, 91, 87, 84, 91, 87, 84, 89, 88, 85, 90, 85, 84, 91, 84, 87, 86, 86]]

def envelope0038FibreMax : Fin 9 -> Nat :=
  ![96, 93, 96, 95, 93, 95, 93, 93, 95]

theorem envelope0038 : TailR263EvenOneDiagonalRange 6043363 6073579 := by
  intro N hLower hStop
  have hNUpper : N <= 6073578 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6073578 (envelope0038BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6073578 (envelope0038CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6073578 (envelope0038FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6073578) (count := 152825) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0038BaseCounts, envelope0038CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0038FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0038FibreCounts, envelope0038FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0038FibreMax cell) <=
          ∑ cell : Fin 9, envelope0038FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0038FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0038BaseCounts, envelope0038FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0039BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 95988
  | .evenTwoCell residue => ![2140, 2129, 2136, 2130, 2143, 2121, 2137, 2141, 2137] residue

def envelope0039CellCounts : Fin 9 -> Nat :=
  ![4263, 4258, 4267, 4266, 4248, 4275, 4273, 4277, 4270]

def envelope0039FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 79, 87, 85, 85, 87, 89, 87, 93, 82, 85, 89, 88, 85, 90, 84, 88, 85, 92, 88, 84, 83, 92, 85, 87, 85, 88, 82, 85, 87, 90, 89, 89, 83, 87, 89, 85, 88, 94, 84, 87, 84, 96, 90, 86, 83, 96, 89], ![82, 92, 90, 85, 89, 86, 91, 91, 81, 82, 86, 92, 87, 88, 84, 93, 88, 81, 85, 82, 94, 89, 82, 89, 89, 85, 87, 93, 87, 90, 92, 87, 91, 84, 82, 87, 85, 91, 90, 84, 87, 84, 83, 82, 86, 87, 83, 88, 85], ![91, 80, 86, 93, 85, 89, 84, 87, 91, 88, 86, 86, 88, 89, 85, 82, 86, 89, 88, 90, 84, 90, 84, 86, 85, 84, 89, 92, 85, 87, 83, 80, 87, 86, 84, 91, 98, 89, 85, 84, 87, 85, 91, 91, 91, 86, 85, 88, 87], ![93, 92, 83, 93, 91, 82, 85, 90, 88, 89, 84, 88, 90, 81, 84, 88, 91, 90, 87, 84, 91, 89, 81, 86, 85, 90, 88, 78, 92, 95, 84, 81, 87, 88, 93, 83, 90, 83, 83, 86, 87, 92, 89, 88, 87, 82, 84, 87, 84], ![91, 86, 84, 85, 86, 89, 87, 84, 90, 88, 85, 84, 89, 82, 89, 86, 87, 87, 81, 86, 81, 87, 89, 93, 91, 90, 85, 79, 89, 94, 82, 88, 91, 89, 86, 90, 82, 87, 83, 84, 92, 91, 86, 81, 81, 92, 86, 82, 91], ![85, 82, 88, 92, 87, 96, 90, 83, 91, 86, 84, 87, 91, 87, 88, 88, 82, 90, 83, 84, 92, 86, 91, 82, 87, 88, 82, 82, 88, 94, 89, 90, 81, 89, 91, 82, 86, 85, 95, 90, 88, 88, 88, 85, 86, 87, 88, 83, 88], ![86, 93, 86, 93, 83, 89, 87, 86, 84, 86, 85, 91, 86, 88, 89, 83, 85, 86, 89, 88, 84, 88, 91, 90, 85, 89, 85, 92, 85, 81, 87, 85, 82, 91, 83, 82, 90, 90, 84, 90, 84, 87, 92, 85, 90, 94, 91, 83, 90], ![80, 90, 89, 85, 90, 83, 84, 92, 88, 84, 91, 85, 83, 89, 85, 87, 90, 89, 93, 88, 89, 87, 86, 79, 90, 89, 85, 91, 84, 84, 88, 87, 83, 89, 89, 90, 90, 92, 92, 83, 92, 83, 87, 91, 85, 84, 85, 91, 87], ![92, 94, 95, 83, 83, 87, 88, 91, 86, 83, 95, 88, 79, 91, 89, 87, 90, 84, 92, 87, 81, 81, 93, 84, 91, 87, 87, 85, 78, 79, 90, 82, 94, 87, 84, 91, 88, 85, 90, 88, 86, 90, 85, 84, 91, 84, 88, 86, 87]]

def envelope0039FibreMax : Fin 9 -> Nat :=
  ![96, 94, 98, 95, 94, 96, 94, 93, 95]

theorem envelope0039 : TailR263EvenOneDiagonalRange 6073579 6103946 := by
  intro N hLower hStop
  have hNUpper : N <= 6103945 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6103945 (envelope0039BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6103945 (envelope0039CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6103945 (envelope0039FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6103945) (count := 153599) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0039BaseCounts, envelope0039CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0039FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0039FibreCounts, envelope0039FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0039FibreMax cell) <=
          ∑ cell : Fin 9, envelope0039FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0039FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0039BaseCounts, envelope0039FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0040BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 96459
  | .evenTwoCell residue => ![2153, 2139, 2147, 2142, 2154, 2134, 2146, 2154, 2147] residue

def envelope0040CellCounts : Fin 9 -> Nat :=
  ![4285, 4279, 4288, 4289, 4269, 4299, 4294, 4294, 4292]

def envelope0040FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 79, 88, 85, 86, 87, 90, 87, 94, 83, 85, 89, 91, 85, 90, 84, 89, 85, 93, 88, 85, 83, 92, 85, 88, 86, 89, 82, 86, 87, 90, 89, 90, 84, 87, 89, 85, 89, 94, 85, 87, 85, 96, 91, 86, 84, 96, 89], ![82, 94, 90, 86, 90, 86, 91, 91, 81, 83, 86, 93, 87, 88, 85, 93, 89, 82, 85, 82, 94, 89, 82, 89, 89, 86, 87, 93, 89, 90, 92, 88, 91, 85, 83, 87, 86, 91, 90, 84, 87, 84, 84, 84, 86, 87, 83, 89, 86], ![91, 82, 86, 93, 85, 90, 84, 89, 91, 88, 86, 88, 88, 89, 85, 82, 86, 89, 89, 90, 84, 90, 85, 86, 86, 84, 90, 92, 85, 87, 85, 81, 88, 86, 85, 91, 98, 89, 86, 85, 89, 85, 92, 91, 91, 86, 85, 88, 87], ![93, 93, 83, 93, 91, 82, 86, 90, 89, 90, 84, 90, 90, 82, 85, 89, 92, 90, 87, 84, 91, 89, 83, 86, 87, 90, 88, 78, 92, 96, 85, 82, 88, 88, 93, 83, 90, 83, 84, 86, 88, 92, 89, 88, 87, 82, 85, 88, 85], ![91, 86, 84, 86, 86, 89, 88, 84, 90, 88, 85, 84, 90, 83, 91, 86, 87, 87, 81, 86, 83, 87, 91, 93, 91, 90, 86, 79, 90, 94, 84, 88, 91, 89, 86, 90, 84, 87, 84, 84, 92, 91, 86, 81, 81, 92, 86, 85, 92], ![85, 82, 89, 92, 88, 96, 90, 83, 91, 87, 85, 88, 92, 88, 88, 88, 82, 91, 84, 86, 93, 86, 91, 82, 87, 88, 83, 83, 90, 95, 89, 90, 81, 89, 91, 83, 86, 86, 96, 90, 88, 88, 88, 87, 86, 89, 88, 83, 88], ![87, 93, 87, 93, 84, 89, 87, 86, 85, 87, 86, 91, 86, 89, 89, 85, 85, 86, 90, 89, 85, 88, 91, 90, 85, 90, 85, 93, 86, 81, 87, 85, 82, 92, 84, 83, 91, 90, 84, 90, 84, 88, 92, 86, 90, 94, 91, 83, 90], ![81, 90, 89, 85, 90, 83, 84, 92, 88, 85, 91, 86, 83, 89, 85, 88, 90, 90, 93, 88, 89, 87, 86, 80, 90, 91, 85, 91, 84, 84, 88, 88, 83, 90, 89, 90, 90, 92, 92, 84, 92, 84, 88, 91, 86, 86, 85, 92, 87], ![93, 94, 96, 83, 83, 88, 89, 91, 86, 83, 95, 88, 79, 92, 90, 88, 91, 84, 94, 87, 81, 83, 93, 85, 91, 87, 89, 86, 78, 80, 91, 83, 94, 87, 84, 92, 88, 86, 90, 88, 86, 90, 85, 85, 91, 84, 88, 86, 87]]

def envelope0040FibreMax : Fin 9 -> Nat :=
  ![96, 94, 98, 96, 94, 96, 94, 93, 96]

theorem envelope0040 : TailR263EvenOneDiagonalRange 6103946 6134465 := by
  intro N hLower hStop
  have hNUpper : N <= 6134464 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6134464 (envelope0040BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6134464 (envelope0040CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6134464 (envelope0040FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6134464) (count := 154364) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0040BaseCounts, envelope0040CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0040FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0040FibreCounts, envelope0040FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0040FibreMax cell) <=
          ∑ cell : Fin 9, envelope0040FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0040FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0040BaseCounts, envelope0040FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0041BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 96932
  | .evenTwoCell residue => ![2163, 2153, 2158, 2154, 2162, 2143, 2158, 2163, 2158] residue

def envelope0041CellCounts : Fin 9 -> Nat :=
  ![4306, 4300, 4306, 4315, 4290, 4322, 4314, 4317, 4313]

def envelope0041FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![86, 82, 80, 88, 86, 86, 88, 92, 88, 94, 84, 85, 90, 91, 85, 90, 84, 89, 86, 93, 89, 85, 84, 92, 86, 88, 86, 90, 83, 86, 87, 90, 90, 90, 84, 88, 89, 86, 90, 95, 85, 88, 85, 96, 91, 87, 84, 96, 89], ![83, 94, 91, 86, 90, 86, 91, 92, 82, 83, 86, 93, 87, 88, 85, 94, 90, 82, 85, 83, 94, 89, 82, 89, 89, 87, 87, 94, 89, 90, 93, 88, 92, 86, 83, 88, 86, 93, 90, 84, 88, 86, 84, 85, 86, 87, 84, 89, 87], ![91, 82, 86, 93, 86, 90, 85, 89, 91, 89, 87, 88, 88, 89, 85, 84, 86, 90, 89, 90, 84, 91, 85, 88, 87, 85, 90, 92, 85, 87, 85, 82, 88, 87, 86, 91, 98, 90, 86, 86, 89, 85, 92, 91, 91, 86, 85, 89, 87], ![93, 93, 83, 93, 91, 85, 86, 91, 89, 90, 84, 91, 91, 83, 86, 90, 92, 90, 87, 85, 91, 91, 83, 87, 87, 90, 88, 79, 93, 98, 87, 83, 88, 88, 93, 83, 90, 84, 84, 86, 88, 92, 89, 88, 88, 84, 86, 88, 86], ![92, 86, 85, 87, 86, 91, 88, 84, 90, 88, 85, 86, 91, 84, 91, 86, 87, 87, 81, 88, 84, 89, 91, 93, 91, 90, 86, 80, 90, 94, 84, 88, 92, 90, 86, 90, 84, 88, 85, 84, 92, 91, 86, 81, 82, 92, 87, 85, 92], ![85, 82, 89, 93, 88, 96, 90, 83, 91, 88, 86, 89, 93, 88, 88, 88, 82, 92, 86, 86, 93, 86, 93, 83, 87, 88, 85, 83, 92, 95, 89, 90, 81, 89, 92, 83, 87, 86, 96, 90, 88, 88, 90, 87, 90, 89, 88, 83, 88], ![87, 95, 87, 95, 84, 89, 88, 86, 85, 88, 86, 91, 86, 89, 89, 85, 86, 87, 91, 90, 85, 88, 91, 90, 87, 90, 86, 93, 86, 81, 87, 85, 83, 93, 85, 84, 91, 90, 84, 90, 85, 88, 93, 86, 90, 94, 91, 83, 91], ![81, 90, 89, 85, 90, 83, 84, 92, 90, 85, 92, 86, 84, 89, 86, 88, 91, 91, 94, 88, 89, 87, 87, 80, 92, 91, 87, 92, 84, 84, 89, 88, 84, 90, 89, 90, 90, 92, 92, 86, 93, 85, 88, 92, 87, 87, 85, 92, 87], ![93, 95, 98, 83, 84, 88, 90, 91, 87, 83, 95, 88, 80, 92, 91, 90, 91, 84, 94, 87, 84, 83, 94, 85, 91, 87, 89, 86, 79, 80, 92, 83, 95, 87, 85, 92, 88, 86, 90, 88, 86, 90, 85, 85, 91, 85, 88, 87, 88]]

def envelope0041FibreMax : Fin 9 -> Nat :=
  ![96, 94, 98, 98, 94, 96, 95, 94, 98]

theorem envelope0041 : TailR263EvenOneDiagonalRange 6134465 6165137 := by
  intro N hLower hStop
  have hNUpper : N <= 6165136 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6165136 (envelope0041BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6165136 (envelope0041CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6165136 (envelope0041FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6165136) (count := 155127) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0041BaseCounts, envelope0041CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0041FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0041FibreCounts, envelope0041FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0041FibreMax cell) <=
          ∑ cell : Fin 9, envelope0041FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0041FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0041BaseCounts, envelope0041FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0042BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 97428
  | .evenTwoCell residue => ![2172, 2162, 2169, 2165, 2173, 2156, 2169, 2175, 2166] residue

def envelope0042CellCounts : Fin 9 -> Nat :=
  ![4328, 4322, 4327, 4333, 4311, 4342, 4336, 4339, 4337]

def envelope0042FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![87, 85, 80, 89, 86, 87, 88, 92, 88, 95, 84, 86, 90, 91, 86, 90, 85, 89, 87, 94, 89, 86, 85, 92, 86, 88, 87, 90, 84, 86, 87, 90, 90, 90, 85, 88, 89, 86, 91, 96, 86, 88, 86, 96, 92, 87, 84, 96, 89], ![83, 97, 91, 86, 90, 86, 91, 92, 82, 83, 87, 93, 88, 88, 86, 94, 91, 82, 86, 83, 94, 89, 82, 89, 90, 87, 88, 94, 89, 92, 93, 91, 93, 86, 84, 88, 86, 93, 90, 84, 88, 86, 85, 85, 86, 88, 85, 90, 88], ![92, 82, 86, 93, 86, 91, 86, 89, 92, 89, 87, 88, 89, 89, 86, 84, 87, 90, 91, 90, 85, 92, 87, 88, 87, 85, 90, 92, 85, 87, 86, 82, 89, 87, 86, 91, 100, 90, 88, 86, 90, 85, 92, 91, 91, 86, 85, 90, 87], ![93, 93, 84, 93, 92, 85, 87, 91, 89, 90, 84, 92, 92, 85, 87, 90, 92, 90, 87, 85, 92, 91, 84, 87, 87, 90, 88, 80, 93, 99, 87, 83, 88, 88, 93, 83, 90, 84, 84, 87, 88, 92, 89, 89, 88, 85, 86, 89, 88], ![92, 86, 86, 87, 89, 92, 88, 84, 90, 88, 86, 86, 92, 84, 91, 86, 87, 88, 83, 88, 85, 89, 91, 93, 91, 90, 86, 81, 91, 94, 84, 88, 92, 90, 87, 92, 85, 89, 85, 84, 92, 91, 86, 82, 82, 93, 87, 85, 93], ![86, 82, 90, 93, 88, 96, 90, 83, 92, 89, 86, 90, 93, 88, 89, 88, 84, 92, 86, 87, 93, 86, 93, 83, 87, 89, 85, 85, 93, 95, 89, 90, 81, 89, 93, 84, 87, 86, 96, 90, 88, 90, 90, 89, 90, 89, 89, 83, 88], ![88, 95, 88, 97, 84, 89, 89, 87, 85, 89, 86, 91, 86, 89, 89, 86, 87, 88, 92, 90, 85, 88, 91, 91, 87, 91, 86, 93, 86, 81, 88, 87, 84, 94, 86, 84, 91, 90, 84, 91, 85, 89, 93, 86, 90, 94, 92, 83, 91], ![81, 90, 89, 85, 90, 84, 84, 94, 90, 86, 93, 86, 84, 90, 86, 89, 91, 92, 94, 88, 89, 88, 87, 82, 92, 92, 88, 92, 84, 85, 89, 88, 84, 93, 89, 90, 90, 92, 92, 86, 94, 86, 89, 92, 87, 87, 86, 92, 88], ![94, 95, 98, 84, 84, 89, 90, 92, 87, 83, 95, 89, 81, 93, 94, 90, 92, 84, 94, 88, 84, 84, 94, 85, 91, 87, 89, 86, 80, 81, 92, 84, 95, 88, 85, 92, 89, 86, 91, 88, 87, 91, 85, 85, 92, 85, 89, 88, 88]]

def envelope0042FibreMax : Fin 9 -> Nat :=
  ![96, 97, 100, 99, 94, 96, 97, 94, 98]

theorem envelope0042 : TailR263EvenOneDiagonalRange 6165137 6195962 := by
  intro N hLower hStop
  have hNUpper : N <= 6195961 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6195961 (envelope0042BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6195961 (envelope0042CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6195961 (envelope0042FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6195961) (count := 155910) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0042BaseCounts, envelope0042CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0042FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0042FibreCounts, envelope0042FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0042FibreMax cell) <=
          ∑ cell : Fin 9, envelope0042FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0042FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0042BaseCounts, envelope0042FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0043BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 97914
  | .evenTwoCell residue => ![2184, 2175, 2182, 2176, 2181, 2164, 2179, 2185, 2178] residue

def envelope0043CellCounts : Fin 9 -> Nat :=
  ![4349, 4340, 4351, 4355, 4333, 4366, 4356, 4362, 4357]

def envelope0043FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![88, 85, 81, 89, 87, 87, 90, 92, 88, 95, 84, 86, 90, 91, 86, 90, 85, 90, 87, 94, 90, 87, 86, 93, 86, 89, 87, 91, 84, 86, 87, 90, 90, 91, 85, 89, 89, 87, 91, 97, 87, 89, 86, 97, 94, 87, 84, 96, 89], ![83, 97, 91, 86, 90, 86, 91, 93, 82, 84, 87, 94, 88, 89, 86, 95, 91, 83, 86, 83, 94, 89, 82, 89, 90, 89, 88, 94, 90, 92, 95, 92, 93, 87, 84, 88, 86, 93, 90, 86, 88, 88, 85, 85, 87, 88, 85, 90, 88], ![92, 82, 87, 93, 87, 92, 86, 91, 92, 89, 87, 89, 92, 91, 86, 85, 87, 90, 91, 91, 85, 94, 88, 89, 87, 85, 90, 92, 85, 88, 86, 83, 89, 87, 86, 92, 100, 91, 88, 86, 91, 85, 92, 91, 91, 86, 86, 90, 88], ![93, 93, 84, 94, 92, 86, 87, 91, 89, 90, 85, 93, 93, 86, 87, 90, 92, 90, 87, 86, 92, 91, 84, 87, 87, 90, 90, 81, 94, 99, 89, 83, 88, 88, 93, 85, 91, 84, 85, 87, 88, 92, 91, 89, 90, 85, 87, 89, 88], ![92, 88, 86, 89, 89, 92, 88, 84, 90, 89, 87, 86, 92, 85, 91, 86, 87, 90, 83, 88, 86, 89, 91, 93, 91, 90, 87, 81, 92, 96, 84, 88, 92, 91, 89, 93, 87, 89, 85, 84, 92, 91, 87, 82, 83, 93, 87, 85, 93], ![86, 82, 90, 93, 88, 97, 91, 84, 93, 89, 90, 90, 93, 88, 89, 88, 85, 92, 88, 87, 93, 86, 93, 83, 90, 89, 86, 85, 93, 95, 89, 90, 82, 89, 94, 84, 87, 86, 96, 90, 90, 90, 92, 89, 90, 90, 89, 84, 89], ![89, 96, 88, 97, 84, 89, 90, 88, 86, 89, 86, 91, 86, 89, 90, 86, 88, 89, 92, 90, 85, 88, 92, 91, 88, 91, 87, 93, 86, 81, 88, 88, 85, 95, 86, 85, 91, 90, 85, 91, 85, 89, 94, 86, 90, 94, 93, 84, 92], ![81, 90, 89, 85, 91, 84, 86, 94, 91, 86, 93, 86, 85, 90, 87, 89, 91, 92, 95, 88, 90, 89, 89, 83, 93, 92, 88, 94, 84, 85, 89, 88, 84, 94, 89, 90, 90, 93, 92, 88, 94, 87, 89, 92, 87, 88, 87, 93, 88], ![94, 95, 99, 84, 85, 89, 90, 92, 88, 83, 96, 89, 82, 94, 94, 91, 92, 84, 94, 88, 84, 84, 94, 85, 91, 87, 89, 88, 80, 83, 93, 84, 96, 88, 85, 92, 89, 87, 91, 88, 87, 91, 85, 86, 92, 86, 90, 90, 89]]

def envelope0043FibreMax : Fin 9 -> Nat :=
  ![97, 97, 100, 99, 96, 97, 97, 95, 99]

theorem envelope0043 : TailR263EvenOneDiagonalRange 6195962 6226941 := by
  intro N hLower hStop
  have hNUpper : N <= 6226940 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6226940 (envelope0043BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6226940 (envelope0043CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6226940 (envelope0043FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6226940) (count := 156687) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0043BaseCounts, envelope0043CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0043FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0043FibreCounts, envelope0043FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0043FibreMax cell) <=
          ∑ cell : Fin 9, envelope0043FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0043FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0043BaseCounts, envelope0043FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0044BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 98401
  | .evenTwoCell residue => ![2194, 2183, 2192, 2187, 2195, 2174, 2192, 2198, 2188] residue

def envelope0044CellCounts : Fin 9 -> Nat :=
  ![4370, 4362, 4373, 4376, 4355, 4383, 4381, 4384, 4378]

def envelope0044FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![88, 85, 81, 90, 87, 88, 90, 92, 89, 95, 85, 86, 91, 91, 86, 90, 86, 90, 88, 96, 90, 87, 88, 93, 87, 89, 88, 91, 84, 86, 87, 90, 91, 91, 86, 89, 90, 87, 93, 97, 89, 89, 87, 97, 94, 87, 84, 96, 89], ![84, 97, 92, 86, 90, 86, 92, 93, 83, 84, 88, 94, 89, 89, 87, 96, 91, 83, 86, 85, 94, 89, 83, 90, 91, 89, 88, 95, 90, 93, 97, 92, 94, 87, 84, 88, 87, 93, 90, 86, 88, 88, 85, 86, 87, 89, 85, 91, 88], ![92, 83, 87, 94, 89, 92, 89, 91, 92, 89, 87, 89, 93, 92, 87, 86, 87, 90, 92, 91, 86, 94, 89, 89, 87, 85, 90, 92, 85, 88, 86, 83, 90, 88, 87, 92, 100, 92, 88, 87, 91, 85, 92, 91, 92, 87, 86, 91, 88], ![93, 93, 85, 95, 92, 86, 87, 91, 89, 91, 86, 94, 94, 86, 87, 90, 92, 91, 87, 87, 92, 91, 84, 87, 88, 91, 90, 83, 94, 100, 89, 83, 88, 88, 93, 86, 93, 85, 85, 87, 88, 93, 91, 91, 90, 86, 87, 89, 88], ![95, 88, 87, 90, 89, 92, 88, 84, 91, 89, 88, 87, 92, 85, 91, 86, 88, 91, 84, 89, 86, 89, 91, 95, 91, 90, 87, 82, 92, 96, 84, 88, 92, 92, 90, 94, 87, 90, 85, 84, 92, 92, 87, 84, 83, 93, 87, 85, 93], ![86, 83, 90, 93, 90, 97, 91, 86, 93, 89, 90, 90, 93, 88, 89, 89, 85, 93, 88, 87, 93, 86, 93, 85, 91, 90, 86, 85, 93, 95, 89, 91, 82, 90, 94, 84, 87, 87, 96, 91, 90, 91, 92, 89, 90, 91, 89, 84, 89], ![90, 97, 88, 98, 84, 90, 91, 89, 86, 89, 86, 91, 86, 89, 91, 88, 90, 89, 92, 90, 85, 89, 92, 92, 88, 91, 87, 93, 86, 82, 89, 88, 86, 95, 88, 86, 91, 90, 85, 91, 87, 89, 94, 86, 90, 94, 94, 85, 94], ![81, 90, 89, 86, 91, 85, 86, 96, 91, 86, 93, 87, 85, 91, 87, 89, 91, 92, 95, 89, 90, 92, 89, 84, 93, 92, 88, 95, 85, 85, 90, 89, 85, 94, 89, 90, 91, 93, 94, 88, 95, 87, 89, 92, 88, 88, 88, 93, 88], ![94, 96, 102, 86, 85, 89, 90, 92, 88, 83, 96, 90, 83, 94, 95, 91, 92, 84, 94, 88, 85, 84, 94, 85, 91, 87, 90, 88, 81, 84, 93, 86, 96, 88, 86, 92, 90, 87, 91, 88, 87, 91, 86, 86, 93, 87, 90, 91, 89]]

def envelope0044FibreMax : Fin 9 -> Nat :=
  ![97, 97, 100, 100, 96, 97, 98, 96, 102]

theorem envelope0044 : TailR263EvenOneDiagonalRange 6226941 6258075 := by
  intro N hLower hStop
  have hNUpper : N <= 6258074 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6258074 (envelope0044BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6258074 (envelope0044CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6258074 (envelope0044FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6258074) (count := 157466) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0044BaseCounts, envelope0044CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0044FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0044FibreCounts, envelope0044FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0044FibreMax cell) <=
          ∑ cell : Fin 9, envelope0044FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0044FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0044BaseCounts, envelope0044FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0045BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 98899
  | .evenTwoCell residue => ![2203, 2196, 2201, 2201, 2205, 2185, 2200, 2208, 2200] residue

def envelope0045CellCounts : Fin 9 -> Nat :=
  ![4389, 4388, 4396, 4398, 4378, 4405, 4404, 4407, 4397]

def envelope0045FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![88, 86, 82, 90, 88, 88, 90, 93, 89, 96, 85, 86, 91, 91, 86, 90, 86, 91, 89, 96, 90, 88, 88, 94, 87, 90, 88, 91, 85, 86, 87, 91, 93, 92, 86, 90, 90, 88, 93, 97, 89, 89, 87, 97, 94, 88, 84, 96, 90], ![84, 97, 92, 87, 90, 87, 92, 94, 83, 85, 88, 95, 89, 92, 87, 97, 91, 84, 86, 85, 95, 90, 83, 91, 91, 89, 90, 95, 93, 93, 98, 92, 94, 88, 84, 89, 87, 93, 91, 86, 89, 88, 86, 86, 88, 89, 86, 91, 88], ![95, 84, 88, 94, 89, 93, 89, 91, 92, 89, 87, 90, 93, 93, 88, 87, 87, 91, 92, 92, 86, 94, 89, 89, 87, 85, 90, 92, 86, 88, 87, 83, 90, 89, 87, 93, 101, 92, 89, 87, 92, 85, 92, 91, 93, 87, 87, 92, 89], ![93, 94, 85, 96, 92, 86, 87, 91, 90, 92, 87, 94, 94, 86, 87, 90, 92, 91, 89, 87, 93, 91, 84, 88, 89, 93, 91, 83, 95, 100, 91, 83, 88, 88, 94, 86, 94, 85, 85, 87, 89, 93, 93, 91, 91, 86, 87, 89, 88], ![95, 89, 88, 91, 89, 92, 88, 84, 91, 89, 89, 87, 92, 85, 92, 87, 89, 94, 85, 90, 86, 89, 91, 95, 92, 90, 88, 82, 92, 96, 84, 89, 93, 93, 91, 95, 88, 90, 85, 84, 93, 92, 88, 84, 83, 93, 87, 85, 94], ![87, 83, 90, 93, 90, 97, 93, 86, 96, 89, 90, 90, 93, 88, 90, 89, 86, 93, 88, 87, 93, 87, 94, 86, 93, 91, 86, 85, 93, 95, 90, 91, 82, 90, 94, 84, 87, 87, 97, 91, 91, 92, 92, 89, 90, 91, 90, 87, 89], ![90, 97, 88, 98, 86, 90, 91, 89, 87, 89, 86, 91, 87, 90, 93, 89, 90, 89, 92, 90, 86, 89, 92, 92, 88, 91, 87, 93, 88, 83, 89, 90, 86, 96, 88, 87, 92, 91, 86, 92, 87, 89, 94, 86, 90, 95, 95, 86, 94], ![81, 90, 90, 86, 93, 85, 87, 96, 91, 86, 93, 87, 85, 92, 87, 91, 91, 92, 95, 90, 91, 93, 90, 84, 93, 92, 88, 96, 85, 86, 90, 89, 85, 95, 89, 91, 91, 95, 94, 89, 95, 87, 89, 93, 89, 89, 88, 95, 88], ![95, 96, 102, 86, 85, 89, 90, 92, 88, 85, 96, 91, 83, 95, 95, 91, 92, 85, 94, 89, 85, 85, 94, 85, 91, 88, 90, 89, 82, 84, 94, 86, 96, 89, 86, 93, 90, 87, 92, 88, 87, 92, 86, 86, 93, 89, 91, 91, 89]]

def envelope0045FibreMax : Fin 9 -> Nat :=
  ![97, 98, 101, 100, 96, 97, 98, 96, 102]

theorem envelope0045 : TailR263EvenOneDiagonalRange 6258075 6289365 := by
  intro N hLower hStop
  have hNUpper : N <= 6289364 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6289364 (envelope0045BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6289364 (envelope0045CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6289364 (envelope0045FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6289364) (count := 158260) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0045BaseCounts, envelope0045CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0045FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0045FibreCounts, envelope0045FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0045FibreMax cell) <=
          ∑ cell : Fin 9, envelope0045FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0045FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0045BaseCounts, envelope0045FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0046BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 99388
  | .evenTwoCell residue => ![2215, 2206, 2212, 2210, 2220, 2194, 2212, 2218, 2212] residue

def envelope0046CellCounts : Fin 9 -> Nat :=
  ![4413, 4412, 4418, 4421, 4396, 4432, 4424, 4425, 4418]

def envelope0046FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![89, 87, 83, 91, 88, 88, 91, 93, 90, 97, 85, 86, 92, 91, 87, 90, 87, 92, 89, 96, 92, 88, 89, 94, 88, 90, 90, 91, 85, 86, 88, 91, 93, 92, 86, 91, 91, 88, 93, 98, 90, 91, 87, 97, 94, 88, 84, 96, 90], ![85, 97, 92, 88, 91, 87, 93, 95, 84, 85, 90, 95, 90, 92, 88, 97, 91, 84, 86, 85, 96, 90, 83, 91, 91, 90, 90, 96, 93, 95, 98, 94, 94, 88, 85, 89, 87, 94, 91, 87, 89, 89, 86, 87, 88, 90, 86, 92, 88], ![96, 85, 89, 94, 90, 93, 89, 91, 92, 89, 87, 90, 93, 93, 89, 87, 88, 91, 93, 93, 86, 95, 89, 89, 88, 85, 90, 93, 86, 89, 87, 83, 91, 89, 89, 94, 101, 93, 89, 87, 92, 85, 93, 94, 93, 87, 87, 92, 90], ![93, 94, 85, 96, 93, 86, 87, 92, 90, 94, 88, 95, 94, 86, 87, 91, 92, 92, 89, 89, 93, 91, 84, 90, 89, 95, 91, 84, 95, 100, 91, 83, 88, 89, 94, 87, 95, 85, 85, 88, 89, 95, 93, 92, 91, 86, 88, 89, 88], ![96, 89, 88, 91, 89, 93, 88, 85, 91, 90, 89, 89, 92, 85, 93, 88, 89, 95, 85, 90, 86, 89, 91, 96, 93, 91, 88, 82, 92, 96, 85, 90, 94, 93, 91, 95, 88, 90, 85, 85, 93, 92, 88, 84, 83, 93, 87, 86, 95], ![87, 83, 90, 93, 91, 98, 93, 88, 96, 89, 91, 90, 93, 89, 92, 90, 86, 93, 89, 87, 93, 89, 94, 88, 93, 91, 86, 85, 93, 95, 90, 91, 83, 90, 94, 85, 87, 88, 98, 92, 92, 93, 92, 90, 91, 91, 91, 88, 91], ![90, 97, 88, 99, 86, 91, 91, 89, 87, 89, 86, 92, 87, 91, 95, 89, 90, 89, 92, 90, 86, 89, 96, 92, 88, 91, 87, 94, 90, 83, 91, 90, 86, 96, 88, 87, 93, 91, 86, 92, 87, 89, 94, 86, 91, 96, 96, 87, 94], ![81, 91, 90, 87, 93, 86, 87, 96, 91, 88, 93, 87, 86, 92, 87, 91, 92, 92, 96, 91, 92, 94, 90, 84, 93, 92, 89, 96, 86, 86, 90, 89, 85, 95, 90, 91, 93, 95, 94, 89, 95, 87, 89, 93, 90, 89, 89, 95, 88], ![95, 96, 103, 86, 85, 89, 90, 92, 89, 85, 98, 91, 84, 95, 95, 91, 93, 85, 95, 89, 85, 85, 94, 85, 92, 88, 91, 91, 82, 86, 94, 86, 97, 89, 87, 93, 90, 87, 92, 90, 88, 92, 86, 87, 93, 91, 91, 91, 89]]

def envelope0046FibreMax : Fin 9 -> Nat :=
  ![98, 98, 101, 100, 96, 98, 99, 96, 103]

theorem envelope0046 : TailR263EvenOneDiagonalRange 6289365 6320811 := by
  intro N hLower hStop
  have hNUpper : N <= 6320810 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6320810 (envelope0046BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6320810 (envelope0046CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6320810 (envelope0046FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6320810) (count := 159046) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0046BaseCounts, envelope0046CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0046FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0046FibreCounts, envelope0046FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0046FibreMax cell) <=
          ∑ cell : Fin 9, envelope0046FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0046FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0046BaseCounts, envelope0046FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0047BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 99888
  | .evenTwoCell residue => ![2229, 2215, 2223, 2221, 2228, 2203, 2221, 2232, 2225] residue

def envelope0047CellCounts : Fin 9 -> Nat :=
  ![4434, 4433, 4439, 4442, 4422, 4454, 4446, 4448, 4439]

def envelope0047FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![90, 87, 84, 91, 88, 89, 92, 94, 90, 97, 86, 86, 92, 92, 87, 91, 88, 92, 89, 97, 94, 89, 89, 94, 88, 90, 90, 91, 85, 86, 88, 91, 94, 93, 86, 92, 92, 88, 94, 98, 90, 92, 87, 97, 94, 88, 85, 96, 91], ![85, 99, 92, 89, 91, 88, 93, 96, 84, 86, 90, 96, 90, 92, 88, 98, 92, 85, 86, 85, 96, 91, 84, 91, 91, 90, 91, 96, 94, 96, 99, 94, 94, 88, 85, 89, 88, 94, 92, 87, 90, 89, 87, 87, 88, 90, 87, 92, 88], ![97, 86, 89, 94, 90, 93, 89, 91, 92, 89, 88, 90, 94, 93, 89, 88, 88, 92, 94, 93, 87, 95, 89, 89, 89, 85, 91, 93, 86, 89, 87, 84, 91, 90, 90, 94, 102, 95, 89, 87, 93, 85, 94, 94, 94, 87, 88, 93, 90], ![93, 94, 86, 97, 93, 87, 88, 92, 92, 94, 89, 95, 94, 86, 87, 92, 93, 92, 91, 89, 93, 91, 85, 90, 91, 96, 92, 84, 95, 100, 91, 83, 88, 89, 95, 87, 95, 85, 86, 88, 91, 95, 93, 92, 92, 86, 88, 89, 88], ![97, 89, 88, 91, 89, 94, 89, 85, 92, 90, 89, 89, 92, 86, 94, 89, 90, 95, 85, 90, 87, 89, 92, 97, 94, 92, 88, 83, 92, 98, 85, 91, 94, 93, 91, 95, 89, 90, 85, 86, 93, 93, 88, 84, 83, 94, 88, 87, 98], ![87, 83, 90, 93, 94, 98, 94, 88, 96, 89, 91, 90, 94, 89, 93, 90, 86, 93, 89, 87, 94, 89, 95, 88, 93, 91, 87, 85, 93, 96, 90, 92, 83, 90, 94, 88, 88, 89, 99, 93, 92, 93, 92, 91, 91, 92, 91, 90, 91], ![90, 97, 89, 99, 87, 91, 91, 89, 87, 90, 86, 93, 87, 92, 95, 89, 92, 89, 92, 91, 86, 90, 96, 92, 88, 91, 87, 96, 91, 85, 91, 90, 86, 96, 88, 88, 93, 94, 86, 92, 87, 89, 94, 87, 92, 97, 97, 87, 94], ![81, 91, 90, 90, 94, 86, 87, 96, 91, 89, 93, 88, 86, 92, 87, 91, 92, 93, 97, 92, 94, 94, 91, 84, 93, 93, 89, 98, 86, 86, 90, 89, 86, 96, 90, 92, 94, 96, 94, 89, 95, 88, 89, 94, 90, 89, 89, 95, 89], ![95, 97, 103, 86, 85, 89, 90, 93, 89, 87, 99, 93, 84, 95, 95, 92, 93, 86, 95, 89, 85, 85, 94, 86, 92, 89, 92, 91, 82, 86, 94, 88, 97, 91, 87, 93, 90, 87, 92, 91, 88, 92, 88, 87, 94, 91, 91, 91, 90]]

def envelope0047FibreMax : Fin 9 -> Nat :=
  ![98, 99, 102, 100, 98, 99, 99, 98, 103]

theorem envelope0047 : TailR263EvenOneDiagonalRange 6320811 6352415 := by
  intro N hLower hStop
  have hNUpper : N <= 6352414 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6352414 (envelope0047BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6352414 (envelope0047CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6352414 (envelope0047FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6352414) (count := 159842) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0047BaseCounts, envelope0047CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0047FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0047FibreCounts, envelope0047FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0047FibreMax cell) <=
          ∑ cell : Fin 9, envelope0047FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0047FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0047BaseCounts, envelope0047FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
