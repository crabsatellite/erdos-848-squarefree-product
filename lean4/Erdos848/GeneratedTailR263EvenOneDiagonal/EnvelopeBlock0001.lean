import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0016BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 85572
  | .evenTwoCell residue => ![1910, 1900, 1907, 1897, 1906, 1895, 1907, 1909, 1903] residue

def envelope0016CellCounts : Fin 9 -> Nat :=
  ![3796, 3801, 3801, 3802, 3787, 3816, 3810, 3813, 3815]

def envelope0016FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![77, 76, 73, 80, 77, 75, 77, 82, 78, 81, 74, 76, 76, 75, 73, 82, 77, 78, 74, 80, 81, 76, 77, 81, 76, 77, 77, 79, 71, 72, 76, 81, 78, 80, 75, 79, 78, 74, 78, 85, 78, 76, 73, 84, 80, 75, 73, 84, 81], ![72, 83, 80, 74, 79, 76, 82, 84, 73, 75, 76, 83, 77, 80, 76, 85, 77, 69, 72, 73, 81, 79, 70, 81, 79, 78, 75, 82, 81, 80, 82, 79, 83, 74, 74, 76, 77, 82, 81, 76, 78, 75, 75, 73, 78, 80, 75, 77, 74], ![82, 73, 75, 82, 75, 76, 75, 78, 81, 75, 75, 75, 83, 79, 78, 72, 77, 78, 82, 83, 80, 81, 73, 73, 77, 73, 80, 81, 75, 78, 74, 72, 79, 78, 72, 77, 89, 81, 77, 78, 76, 72, 79, 81, 83, 77, 73, 79, 79], ![82, 81, 76, 80, 79, 75, 78, 81, 81, 81, 76, 80, 80, 76, 76, 76, 75, 76, 77, 77, 82, 78, 72, 77, 79, 83, 80, 72, 82, 84, 76, 71, 76, 78, 83, 72, 81, 79, 74, 74, 75, 82, 80, 77, 79, 72, 73, 75, 73], ![84, 77, 71, 75, 76, 80, 76, 72, 79, 79, 75, 76, 81, 75, 78, 75, 77, 82, 75, 80, 72, 79, 76, 78, 80, 81, 74, 70, 80, 86, 75, 80, 79, 79, 78, 82, 71, 79, 76, 73, 79, 82, 77, 73, 74, 81, 75, 74, 81], ![76, 74, 80, 80, 79, 87, 83, 74, 80, 80, 75, 78, 80, 75, 77, 77, 72, 81, 73, 75, 80, 75, 84, 76, 79, 80, 73, 73, 78, 85, 77, 81, 70, 78, 82, 74, 77, 77, 85, 80, 77, 80, 83, 77, 76, 74, 78, 76, 75], ![75, 82, 75, 82, 74, 80, 77, 76, 75, 78, 76, 81, 77, 79, 81, 74, 76, 79, 83, 75, 73, 78, 83, 80, 75, 75, 79, 82, 76, 71, 81, 75, 72, 81, 75, 74, 80, 79, 72, 77, 76, 77, 85, 77, 80, 82, 84, 76, 80], ![70, 78, 82, 79, 81, 74, 73, 78, 77, 75, 81, 77, 73, 76, 74, 79, 77, 81, 82, 79, 79, 80, 80, 72, 79, 80, 76, 82, 75, 76, 79, 75, 71, 82, 81, 80, 80, 80, 83, 77, 83, 75, 79, 84, 70, 74, 76, 83, 76], ![82, 81, 84, 71, 75, 75, 79, 81, 78, 77, 86, 80, 70, 79, 82, 79, 83, 76, 81, 75, 71, 73, 80, 76, 79, 77, 78, 80, 70, 72, 80, 74, 83, 79, 74, 83, 78, 71, 78, 78, 79, 82, 76, 75, 83, 77, 79, 79, 77]]

def envelope0016FibreMax : Fin 9 -> Nat :=
  ![85, 85, 89, 84, 86, 87, 85, 84, 86]

theorem envelope0016 : TailR263EvenOneDiagonalRange 5415347 5442423 := by
  intro N hLower hStop
  have hNUpper : N <= 5442422 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5442422 (envelope0016BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5442422 (envelope0016CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5442422 (envelope0016FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5442422) (count := 136947) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0016BaseCounts, envelope0016CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0016FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0016FibreCounts, envelope0016FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0016FibreMax cell) <=
          ∑ cell : Fin 9, envelope0016FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0016FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0016BaseCounts, envelope0016FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0017BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 86000
  | .evenTwoCell residue => ![1917, 1908, 1915, 1906, 1920, 1906, 1917, 1917, 1913] residue

def envelope0017CellCounts : Fin 9 -> Nat :=
  ![3817, 3822, 3821, 3821, 3805, 3835, 3828, 3831, 3834]

def envelope0017FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![77, 76, 73, 80, 77, 76, 78, 83, 78, 81, 74, 76, 77, 76, 74, 84, 77, 78, 74, 80, 81, 77, 77, 82, 76, 78, 77, 79, 72, 73, 77, 82, 78, 80, 75, 79, 78, 75, 79, 85, 78, 76, 73, 84, 80, 76, 73, 87, 81], ![73, 83, 80, 75, 79, 78, 82, 84, 73, 75, 77, 84, 77, 81, 76, 85, 77, 70, 72, 75, 81, 81, 70, 81, 80, 78, 75, 83, 82, 80, 82, 79, 83, 75, 74, 76, 78, 82, 83, 76, 78, 75, 75, 73, 79, 80, 76, 77, 74], ![83, 74, 76, 83, 75, 76, 75, 78, 82, 76, 76, 76, 83, 79, 78, 74, 77, 79, 82, 83, 80, 81, 73, 73, 77, 73, 80, 81, 77, 78, 74, 72, 79, 78, 73, 77, 90, 81, 77, 78, 76, 72, 80, 82, 84, 79, 73, 79, 79], ![82, 82, 76, 81, 79, 75, 78, 81, 81, 81, 76, 81, 80, 76, 76, 76, 76, 76, 78, 77, 82, 78, 72, 77, 80, 83, 81, 72, 82, 84, 76, 71, 78, 78, 85, 72, 82, 79, 74, 75, 76, 82, 81, 78, 79, 74, 73, 75, 74], ![84, 77, 71, 75, 76, 80, 76, 72, 80, 79, 76, 76, 81, 76, 80, 75, 78, 82, 75, 80, 72, 79, 77, 78, 81, 82, 74, 71, 80, 86, 76, 80, 81, 79, 78, 82, 71, 79, 77, 73, 81, 83, 77, 74, 74, 81, 75, 74, 81], ![76, 75, 80, 80, 80, 87, 83, 74, 80, 80, 75, 78, 81, 77, 78, 77, 73, 81, 74, 75, 81, 75, 85, 76, 80, 80, 73, 73, 79, 85, 78, 81, 71, 78, 82, 74, 77, 79, 85, 80, 77, 80, 83, 77, 76, 75, 78, 77, 76], ![75, 82, 76, 82, 75, 80, 77, 77, 75, 79, 77, 82, 78, 79, 81, 74, 76, 79, 84, 75, 74, 78, 84, 81, 75, 76, 79, 82, 76, 71, 81, 75, 72, 81, 75, 74, 80, 80, 72, 78, 76, 78, 85, 78, 80, 84, 84, 76, 80], ![71, 78, 83, 79, 81, 74, 73, 78, 78, 75, 82, 77, 73, 76, 75, 79, 78, 81, 82, 79, 79, 80, 80, 73, 79, 80, 76, 84, 75, 76, 82, 76, 72, 83, 81, 81, 80, 80, 83, 77, 83, 76, 79, 84, 71, 74, 76, 83, 76], ![82, 83, 84, 71, 75, 76, 79, 82, 78, 77, 87, 80, 70, 79, 82, 79, 83, 77, 81, 75, 72, 74, 81, 78, 79, 78, 78, 80, 70, 72, 80, 75, 83, 80, 75, 83, 78, 72, 78, 79, 79, 83, 76, 75, 84, 77, 79, 79, 77]]

def envelope0017FibreMax : Fin 9 -> Nat :=
  ![87, 85, 90, 85, 86, 87, 85, 84, 87]

