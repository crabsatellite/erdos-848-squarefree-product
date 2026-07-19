import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0112BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 138134
  | .evenTwoCell residue => ![3079, 3063, 3071, 3069, 3078, 3056, 3069, 3071, 3077] residue

def envelope0112CellCounts : Fin 9 -> Nat :=
  ![6131, 6129, 6133, 6141, 6131, 6140, 6136, 6145, 6150]

def envelope0112FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![127, 119, 115, 126, 124, 126, 124, 126, 124, 133, 120, 127, 127, 125, 122, 128, 121, 124, 118, 126, 130, 126, 120, 131, 127, 123, 119, 129, 128, 123, 120, 120, 129, 127, 120, 124, 127, 127, 129, 132, 124, 127, 122, 127, 128, 128, 124, 129, 129], ![120, 130, 123, 124, 126, 124, 124, 130, 127, 122, 124, 131, 122, 126, 121, 127, 126, 125, 129, 121, 132, 129, 121, 122, 122, 120, 126, 131, 126, 132, 133, 122, 132, 125, 120, 127, 120, 129, 127, 120, 127, 123, 120, 119, 125, 127, 126, 123, 121], ![133, 123, 125, 128, 126, 123, 121, 126, 129, 127, 121, 122, 128, 129, 123, 124, 125, 125, 125, 124, 124, 128, 121, 124, 125, 124, 127, 130, 123, 122, 122, 120, 124, 126, 127, 124, 134, 133, 122, 122, 127, 125, 128, 126, 124, 122, 125, 126, 121], ![127, 128, 124, 128, 124, 124, 122, 125, 123, 133, 128, 126, 127, 126, 127, 125, 123, 124, 121, 124, 127, 127, 121, 126, 121, 129, 129, 116, 124, 133, 130, 124, 125, 126, 132, 125, 126, 118, 120, 125, 126, 124, 129, 128, 126, 125, 124, 125, 121], ![130, 126, 125, 126, 122, 131, 127, 119, 124, 124, 123, 123, 125, 122, 132, 120, 123, 131, 119, 126, 124, 127, 126, 131, 124, 129, 127, 120, 124, 137, 123, 126, 124, 128, 125, 125, 120, 125, 124, 125, 126, 124, 128, 126, 117, 125, 126, 120, 127], ![120, 121, 129, 125, 127, 132, 126, 124, 127, 121, 127, 128, 130, 122, 128, 130, 116, 125, 128, 124, 126, 119, 129, 126, 125, 124, 127, 121, 127, 126, 123, 130, 119, 121, 129, 124, 125, 119, 130, 127, 123, 120, 130, 126, 130, 128, 124, 126, 126], ![122, 129, 127, 136, 122, 126, 126, 124, 117, 120, 124, 126, 128, 125, 128, 127, 125, 122, 130, 126, 119, 121, 132, 123, 123, 127, 125, 129, 123, 120, 125, 125, 121, 127, 121, 124, 127, 125, 125, 128, 121, 124, 134, 129, 126, 126, 128, 119, 129], ![121, 124, 124, 125, 126, 119, 122, 130, 128, 124, 127, 126, 121, 124, 122, 124, 128, 124, 132, 128, 125, 124, 126, 123, 131, 127, 121, 136, 125, 119, 123, 125, 124, 130, 122, 127, 128, 127, 125, 121, 127, 121, 124, 129, 126, 123, 124, 137, 126], ![131, 130, 127, 123, 120, 124, 131, 128, 126, 119, 129, 124, 119, 126, 130, 129, 134, 128, 130, 119, 123, 123, 127, 119, 127, 122, 124, 125, 114, 123, 130, 126, 130, 128, 122, 129, 126, 118, 126, 126, 124, 131, 123, 123, 130, 126, 128, 126, 124]]

def envelope0112FibreMax : Fin 9 -> Nat :=
  ![133, 133, 134, 133, 137, 132, 136, 137, 134]

theorem envelope0112 : TailR263EvenOneDiagonalRange 8741072 8784777 := by
  intro N hLower hStop
  have hNUpper : N <= 8784776 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8784776 (envelope0112BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8784776 (envelope0112CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8784776 (envelope0112FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8784776) (count := 221003) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0112BaseCounts, envelope0112CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0112FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0112FibreCounts, envelope0112FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0112FibreMax cell) <=
          ∑ cell : Fin 9, envelope0112FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0112FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0112BaseCounts, envelope0112FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0113BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 138828
  | .evenTwoCell residue => ![3097, 3077, 3088, 3084, 3094, 3070, 3086, 3088, 3091] residue

def envelope0113CellCounts : Fin 9 -> Nat :=
  ![6159, 6159, 6170, 6172, 6162, 6171, 6169, 6177, 6180]

def envelope0113FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![127, 119, 116, 127, 125, 128, 124, 126, 124, 133, 120, 128, 127, 126, 122, 128, 121, 124, 120, 129, 130, 128, 120, 131, 127, 124, 119, 130, 128, 124, 120, 121, 129, 127, 121, 126, 128, 129, 130, 132, 124, 127, 122, 128, 129, 128, 125, 129, 129], ![120, 131, 123, 125, 127, 126, 125, 130, 127, 123, 125, 132, 123, 126, 121, 127, 126, 126, 129, 123, 132, 129, 122, 122, 122, 121, 127, 132, 127, 132, 133, 122, 132, 126, 121, 127, 122, 129, 127, 121, 127, 123, 121, 120, 127, 128, 126, 123, 123], ![133, 125, 126, 130, 126, 124, 122, 127, 129, 128, 121, 122, 128, 129, 124, 125, 126, 127, 127, 125, 124, 128, 121, 125, 126, 124, 128, 130, 123, 122, 123, 120, 125, 127, 130, 127, 136, 133, 122, 122, 128, 126, 130, 126, 124, 122, 126, 126, 122], ![127, 128, 124, 128, 124, 125, 123, 126, 125, 133, 129, 126, 128, 127, 128, 125, 126, 125, 121, 124, 127, 127, 124, 126, 122, 130, 130, 118, 124, 133, 131, 124, 126, 126, 132, 125, 126, 119, 121, 125, 126, 125, 129, 129, 127, 126, 125, 125, 122], ![130, 126, 125, 128, 123, 131, 128, 120, 124, 125, 124, 123, 126, 123, 133, 121, 124, 132, 120, 127, 125, 127, 127, 131, 124, 129, 127, 120, 126, 137, 124, 127, 125, 128, 126, 125, 121, 126, 125, 125, 126, 124, 129, 126, 117, 126, 127, 121, 128], ![120, 121, 130, 125, 128, 133, 127, 124, 128, 122, 128, 128, 132, 122, 128, 130, 116, 125, 130, 124, 127, 119, 130, 127, 126, 125, 128, 121, 127, 126, 123, 130, 119, 123, 130, 125, 126, 122, 130, 130, 123, 121, 130, 128, 130, 128, 124, 126, 126], ![122, 130, 129, 136, 122, 127, 126, 125, 119, 120, 125, 126, 128, 126, 129, 128, 127, 122, 132, 126, 121, 121, 133, 123, 124, 129, 126, 130, 123, 121, 126, 125, 123, 128, 121, 125, 127, 125, 125, 128, 121, 125, 135, 130, 126, 126, 128, 119, 130], ![122, 127, 124, 125, 127, 120, 124, 131, 129, 125, 127, 126, 122, 124, 123, 125, 129, 125, 132, 128, 125, 125, 126, 126, 131, 128, 122, 137, 125, 119, 123, 127, 124, 130, 122, 127, 128, 128, 125, 123, 128, 122, 124, 129, 127, 123, 124, 138, 126], ![131, 131, 128, 123, 121, 124, 132, 130, 126, 119, 129, 124, 120, 127, 131, 130, 134, 129, 131, 119, 123, 124, 127, 120, 127, 122, 124, 125, 116, 124, 131, 128, 130, 128, 122, 129, 126, 120, 126, 127, 124, 131, 123, 123, 131, 128, 129, 128, 125]]

def envelope0113FibreMax : Fin 9 -> Nat :=
  ![133, 133, 136, 133, 137, 133, 136, 138, 134]

theorem envelope0113 : TailR263EvenOneDiagonalRange 8784777 8828700 := by
  intro N hLower hStop
  have hNUpper : N <= 8828699 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8828699 (envelope0113BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8828699 (envelope0113CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8828699 (envelope0113FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8828699) (count := 222122) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0113BaseCounts, envelope0113CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0113FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0113FibreCounts, envelope0113FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0113FibreMax cell) <=
          ∑ cell : Fin 9, envelope0113FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0113FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0113BaseCounts, envelope0113FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0114BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 139523
  | .evenTwoCell residue => ![3112, 3093, 3102, 3096, 3110, 3085, 3103, 3104, 3105] residue

def envelope0114CellCounts : Fin 9 -> Nat :=
  ![6193, 6189, 6200, 6204, 6197, 6202, 6193, 6205, 6209]

def envelope0114FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![127, 121, 117, 130, 127, 129, 127, 126, 124, 133, 121, 128, 129, 127, 122, 129, 121, 125, 123, 130, 132, 128, 120, 131, 127, 125, 120, 130, 129, 124, 120, 121, 129, 127, 123, 126, 130, 129, 130, 132, 124, 127, 123, 128, 130, 129, 125, 129, 129], ![121, 131, 124, 125, 127, 126, 125, 130, 129, 124, 127, 133, 123, 126, 121, 127, 127, 126, 129, 124, 132, 129, 122, 123, 123, 122, 128, 133, 128, 133, 133, 122, 133, 126, 122, 127, 122, 129, 127, 121, 128, 126, 124, 122, 127, 130, 126, 123, 123], ![135, 126, 127, 130, 127, 124, 123, 128, 130, 128, 121, 122, 128, 129, 125, 125, 128, 127, 127, 125, 125, 128, 122, 127, 127, 125, 128, 130, 123, 124, 125, 121, 127, 128, 131, 128, 136, 133, 122, 122, 128, 127, 130, 126, 124, 122, 126, 127, 123], ![127, 128, 124, 128, 126, 125, 125, 128, 125, 134, 131, 126, 129, 127, 129, 126, 126, 125, 122, 124, 128, 128, 124, 127, 122, 131, 130, 118, 125, 134, 131, 125, 126, 126, 132, 125, 126, 120, 121, 127, 127, 126, 130, 129, 127, 127, 126, 127, 124], ![131, 126, 126, 130, 125, 132, 128, 121, 125, 126, 125, 124, 126, 124, 133, 121, 125, 132, 121, 129, 125, 128, 127, 131, 124, 129, 128, 120, 126, 139, 125, 127, 126, 129, 126, 126, 121, 127, 125, 126, 128, 124, 129, 127, 117, 127, 129, 122, 129], ![121, 122, 130, 126, 128, 134, 127, 125, 128, 123, 129, 129, 132, 123, 128, 130, 116, 126, 130, 126, 127, 120, 130, 128, 126, 126, 128, 125, 127, 126, 123, 130, 119, 125, 130, 126, 126, 123, 132, 131, 124, 122, 131, 129, 131, 128, 124, 126, 126], ![122, 131, 129, 136, 122, 127, 126, 126, 122, 121, 125, 126, 129, 126, 130, 129, 127, 123, 132, 126, 121, 121, 133, 124, 124, 129, 126, 130, 124, 122, 126, 127, 123, 129, 122, 125, 127, 125, 125, 128, 122, 126, 136, 130, 127, 127, 128, 120, 131], ![122, 127, 124, 126, 127, 122, 124, 132, 129, 125, 127, 126, 122, 125, 123, 126, 130, 125, 132, 129, 126, 127, 129, 127, 132, 128, 122, 137, 125, 119, 124, 127, 126, 130, 122, 127, 128, 128, 126, 123, 129, 123, 124, 129, 130, 123, 125, 139, 127], ![131, 131, 128, 124, 121, 125, 132, 130, 126, 119, 130, 126, 122, 128, 132, 130, 134, 129, 131, 119, 124, 124, 128, 121, 127, 124, 124, 126, 118, 125, 131, 128, 130, 129, 122, 129, 127, 120, 127, 127, 126, 131, 123, 124, 132, 130, 131, 128, 125]]

def envelope0114FibreMax : Fin 9 -> Nat :=
  ![133, 133, 136, 134, 139, 134, 136, 139, 134]

theorem envelope0114 : TailR263EvenOneDiagonalRange 8828700 8872843 := by
  intro N hLower hStop
  have hNUpper : N <= 8872842 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8872842 (envelope0114BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8872842 (envelope0114CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8872842 (envelope0114FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8872842) (count := 223225) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0114BaseCounts, envelope0114CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0114FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0114FibreCounts, envelope0114FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0114FibreMax cell) <=
          ∑ cell : Fin 9, envelope0114FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0114FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0114BaseCounts, envelope0114FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0115BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 140216
  | .evenTwoCell residue => ![3125, 3108, 3117, 3110, 3126, 3104, 3121, 3121, 3121] residue

def envelope0115CellCounts : Fin 9 -> Nat :=
  ![6222, 6220, 6233, 6241, 6223, 6231, 6223, 6240, 6241]

def envelope0115FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![131, 121, 119, 131, 127, 130, 127, 126, 125, 134, 121, 130, 129, 128, 123, 129, 121, 125, 124, 131, 133, 128, 120, 131, 128, 126, 120, 131, 129, 124, 120, 121, 130, 129, 124, 128, 130, 129, 130, 132, 125, 128, 123, 129, 130, 129, 125, 129, 129], ![122, 132, 124, 125, 127, 126, 125, 132, 129, 126, 128, 133, 123, 126, 121, 128, 127, 127, 129, 125, 132, 129, 122, 125, 124, 125, 129, 133, 128, 133, 133, 123, 133, 127, 122, 129, 124, 129, 127, 122, 130, 127, 125, 122, 127, 130, 127, 124, 124], ![136, 126, 127, 130, 127, 125, 123, 129, 131, 128, 122, 122, 128, 130, 126, 126, 129, 130, 127, 125, 125, 129, 122, 128, 127, 125, 128, 131, 123, 126, 128, 123, 128, 129, 131, 128, 137, 134, 123, 123, 129, 127, 130, 127, 124, 122, 127, 128, 124], ![128, 129, 124, 129, 128, 127, 125, 129, 125, 135, 131, 127, 129, 128, 129, 126, 126, 125, 123, 125, 128, 131, 126, 128, 124, 131, 130, 119, 126, 135, 132, 126, 126, 126, 133, 125, 127, 120, 123, 127, 129, 127, 130, 129, 128, 127, 127, 129, 124], ![131, 127, 126, 130, 125, 132, 128, 121, 125, 127, 125, 125, 128, 125, 134, 122, 125, 133, 122, 130, 125, 128, 127, 131, 124, 129, 129, 121, 127, 140, 125, 128, 126, 129, 129, 126, 122, 127, 125, 126, 128, 124, 131, 127, 118, 128, 129, 123, 130], ![121, 123, 131, 127, 128, 135, 128, 125, 129, 124, 130, 129, 132, 124, 128, 132, 117, 126, 131, 126, 128, 122, 131, 129, 126, 126, 129, 125, 127, 126, 123, 130, 120, 125, 132, 126, 127, 123, 133, 131, 125, 122, 132, 131, 131, 128, 124, 126, 127], ![124, 131, 132, 136, 122, 127, 127, 126, 122, 121, 125, 128, 129, 127, 131, 129, 128, 123, 132, 126, 121, 121, 134, 124, 125, 129, 126, 131, 124, 123, 128, 128, 124, 129, 122, 125, 127, 125, 126, 129, 123, 127, 136, 130, 129, 128, 130, 122, 131], ![122, 128, 125, 127, 129, 122, 126, 132, 129, 125, 127, 126, 122, 125, 125, 127, 130, 125, 133, 129, 127, 127, 131, 127, 133, 128, 122, 137, 126, 120, 125, 128, 128, 130, 123, 128, 130, 130, 128, 124, 129, 125, 125, 129, 130, 124, 125, 140, 127], ![131, 131, 129, 125, 122, 125, 132, 130, 127, 120, 131, 127, 123, 128, 132, 130, 134, 129, 132, 122, 125, 125, 128, 122, 128, 125, 126, 128, 118, 126, 132, 128, 130, 129, 123, 130, 127, 121, 127, 127, 126, 132, 124, 126, 133, 131, 131, 128, 125]]

def envelope0115FibreMax : Fin 9 -> Nat :=
  ![134, 133, 137, 135, 140, 135, 136, 140, 134]