theorem envelope0017 : TailR263EvenOneDiagonalRange 5442423 5469635 := by
  intro N hLower hStop
  have hNUpper : N <= 5469634 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5469634 (envelope0017BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5469634 (envelope0017CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5469634 (envelope0017FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5469634) (count := 137633) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0017BaseCounts, envelope0017CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0017FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0017FibreCounts, envelope0017FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0017FibreMax cell) <=
          ∑ cell : Fin 9, envelope0017FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0017FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0017BaseCounts, envelope0017FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0018BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 86435
  | .evenTwoCell residue => ![1928, 1920, 1923, 1917, 1930, 1915, 1924, 1922, 1927] residue

def envelope0018CellCounts : Fin 9 -> Nat :=
  ![3835, 3841, 3841, 3837, 3828, 3854, 3847, 3852, 3852]

def envelope0018FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![77, 76, 73, 80, 78, 76, 79, 83, 78, 82, 74, 77, 78, 77, 75, 84, 77, 78, 75, 80, 82, 77, 78, 82, 76, 78, 77, 79, 72, 73, 77, 82, 78, 80, 75, 79, 78, 75, 79, 87, 78, 78, 73, 84, 81, 77, 74, 88, 81], ![73, 83, 82, 75, 81, 78, 82, 84, 73, 75, 78, 84, 78, 81, 76, 85, 77, 70, 73, 75, 82, 81, 72, 81, 80, 78, 76, 83, 82, 81, 82, 80, 83, 76, 74, 77, 78, 84, 84, 76, 78, 75, 75, 74, 79, 80, 76, 77, 74], ![83, 74, 77, 83, 75, 76, 75, 78, 82, 79, 76, 77, 83, 79, 79, 74, 77, 79, 82, 84, 80, 81, 73, 73, 77, 74, 81, 82, 78, 78, 74, 72, 79, 79, 73, 79, 90, 81, 77, 78, 76, 73, 81, 83, 85, 80, 74, 79, 79], ![83, 82, 76, 81, 79, 75, 78, 82, 81, 82, 76, 81, 80, 76, 76, 77, 76, 78, 78, 78, 82, 78, 72, 78, 80, 84, 81, 72, 82, 84, 76, 72, 78, 79, 85, 73, 82, 79, 75, 78, 76, 82, 81, 78, 79, 74, 73, 75, 74], ![84, 78, 71, 75, 76, 80, 77, 73, 80, 80, 76, 76, 81, 77, 80, 77, 79, 82, 75, 80, 72, 80, 78, 79, 82, 82, 77, 71, 80, 87, 76, 80, 81, 79, 78, 82, 71, 79, 78, 73, 82, 83, 78, 74, 74, 81, 77, 75, 82], ![76, 75, 80, 81, 81, 88, 83, 76, 80, 80, 75, 79, 81, 78, 79, 78, 73, 82, 74, 76, 81, 76, 85, 76, 80, 80, 73, 73, 79, 85, 78, 82, 71, 80, 82, 74, 78, 79, 85, 80, 77, 81, 83, 77, 77, 75, 79, 77, 76], ![75, 83, 77, 83, 75, 80, 78, 77, 76, 80, 77, 82, 79, 79, 81, 74, 76, 79, 85, 75, 74, 78, 85, 82, 75, 76, 80, 82, 77, 72, 81, 75, 72, 81, 76, 74, 81, 80, 73, 78, 77, 78, 85, 79, 81, 84, 84, 76, 80], ![71, 78, 83, 79, 81, 74, 74, 78, 78, 75, 82, 77, 73, 77, 75, 80, 79, 81, 83, 79, 79, 80, 80, 73, 82, 80, 78, 85, 75, 77, 82, 77, 74, 83, 83, 81, 80, 80, 83, 77, 84, 76, 80, 84, 71, 74, 77, 83, 77], ![83, 83, 84, 72, 76, 77, 81, 82, 79, 77, 87, 80, 70, 79, 83, 79, 84, 77, 81, 75, 72, 74, 83, 78, 80, 79, 78, 80, 71, 72, 81, 75, 84, 80, 76, 83, 78, 72, 78, 80, 79, 83, 76, 75, 84, 77, 79, 79, 77]]

def envelope0018FibreMax : Fin 9 -> Nat :=
  ![88, 85, 90, 85, 87, 88, 85, 85, 87]

theorem envelope0018 : TailR263EvenOneDiagonalRange 5469635 5496983 := by
  intro N hLower hStop
  have hNUpper : N <= 5496982 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5496982 (envelope0018BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5496982 (envelope0018CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5496982 (envelope0018FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5496982) (count := 138328) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0018BaseCounts, envelope0018CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0018FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0018FibreCounts, envelope0018FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0018FibreMax cell) <=
          ∑ cell : Fin 9, envelope0018FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0018FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0018BaseCounts, envelope0018FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0019BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 86876
  | .evenTwoCell residue => ![1936, 1928, 1933, 1926, 1939, 1926, 1934, 1932, 1933] residue

def envelope0019CellCounts : Fin 9 -> Nat :=
  ![3859, 3859, 3861, 3857, 3846, 3872, 3864, 3870, 3871]

def envelope0019FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![77, 76, 73, 81, 78, 77, 79, 85, 79, 82, 74, 78, 79, 77, 76, 85, 77, 78, 75, 80, 82, 77, 78, 83, 76, 78, 77, 80, 74, 74, 78, 82, 78, 80, 75, 81, 79, 75, 81, 87, 78, 78, 73, 85, 81, 79, 75, 88, 81], ![73, 85, 82, 76, 81, 78, 82, 84, 73, 75, 78, 84, 78, 81, 76, 85, 78, 70, 75, 75, 83, 81, 72, 82, 80, 78, 77, 84, 82, 81, 83, 80, 83, 76, 76, 77, 80, 84, 84, 77, 78, 75, 76, 74, 80, 80, 76, 77, 74], ![83, 74, 77, 85, 76, 77, 75, 78, 83, 79, 77, 77, 83, 80, 79, 74, 78, 79, 83, 84, 80, 81, 73, 73, 78, 75, 82, 83, 78, 79, 74, 72, 79, 79, 74, 79, 90, 81, 77, 78, 77, 74, 82, 84, 85, 80, 74, 80, 79], ![84, 83, 76, 82, 79, 75, 79, 82, 82, 82, 76, 81, 80, 76, 77, 77, 78, 78, 79, 78, 82, 78, 74, 78, 81, 84, 81, 72, 83, 84, 76, 72, 79, 81, 86, 73, 82, 79, 75, 78, 76, 83, 81, 78, 79, 74, 73, 76, 75], ![84, 78, 71, 76, 77, 80, 78, 74, 80, 81, 76, 76, 82, 77, 81, 77, 79, 82, 75, 80, 74, 80, 79, 80, 82, 83, 77, 71, 80, 87, 76, 81, 81, 79, 78, 82, 71, 79, 78, 75, 82, 83, 79, 74, 74, 82, 77, 76, 82], ![77, 77, 81, 81, 82, 88, 83, 76, 80, 80, 75, 79, 81, 78, 80, 79, 74, 82, 74, 76, 81, 77, 85, 76, 80, 80, 73, 74, 79, 86, 79, 82, 72, 80, 82, 75, 78, 80, 85, 80, 77, 81, 84, 78, 77, 76, 79, 77, 76], ![75, 83, 77, 83, 75, 81, 78, 78, 76, 80, 77, 83, 79, 79, 81, 74, 76, 80, 85, 76, 74, 79, 85, 83, 75, 77, 80, 83, 77, 73, 81, 75, 73, 82, 76, 74, 81, 82, 73, 78, 77, 79, 85, 80, 81, 84, 85, 76, 80], ![71, 79, 83, 79, 81, 74, 74, 79, 78, 76, 83, 77, 74, 77, 75, 81, 79, 82, 85, 79, 79, 80, 80, 74, 82, 82, 78, 85, 76, 77, 82, 78, 74, 84, 83, 81, 80, 80, 83, 77, 84, 76, 80, 84, 71, 75, 77, 84, 78], ![84, 83, 84, 73, 76, 80, 81, 83, 79, 77, 87, 80, 70, 80, 83, 80, 84, 78, 81, 76, 72, 75, 83, 78, 80, 79, 78, 80, 71, 72, 81, 75, 84, 80, 76, 83, 79, 73, 80, 80, 80, 83, 76, 75, 84, 78, 80, 79, 78]]

def envelope0019FibreMax : Fin 9 -> Nat :=
  ![88, 85, 90, 86, 87, 88, 85, 85, 87]