theorem envelope0115 : TailR263EvenOneDiagonalRange 8872843 8917207 := by
  intro N hLower hStop
  have hNUpper : N <= 8917206 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8917206 (envelope0115BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8917206 (envelope0115CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8917206 (envelope0115FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8917206) (count := 224343) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0115BaseCounts, envelope0115CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0115FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0115FibreCounts, envelope0115FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0115FibreMax cell) <=
          ∑ cell : Fin 9, envelope0115FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0115FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0115BaseCounts, envelope0115FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0116BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 140922
  | .evenTwoCell residue => ![3139, 3120, 3134, 3128, 3141, 3120, 3134, 3135, 3134] residue

def envelope0116CellCounts : Fin 9 -> Nat :=
  ![6254, 6248, 6267, 6266, 6257, 6264, 6257, 6267, 6269]

def envelope0116FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![131, 124, 119, 131, 127, 130, 127, 127, 125, 135, 121, 130, 129, 128, 123, 132, 122, 127, 125, 131, 133, 128, 120, 132, 130, 126, 121, 131, 129, 124, 120, 122, 131, 130, 126, 128, 131, 130, 130, 132, 127, 129, 123, 131, 131, 129, 125, 130, 131], ![122, 132, 124, 125, 127, 128, 126, 134, 131, 126, 128, 135, 123, 127, 121, 128, 128, 127, 129, 126, 132, 129, 124, 125, 128, 126, 129, 133, 128, 133, 134, 123, 134, 127, 122, 129, 124, 129, 129, 123, 132, 128, 125, 122, 127, 130, 127, 124, 125], ![138, 126, 127, 131, 128, 128, 124, 129, 131, 128, 123, 125, 129, 131, 127, 127, 129, 130, 127, 125, 126, 129, 123, 128, 127, 125, 128, 131, 124, 127, 129, 124, 129, 130, 131, 128, 139, 134, 124, 123, 129, 127, 130, 128, 125, 123, 129, 129, 125], ![128, 129, 124, 129, 129, 127, 126, 129, 126, 135, 132, 127, 130, 128, 129, 126, 126, 125, 124, 125, 130, 131, 127, 128, 125, 131, 131, 119, 127, 135, 132, 127, 126, 126, 134, 126, 129, 122, 124, 128, 129, 129, 130, 130, 128, 128, 127, 129, 124], ![132, 127, 127, 130, 126, 133, 129, 121, 126, 129, 126, 126, 128, 126, 134, 122, 126, 133, 123, 131, 126, 128, 129, 131, 125, 130, 130, 123, 130, 141, 126, 128, 127, 130, 129, 127, 122, 127, 125, 126, 128, 125, 131, 128, 119, 128, 130, 123, 130], ![121, 123, 132, 128, 129, 135, 129, 126, 130, 127, 130, 129, 132, 125, 129, 133, 118, 127, 132, 127, 130, 123, 131, 130, 126, 128, 130, 125, 128, 126, 123, 131, 120, 126, 134, 127, 127, 123, 133, 132, 125, 124, 132, 131, 131, 128, 124, 127, 127], ![124, 131, 132, 137, 122, 128, 128, 127, 122, 122, 126, 129, 130, 128, 131, 130, 128, 123, 132, 126, 121, 122, 134, 125, 125, 130, 127, 131, 125, 124, 128, 129, 124, 129, 122, 125, 127, 128, 126, 132, 124, 127, 137, 130, 132, 132, 130, 123, 132], ![123, 128, 126, 128, 129, 122, 126, 132, 129, 125, 128, 127, 123, 126, 126, 127, 131, 126, 134, 131, 127, 129, 131, 127, 133, 128, 124, 138, 126, 121, 125, 128, 128, 130, 123, 130, 130, 130, 129, 124, 129, 125, 126, 130, 131, 125, 126, 140, 127], ![131, 132, 129, 126, 123, 125, 132, 133, 128, 121, 131, 129, 123, 129, 132, 130, 134, 130, 132, 123, 126, 126, 128, 122, 129, 127, 127, 129, 119, 126, 132, 128, 130, 130, 124, 130, 128, 121, 127, 127, 127, 132, 126, 126, 134, 131, 131, 128, 125]]

def envelope0116FibreMax : Fin 9 -> Nat :=
  ![135, 135, 139, 135, 141, 135, 137, 140, 134]

theorem envelope0116 : TailR263EvenOneDiagonalRange 8917207 8961793 := by
  intro N hLower hStop
  have hNUpper : N <= 8961792 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 8961792 (envelope0116BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 8961792 (envelope0116CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 8961792 (envelope0116FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 8961792) (count := 225456) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0116BaseCounts, envelope0116CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0116FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0116FibreCounts, envelope0116FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0116FibreMax cell) <=
          ∑ cell : Fin 9, envelope0116FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0116FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0116BaseCounts, envelope0116FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0117BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 141631
  | .evenTwoCell residue => ![3158, 3138, 3154, 3144, 3155, 3133, 3149, 3153, 3152] residue

def envelope0117CellCounts : Fin 9 -> Nat :=
  ![6286, 6278, 6296, 6297, 6287, 6297, 6288, 6301, 6299]

def envelope0117FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![132, 124, 119, 131, 127, 130, 128, 127, 127, 135, 121, 130, 129, 128, 125, 133, 124, 127, 125, 131, 133, 128, 121, 132, 131, 127, 121, 131, 130, 125, 122, 126, 133, 131, 127, 128, 131, 131, 130, 133, 128, 130, 123, 131, 132, 129, 126, 131, 132], ![122, 132, 124, 125, 128, 128, 128, 134, 131, 127, 128, 135, 126, 127, 122, 129, 128, 127, 131, 126, 134, 132, 125, 127, 128, 126, 130, 133, 128, 135, 134, 124, 134, 127, 122, 129, 124, 131, 129, 123, 132, 128, 125, 122, 127, 133, 127, 126, 125], ![138, 126, 128, 131, 129, 129, 124, 129, 132, 129, 124, 127, 130, 133, 128, 127, 129, 130, 127, 126, 127, 130, 123, 128, 127, 125, 128, 132, 125, 128, 130, 125, 129, 130, 131, 129, 139, 136, 124, 124, 129, 127, 130, 128, 126, 124, 130, 129, 127], ![129, 130, 125, 131, 130, 128, 126, 129, 126, 137, 132, 128, 130, 128, 130, 127, 126, 126, 124, 127, 130, 132, 127, 128, 125, 132, 131, 119, 127, 136, 132, 127, 126, 127, 134, 130, 130, 124, 124, 128, 129, 130, 131, 131, 128, 128, 127, 130, 125], ![132, 128, 127, 130, 126, 133, 129, 123, 126, 131, 128, 127, 129, 126, 134, 123, 128, 134, 123, 131, 126, 128, 130, 132, 125, 131, 131, 123, 131, 141, 126, 129, 128, 131, 130, 127, 122, 127, 126, 127, 129, 125, 133, 129, 120, 129, 130, 123, 130], ![122, 124, 133, 132, 129, 136, 129, 127, 130, 127, 130, 129, 132, 126, 130, 134, 118, 128, 132, 128, 130, 125, 132, 131, 127, 128, 130, 126, 128, 127, 124, 131, 120, 127, 134, 128, 128, 124, 134, 132, 126, 124, 133, 131, 131, 128, 127, 127, 128], ![124, 131, 132, 138, 123, 129, 128, 127, 123, 122, 127, 130, 132, 129, 132, 130, 128, 123, 132, 126, 122, 123, 135, 125, 126, 130, 128, 132, 126, 125, 129, 129, 126, 131, 122, 125, 127, 128, 127, 132, 126, 128, 138, 131, 133, 132, 131, 123, 132], ![123, 130, 128, 130, 130, 122, 126, 132, 129, 125, 129, 127, 125, 126, 127, 129, 132, 126, 135, 131, 130, 129, 131, 127, 133, 128, 125, 138, 127, 121, 125, 129, 129, 131, 125, 131, 131, 130, 130, 124, 129, 125, 127, 131, 132, 127, 126, 140, 128], ![132, 134, 130, 126, 123, 125, 133, 133, 130, 121, 134, 129, 123, 129, 133, 130, 135, 130, 133, 123, 126, 126, 129, 122, 131, 128, 129, 130, 119, 126, 132, 128, 131, 130, 124, 132, 128, 121, 128, 128, 128, 133, 127, 127, 134, 131, 131, 129, 125]]

def envelope0117FibreMax : Fin 9 -> Nat :=
  ![135, 135, 139, 137, 141, 136, 138, 140, 135]

theorem envelope0117 : TailR263EvenOneDiagonalRange 8961793 9006601 := by
  intro N hLower hStop
  have hNUpper : N <= 9006600 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9006600 (envelope0117BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9006600 (envelope0117CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9006600 (envelope0117FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9006600) (count := 226596) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0117BaseCounts, envelope0117CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0117FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0117FibreCounts, envelope0117FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0117FibreMax cell) <=
          ∑ cell : Fin 9, envelope0117FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0117FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0117BaseCounts, envelope0117FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0118BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 142334
  | .evenTwoCell residue => ![3173, 3154, 3169, 3159, 3173, 3145, 3163, 3168, 3169] residue

def envelope0118CellCounts : Fin 9 -> Nat :=
  ![6319, 6312, 6324, 6332, 6324, 6331, 6319, 6328, 6329]

def envelope0118FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![132, 124, 119, 131, 127, 131, 128, 128, 127, 135, 121, 130, 131, 129, 126, 135, 125, 127, 125, 131, 133, 128, 121, 133, 132, 129, 121, 132, 132, 126, 123, 127, 134, 131, 128, 128, 131, 133, 130, 135, 129, 130, 123, 131, 133, 131, 127, 133, 133], ![123, 132, 125, 126, 128, 131, 130, 134, 131, 128, 128, 136, 126, 128, 122, 129, 128, 127, 131, 128, 134, 134, 125, 127, 128, 127, 131, 135, 129, 136, 135, 124, 134, 127, 122, 130, 126, 132, 131, 123, 132, 128, 125, 122, 128, 133, 128, 127, 128], ![138, 127, 128, 132, 129, 129, 124, 129, 132, 130, 125, 128, 132, 133, 128, 127, 129, 131, 129, 126, 128, 130, 123, 129, 127, 125, 129, 133, 127, 129, 130, 125, 129, 130, 132, 129, 142, 136, 125, 124, 129, 127, 133, 129, 127, 125, 130, 129, 127], ![130, 132, 126, 132, 131, 128, 126, 130, 127, 138, 133, 128, 130, 128, 130, 127, 128, 127, 126, 127, 131, 134, 127, 130, 126, 132, 132, 119, 127, 137, 132, 127, 127, 128, 136, 131, 131, 125, 124, 128, 131, 130, 132, 131, 128, 128, 128, 130, 126], ![133, 129, 127, 130, 128, 133, 130, 123, 128, 131, 131, 128, 130, 126, 135, 123, 130, 134, 123, 131, 126, 129, 132, 132, 126, 131, 132, 124, 132, 141, 127, 129, 130, 131, 131, 127, 122, 127, 128, 127, 130, 127, 133, 131, 120, 129, 131, 124, 132], ![122, 125, 134, 132, 131, 136, 130, 127, 130, 127, 130, 129, 133, 127, 132, 134, 119, 129, 133, 128, 131, 125, 134, 131, 128, 128, 130, 126, 128, 128, 125, 132, 121, 128, 135, 128, 131, 125, 134, 133, 128, 124, 135, 131, 131, 129, 127, 128, 129], ![124, 132, 133, 138, 124, 129, 130, 128, 124, 124, 128, 130, 132, 129, 132, 130, 128, 124, 133, 127, 123, 126, 135, 126, 126, 131, 129, 134, 126, 125, 129, 129, 126, 132, 123, 126, 127, 129, 127, 133, 126, 129, 138, 132, 133, 134, 131, 123, 132], ![125, 130, 129, 130, 130, 122, 126, 132, 132, 126, 130, 128, 125, 127, 128, 130, 133, 127, 135, 132, 130, 129, 131, 127, 133, 129, 125, 139, 127, 121, 126, 129, 130, 131, 125, 132, 131, 130, 130, 124, 129, 127, 127, 132, 132, 127, 128, 141, 129], ![134, 135, 130, 126, 124, 126, 135, 134, 130, 122, 134, 129, 123, 130, 133, 131, 136, 130, 133, 123, 126, 127, 129, 124, 131, 129, 130, 130, 119, 126, 132, 129, 131, 131, 124, 132, 128, 122, 130, 129, 129, 134, 127, 127, 136, 132, 131, 130, 126]]

def envelope0118FibreMax : Fin 9 -> Nat :=
  ![135, 136, 142, 138, 141, 136, 138, 141, 136]

theorem envelope0118 : TailR263EvenOneDiagonalRange 9006601 9051634 := by
  intro N hLower hStop
  have hNUpper : N <= 9051633 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9051633 (envelope0118BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9051633 (envelope0118CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9051633 (envelope0118FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9051633) (count := 227725) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0118BaseCounts, envelope0118CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0118FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0118FibreCounts, envelope0118FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0118FibreMax cell) <=
          ∑ cell : Fin 9, envelope0118FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0118FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0118BaseCounts, envelope0118FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0119BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 143048
  | .evenTwoCell residue => ![3188, 3170, 3184, 3173, 3188, 3159, 3182, 3184, 3186] residue

def envelope0119CellCounts : Fin 9 -> Nat :=
  ![6347, 6344, 6355, 6361, 6356, 6360, 6351, 6362, 6366]

def envelope0119FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![132, 124, 119, 132, 128, 131, 129, 128, 128, 135, 122, 131, 133, 130, 128, 135, 125, 128, 125, 133, 134, 128, 122, 133, 132, 129, 121, 133, 133, 128, 124, 127, 134, 131, 128, 128, 132, 133, 132, 135, 129, 130, 123, 132, 134, 132, 127, 134, 133], ![126, 133, 127, 127, 130, 131, 130, 134, 131, 129, 129, 136, 127, 128, 122, 129, 128, 128, 132, 129, 136, 134, 125, 127, 128, 127, 132, 135, 131, 136, 135, 124, 134, 127, 125, 131, 127, 133, 132, 123, 132, 128, 126, 124, 129, 134, 128, 127, 128], ![139, 127, 128, 132, 129, 130, 124, 129, 135, 131, 127, 130, 132, 134, 128, 127, 130, 131, 130, 127, 128, 130, 123, 129, 128, 127, 131, 135, 127, 129, 131, 125, 130, 131, 132, 130, 142, 136, 125, 125, 129, 129, 133, 131, 128, 125, 130, 129, 127], ![132, 134, 127, 132, 131, 128, 126, 130, 128, 138, 133, 130, 130, 128, 131, 128, 130, 130, 128, 127, 131, 134, 128, 130, 127, 134, 132, 119, 127, 137, 132, 128, 127, 129, 137, 131, 131, 125, 124, 129, 131, 131, 132, 132, 128, 128, 128, 131, 127], ![133, 129, 128, 130, 129, 134, 131, 124, 128, 131, 131, 128, 131, 128, 135, 124, 130, 134, 124, 131, 126, 130, 133, 134, 126, 132, 132, 124, 132, 142, 127, 130, 130, 131, 132, 127, 122, 128, 129, 129, 131, 128, 134, 132, 121, 130, 132, 127, 132], ![123, 125, 134, 133, 131, 137, 130, 127, 130, 127, 130, 129, 133, 128, 133, 134, 120, 129, 133, 129, 132, 126, 134, 131, 128, 128, 130, 127, 130, 129, 126, 133, 122, 129, 138, 129, 131, 126, 135, 133, 128, 124, 135, 132, 132, 130, 129, 129, 129], ![124, 134, 133, 139, 124, 130, 130, 130, 124, 126, 128, 131, 132, 129, 132, 132, 128, 125, 133, 128, 123, 127, 136, 127, 127, 132, 129, 135, 127, 125, 129, 129, 126, 134, 125, 127, 128, 130, 128, 134, 127, 129, 139, 132, 134, 134, 131, 123, 132], ![125, 131, 132, 130, 130, 122, 126, 133, 132, 126, 130, 128, 126, 127, 130, 132, 135, 128, 136, 132, 130, 129, 131, 128, 134, 131, 126, 139, 128, 122, 127, 131, 131, 131, 126, 132, 131, 130, 130, 125, 130, 127, 128, 132, 133, 129, 128, 142, 130], ![134, 135, 130, 127, 124, 128, 137, 135, 131, 123, 135, 129, 123, 130, 134, 132, 138, 131, 133, 124, 127, 128, 131, 124, 132, 129, 130, 131, 119, 126, 133, 129, 134, 131, 124, 132, 129, 123, 133, 130, 130, 134, 127, 127, 137, 132, 133, 131, 127]]

def envelope0119FibreMax : Fin 9 -> Nat :=
  ![135, 136, 142, 138, 142, 138, 139, 142, 138]