theorem envelope0019 : TailR263EvenOneDiagonalRange 5496983 5524467 := by
  intro N hLower hStop
  have hNUpper : N <= 5524466 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5524466 (envelope0019BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5524466 (envelope0019CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5524466 (envelope0019FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5524466) (count := 139022) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0019BaseCounts, envelope0019CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0019FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0019FibreCounts, envelope0019FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0019FibreMax cell) <=
          ∑ cell : Fin 9, envelope0019FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0019FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0019BaseCounts, envelope0019FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0020BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 87310
  | .evenTwoCell residue => ![1947, 1940, 1944, 1934, 1949, 1936, 1944, 1940, 1940] residue

def envelope0020CellCounts : Fin 9 -> Nat :=
  ![3879, 3878, 3879, 3878, 3866, 3895, 3883, 3886, 3886]

def envelope0020FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![77, 76, 73, 81, 78, 77, 79, 85, 79, 83, 74, 79, 79, 78, 76, 85, 77, 79, 75, 81, 82, 78, 78, 83, 76, 78, 78, 80, 75, 77, 78, 82, 78, 80, 75, 82, 79, 76, 81, 87, 78, 78, 74, 86, 82, 80, 76, 89, 82], ![73, 85, 83, 77, 81, 78, 82, 84, 73, 76, 78, 85, 78, 81, 76, 85, 79, 72, 75, 77, 83, 81, 72, 82, 81, 79, 77, 85, 82, 82, 83, 80, 83, 78, 76, 79, 80, 84, 84, 77, 79, 75, 76, 74, 80, 80, 76, 78, 74], ![84, 75, 77, 85, 77, 77, 75, 79, 84, 80, 78, 77, 83, 80, 79, 75, 78, 80, 83, 84, 80, 81, 73, 74, 79, 75, 83, 83, 78, 79, 74, 72, 79, 79, 74, 79, 90, 81, 77, 78, 78, 74, 84, 84, 85, 80, 76, 80, 80], ![84, 83, 76, 83, 80, 76, 79, 83, 82, 82, 76, 81, 82, 77, 77, 80, 78, 79, 79, 78, 82, 78, 74, 78, 81, 84, 81, 72, 83, 84, 77, 73, 80, 82, 86, 73, 83, 79, 76, 78, 78, 83, 81, 78, 79, 74, 74, 76, 76], ![85, 78, 72, 77, 77, 80, 79, 74, 81, 81, 76, 76, 82, 77, 83, 77, 79, 82, 75, 80, 75, 80, 81, 82, 83, 83, 77, 71, 81, 87, 76, 81, 81, 79, 78, 82, 72, 79, 80, 75, 82, 83, 79, 74, 75, 82, 78, 76, 83], ![77, 77, 81, 81, 82, 88, 83, 76, 80, 80, 76, 80, 83, 80, 80, 80, 74, 83, 75, 76, 82, 77, 85, 76, 80, 81, 74, 74, 80, 87, 79, 83, 72, 80, 83, 75, 79, 80, 85, 80, 77, 81, 85, 78, 78, 76, 80, 77, 79], ![76, 83, 78, 83, 76, 81, 79, 78, 77, 80, 78, 83, 79, 79, 81, 74, 77, 80, 85, 76, 75, 79, 86, 83, 77, 77, 81, 83, 77, 73, 81, 77, 74, 82, 76, 74, 81, 82, 73, 79, 78, 80, 85, 80, 81, 85, 85, 76, 80], ![72, 79, 83, 79, 81, 74, 75, 79, 79, 76, 83, 78, 76, 78, 76, 81, 81, 82, 86, 79, 79, 80, 80, 74, 82, 82, 78, 85, 76, 77, 83, 78, 74, 84, 83, 81, 80, 80, 83, 77, 84, 77, 80, 84, 72, 75, 78, 85, 78], ![84, 83, 85, 73, 77, 80, 82, 83, 79, 77, 87, 80, 70, 80, 83, 80, 84, 78, 81, 76, 72, 75, 83, 78, 81, 79, 78, 80, 71, 73, 81, 76, 84, 80, 76, 84, 79, 75, 81, 81, 80, 83, 76, 75, 84, 79, 80, 80, 80]]

def envelope0020FibreMax : Fin 9 -> Nat :=
  ![89, 85, 90, 86, 87, 88, 86, 86, 87]

theorem envelope0020 : TailR263EvenOneDiagonalRange 5524467 5552089 := by
  intro N hLower hStop
  have hNUpper : N <= 5552088 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5552088 (envelope0020BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5552088 (envelope0020CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5552088 (envelope0020FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5552088) (count := 139714) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0020BaseCounts, envelope0020CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0020FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0020FibreCounts, envelope0020FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0020FibreMax cell) <=
          ∑ cell : Fin 9, envelope0020FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0020FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0020BaseCounts, envelope0020FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0021BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 87746
  | .evenTwoCell residue => ![1958, 1952, 1955, 1943, 1956, 1946, 1953, 1950, 1952] residue

def envelope0021CellCounts : Fin 9 -> Nat :=
  ![3900, 3899, 3897, 3894, 3885, 3910, 3902, 3907, 3907]

def envelope0021FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![78, 76, 74, 81, 79, 78, 79, 85, 80, 83, 75, 79, 80, 78, 76, 85, 77, 79, 76, 82, 82, 78, 78, 85, 76, 79, 79, 82, 76, 79, 78, 82, 79, 80, 76, 82, 79, 76, 81, 87, 78, 79, 74, 86, 82, 80, 76, 89, 82], ![74, 85, 84, 77, 81, 78, 82, 85, 74, 76, 80, 85, 78, 82, 77, 86, 81, 72, 77, 77, 83, 81, 72, 82, 82, 79, 77, 85, 82, 82, 83, 80, 84, 78, 77, 79, 80, 84, 84, 77, 80, 76, 76, 75, 80, 80, 77, 78, 75], ![85, 75, 77, 85, 77, 77, 76, 80, 84, 81, 78, 77, 83, 80, 80, 75, 78, 80, 83, 84, 80, 81, 73, 75, 79, 76, 83, 83, 78, 79, 74, 73, 79, 81, 75, 79, 90, 82, 77, 79, 80, 76, 84, 84, 85, 80, 76, 81, 80], ![85, 83, 76, 83, 82, 77, 79, 83, 82, 82, 76, 81, 82, 77, 78, 80, 79, 79, 79, 78, 82, 79, 74, 79, 81, 84, 81, 72, 83, 84, 78, 74, 81, 82, 86, 73, 83, 80, 76, 79, 78, 83, 81, 78, 79, 75, 74, 78, 76], ![85, 78, 72, 77, 77, 82, 79, 75, 83, 81, 76, 77, 82, 77, 83, 77, 79, 82, 75, 81, 76, 82, 81, 83, 83, 83, 77, 72, 81, 88, 76, 81, 81, 80, 78, 83, 73, 80, 80, 75, 83, 83, 80, 74, 75, 82, 78, 76, 83], ![77, 79, 81, 82, 82, 88, 83, 76, 80, 81, 76, 81, 84, 80, 81, 80, 74, 83, 75, 77, 82, 77, 85, 76, 80, 82, 74, 75, 80, 87, 79, 83, 72, 80, 83, 75, 79, 80, 87, 80, 77, 81, 85, 78, 79, 77, 80, 78, 79], ![76, 84, 78, 84, 76, 82, 79, 79, 77, 81, 78, 83, 79, 79, 81, 75, 78, 81, 85, 77, 75, 79, 86, 83, 77, 80, 81, 83, 77, 73, 81, 77, 74, 82, 77, 74, 82, 82, 74, 79, 79, 80, 86, 80, 81, 85, 85, 76, 82], ![73, 79, 83, 79, 81, 75, 78, 81, 79, 76, 84, 78, 77, 78, 76, 81, 81, 82, 86, 80, 79, 80, 80, 74, 83, 82, 78, 85, 76, 78, 84, 78, 75, 84, 83, 82, 80, 80, 84, 77, 85, 77, 80, 85, 72, 76, 79, 85, 79], ![84, 84, 85, 74, 77, 80, 82, 83, 79, 77, 87, 80, 71, 80, 84, 80, 84, 78, 83, 76, 74, 75, 84, 78, 81, 79, 78, 80, 73, 73, 82, 76, 84, 80, 77, 84, 81, 75, 82, 81, 80, 83, 78, 75, 85, 79, 82, 80, 80]]

def envelope0021FibreMax : Fin 9 -> Nat :=
  ![89, 86, 90, 86, 88, 88, 86, 86, 87]