theorem envelope0119 : TailR263EvenOneDiagonalRange 9051634 9096892 := by
  intro N hLower hStop
  have hNUpper : N <= 9096891 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9096891 (envelope0119BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9096891 (envelope0119CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9096891 (envelope0119FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9096891) (count := 228864) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0119BaseCounts, envelope0119CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0119FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0119FibreCounts, envelope0119FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0119FibreMax cell) <=
          ∑ cell : Fin 9, envelope0119FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0119FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0119BaseCounts, envelope0119FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0120BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 143764
  | .evenTwoCell residue => ![3205, 3185, 3197, 3189, 3205, 3178, 3196, 3200, 3202] residue

def envelope0120CellCounts : Fin 9 -> Nat :=
  ![6382, 6374, 6386, 6393, 6386, 6389, 6386, 6395, 6399]

def envelope0120FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![132, 124, 120, 132, 130, 132, 129, 130, 128, 136, 123, 133, 134, 131, 128, 135, 126, 128, 126, 134, 135, 129, 122, 133, 132, 130, 122, 135, 134, 129, 124, 127, 134, 131, 128, 129, 132, 134, 132, 136, 129, 131, 124, 134, 136, 133, 128, 135, 133], ![128, 133, 129, 128, 130, 131, 130, 134, 131, 130, 129, 137, 127, 129, 122, 129, 129, 129, 133, 130, 136, 134, 125, 127, 128, 128, 132, 136, 132, 136, 135, 124, 135, 129, 126, 134, 128, 135, 133, 123, 132, 129, 126, 126, 130, 134, 128, 127, 128], ![139, 128, 128, 134, 129, 130, 125, 131, 135, 133, 128, 130, 132, 134, 128, 128, 130, 132, 132, 127, 129, 130, 123, 131, 131, 129, 131, 135, 127, 129, 131, 126, 130, 132, 133, 130, 142, 136, 125, 126, 131, 130, 135, 131, 128, 125, 130, 129, 128], ![133, 135, 127, 132, 131, 131, 126, 131, 128, 138, 133, 130, 131, 129, 132, 130, 130, 131, 129, 127, 131, 135, 129, 131, 128, 134, 132, 121, 127, 138, 133, 129, 128, 131, 137, 131, 131, 126, 126, 129, 132, 132, 132, 132, 128, 128, 129, 132, 127], ![133, 129, 128, 130, 129, 135, 132, 126, 130, 131, 131, 129, 131, 129, 136, 124, 130, 134, 124, 132, 127, 132, 134, 135, 127, 132, 132, 124, 133, 142, 128, 130, 130, 132, 132, 129, 123, 128, 131, 129, 132, 131, 134, 132, 122, 130, 133, 127, 132], ![123, 127, 135, 134, 131, 137, 130, 127, 130, 128, 131, 129, 134, 129, 134, 135, 121, 129, 134, 129, 133, 126, 136, 132, 128, 128, 131, 127, 131, 130, 126, 134, 123, 129, 139, 129, 131, 126, 135, 134, 128, 125, 136, 132, 134, 131, 129, 130, 129], ![125, 134, 134, 143, 125, 131, 132, 130, 125, 128, 129, 131, 132, 129, 132, 132, 129, 125, 134, 128, 125, 128, 137, 127, 128, 133, 130, 135, 127, 125, 129, 129, 127, 134, 127, 127, 129, 130, 128, 134, 128, 130, 140, 133, 135, 135, 132, 123, 133], ![126, 131, 133, 130, 130, 122, 127, 134, 133, 126, 130, 129, 126, 128, 131, 133, 136, 129, 136, 133, 130, 130, 132, 128, 135, 131, 126, 140, 128, 123, 128, 132, 132, 132, 126, 133, 131, 130, 131, 128, 131, 127, 128, 133, 133, 131, 129, 143, 131], ![134, 136, 131, 127, 126, 129, 138, 136, 131, 123, 135, 129, 124, 130, 135, 132, 138, 131, 134, 124, 131, 129, 132, 125, 132, 129, 132, 131, 121, 128, 133, 130, 134, 131, 124, 133, 130, 125, 133, 131, 130, 134, 128, 128, 137, 133, 133, 132, 127]]

def envelope0120FibreMax : Fin 9 -> Nat :=
  ![136, 137, 142, 138, 142, 139, 143, 143, 138]

theorem envelope0120 : TailR263EvenOneDiagonalRange 9096892 9142376 := by
  intro N hLower hStop
  have hNUpper : N <= 9142375 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9142375 (envelope0120BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9142375 (envelope0120CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9142375 (envelope0120FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9142375) (count := 230011) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0120BaseCounts, envelope0120CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0120FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0120FibreCounts, envelope0120FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0120FibreMax cell) <=
          ∑ cell : Fin 9, envelope0120FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0120FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0120BaseCounts, envelope0120FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0121BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 144484
  | .evenTwoCell residue => ![3222, 3199, 3216, 3203, 3222, 3196, 3211, 3216, 3219] residue

def envelope0121CellCounts : Fin 9 -> Nat :=
  ![6409, 6409, 6414, 6430, 6411, 6424, 6416, 6428, 6430]

def envelope0121FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![132, 127, 120, 133, 130, 132, 129, 131, 129, 138, 125, 134, 134, 131, 128, 135, 126, 130, 127, 135, 136, 129, 122, 133, 132, 130, 124, 135, 135, 129, 124, 127, 134, 131, 129, 129, 133, 134, 132, 136, 130, 131, 125, 135, 139, 133, 128, 135, 133], ![129, 135, 129, 128, 130, 132, 130, 135, 132, 131, 130, 137, 127, 129, 122, 132, 131, 130, 135, 130, 136, 134, 126, 127, 129, 130, 132, 136, 132, 137, 135, 127, 136, 130, 128, 134, 128, 135, 133, 123, 133, 129, 127, 126, 130, 135, 128, 128, 131], ![140, 128, 128, 134, 129, 131, 128, 132, 137, 133, 128, 130, 134, 134, 129, 128, 131, 132, 132, 127, 129, 130, 125, 131, 133, 129, 131, 135, 127, 129, 132, 126, 131, 132, 133, 130, 142, 136, 127, 127, 133, 131, 136, 131, 128, 125, 131, 129, 130], ![133, 135, 128, 132, 132, 131, 127, 131, 128, 138, 134, 131, 133, 130, 134, 131, 130, 132, 129, 127, 132, 135, 130, 133, 129, 134, 132, 121, 128, 139, 135, 130, 129, 131, 137, 131, 132, 127, 127, 130, 132, 132, 134, 132, 129, 130, 130, 134, 129], ![133, 129, 129, 130, 131, 135, 132, 126, 130, 131, 132, 129, 132, 130, 136, 124, 130, 134, 125, 132, 129, 132, 135, 135, 127, 132, 133, 125, 133, 143, 128, 132, 131, 132, 133, 129, 124, 130, 132, 130, 132, 131, 134, 133, 122, 131, 133, 128, 132], ![124, 127, 138, 134, 131, 137, 132, 127, 131, 128, 133, 131, 134, 130, 134, 135, 124, 130, 135, 131, 133, 126, 137, 133, 129, 129, 131, 129, 132, 131, 127, 134, 123, 130, 139, 130, 131, 126, 135, 134, 128, 126, 136, 133, 135, 132, 130, 130, 129], ![126, 135, 134, 143, 126, 131, 133, 132, 126, 130, 129, 131, 132, 129, 132, 133, 130, 126, 135, 129, 126, 130, 137, 128, 128, 134, 130, 135, 127, 125, 130, 130, 127, 134, 128, 128, 130, 131, 128, 135, 129, 131, 140, 133, 135, 135, 133, 124, 133], ![126, 131, 133, 130, 130, 124, 127, 135, 133, 127, 131, 130, 127, 129, 131, 134, 136, 129, 137, 133, 130, 131, 132, 129, 135, 132, 127, 144, 128, 124, 128, 134, 133, 134, 126, 133, 131, 130, 131, 129, 132, 127, 129, 133, 134, 132, 131, 144, 132], ![135, 136, 132, 130, 126, 130, 138, 137, 131, 123, 135, 130, 124, 131, 137, 132, 139, 132, 134, 127, 131, 129, 132, 125, 132, 129, 132, 132, 121, 130, 134, 130, 135, 132, 124, 136, 131, 126, 133, 131, 130, 134, 128, 128, 138, 133, 135, 133, 127]]

def envelope0121FibreMax : Fin 9 -> Nat :=
  ![139, 137, 142, 139, 143, 139, 143, 144, 139]