theorem envelope0021 : TailR263EvenOneDiagonalRange 5552089 5579849 := by
  intro N hLower hStop
  have hNUpper : N <= 5579848 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5579848 (envelope0021BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5579848 (envelope0021CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5579848 (envelope0021FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5579848) (count := 140412) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0021BaseCounts, envelope0021CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0021FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0021FibreCounts, envelope0021FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0021FibreMax cell) <=
          ∑ cell : Fin 9, envelope0021FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0021FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0021BaseCounts, envelope0021FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0022BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 88190
  | .evenTwoCell residue => ![1967, 1964, 1962, 1954, 1964, 1954, 1962, 1964, 1962] residue

def envelope0022CellCounts : Fin 9 -> Nat :=
  ![3918, 3916, 3918, 3914, 3908, 3931, 3921, 3926, 3923]

def envelope0022FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![78, 77, 74, 81, 79, 78, 79, 85, 81, 84, 76, 80, 80, 78, 76, 85, 77, 81, 76, 83, 82, 78, 78, 85, 77, 79, 80, 82, 76, 79, 78, 82, 79, 80, 76, 82, 80, 76, 82, 87, 79, 79, 76, 86, 85, 80, 76, 89, 82], ![74, 87, 84, 77, 83, 78, 82, 85, 74, 77, 80, 85, 78, 82, 77, 88, 81, 73, 77, 78, 84, 81, 72, 82, 82, 79, 78, 85, 82, 82, 83, 81, 85, 78, 78, 79, 80, 84, 84, 77, 81, 76, 77, 75, 80, 80, 77, 78, 76], ![85, 75, 79, 85, 77, 77, 77, 80, 85, 81, 78, 77, 83, 80, 80, 75, 79, 80, 83, 84, 80, 81, 75, 75, 81, 76, 83, 83, 78, 79, 76, 73, 80, 81, 77, 79, 90, 82, 78, 79, 82, 77, 84, 85, 85, 80, 77, 81, 81], ![85, 83, 77, 83, 82, 77, 80, 83, 82, 82, 77, 81, 82, 79, 79, 81, 79, 79, 79, 78, 83, 81, 75, 79, 81, 84, 81, 72, 84, 84, 79, 75, 81, 82, 86, 73, 84, 80, 77, 79, 78, 84, 81, 78, 79, 75, 75, 78, 78], ![85, 79, 75, 78, 79, 82, 80, 75, 83, 81, 77, 77, 83, 77, 83, 77, 79, 82, 76, 81, 78, 82, 82, 83, 84, 83, 79, 72, 82, 88, 76, 81, 81, 80, 78, 83, 73, 81, 80, 76, 83, 84, 80, 75, 75, 83, 78, 76, 83], ![78, 79, 82, 82, 82, 88, 83, 77, 81, 81, 77, 82, 84, 81, 82, 80, 75, 83, 75, 77, 82, 77, 85, 76, 80, 82, 74, 75, 81, 88, 80, 83, 73, 81, 83, 77, 79, 80, 87, 80, 77, 82, 85, 79, 80, 78, 81, 78, 79], ![79, 84, 79, 84, 77, 82, 80, 79, 77, 81, 78, 83, 79, 79, 81, 75, 78, 81, 85, 79, 75, 79, 86, 84, 77, 82, 81, 83, 77, 73, 81, 79, 74, 83, 77, 75, 82, 83, 74, 80, 79, 81, 86, 80, 81, 85, 85, 77, 82], ![75, 79, 83, 79, 82, 75, 78, 81, 79, 77, 84, 78, 77, 79, 76, 81, 82, 82, 86, 80, 79, 82, 81, 75, 83, 82, 79, 85, 77, 79, 84, 79, 75, 84, 83, 82, 80, 81, 84, 78, 85, 77, 81, 85, 73, 77, 79, 85, 79], ![85, 84, 86, 75, 77, 81, 82, 83, 79, 77, 87, 81, 71, 81, 84, 80, 84, 78, 83, 77, 74, 76, 84, 78, 81, 79, 78, 81, 73, 74, 82, 76, 84, 81, 78, 86, 83, 75, 82, 81, 80, 83, 78, 75, 85, 79, 82, 80, 80]]

def envelope0022FibreMax : Fin 9 -> Nat :=
  ![89, 88, 90, 86, 88, 88, 86, 86, 87]

theorem envelope0022 : TailR263EvenOneDiagonalRange 5579849 5607748 := by
  intro N hLower hStop
  have hNUpper : N <= 5607747 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5607747 (envelope0022BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5607747 (envelope0022CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5607747 (envelope0022FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5607747) (count := 141118) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0022BaseCounts, envelope0022CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0022FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0022FibreCounts, envelope0022FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0022FibreMax cell) <=
          ∑ cell : Fin 9, envelope0022FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0022FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0022BaseCounts, envelope0022FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0023BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 88627
  | .evenTwoCell residue => ![1977, 1972, 1974, 1966, 1974, 1961, 1972, 1974, 1970] residue

def envelope0023CellCounts : Fin 9 -> Nat :=
  ![3942, 3939, 3939, 3931, 3926, 3950, 3939, 3942, 3944]

def envelope0023FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![79, 77, 75, 81, 79, 78, 79, 85, 82, 86, 77, 81, 80, 78, 76, 85, 77, 81, 76, 83, 82, 78, 78, 86, 77, 81, 81, 83, 78, 80, 79, 82, 79, 81, 76, 83, 80, 76, 82, 89, 79, 81, 76, 87, 86, 80, 76, 89, 82], ![75, 87, 84, 78, 83, 78, 82, 85, 75, 77, 80, 85, 78, 82, 78, 89, 82, 74, 77, 78, 85, 81, 73, 83, 82, 80, 78, 85, 82, 82, 84, 82, 86, 79, 78, 80, 80, 84, 84, 78, 81, 78, 77, 75, 80, 80, 77, 82, 76], ![85, 75, 79, 85, 77, 79, 77, 82, 85, 81, 78, 77, 83, 81, 80, 77, 79, 80, 83, 84, 80, 83, 75, 76, 81, 78, 83, 85, 80, 80, 76, 74, 80, 81, 77, 79, 90, 83, 79, 79, 83, 77, 84, 85, 85, 80, 77, 81, 81], ![85, 83, 77, 84, 82, 77, 80, 83, 83, 82, 77, 82, 83, 80, 80, 83, 79, 79, 79, 79, 83, 82, 75, 79, 81, 84, 81, 73, 84, 84, 79, 75, 81, 82, 86, 74, 84, 80, 77, 79, 79, 84, 81, 78, 80, 76, 76, 79, 78], ![85, 80, 75, 80, 79, 83, 80, 75, 83, 81, 77, 79, 83, 78, 83, 77, 79, 83, 76, 81, 78, 83, 82, 83, 84, 83, 79, 72, 82, 88, 76, 81, 82, 80, 79, 83, 74, 82, 81, 76, 83, 84, 81, 75, 76, 85, 78, 76, 83], ![78, 80, 82, 82, 82, 88, 83, 78, 82, 81, 78, 82, 85, 81, 82, 80, 75, 83, 76, 77, 82, 77, 85, 76, 81, 83, 75, 76, 81, 89, 80, 83, 75, 81, 84, 77, 79, 80, 87, 80, 79, 82, 85, 80, 80, 79, 81, 78, 80], ![79, 85, 79, 85, 77, 82, 80, 79, 78, 81, 78, 83, 79, 81, 81, 76, 79, 81, 86, 79, 76, 79, 87, 84, 78, 82, 81, 83, 77, 73, 82, 79, 75, 83, 78, 75, 83, 83, 75, 80, 80, 81, 86, 80, 81, 85, 86, 77, 82], ![75, 79, 83, 79, 83, 75, 79, 81, 79, 77, 84, 78, 78, 79, 77, 81, 82, 83, 86, 80, 80, 82, 82, 75, 83, 83, 79, 86, 78, 79, 85, 79, 75, 84, 83, 82, 81, 81, 84, 78, 86, 78, 81, 86, 73, 78, 79, 85, 79], ![85, 84, 87, 75, 78, 81, 82, 83, 79, 77, 88, 82, 72, 81, 84, 80, 85, 78, 85, 79, 76, 76, 84, 78, 81, 79, 78, 81, 73, 74, 84, 76, 85, 81, 79, 86, 83, 76, 82, 81, 80, 83, 78, 76, 85, 80, 82, 81, 81]]

def envelope0023FibreMax : Fin 9 -> Nat :=
  ![89, 89, 90, 86, 88, 89, 87, 86, 88]

theorem envelope0023 : TailR263EvenOneDiagonalRange 5607748 5635786 := by
  intro N hLower hStop
  have hNUpper : N <= 5635785 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5635785 (envelope0023BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5635785 (envelope0023CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5635785 (envelope0023FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5635785) (count := 141819) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0023BaseCounts, envelope0023CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0023FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0023FibreCounts, envelope0023FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0023FibreMax cell) <=
          ∑ cell : Fin 9, envelope0023FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0023FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0023BaseCounts, envelope0023FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0024BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 89068
  | .evenTwoCell residue => ![1986, 1982, 1983, 1972, 1982, 1971, 1986, 1985, 1983] residue

def envelope0024CellCounts : Fin 9 -> Nat :=
  ![3959, 3955, 3960, 3954, 3946, 3969, 3959, 3962, 3963]

def envelope0024FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![79, 77, 75, 81, 79, 80, 80, 85, 83, 86, 77, 81, 80, 79, 76, 85, 78, 81, 78, 83, 82, 78, 79, 86, 79, 81, 82, 83, 78, 80, 79, 82, 80, 81, 78, 83, 80, 76, 82, 89, 80, 81, 77, 87, 86, 80, 76, 89, 82], ![75, 87, 84, 78, 83, 78, 83, 85, 76, 78, 80, 85, 78, 83, 79, 90, 83, 74, 77, 78, 85, 81, 74, 83, 83, 80, 78, 85, 82, 83, 85, 83, 86, 79, 78, 80, 80, 84, 85, 78, 81, 80, 77, 75, 80, 80, 77, 82, 77], ![85, 75, 79, 86, 78, 79, 79, 82, 85, 81, 78, 77, 84, 81, 81, 77, 79, 81, 83, 84, 82, 85, 78, 76, 81, 78, 83, 85, 80, 80, 76, 75, 80, 81, 77, 79, 90, 85, 79, 81, 83, 77, 84, 85, 85, 81, 77, 82, 81], ![85, 83, 78, 85, 83, 77, 80, 83, 83, 84, 78, 83, 84, 80, 81, 83, 80, 79, 80, 79, 83, 82, 75, 79, 81, 84, 81, 73, 85, 86, 80, 75, 81, 82, 86, 75, 84, 80, 77, 79, 79, 86, 82, 79, 81, 77, 77, 79, 78], ![86, 80, 77, 80, 81, 83, 80, 76, 83, 81, 77, 79, 83, 78, 83, 77, 80, 83, 76, 82, 78, 83, 83, 84, 84, 85, 79, 73, 82, 88, 76, 81, 82, 81, 79, 85, 74, 83, 81, 78, 83, 84, 81, 76, 76, 85, 78, 76, 83], ![78, 80, 82, 83, 82, 88, 83, 78, 82, 82, 78, 82, 85, 81, 82, 82, 75, 84, 76, 77, 82, 77, 85, 77, 81, 84, 77, 76, 82, 89, 80, 84, 75, 82, 84, 77, 80, 80, 87, 81, 79, 83, 86, 80, 81, 79, 82, 78, 81], ![80, 85, 80, 85, 77, 84, 80, 82, 78, 81, 78, 83, 79, 82, 81, 77, 79, 82, 86, 80, 76, 81, 87, 85, 78, 82, 81, 83, 77, 74, 82, 80, 75, 84, 78, 76, 83, 83, 75, 80, 80, 81, 86, 80, 81, 85, 86, 77, 84], ![75, 80, 83, 80, 84, 76, 80, 82, 80, 77, 85, 79, 78, 80, 77, 81, 82, 83, 86, 81, 80, 82, 82, 75, 84, 83, 80, 86, 78, 79, 85, 79, 75, 84, 83, 82, 83, 81, 85, 78, 87, 78, 82, 86, 74, 78, 80, 85, 79], ![85, 85, 87, 76, 79, 81, 82, 83, 79, 78, 88, 82, 72, 81, 84, 82, 85, 79, 85, 79, 76, 76, 85, 78, 83, 79, 80, 81, 74, 74, 84, 77, 85, 82, 80, 87, 84, 76, 82, 81, 80, 83, 79, 76, 85, 80, 82, 81, 81]]

def envelope0024FibreMax : Fin 9 -> Nat :=
  ![89, 90, 90, 86, 88, 89, 87, 87, 88]

theorem envelope0024 : TailR263EvenOneDiagonalRange 5635786 5663964 := by
  intro N hLower hStop
  have hNUpper : N <= 5663963 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5663963 (envelope0024BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5663963 (envelope0024CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5663963 (envelope0024FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5663963) (count := 142525) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0024BaseCounts, envelope0024CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0024FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0024FibreCounts, envelope0024FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0024FibreMax cell) <=
          ∑ cell : Fin 9, envelope0024FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0024FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0024BaseCounts, envelope0024FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0025BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 89520
  | .evenTwoCell residue => ![1992, 1989, 1992, 1984, 1995, 1982, 1995, 1993, 1991] residue

def envelope0025CellCounts : Fin 9 -> Nat :=
  ![3976, 3974, 3980, 3978, 3962, 3989, 3980, 3983, 3987]

def envelope0025FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![79, 78, 75, 81, 79, 81, 80, 87, 83, 87, 78, 81, 80, 79, 76, 86, 78, 82, 79, 83, 82, 79, 79, 88, 79, 82, 82, 83, 78, 80, 79, 82, 80, 82, 78, 83, 80, 76, 83, 89, 80, 81, 77, 87, 86, 80, 76, 89, 84], ![75, 88, 85, 78, 83, 79, 83, 86, 76, 78, 80, 85, 79, 84, 80, 91, 83, 74, 77, 78, 85, 82, 74, 84, 83, 80, 78, 85, 82, 83, 86, 83, 86, 79, 78, 82, 80, 84, 85, 78, 82, 80, 78, 75, 80, 81, 78, 83, 78], ![85, 75, 79, 88, 78, 82, 79, 82, 85, 81, 78, 78, 84, 82, 81, 77, 81, 81, 83, 85, 82, 86, 79, 77, 81, 78, 83, 85, 81, 80, 77, 75, 81, 81, 77, 79, 90, 85, 81, 81, 83, 77, 84, 85, 86, 81, 78, 82, 81], ![85, 84, 78, 88, 83, 77, 80, 83, 83, 84, 79, 83, 85, 80, 81, 83, 80, 79, 81, 79, 84, 82, 75, 79, 81, 84, 83, 74, 86, 88, 80, 75, 81, 83, 87, 75, 85, 80, 77, 80, 79, 86, 83, 81, 82, 78, 77, 80, 78], ![86, 81, 77, 80, 81, 83, 81, 76, 84, 81, 78, 79, 83, 78, 83, 77, 81, 83, 78, 82, 79, 83, 83, 84, 85, 85, 80, 73, 82, 88, 76, 81, 83, 83, 80, 85, 75, 83, 81, 78, 84, 84, 81, 76, 76, 85, 78, 76, 83], ![79, 80, 82, 83, 82, 88, 84, 78, 83, 82, 78, 84, 85, 81, 83, 82, 76, 85, 76, 77, 84, 77, 86, 77, 82, 85, 77, 77, 82, 89, 82, 84, 75, 82, 84, 77, 80, 80, 88, 81, 79, 84, 86, 81, 81, 79, 82, 79, 81], ![80, 87, 80, 85, 78, 84, 81, 82, 78, 81, 78, 84, 80, 82, 82, 77, 80, 82, 87, 80, 77, 81, 88, 85, 78, 82, 82, 83, 77, 74, 82, 80, 76, 84, 79, 76, 84, 85, 76, 80, 80, 81, 86, 80, 81, 86, 86, 79, 84], ![75, 80, 84, 80, 85, 76, 80, 83, 80, 79, 86, 79, 78, 80, 77, 81, 82, 83, 86, 81, 80, 83, 82, 76, 84, 84, 80, 87, 78, 80, 85, 79, 75, 84, 83, 84, 83, 85, 85, 79, 87, 79, 82, 86, 74, 79, 80, 85, 80], ![86, 85, 87, 76, 79, 81, 82, 84, 79, 78, 89, 83, 72, 81, 85, 82, 86, 80, 88, 80, 78, 76, 85, 78, 83, 80, 80, 81, 74, 74, 85, 77, 86, 83, 80, 88, 84, 77, 82, 81, 80, 84, 79, 78, 85, 80, 82, 82, 82]]

def envelope0025FibreMax : Fin 9 -> Nat :=
  ![89, 91, 90, 88, 88, 89, 88, 87, 89]