theorem envelope0121 : TailR263EvenOneDiagonalRange 9142376 9188087 := by
  intro N hLower hStop
  have hNUpper : N <= 9188086 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9188086 (envelope0121BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9188086 (envelope0121CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9188086 (envelope0121FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9188086) (count := 231159) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0121BaseCounts, envelope0121CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0121FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0121FibreCounts, envelope0121FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0121FibreMax cell) <=
          ∑ cell : Fin 9, envelope0121FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0121FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0121BaseCounts, envelope0121FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0122BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 145201
  | .evenTwoCell residue => ![3239, 3215, 3231, 3220, 3237, 3216, 3226, 3230, 3232] residue

def envelope0122CellCounts : Fin 9 -> Nat :=
  ![6446, 6439, 6449, 6461, 6448, 6454, 6446, 6455, 6462]

def envelope0122FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![134, 128, 121, 133, 131, 133, 130, 132, 131, 138, 126, 135, 134, 131, 128, 135, 127, 130, 127, 136, 136, 129, 123, 134, 135, 131, 125, 136, 135, 129, 124, 127, 136, 133, 130, 131, 133, 134, 135, 137, 131, 133, 125, 136, 139, 133, 128, 135, 133], ![130, 135, 130, 128, 130, 132, 131, 135, 134, 131, 130, 137, 127, 131, 123, 133, 133, 131, 135, 132, 136, 134, 126, 129, 130, 131, 132, 136, 132, 138, 137, 129, 137, 131, 128, 134, 128, 135, 133, 124, 133, 130, 127, 126, 130, 135, 129, 129, 132], ![142, 128, 128, 134, 130, 131, 131, 133, 137, 133, 129, 130, 135, 136, 130, 129, 132, 132, 132, 127, 130, 132, 126, 132, 133, 129, 132, 135, 127, 130, 132, 127, 132, 132, 133, 131, 142, 138, 128, 129, 133, 132, 137, 132, 128, 126, 131, 130, 131], ![133, 135, 129, 134, 133, 132, 127, 132, 128, 138, 134, 133, 134, 134, 135, 131, 130, 132, 129, 128, 132, 136, 130, 133, 129, 134, 133, 121, 129, 140, 136, 130, 129, 131, 137, 132, 135, 128, 127, 130, 132, 132, 135, 133, 130, 131, 132, 134, 129], ![133, 130, 130, 132, 133, 136, 132, 126, 131, 132, 132, 129, 133, 131, 137, 124, 130, 137, 125, 134, 129, 134, 135, 137, 127, 133, 133, 126, 134, 143, 129, 132, 131, 133, 134, 132, 125, 132, 132, 130, 132, 132, 135, 134, 123, 131, 133, 128, 132], ![124, 128, 138, 134, 133, 137, 132, 128, 131, 130, 134, 132, 136, 130, 134, 135, 124, 131, 135, 131, 133, 126, 137, 135, 130, 131, 133, 129, 133, 131, 127, 135, 123, 130, 140, 130, 131, 126, 136, 134, 129, 126, 138, 134, 136, 133, 131, 130, 130], ![127, 136, 135, 144, 126, 132, 133, 133, 127, 131, 129, 131, 132, 130, 133, 134, 130, 127, 135, 130, 126, 132, 138, 128, 130, 134, 130, 135, 127, 125, 131, 130, 128, 135, 130, 128, 131, 131, 129, 135, 132, 131, 140, 133, 135, 135, 134, 124, 134], ![126, 132, 133, 131, 131, 125, 128, 135, 134, 127, 132, 131, 128, 129, 132, 134, 136, 129, 137, 134, 130, 133, 133, 129, 136, 132, 128, 144, 129, 124, 129, 134, 133, 134, 126, 133, 132, 130, 132, 129, 133, 127, 130, 134, 136, 132, 133, 144, 132], ![135, 138, 135, 130, 127, 130, 138, 137, 133, 123, 136, 130, 126, 131, 137, 133, 139, 133, 135, 128, 132, 129, 132, 125, 132, 130, 133, 132, 122, 131, 134, 130, 137, 133, 126, 136, 133, 126, 133, 131, 130, 134, 129, 129, 139, 134, 135, 133, 128]]

def envelope0122FibreMax : Fin 9 -> Nat :=
  ![139, 138, 142, 140, 143, 140, 144, 144, 139]

theorem envelope0122 : TailR263EvenOneDiagonalRange 9188087 9234027 := by
  intro N hLower hStop
  have hNUpper : N <= 9234026 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9234026 (envelope0122BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9234026 (envelope0122CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9234026 (envelope0122FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9234026) (count := 232307) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0122BaseCounts, envelope0122CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0122FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0122FibreCounts, envelope0122FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0122FibreMax cell) <=
          ∑ cell : Fin 9, envelope0122FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0122FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0122BaseCounts, envelope0122FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0123BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 145927
  | .evenTwoCell residue => ![3252, 3237, 3248, 3234, 3253, 3231, 3245, 3246, 3249] residue

def envelope0123CellCounts : Fin 9 -> Nat :=
  ![6481, 6474, 6478, 6494, 6477, 6485, 6477, 6489, 6491]

def envelope0123FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![135, 128, 121, 133, 133, 134, 131, 134, 131, 139, 126, 136, 136, 131, 128, 136, 127, 131, 127, 136, 137, 130, 123, 137, 135, 132, 127, 136, 135, 129, 124, 128, 137, 134, 130, 131, 133, 136, 135, 140, 132, 135, 126, 136, 139, 133, 128, 136, 134], ![130, 135, 130, 129, 131, 132, 131, 138, 134, 131, 130, 137, 128, 133, 125, 134, 133, 131, 135, 133, 136, 135, 126, 130, 131, 131, 132, 136, 133, 140, 139, 131, 138, 132, 128, 134, 128, 136, 134, 124, 134, 130, 127, 126, 131, 136, 133, 130, 133], ![142, 128, 128, 136, 130, 133, 131, 133, 137, 133, 129, 131, 135, 137, 131, 129, 132, 133, 132, 129, 131, 134, 128, 132, 134, 129, 132, 136, 128, 130, 133, 127, 132, 132, 133, 132, 144, 138, 130, 129, 133, 132, 137, 134, 129, 126, 132, 131, 131], ![133, 136, 129, 134, 134, 133, 127, 132, 128, 139, 136, 134, 136, 134, 135, 131, 130, 134, 130, 128, 133, 136, 130, 133, 131, 135, 136, 122, 131, 141, 138, 130, 129, 131, 138, 132, 136, 128, 127, 130, 132, 132, 137, 133, 132, 132, 133, 134, 129], ![134, 132, 131, 133, 133, 136, 132, 126, 132, 132, 133, 131, 133, 131, 137, 124, 131, 138, 127, 136, 130, 134, 135, 137, 129, 134, 134, 127, 134, 143, 129, 132, 132, 133, 136, 133, 126, 132, 132, 130, 133, 132, 136, 134, 123, 131, 133, 128, 133], ![125, 128, 139, 134, 133, 137, 133, 128, 133, 130, 135, 132, 136, 130, 135, 135, 125, 131, 135, 131, 133, 126, 138, 135, 132, 132, 134, 130, 133, 132, 128, 135, 124, 131, 140, 131, 131, 126, 137, 136, 129, 130, 138, 135, 136, 133, 132, 133, 130], ![127, 137, 135, 144, 127, 132, 134, 133, 128, 131, 131, 131, 132, 130, 134, 135, 131, 128, 136, 130, 128, 132, 139, 129, 130, 134, 131, 135, 129, 126, 132, 131, 129, 135, 132, 128, 133, 132, 129, 136, 132, 131, 140, 133, 135, 136, 134, 125, 135], ![127, 132, 134, 131, 132, 125, 129, 136, 135, 130, 133, 131, 129, 129, 132, 136, 136, 129, 138, 136, 131, 134, 136, 130, 136, 133, 128, 145, 129, 125, 129, 134, 133, 134, 127, 134, 132, 131, 132, 130, 134, 129, 130, 135, 136, 132, 133, 145, 132], ![136, 138, 136, 131, 128, 130, 138, 137, 134, 126, 137, 132, 126, 132, 138, 134, 140, 133, 135, 129, 132, 129, 132, 125, 132, 131, 134, 133, 122, 131, 136, 130, 138, 134, 126, 137, 133, 126, 133, 131, 130, 135, 129, 130, 139, 134, 136, 134, 129]]

def envelope0123FibreMax : Fin 9 -> Nat :=
  ![140, 140, 144, 141, 143, 140, 144, 145, 140]