theorem envelope0025 : TailR263EvenOneDiagonalRange 5663964 5692283 := by
  intro N hLower hStop
  have hNUpper : N <= 5692282 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5692282 (envelope0025BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5692282 (envelope0025CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5692282 (envelope0025FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5692282) (count := 143242) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0025BaseCounts, envelope0025CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0025FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0025FibreCounts, envelope0025FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0025FibreMax cell) <=
          ∑ cell : Fin 9, envelope0025FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0025FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0025BaseCounts, envelope0025FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0026BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 89965
  | .evenTwoCell residue => ![2004, 2001, 2005, 1995, 2006, 1989, 2001, 2003, 2002] residue

def envelope0026CellCounts : Fin 9 -> Nat :=
  ![3993, 3998, 3997, 3995, 3984, 4008, 3999, 3998, 4008]

def envelope0026FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![80, 78, 75, 81, 80, 81, 82, 87, 84, 87, 78, 81, 80, 79, 77, 86, 79, 82, 79, 83, 83, 79, 80, 88, 80, 82, 82, 83, 78, 80, 79, 82, 81, 82, 78, 83, 80, 77, 83, 91, 80, 82, 77, 87, 86, 80, 76, 90, 85], ![75, 88, 85, 79, 84, 79, 84, 86, 76, 78, 80, 86, 80, 85, 81, 91, 83, 74, 77, 78, 85, 83, 74, 84, 83, 80, 78, 85, 83, 86, 86, 84, 88, 80, 78, 82, 80, 85, 85, 79, 82, 80, 79, 75, 81, 82, 79, 84, 79], ![85, 75, 81, 88, 80, 82, 79, 83, 85, 81, 78, 78, 84, 82, 81, 77, 81, 81, 83, 86, 82, 87, 79, 77, 82, 78, 83, 86, 81, 80, 78, 75, 82, 81, 77, 81, 90, 87, 81, 81, 83, 77, 84, 86, 86, 82, 78, 82, 81], ![85, 84, 78, 88, 83, 77, 80, 83, 83, 86, 79, 84, 85, 80, 81, 84, 80, 80, 81, 80, 84, 82, 75, 79, 81, 85, 83, 75, 87, 88, 80, 76, 81, 83, 87, 76, 85, 80, 77, 80, 79, 87, 84, 82, 83, 78, 79, 80, 78], ![87, 82, 79, 80, 81, 84, 81, 77, 84, 82, 78, 79, 84, 78, 83, 78, 81, 84, 78, 83, 79, 83, 83, 85, 85, 86, 81, 74, 82, 88, 76, 82, 83, 84, 80, 86, 75, 83, 81, 78, 84, 84, 82, 77, 76, 85, 78, 77, 84], ![79, 80, 82, 84, 82, 89, 84, 79, 84, 82, 79, 84, 85, 82, 85, 83, 76, 85, 77, 77, 84, 77, 86, 77, 83, 85, 78, 77, 83, 89, 82, 84, 76, 82, 84, 77, 81, 80, 88, 81, 81, 84, 86, 81, 81, 79, 83, 79, 82], ![80, 88, 80, 86, 78, 85, 82, 82, 78, 82, 78, 84, 80, 82, 82, 78, 81, 83, 87, 80, 77, 81, 88, 85, 78, 82, 82, 83, 78, 74, 83, 81, 76, 85, 79, 76, 85, 85, 77, 81, 80, 81, 86, 80, 84, 86, 87, 79, 84], ![75, 80, 84, 80, 85, 76, 81, 83, 81, 79, 86, 79, 79, 80, 77, 81, 82, 83, 87, 82, 81, 83, 83, 76, 85, 84, 80, 87, 79, 80, 85, 81, 75, 84, 84, 84, 84, 85, 85, 79, 87, 79, 83, 86, 75, 79, 80, 85, 80], ![88, 86, 89, 76, 79, 81, 82, 84, 80, 78, 90, 83, 74, 82, 85, 83, 87, 80, 89, 80, 78, 76, 85, 78, 84, 80, 81, 81, 74, 75, 85, 78, 87, 83, 81, 88, 84, 77, 82, 81, 80, 84, 79, 78, 85, 80, 83, 82, 83]]

def envelope0026FibreMax : Fin 9 -> Nat :=
  ![91, 91, 90, 88, 88, 89, 88, 87, 90]

theorem envelope0026 : TailR263EvenOneDiagonalRange 5692283 5720744 := by
  intro N hLower hStop
  have hNUpper : N <= 5720743 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5720743 (envelope0026BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5720743 (envelope0026CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5720743 (envelope0026FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5720743) (count := 143951) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0026BaseCounts, envelope0026CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0026FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0026FibreCounts, envelope0026FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0026FibreMax cell) <=
          ∑ cell : Fin 9, envelope0026FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0026FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0026BaseCounts, envelope0026FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0027BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 90410
  | .evenTwoCell residue => ![2015, 2010, 2012, 2004, 2016, 2000, 2010, 2014, 2013] residue

def envelope0027CellCounts : Fin 9 -> Nat :=
  ![4012, 4018, 4014, 4017, 4005, 4032, 4022, 4018, 4028]

def envelope0027FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![80, 78, 75, 82, 80, 83, 82, 87, 84, 87, 78, 82, 80, 80, 77, 86, 79, 82, 79, 85, 83, 80, 80, 88, 80, 82, 82, 83, 78, 80, 80, 82, 82, 83, 78, 83, 81, 77, 85, 91, 81, 83, 78, 87, 86, 80, 77, 90, 86], ![75, 88, 85, 80, 84, 79, 84, 87, 76, 78, 81, 86, 81, 85, 82, 91, 83, 74, 77, 78, 86, 83, 75, 86, 83, 80, 79, 86, 83, 87, 87, 84, 88, 80, 78, 82, 81, 85, 87, 79, 82, 80, 79, 76, 82, 83, 80, 84, 79], ![85, 76, 81, 89, 82, 82, 79, 83, 85, 81, 79, 78, 84, 83, 81, 77, 81, 81, 85, 86, 83, 87, 79, 77, 82, 78, 84, 86, 82, 80, 78, 76, 82, 81, 79, 81, 92, 87, 81, 81, 83, 77, 85, 86, 86, 82, 78, 82, 81], ![86, 85, 79, 88, 83, 77, 80, 84, 84, 86, 80, 85, 85, 80, 81, 84, 80, 80, 83, 80, 85, 83, 75, 79, 82, 86, 84, 76, 88, 88, 80, 76, 81, 83, 87, 76, 85, 81, 77, 80, 81, 88, 84, 84, 83, 78, 79, 80, 78], ![88, 82, 80, 80, 81, 84, 82, 77, 85, 82, 78, 79, 84, 78, 84, 78, 82, 84, 79, 83, 79, 85, 83, 85, 85, 86, 81, 75, 82, 88, 76, 82, 85, 85, 81, 86, 75, 83, 81, 79, 84, 85, 82, 77, 76, 87, 78, 78, 86], ![79, 80, 82, 84, 83, 89, 85, 80, 87, 83, 79, 84, 85, 83, 85, 83, 77, 85, 77, 77, 85, 77, 86, 79, 83, 86, 79, 77, 83, 90, 82, 85, 76, 82, 84, 77, 81, 82, 88, 83, 82, 85, 86, 81, 81, 80, 83, 80, 82], ![81, 89, 80, 86, 78, 85, 82, 82, 78, 82, 78, 85, 80, 83, 83, 78, 83, 83, 87, 81, 77, 82, 88, 85, 78, 82, 82, 85, 78, 75, 84, 81, 76, 85, 79, 77, 85, 86, 79, 82, 80, 81, 87, 81, 84, 87, 87, 80, 85], ![75, 81, 84, 81, 85, 77, 81, 84, 81, 80, 87, 80, 79, 80, 77, 81, 83, 84, 87, 82, 81, 84, 83, 78, 85, 87, 80, 88, 79, 80, 85, 81, 75, 85, 84, 84, 84, 85, 86, 79, 88, 79, 83, 87, 75, 79, 80, 85, 80], ![88, 87, 89, 76, 79, 81, 84, 85, 80, 79, 90, 83, 75, 83, 87, 84, 87, 81, 89, 80, 78, 77, 85, 79, 84, 80, 81, 81, 74, 75, 85, 78, 87, 84, 81, 88, 84, 78, 82, 81, 81, 84, 80, 78, 85, 81, 83, 83, 84]]

def envelope0027FibreMax : Fin 9 -> Nat :=
  ![91, 91, 92, 88, 88, 90, 89, 88, 90]

theorem envelope0027 : TailR263EvenOneDiagonalRange 5720744 5749347 := by
  intro N hLower hStop
  have hNUpper : N <= 5749346 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5749346 (envelope0027BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5749346 (envelope0027CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5749346 (envelope0027FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5749346) (count := 144670) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0027BaseCounts, envelope0027CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0027FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0027FibreCounts, envelope0027FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0027FibreMax cell) <=
          ∑ cell : Fin 9, envelope0027FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0027FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0027BaseCounts, envelope0027FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0028BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 90860
  | .evenTwoCell residue => ![2027, 2019, 2018, 2016, 2026, 2012, 2021, 2024, 2022] residue

def envelope0028CellCounts : Fin 9 -> Nat :=
  ![4031, 4037, 4035, 4037, 4026, 4049, 4043, 4042, 4045]

def envelope0028FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![80, 78, 76, 83, 81, 83, 82, 87, 84, 88, 78, 82, 80, 80, 78, 87, 79, 82, 79, 85, 83, 81, 80, 89, 80, 82, 82, 83, 78, 81, 80, 83, 83, 83, 78, 84, 83, 79, 85, 92, 81, 83, 78, 87, 86, 81, 77, 91, 86], ![75, 88, 85, 80, 84, 80, 84, 87, 76, 79, 81, 87, 81, 86, 82, 91, 83, 76, 77, 79, 86, 84, 77, 86, 83, 80, 80, 87, 84, 88, 87, 84, 88, 80, 78, 83, 81, 86, 87, 79, 82, 80, 80, 77, 83, 83, 80, 84, 79], ![86, 77, 82, 90, 83, 83, 79, 83, 85, 83, 79, 79, 84, 83, 81, 78, 81, 83, 85, 88, 83, 87, 79, 77, 82, 79, 84, 87, 82, 80, 78, 76, 82, 83, 79, 82, 92, 87, 81, 81, 83, 77, 85, 86, 87, 82, 79, 82, 81], ![86, 86, 79, 88, 83, 77, 80, 85, 85, 86, 80, 85, 85, 80, 81, 85, 81, 81, 83, 80, 85, 83, 75, 79, 83, 86, 85, 76, 88, 90, 80, 76, 82, 83, 90, 76, 85, 81, 77, 80, 83, 88, 86, 84, 84, 78, 79, 80, 79], ![88, 83, 81, 80, 81, 85, 83, 78, 85, 82, 78, 79, 84, 78, 84, 81, 82, 85, 79, 83, 79, 85, 84, 85, 86, 86, 81, 76, 82, 88, 77, 83, 86, 86, 81, 86, 75, 83, 82, 79, 85, 85, 83, 77, 76, 87, 79, 78, 87], ![79, 80, 84, 84, 83, 89, 85, 80, 88, 83, 80, 84, 86, 83, 85, 83, 77, 85, 77, 77, 87, 77, 88, 79, 84, 86, 79, 77, 84, 90, 84, 85, 76, 82, 84, 77, 82, 82, 90, 83, 82, 85, 86, 81, 82, 80, 83, 80, 82], ![81, 89, 81, 86, 79, 85, 82, 82, 78, 82, 79, 85, 81, 84, 83, 79, 83, 83, 87, 82, 78, 82, 88, 85, 79, 82, 83, 85, 80, 76, 84, 82, 78, 85, 81, 77, 85, 86, 79, 82, 80, 82, 87, 81, 84, 87, 88, 80, 86], ![76, 81, 84, 81, 86, 78, 82, 85, 82, 81, 88, 80, 79, 80, 77, 82, 84, 84, 88, 84, 82, 84, 83, 78, 86, 87, 80, 88, 79, 80, 85, 81, 75, 85, 84, 85, 85, 86, 86, 80, 88, 80, 83, 88, 77, 79, 80, 85, 81], ![90, 87, 89, 76, 79, 81, 84, 85, 81, 79, 90, 84, 75, 85, 88, 84, 87, 81, 89, 80, 78, 77, 85, 79, 84, 81, 81, 81, 74, 75, 86, 79, 87, 85, 81, 88, 84, 78, 82, 83, 81, 85, 80, 78, 86, 81, 84, 84, 84]]

def envelope0028FibreMax : Fin 9 -> Nat :=
  ![92, 91, 92, 90, 88, 90, 89, 88, 90]

theorem envelope0028 : TailR263EvenOneDiagonalRange 5749347 5778093 := by
  intro N hLower hStop
  have hNUpper : N <= 5778092 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5778092 (envelope0028BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5778092 (envelope0028CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5778092 (envelope0028FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5778092) (count := 145390) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0028BaseCounts, envelope0028CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0028FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0028FibreCounts, envelope0028FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0028FibreMax cell) <=
          ∑ cell : Fin 9, envelope0028FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0028FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0028BaseCounts, envelope0028FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0029BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 91317
  | .evenTwoCell residue => ![2041, 2032, 2029, 2024, 2037, 2020, 2030, 2034, 2031] residue

def envelope0029CellCounts : Fin 9 -> Nat :=
  ![4055, 4059, 4058, 4058, 4039, 4071, 4062, 4063, 4063]

def envelope0029FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![80, 79, 76, 84, 83, 83, 83, 87, 84, 88, 78, 82, 81, 81, 79, 87, 79, 82, 79, 85, 86, 81, 81, 89, 80, 82, 82, 83, 79, 81, 83, 83, 83, 83, 79, 84, 85, 79, 86, 93, 81, 84, 78, 88, 86, 81, 77, 92, 86], ![75, 88, 86, 80, 84, 80, 84, 87, 76, 79, 82, 90, 82, 86, 82, 91, 83, 76, 78, 79, 89, 84, 77, 86, 83, 81, 82, 88, 86, 88, 87, 84, 88, 80, 78, 83, 81, 86, 87, 80, 83, 81, 80, 79, 83, 84, 80, 84, 79], ![87, 78, 83, 91, 83, 83, 79, 83, 85, 83, 81, 79, 84, 84, 81, 78, 83, 84, 87, 88, 83, 87, 79, 77, 82, 79, 84, 87, 82, 81, 78, 76, 83, 84, 80, 83, 93, 87, 81, 81, 83, 78, 85, 87, 87, 82, 79, 84, 82], ![87, 86, 79, 88, 83, 77, 81, 86, 85, 87, 80, 86, 85, 80, 81, 85, 81, 81, 83, 80, 85, 83, 75, 82, 83, 88, 85, 76, 90, 90, 80, 78, 83, 84, 90, 76, 85, 81, 78, 82, 83, 89, 86, 84, 84, 78, 79, 81, 79], ![88, 83, 81, 80, 81, 85, 83, 78, 85, 82, 78, 79, 84, 78, 85, 82, 83, 85, 79, 83, 79, 86, 84, 86, 86, 86, 81, 76, 82, 89, 78, 84, 87, 86, 81, 87, 75, 84, 82, 80, 85, 85, 83, 77, 76, 87, 79, 79, 87], ![79, 80, 84, 85, 83, 92, 86, 81, 88, 83, 80, 85, 86, 84, 85, 83, 78, 86, 77, 78, 87, 79, 88, 80, 84, 86, 80, 78, 85, 91, 84, 85, 76, 82, 84, 78, 82, 82, 90, 83, 83, 85, 86, 81, 82, 82, 83, 80, 82], ![83, 89, 81, 87, 79, 85, 82, 82, 78, 83, 79, 86, 82, 84, 84, 79, 83, 84, 87, 83, 78, 82, 88, 85, 79, 84, 83, 85, 82, 76, 84, 82, 78, 85, 81, 77, 86, 86, 79, 82, 81, 83, 88, 81, 85, 87, 88, 81, 86], ![76, 82, 84, 82, 86, 79, 82, 86, 82, 82, 88, 81, 79, 82, 77, 82, 84, 84, 88, 85, 82, 85, 83, 78, 86, 87, 81, 88, 79, 80, 85, 81, 76, 85, 85, 85, 86, 87, 87, 81, 89, 80, 84, 88, 77, 79, 80, 85, 83], ![90, 88, 89, 76, 79, 81, 84, 85, 81, 79, 91, 84, 75, 85, 88, 84, 88, 81, 89, 80, 78, 77, 88, 79, 85, 81, 81, 82, 74, 76, 87, 79, 88, 85, 81, 88, 84, 78, 83, 83, 82, 85, 80, 81, 86, 82, 85, 84, 84]]

def envelope0029FibreMax : Fin 9 -> Nat :=
  ![93, 91, 93, 90, 89, 92, 89, 89, 91]