theorem envelope0123 : TailR263EvenOneDiagonalRange 9234027 9280197 := by
  intro N hLower hStop
  have hNUpper : N <= 9280196 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9280196 (envelope0123BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9280196 (envelope0123CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9280196 (envelope0123FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9280196) (count := 233468) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0123BaseCounts, envelope0123CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0123FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0123FibreCounts, envelope0123FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0123FibreMax cell) <=
          ∑ cell : Fin 9, envelope0123FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0123FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0123BaseCounts, envelope0123FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0124BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 146658
  | .evenTwoCell residue => ![3270, 3250, 3263, 3251, 3269, 3251, 3262, 3263, 3265] residue

def envelope0124CellCounts : Fin 9 -> Nat :=
  ![6510, 6507, 6511, 6525, 6509, 6518, 6513, 6524, 6521]

def envelope0124FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![135, 128, 121, 134, 133, 135, 132, 135, 132, 139, 126, 136, 136, 132, 131, 137, 128, 131, 127, 137, 140, 132, 125, 137, 136, 132, 127, 136, 135, 130, 125, 128, 138, 134, 130, 131, 134, 136, 137, 140, 133, 135, 127, 136, 139, 133, 128, 136, 135], ![130, 137, 130, 130, 134, 133, 132, 138, 134, 131, 131, 138, 130, 134, 127, 134, 133, 131, 135, 133, 137, 135, 127, 130, 131, 131, 133, 137, 135, 141, 139, 131, 139, 132, 128, 134, 129, 137, 135, 125, 134, 131, 127, 127, 132, 138, 134, 130, 133], ![142, 128, 129, 137, 132, 133, 131, 133, 137, 133, 130, 131, 137, 137, 131, 129, 132, 134, 134, 130, 133, 134, 128, 132, 134, 129, 133, 136, 130, 132, 134, 129, 132, 132, 134, 133, 146, 142, 130, 129, 133, 132, 137, 135, 130, 127, 132, 132, 131], ![134, 137, 130, 134, 134, 133, 127, 132, 130, 140, 138, 135, 137, 134, 135, 131, 131, 134, 133, 129, 133, 136, 130, 133, 132, 138, 137, 124, 131, 141, 138, 130, 129, 133, 138, 132, 137, 128, 127, 130, 132, 135, 138, 135, 132, 132, 133, 134, 129], ![136, 133, 132, 133, 133, 138, 133, 126, 133, 133, 133, 133, 133, 131, 138, 125, 133, 140, 128, 136, 130, 134, 135, 138, 131, 135, 134, 127, 134, 143, 129, 133, 133, 134, 137, 133, 127, 132, 132, 130, 134, 133, 136, 134, 123, 131, 133, 129, 135], ![125, 128, 139, 134, 134, 138, 134, 130, 134, 132, 135, 132, 136, 132, 135, 136, 125, 131, 135, 131, 133, 127, 138, 136, 132, 134, 135, 131, 134, 133, 128, 136, 124, 131, 140, 133, 131, 127, 137, 138, 130, 132, 139, 135, 136, 134, 132, 135, 131], ![129, 137, 135, 145, 127, 133, 134, 133, 128, 132, 131, 132, 132, 132, 135, 135, 135, 128, 136, 131, 128, 133, 141, 129, 130, 134, 131, 136, 129, 127, 134, 132, 130, 136, 132, 129, 134, 133, 130, 136, 132, 132, 140, 134, 135, 138, 136, 126, 136], ![127, 133, 134, 134, 132, 126, 129, 137, 135, 131, 133, 133, 129, 129, 132, 137, 137, 130, 138, 137, 132, 135, 136, 131, 138, 135, 129, 146, 131, 125, 130, 134, 133, 135, 128, 134, 133, 132, 133, 131, 135, 129, 131, 135, 137, 132, 133, 145, 133], ![136, 139, 136, 131, 128, 131, 138, 138, 134, 127, 138, 132, 127, 132, 139, 135, 141, 134, 136, 129, 132, 129, 132, 126, 133, 131, 135, 133, 123, 132, 137, 131, 139, 136, 127, 139, 133, 126, 133, 133, 131, 135, 129, 130, 139, 135, 136, 135, 130]]

def envelope0124FibreMax : Fin 9 -> Nat :=
  ![140, 141, 146, 141, 143, 140, 145, 146, 141]

theorem envelope0124 : TailR263EvenOneDiagonalRange 9280197 9326597 := by
  intro N hLower hStop
  have hNUpper : N <= 9326596 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9326596 (envelope0124BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9326596 (envelope0124CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9326596 (envelope0124FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9326596) (count := 234640) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0124BaseCounts, envelope0124CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0124FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0124FibreCounts, envelope0124FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0124FibreMax cell) <=
          ∑ cell : Fin 9, envelope0124FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0124FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0124BaseCounts, envelope0124FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0125BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 147400
  | .evenTwoCell residue => ![3286, 3265, 3282, 3270, 3283, 3263, 3275, 3280, 3283] residue

def envelope0125CellCounts : Fin 9 -> Nat :=
  ![6542, 6539, 6539, 6557, 6539, 6552, 6545, 6554, 6555]

def envelope0125FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![135, 129, 123, 135, 135, 135, 133, 135, 135, 139, 126, 136, 137, 133, 132, 138, 128, 131, 128, 138, 142, 133, 125, 138, 136, 132, 127, 136, 135, 130, 125, 129, 138, 134, 131, 132, 135, 138, 137, 141, 133, 136, 128, 136, 139, 134, 128, 137, 136], ![131, 137, 131, 130, 135, 134, 132, 138, 134, 132, 132, 140, 132, 135, 128, 134, 133, 131, 135, 134, 137, 136, 127, 130, 131, 132, 133, 140, 135, 142, 139, 132, 139, 132, 128, 136, 129, 138, 137, 125, 134, 132, 128, 130, 133, 139, 134, 130, 133], ![144, 129, 132, 139, 132, 133, 132, 133, 137, 134, 130, 132, 137, 137, 131, 130, 133, 135, 135, 131, 133, 134, 128, 132, 134, 131, 133, 136, 130, 132, 134, 129, 133, 134, 134, 135, 146, 142, 130, 129, 133, 133, 138, 137, 131, 127, 132, 132, 131], ![134, 138, 130, 134, 134, 134, 129, 134, 130, 142, 138, 135, 137, 134, 135, 132, 132, 135, 133, 129, 133, 136, 130, 135, 133, 140, 140, 124, 131, 141, 138, 130, 132, 134, 139, 132, 137, 128, 127, 132, 133, 136, 140, 135, 132, 133, 133, 134, 130], ![137, 134, 133, 133, 133, 139, 133, 129, 133, 133, 133, 133, 133, 132, 139, 126, 134, 140, 129, 136, 130, 135, 136, 139, 132, 135, 134, 127, 134, 144, 130, 134, 134, 135, 137, 133, 127, 133, 133, 130, 135, 133, 139, 134, 123, 131, 134, 130, 136], ![125, 128, 139, 135, 134, 140, 134, 130, 135, 132, 135, 133, 137, 133, 136, 138, 125, 132, 135, 131, 134, 128, 140, 139, 133, 134, 136, 133, 135, 135, 129, 137, 124, 131, 140, 134, 131, 127, 139, 138, 131, 132, 139, 135, 137, 134, 133, 135, 132], ![129, 138, 136, 146, 128, 133, 135, 133, 128, 134, 135, 132, 135, 132, 137, 136, 135, 128, 137, 131, 128, 133, 141, 129, 130, 134, 132, 136, 130, 128, 135, 133, 130, 136, 133, 129, 135, 133, 131, 137, 132, 132, 141, 134, 136, 139, 137, 127, 136], ![129, 133, 135, 134, 133, 127, 130, 137, 137, 131, 134, 133, 129, 129, 132, 137, 138, 130, 139, 138, 133, 136, 138, 131, 138, 135, 130, 146, 131, 125, 130, 134, 134, 135, 129, 135, 134, 132, 134, 131, 138, 129, 132, 136, 137, 132, 135, 145, 134], ![137, 139, 136, 131, 128, 131, 139, 138, 135, 127, 139, 134, 128, 133, 140, 135, 142, 134, 136, 129, 132, 131, 134, 126, 134, 131, 136, 136, 124, 133, 138, 132, 140, 137, 127, 139, 133, 126, 134, 134, 131, 136, 129, 131, 141, 136, 137, 136, 130]]

def envelope0125FibreMax : Fin 9 -> Nat :=
  ![142, 142, 146, 142, 144, 140, 146, 146, 142]