theorem envelope0029 : TailR263EvenOneDiagonalRange 5778093 5806983 := by
  intro N hLower hStop
  have hNUpper : N <= 5806982 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5806982 (envelope0029BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5806982 (envelope0029CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5806982 (envelope0029FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5806982) (count := 146123) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0029BaseCounts, envelope0029CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0029FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0029FibreCounts, envelope0029FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0029FibreMax cell) <=
          ∑ cell : Fin 9, envelope0029FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0029FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0029BaseCounts, envelope0029FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0030BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 91761
  | .evenTwoCell residue => ![2051, 2041, 2038, 2031, 2044, 2029, 2043, 2045, 2045] residue

def envelope0030CellCounts : Fin 9 -> Nat :=
  ![4076, 4077, 4076, 4084, 4064, 4089, 4084, 4081, 4086]

def envelope0030FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![81, 79, 76, 84, 83, 84, 83, 87, 84, 88, 78, 83, 82, 82, 79, 87, 79, 83, 79, 88, 86, 83, 81, 89, 82, 82, 82, 84, 79, 82, 83, 83, 83, 85, 79, 85, 85, 80, 86, 93, 81, 84, 78, 88, 87, 81, 78, 92, 86], ![75, 89, 86, 81, 85, 82, 84, 87, 76, 80, 83, 91, 83, 86, 82, 91, 83, 77, 78, 79, 89, 84, 77, 86, 84, 81, 83, 88, 86, 88, 87, 84, 88, 80, 79, 83, 81, 86, 87, 80, 84, 81, 82, 79, 85, 84, 80, 84, 79], ![87, 79, 83, 91, 83, 83, 80, 84, 85, 83, 81, 79, 84, 84, 81, 79, 83, 85, 87, 88, 83, 87, 79, 77, 83, 79, 85, 87, 82, 81, 78, 77, 84, 85, 82, 83, 93, 87, 82, 81, 83, 80, 87, 87, 87, 82, 79, 84, 83], ![87, 87, 79, 88, 83, 77, 82, 86, 87, 87, 80, 86, 87, 80, 82, 85, 83, 83, 83, 80, 85, 83, 78, 82, 85, 88, 85, 76, 90, 90, 81, 78, 84, 84, 90, 76, 85, 81, 80, 83, 85, 89, 86, 84, 85, 79, 80, 81, 79], ![88, 83, 81, 81, 82, 85, 84, 78, 85, 83, 78, 79, 85, 79, 86, 83, 83, 85, 79, 83, 80, 86, 85, 86, 87, 87, 81, 76, 83, 90, 79, 85, 87, 86, 81, 88, 77, 84, 82, 80, 85, 86, 83, 77, 76, 88, 80, 80, 89], ![80, 80, 85, 85, 85, 92, 88, 81, 88, 83, 81, 85, 87, 84, 85, 83, 78, 86, 78, 78, 89, 79, 89, 80, 84, 86, 80, 78, 85, 91, 84, 85, 76, 82, 84, 78, 82, 83, 90, 85, 83, 85, 86, 82, 82, 83, 83, 80, 83], ![84, 89, 82, 87, 79, 85, 82, 82, 79, 83, 81, 87, 82, 85, 84, 79, 83, 84, 87, 83, 80, 82, 88, 85, 80, 84, 83, 86, 82, 76, 86, 82, 78, 86, 81, 78, 86, 86, 80, 82, 81, 84, 88, 81, 86, 88, 89, 81, 88], ![77, 82, 85, 82, 87, 80, 82, 88, 82, 82, 88, 81, 79, 82, 77, 83, 84, 85, 89, 85, 82, 85, 83, 79, 86, 88, 81, 88, 79, 80, 85, 82, 76, 86, 85, 85, 86, 88, 87, 82, 89, 81, 84, 88, 78, 80, 80, 85, 83], ![90, 89, 89, 76, 79, 82, 84, 86, 82, 80, 91, 86, 75, 86, 88, 86, 88, 81, 89, 80, 78, 78, 88, 80, 85, 81, 82, 82, 75, 78, 87, 79, 88, 85, 81, 88, 84, 81, 83, 84, 82, 85, 81, 81, 87, 82, 86, 84, 84]]

def envelope0030FibreMax : Fin 9 -> Nat :=
  ![93, 91, 93, 90, 90, 92, 89, 89, 91]

theorem envelope0030 : TailR263EvenOneDiagonalRange 5806983 5836017 := by
  intro N hLower hStop
  have hNUpper : N <= 5836016 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5836016 (envelope0030BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5836016 (envelope0030CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5836016 (envelope0030FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5836016) (count := 146845) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0030BaseCounts, envelope0030CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0030FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0030FibreCounts, envelope0030FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0030FibreMax cell) <=
          ∑ cell : Fin 9, envelope0030FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0030FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0030BaseCounts, envelope0030FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0031BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 92227
  | .evenTwoCell residue => ![2062, 2050, 2050, 2042, 2054, 2042, 2053, 2054, 2053] residue

def envelope0031CellCounts : Fin 9 -> Nat :=
  ![4094, 4096, 4096, 4102, 4084, 4109, 4106, 4102, 4108]

def envelope0031FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![81, 80, 77, 84, 84, 84, 83, 87, 84, 88, 79, 83, 83, 82, 79, 87, 80, 83, 82, 88, 86, 83, 81, 89, 82, 83, 82, 84, 79, 82, 83, 83, 85, 85, 80, 85, 85, 81, 86, 93, 81, 84, 78, 90, 87, 82, 78, 92, 87], ![76, 89, 87, 81, 85, 82, 84, 88, 77, 81, 83, 91, 83, 86, 82, 91, 83, 77, 79, 80, 89, 84, 77, 87, 84, 83, 83, 89, 86, 88, 87, 84, 88, 81, 79, 84, 81, 86, 87, 81, 85, 82, 82, 80, 85, 84, 80, 84, 81], ![89, 79, 83, 91, 83, 83, 80, 84, 85, 84, 81, 79, 84, 84, 82, 80, 84, 86, 87, 88, 83, 88, 79, 78, 83, 80, 86, 87, 82, 81, 79, 78, 85, 85, 82, 85, 93, 87, 82, 82, 83, 81, 87, 87, 87, 82, 80, 85, 83], ![87, 88, 79, 88, 83, 79, 82, 88, 87, 87, 80, 86, 87, 81, 82, 86, 86, 85, 83, 80, 85, 85, 78, 83, 85, 88, 85, 76, 90, 91, 81, 79, 84, 84, 90, 76, 85, 81, 80, 83, 85, 89, 86, 84, 85, 79, 80, 81, 80], ![88, 83, 81, 83, 82, 86, 84, 79, 85, 83, 78, 80, 86, 80, 87, 83, 83, 85, 79, 84, 80, 86, 85, 86, 87, 87, 81, 76, 85, 90, 80, 86, 87, 87, 81, 88, 79, 84, 82, 80, 85, 86, 83, 77, 77, 89, 81, 81, 89], ![80, 81, 85, 87, 85, 93, 88, 81, 88, 84, 81, 86, 87, 84, 85, 83, 78, 86, 79, 79, 89, 80, 89, 80, 84, 86, 81, 78, 86, 91, 84, 85, 76, 84, 85, 78, 84, 83, 92, 86, 83, 85, 86, 82, 83, 83, 83, 80, 83], ![84, 91, 82, 87, 79, 85, 82, 82, 79, 83, 82, 87, 83, 85, 87, 79, 84, 84, 88, 84, 80, 82, 88, 85, 81, 84, 83, 87, 82, 78, 86, 82, 80, 86, 82, 78, 86, 86, 80, 82, 82, 84, 89, 82, 86, 89, 89, 81, 89], ![77, 85, 85, 83, 87, 80, 83, 88, 83, 82, 88, 81, 79, 83, 78, 83, 85, 85, 89, 85, 83, 85, 84, 79, 87, 88, 81, 88, 79, 80, 85, 83, 77, 86, 86, 85, 87, 89, 89, 82, 91, 81, 84, 88, 78, 80, 80, 85, 83], ![90, 89, 91, 76, 80, 83, 85, 86, 83, 80, 91, 86, 76, 87, 89, 86, 88, 81, 89, 81, 79, 78, 89, 81, 85, 81, 82, 83, 76, 78, 87, 81, 88, 85, 81, 88, 84, 81, 83, 84, 82, 87, 81, 82, 87, 83, 86, 85, 84]]

def envelope0031FibreMax : Fin 9 -> Nat :=
  ![93, 91, 93, 91, 90, 93, 91, 91, 91]

theorem envelope0031 : TailR263EvenOneDiagonalRange 5836017 5865197 := by
  intro N hLower hStop
  have hNUpper : N <= 5865196 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 5865196 (envelope0031BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 5865196 (envelope0031CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 5865196 (envelope0031FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 5865196) (count := 147584) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0031BaseCounts, envelope0031CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0031FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0031FibreCounts, envelope0031FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0031FibreMax cell) <=
          ∑ cell : Fin 9, envelope0031FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0031FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0031BaseCounts, envelope0031FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