theorem envelope0125 : TailR263EvenOneDiagonalRange 9326597 9373229 := by
  intro N hLower hStop
  have hNUpper : N <= 9373228 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9373228 (envelope0125BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9373228 (envelope0125CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9373228 (envelope0125FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9373228) (count := 235809) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0125BaseCounts, envelope0125CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0125FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0125FibreCounts, envelope0125FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0125FibreMax cell) <=
          ∑ cell : Fin 9, envelope0125FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0125FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0125BaseCounts, envelope0125FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0126BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 148137
  | .evenTwoCell residue => ![3301, 3280, 3296, 3285, 3302, 3282, 3293, 3295, 3300] residue

def envelope0126CellCounts : Fin 9 -> Nat :=
  ![6577, 6571, 6576, 6587, 6575, 6585, 6579, 6586, 6586]

def envelope0126FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![136, 129, 127, 137, 135, 135, 133, 135, 135, 140, 126, 137, 137, 134, 132, 138, 130, 132, 130, 140, 142, 134, 126, 138, 136, 132, 127, 138, 136, 131, 126, 129, 138, 136, 131, 134, 136, 139, 138, 141, 133, 136, 128, 137, 140, 135, 129, 137, 136], ![131, 138, 131, 131, 135, 134, 132, 139, 135, 133, 133, 141, 132, 135, 128, 134, 133, 133, 136, 135, 138, 137, 127, 131, 132, 134, 134, 140, 136, 142, 139, 132, 142, 134, 129, 137, 130, 138, 137, 125, 135, 132, 131, 130, 134, 139, 134, 130, 133], ![145, 132, 132, 139, 132, 133, 132, 134, 139, 135, 130, 132, 137, 139, 132, 132, 136, 136, 137, 133, 134, 134, 128, 132, 135, 131, 134, 136, 130, 132, 134, 130, 134, 135, 136, 135, 146, 142, 130, 130, 134, 134, 139, 137, 132, 127, 132, 133, 133], ![137, 138, 130, 134, 134, 136, 131, 136, 132, 142, 138, 135, 137, 134, 135, 132, 134, 135, 133, 129, 133, 136, 133, 135, 134, 140, 140, 125, 131, 141, 139, 130, 133, 135, 139, 132, 137, 129, 130, 132, 135, 136, 140, 135, 132, 133, 134, 135, 131], ![137, 134, 134, 134, 134, 139, 134, 129, 134, 133, 133, 133, 134, 133, 140, 127, 134, 142, 129, 136, 131, 135, 137, 139, 133, 135, 134, 127, 135, 145, 132, 136, 134, 135, 138, 133, 130, 134, 135, 131, 136, 133, 139, 134, 124, 133, 135, 132, 137], ![126, 128, 140, 136, 136, 141, 135, 130, 135, 132, 136, 133, 137, 133, 136, 138, 125, 134, 137, 132, 135, 130, 141, 139, 133, 134, 137, 135, 137, 136, 129, 137, 125, 131, 141, 135, 132, 129, 140, 139, 131, 132, 139, 136, 137, 135, 133, 135, 132], ![130, 138, 137, 146, 130, 134, 135, 133, 129, 134, 136, 134, 135, 133, 137, 137, 135, 129, 138, 132, 128, 133, 141, 129, 130, 135, 132, 138, 131, 131, 136, 133, 130, 138, 133, 130, 135, 133, 131, 138, 132, 133, 141, 136, 137, 141, 137, 129, 136], ![129, 134, 136, 136, 136, 127, 131, 138, 138, 132, 134, 133, 129, 129, 132, 139, 138, 130, 141, 138, 135, 137, 138, 132, 139, 136, 130, 146, 131, 125, 130, 136, 134, 136, 132, 136, 134, 133, 134, 132, 138, 130, 132, 136, 137, 132, 135, 146, 134], ![137, 139, 136, 131, 128, 133, 139, 139, 135, 128, 139, 135, 128, 134, 140, 138, 142, 134, 136, 130, 132, 131, 134, 129, 134, 132, 137, 137, 126, 134, 138, 133, 141, 137, 128, 139, 133, 127, 135, 135, 132, 136, 129, 131, 142, 137, 138, 137, 131]]

def envelope0126FibreMax : Fin 9 -> Nat :=
  ![142, 142, 146, 142, 145, 141, 146, 146, 142]

theorem envelope0126 : TailR263EvenOneDiagonalRange 9373229 9420095 := by
  intro N hLower hStop
  have hNUpper : N <= 9420094 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9420094 (envelope0126BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9420094 (envelope0126CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9420094 (envelope0126FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9420094) (count := 236993) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0126BaseCounts, envelope0126CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0126FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0126FibreCounts, envelope0126FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0126FibreMax cell) <=
          ∑ cell : Fin 9, envelope0126FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0126FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0126BaseCounts, envelope0126FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0127BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 148871
  | .evenTwoCell residue => ![3317, 3296, 3314, 3300, 3317, 3297, 3310, 3312, 3317] residue

def envelope0127CellCounts : Fin 9 -> Nat :=
  ![6608, 6606, 6609, 6623, 6608, 6619, 6610, 6619, 6623]

def envelope0127FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![137, 130, 128, 137, 136, 135, 133, 135, 135, 140, 127, 137, 138, 134, 132, 139, 130, 133, 131, 140, 144, 134, 126, 139, 136, 132, 128, 138, 137, 132, 127, 130, 138, 137, 133, 134, 137, 139, 138, 143, 133, 136, 129, 138, 142, 136, 129, 138, 138], ![133, 138, 131, 131, 135, 134, 134, 140, 137, 133, 134, 141, 132, 135, 129, 134, 134, 133, 138, 135, 140, 137, 127, 132, 134, 134, 137, 141, 137, 142, 139, 132, 143, 135, 130, 138, 130, 139, 138, 126, 137, 133, 131, 131, 135, 139, 134, 130, 134], ![146, 133, 132, 139, 132, 133, 132, 136, 140, 135, 130, 132, 137, 140, 133, 133, 137, 138, 137, 134, 134, 134, 129, 133, 136, 132, 135, 136, 130, 133, 136, 133, 135, 136, 136, 135, 146, 142, 131, 131, 134, 135, 139, 137, 132, 128, 133, 135, 134], ![138, 138, 130, 134, 136, 136, 134, 137, 132, 142, 138, 135, 138, 135, 136, 133, 134, 135, 133, 130, 134, 138, 134, 137, 134, 140, 140, 125, 132, 142, 140, 131, 134, 135, 139, 132, 138, 133, 131, 133, 136, 136, 140, 138, 132, 134, 134, 136, 131], ![137, 134, 135, 135, 135, 140, 134, 129, 135, 133, 133, 134, 135, 135, 140, 127, 134, 142, 130, 137, 131, 137, 137, 139, 135, 135, 134, 129, 136, 147, 134, 136, 134, 135, 139, 134, 131, 135, 135, 131, 137, 133, 139, 134, 126, 135, 137, 132, 137], ![126, 129, 141, 139, 136, 144, 135, 131, 135, 133, 136, 136, 137, 133, 137, 139, 125, 135, 138, 135, 136, 131, 141, 139, 133, 135, 137, 136, 137, 136, 129, 137, 125, 132, 141, 137, 133, 130, 140, 139, 131, 133, 141, 137, 138, 135, 133, 135, 132], ![130, 139, 137, 146, 130, 134, 135, 134, 129, 136, 136, 136, 136, 133, 137, 138, 135, 130, 138, 133, 129, 133, 141, 130, 131, 136, 134, 138, 132, 131, 136, 134, 131, 139, 135, 133, 135, 133, 131, 138, 133, 135, 143, 136, 138, 141, 137, 129, 136], ![129, 136, 137, 137, 136, 128, 131, 139, 138, 132, 135, 133, 129, 130, 133, 140, 140, 131, 141, 139, 135, 138, 141, 133, 140, 136, 130, 146, 132, 125, 132, 136, 135, 137, 132, 137, 134, 133, 135, 132, 139, 130, 132, 138, 137, 132, 136, 146, 136], ![137, 139, 136, 134, 128, 134, 140, 140, 136, 131, 141, 136, 130, 134, 141, 138, 143, 134, 138, 131, 133, 131, 135, 129, 136, 132, 137, 137, 127, 134, 139, 133, 142, 138, 128, 140, 134, 127, 136, 135, 133, 138, 130, 132, 143, 137, 138, 137, 131]]

def envelope0127FibreMax : Fin 9 -> Nat :=
  ![144, 143, 146, 142, 147, 144, 146, 146, 143]

theorem envelope0127 : TailR263EvenOneDiagonalRange 9420095 9467195 := by
  intro N hLower hStop
  have hNUpper : N <= 9467194 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 9467194 (envelope0127BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 9467194 (envelope0127CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 9467194 (envelope0127FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 9467194) (count := 238176) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0127BaseCounts, envelope0127CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0127FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0127FibreCounts, envelope0127FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0127FibreMax cell) <=
          ∑ cell : Fin 9, envelope0127FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0127FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0127BaseCounts, envelope0127FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
