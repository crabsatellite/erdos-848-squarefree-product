import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0064BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 108744
  | .evenTwoCell residue => ![2421, 2407, 2421, 2416, 2428, 2400, 2424, 2425, 2420] residue

def envelope0064CellCounts : Fin 9 -> Nat :=
  ![4826, 4832, 4832, 4839, 4819, 4847, 4830, 4829, 4834]

def envelope0064FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 95, 93, 99, 98, 97, 97, 99, 98, 107, 95, 92, 98, 98, 97, 99, 96, 99, 98, 103, 102, 100, 95, 100, 97, 98, 95, 99, 99, 94, 96, 96, 101, 102, 97, 100, 99, 98, 100, 106, 98, 98, 94, 105, 101, 98, 95, 107, 98], ![92, 105, 100, 97, 100, 97, 102, 103, 95, 97, 97, 101, 98, 99, 97, 106, 99, 94, 96, 93, 103, 99, 92, 99, 98, 98, 99, 105, 99, 103, 104, 99, 104, 97, 93, 98, 94, 103, 102, 96, 101, 100, 93, 95, 99, 99, 97, 99, 96], ![106, 96, 98, 102, 98, 99, 96, 98, 99, 98, 96, 95, 102, 103, 100, 96, 96, 99, 101, 101, 97, 104, 95, 100, 99, 94, 98, 101, 91, 97, 96, 94, 99, 101, 97, 102, 107, 102, 97, 95, 98, 92, 101, 103, 101, 96, 96, 100, 100], ![100, 103, 93, 104, 99, 97, 99, 103, 100, 100, 95, 103, 102, 96, 97, 99, 98, 100, 98, 99, 101, 100, 93, 98, 98, 104, 100, 92, 103, 106, 101, 96, 96, 98, 103, 94, 103, 93, 94, 96, 98, 101, 101, 103, 104, 92, 95, 96, 95], ![106, 99, 95, 98, 95, 99, 98, 94, 99, 98, 96, 97, 102, 97, 102, 95, 97, 103, 96, 101, 94, 99, 100, 105, 99, 102, 96, 90, 100, 105, 94, 102, 102, 99, 97, 100, 97, 101, 95, 92, 101, 98, 98, 94, 93, 100, 99, 96, 104], ![95, 91, 100, 102, 103, 108, 101, 98, 103, 94, 98, 99, 102, 97, 98, 98, 93, 99, 99, 97, 103, 95, 102, 97, 101, 98, 96, 93, 101, 104, 97, 102, 93, 98, 100, 98, 97, 98, 104, 99, 98, 98, 101, 103, 100, 100, 100, 96, 100], ![97, 104, 100, 106, 94, 99, 98, 95, 93, 98, 98, 105, 98, 98, 103, 96, 100, 98, 104, 97, 93, 94, 104, 97, 97, 97, 95, 103, 98, 93, 99, 96, 92, 102, 94, 95, 102, 100, 94, 102, 94, 100, 104, 97, 101, 103, 104, 97, 102], ![90, 99, 98, 96, 104, 93, 96, 102, 100, 99, 101, 96, 93, 97, 92, 97, 101, 102, 100, 99, 101, 103, 100, 94, 100, 102, 95, 103, 96, 96, 96, 98, 94, 103, 103, 100, 102, 102, 100, 95, 103, 96, 101, 97, 97, 98, 97, 104, 98], ![101, 106, 107, 94, 93, 97, 100, 100, 95, 94, 109, 100, 91, 103, 104, 102, 105, 93, 103, 96, 94, 94, 101, 92, 101, 97, 101, 100, 90, 96, 102, 96, 104, 99, 94, 104, 97, 94, 101, 99, 99, 101, 95, 95, 100, 98, 102, 99, 96]]

def envelope0064FibreMax : Fin 9 -> Nat :=
  ![107, 106, 107, 106, 106, 108, 106, 104, 109]

theorem envelope0064 : TailR263EvenOneDiagonalRange 6880110 6914510 := by
  intro N hLower hStop
  have hNUpper : N <= 6914509 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6914509 (envelope0064BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6914509 (envelope0064CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6914509 (envelope0064FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6914509) (count := 173994) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0064BaseCounts, envelope0064CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0064FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0064FibreCounts, envelope0064FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0064FibreMax cell) <=
          ∑ cell : Fin 9, envelope0064FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0064FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0064BaseCounts, envelope0064FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0065BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 109280
  | .evenTwoCell residue => ![2431, 2420, 2435, 2429, 2438, 2412, 2435, 2436, 2433] residue

def envelope0065CellCounts : Fin 9 -> Nat :=
  ![4850, 4855, 4854, 4865, 4842, 4869, 4854, 4855, 4861]

def envelope0065FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 95, 93, 99, 98, 98, 97, 99, 98, 107, 95, 93, 98, 99, 99, 100, 97, 99, 98, 104, 102, 101, 95, 100, 97, 98, 95, 99, 99, 94, 98, 96, 103, 102, 97, 101, 100, 98, 101, 106, 99, 98, 94, 105, 101, 99, 97, 109, 100], ![92, 105, 100, 99, 100, 99, 103, 104, 95, 97, 97, 101, 98, 99, 97, 106, 99, 94, 96, 93, 104, 100, 93, 100, 98, 98, 99, 105, 102, 103, 105, 99, 104, 97, 95, 98, 95, 103, 103, 97, 101, 100, 94, 96, 100, 99, 98, 99, 96], ![106, 97, 99, 102, 98, 99, 96, 98, 99, 98, 97, 95, 103, 103, 100, 98, 96, 99, 103, 101, 98, 104, 95, 100, 99, 94, 99, 101, 93, 97, 98, 95, 99, 101, 98, 102, 108, 103, 97, 96, 98, 92, 102, 103, 101, 97, 96, 101, 100], ![101, 103, 94, 106, 99, 98, 99, 103, 101, 100, 96, 103, 102, 96, 97, 99, 98, 100, 99, 100, 101, 101, 93, 98, 99, 104, 102, 92, 103, 106, 101, 97, 97, 98, 104, 96, 104, 94, 95, 96, 99, 101, 101, 104, 105, 94, 95, 96, 95], ![106, 101, 96, 98, 95, 99, 99, 94, 100, 98, 96, 97, 103, 97, 103, 95, 98, 103, 96, 101, 94, 99, 101, 105, 100, 103, 97, 90, 101, 106, 94, 102, 104, 100, 97, 100, 97, 101, 95, 93, 101, 99, 98, 95, 93, 101, 100, 97, 104], ![95, 92, 100, 103, 103, 108, 102, 98, 104, 94, 98, 99, 103, 99, 99, 98, 93, 100, 99, 98, 103, 96, 102, 98, 101, 98, 96, 93, 101, 105, 97, 104, 93, 98, 101, 98, 99, 99, 104, 100, 98, 98, 101, 103, 100, 101, 100, 97, 100], ![99, 104, 101, 106, 95, 99, 99, 95, 94, 98, 99, 105, 98, 99, 103, 96, 100, 98, 104, 99, 93, 95, 104, 97, 97, 98, 95, 105, 98, 94, 99, 96, 92, 102, 94, 96, 102, 101, 94, 103, 94, 101, 104, 99, 101, 104, 104, 99, 102], ![90, 102, 99, 97, 104, 93, 96, 102, 100, 100, 101, 97, 93, 97, 93, 98, 102, 103, 102, 100, 101, 103, 100, 94, 100, 103, 95, 104, 96, 96, 99, 98, 95, 104, 104, 101, 102, 102, 100, 95, 103, 97, 101, 98, 97, 98, 97, 104, 99], ![101, 107, 107, 94, 93, 97, 101, 102, 96, 96, 110, 100, 91, 103, 104, 103, 106, 96, 103, 96, 95, 94, 101, 94, 101, 99, 101, 100, 90, 96, 102, 97, 104, 100, 94, 104, 97, 94, 102, 100, 100, 101, 96, 95, 101, 98, 102, 99, 98]]

def envelope0065FibreMax : Fin 9 -> Nat :=
  ![109, 106, 108, 106, 106, 108, 106, 104, 110]

theorem envelope0065 : TailR263EvenOneDiagonalRange 6914510 6949082 := by
  intro N hLower hStop
  have hNUpper : N <= 6949081 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6949081 (envelope0065BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6949081 (envelope0065CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6949081 (envelope0065FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6949081) (count := 174854) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0065BaseCounts, envelope0065CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0065FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0065FibreCounts, envelope0065FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0065FibreMax cell) <=
          ∑ cell : Fin 9, envelope0065FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0065FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0065BaseCounts, envelope0065FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0066BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 109825
  | .evenTwoCell residue => ![2442, 2432, 2443, 2441, 2450, 2425, 2448, 2447, 2445] residue

def envelope0066CellCounts : Fin 9 -> Nat :=
  ![4875, 4879, 4880, 4890, 4868, 4892, 4878, 4880, 4887]

def envelope0066FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 95, 93, 99, 99, 98, 98, 99, 98, 107, 95, 96, 99, 100, 100, 101, 97, 99, 98, 104, 104, 101, 95, 101, 97, 98, 95, 100, 99, 96, 98, 98, 103, 102, 97, 101, 100, 99, 101, 106, 99, 100, 94, 105, 101, 101, 98, 111, 100], ![92, 105, 101, 100, 102, 99, 104, 104, 95, 98, 98, 101, 98, 100, 98, 106, 99, 94, 96, 94, 105, 101, 95, 100, 98, 98, 99, 107, 102, 104, 105, 99, 104, 98, 95, 99, 96, 104, 104, 97, 101, 100, 95, 96, 100, 100, 98, 99, 96], ![106, 97, 99, 103, 99, 99, 96, 98, 100, 101, 97, 97, 104, 104, 100, 98, 96, 100, 103, 102, 98, 104, 96, 101, 99, 96, 99, 102, 93, 98, 98, 95, 99, 102, 98, 103, 108, 103, 97, 96, 98, 93, 102, 104, 103, 98, 97, 101, 100], ![102, 104, 96, 106, 99, 98, 99, 104, 101, 101, 96, 103, 102, 96, 98, 101, 99, 102, 100, 100, 102, 101, 93, 99, 99, 105, 102, 92, 103, 106, 101, 98, 99, 99, 105, 96, 105, 94, 95, 98, 99, 101, 102, 104, 105, 94, 95, 96, 95], ![106, 101, 98, 98, 95, 100, 99, 95, 100, 99, 96, 98, 103, 98, 103, 96, 98, 103, 96, 101, 94, 100, 101, 106, 100, 104, 100, 91, 101, 107, 95, 102, 105, 100, 97, 101, 97, 101, 96, 93, 103, 99, 99, 95, 94, 101, 101, 97, 105], ![95, 92, 101, 105, 103, 109, 102, 100, 104, 94, 98, 100, 103, 100, 100, 99, 94, 100, 100, 98, 104, 97, 104, 98, 101, 98, 96, 93, 102, 105, 98, 104, 93, 99, 101, 99, 100, 99, 105, 100, 98, 98, 101, 103, 101, 101, 100, 97, 100], ![99, 104, 101, 107, 95, 99, 99, 96, 94, 99, 100, 105, 100, 99, 103, 96, 100, 98, 105, 99, 94, 95, 104, 98, 98, 99, 97, 106, 99, 94, 99, 96, 92, 102, 95, 96, 103, 101, 94, 103, 95, 101, 106, 101, 102, 105, 104, 99, 102], ![92, 103, 99, 97, 105, 93, 96, 102, 101, 100, 102, 97, 93, 97, 94, 99, 104, 104, 103, 100, 102, 103, 100, 94, 103, 103, 96, 104, 96, 96, 99, 99, 96, 105, 104, 101, 102, 102, 100, 95, 104, 97, 101, 98, 97, 98, 98, 107, 99], ![102, 107, 107, 94, 93, 98, 101, 104, 97, 96, 110, 102, 91, 103, 105, 103, 108, 97, 103, 96, 96, 94, 103, 94, 103, 99, 101, 100, 91, 96, 103, 97, 104, 100, 95, 104, 97, 94, 103, 101, 101, 104, 96, 95, 101, 98, 102, 100, 98]]

def envelope0066FibreMax : Fin 9 -> Nat :=
  ![111, 107, 108, 106, 107, 109, 107, 107, 110]

theorem envelope0066 : TailR263EvenOneDiagonalRange 6949082 6983827 := by
  intro N hLower hStop
  have hNUpper : N <= 6983826 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6983826 (envelope0066BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6983826 (envelope0066CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6983826 (envelope0066FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6983826) (count := 175727) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0066BaseCounts, envelope0066CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0066FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0066FibreCounts, envelope0066FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0066FibreMax cell) <=
          ∑ cell : Fin 9, envelope0066FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0066FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0066BaseCounts, envelope0066FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0067BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 110370
  | .evenTwoCell residue => ![2459, 2446, 2453, 2452, 2463, 2438, 2458, 2459, 2460] residue

def envelope0067CellCounts : Fin 9 -> Nat :=
  ![4899, 4901, 4906, 4911, 4893, 4916, 4903, 4907, 4908]

def envelope0067FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 95, 93, 100, 99, 99, 98, 99, 98, 108, 95, 98, 100, 102, 101, 101, 97, 99, 98, 104, 104, 101, 96, 101, 97, 98, 95, 100, 101, 96, 100, 98, 103, 102, 97, 103, 101, 99, 102, 106, 99, 101, 95, 105, 103, 101, 100, 111, 100], ![92, 106, 102, 101, 103, 100, 104, 104, 95, 98, 98, 101, 99, 100, 98, 106, 101, 95, 97, 95, 106, 101, 96, 100, 98, 98, 100, 107, 104, 104, 105, 99, 104, 98, 96, 100, 96, 105, 104, 97, 101, 100, 97, 96, 101, 100, 98, 99, 96], ![108, 97, 100, 105, 99, 99, 96, 98, 101, 101, 99, 98, 105, 105, 100, 99, 97, 100, 104, 102, 98, 105, 96, 101, 100, 96, 101, 102, 94, 98, 98, 95, 100, 102, 99, 103, 108, 103, 97, 96, 98, 94, 104, 104, 104, 98, 97, 102, 100], ![103, 105, 96, 107, 99, 98, 100, 104, 102, 101, 96, 103, 102, 96, 99, 101, 100, 102, 100, 101, 102, 101, 94, 99, 99, 105, 103, 92, 103, 106, 102, 98, 100, 102, 105, 98, 105, 95, 95, 99, 100, 101, 102, 104, 105, 94, 95, 97, 95], ![106, 101, 98, 98, 96, 100, 100, 95, 101, 99, 97, 98, 104, 98, 106, 96, 98, 103, 96, 101, 97, 100, 101, 106, 101, 104, 102, 91, 101, 108, 96, 103, 105, 100, 98, 101, 97, 102, 96, 94, 104, 100, 99, 95, 94, 101, 102, 99, 105], ![95, 95, 102, 105, 104, 110, 102, 100, 105, 96, 99, 100, 103, 100, 100, 100, 94, 101, 100, 99, 104, 98, 104, 98, 101, 98, 96, 94, 102, 105, 98, 105, 94, 99, 103, 100, 100, 100, 105, 100, 98, 98, 101, 104, 101, 102, 100, 97, 101], ![100, 104, 101, 107, 95, 99, 100, 96, 95, 100, 100, 106, 100, 99, 103, 96, 100, 99, 105, 100, 95, 96, 105, 98, 99, 100, 97, 107, 100, 95, 99, 98, 92, 102, 95, 97, 104, 102, 94, 104, 95, 103, 106, 102, 102, 105, 104, 99, 103], ![92, 104, 99, 97, 105, 93, 96, 103, 102, 101, 104, 97, 93, 98, 94, 101, 104, 105, 106, 100, 102, 103, 100, 95, 103, 104, 96, 104, 96, 96, 100, 101, 97, 107, 104, 101, 102, 102, 100, 96, 104, 97, 102, 98, 97, 98, 99, 107, 102], ![102, 107, 107, 94, 94, 99, 102, 105, 97, 96, 110, 102, 91, 104, 105, 104, 108, 97, 103, 96, 96, 96, 103, 96, 103, 99, 101, 100, 91, 96, 103, 97, 105, 100, 96, 104, 97, 95, 103, 103, 102, 104, 97, 95, 101, 98, 103, 100, 101]]

def envelope0067FibreMax : Fin 9 -> Nat :=
  ![111, 107, 108, 107, 108, 110, 107, 107, 110]

theorem envelope0067 : TailR263EvenOneDiagonalRange 6983827 7018746 := by
  intro N hLower hStop
  have hNUpper : N <= 7018745 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7018745 (envelope0067BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7018745 (envelope0067CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7018745 (envelope0067FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7018745) (count := 176602) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0067BaseCounts, envelope0067CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0067FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0067FibreCounts, envelope0067FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0067FibreMax cell) <=
          ∑ cell : Fin 9, envelope0067FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0067FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0067BaseCounts, envelope0067FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0068BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 110916
  | .evenTwoCell residue => ![2470, 2456, 2466, 2463, 2478, 2451, 2473, 2470, 2470] residue

def envelope0068CellCounts : Fin 9 -> Nat :=
  ![4925, 4927, 4929, 4941, 4917, 4939, 4925, 4929, 4933]

def envelope0068FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 95, 95, 100, 102, 99, 98, 99, 98, 108, 97, 98, 102, 102, 101, 101, 97, 99, 98, 105, 104, 102, 96, 102, 98, 98, 95, 103, 101, 99, 100, 98, 104, 102, 97, 103, 101, 100, 102, 106, 99, 101, 96, 106, 103, 103, 100, 111, 101], ![93, 107, 103, 102, 104, 100, 104, 105, 95, 99, 100, 102, 100, 100, 98, 107, 101, 96, 98, 95, 107, 101, 96, 101, 98, 99, 100, 108, 104, 104, 106, 99, 104, 99, 97, 101, 97, 105, 104, 97, 101, 101, 97, 98, 101, 100, 98, 99, 96], ![108, 98, 100, 105, 99, 100, 96, 99, 101, 103, 99, 98, 105, 105, 100, 100, 97, 101, 104, 103, 98, 105, 96, 101, 100, 98, 101, 103, 94, 98, 98, 97, 100, 103, 99, 103, 108, 103, 97, 97, 101, 95, 104, 105, 104, 98, 99, 102, 101], ![104, 105, 97, 107, 99, 99, 101, 105, 102, 101, 96, 103, 103, 97, 99, 102, 102, 102, 101, 103, 102, 103, 94, 100, 100, 105, 103, 94, 103, 108, 102, 98, 101, 102, 106, 98, 105, 96, 96, 100, 101, 101, 102, 104, 105, 94, 96, 97, 97], ![106, 101, 98, 99, 96, 101, 100, 95, 103, 100, 97, 99, 104, 99, 106, 96, 98, 103, 96, 102, 97, 100, 102, 107, 101, 105, 102, 92, 101, 108, 97, 103, 106, 100, 98, 101, 99, 102, 97, 96, 104, 101, 100, 95, 95, 101, 103, 99, 106], ![96, 96, 102, 106, 104, 110, 102, 100, 105, 97, 99, 101, 104, 100, 101, 100, 95, 101, 101, 99, 105, 98, 104, 99, 101, 98, 97, 94, 103, 105, 99, 105, 95, 99, 104, 100, 101, 100, 106, 100, 98, 98, 102, 104, 104, 102, 100, 98, 101], ![100, 104, 102, 108, 96, 100, 100, 97, 96, 100, 101, 106, 100, 99, 103, 96, 101, 99, 106, 101, 96, 97, 105, 98, 100, 102, 97, 107, 100, 95, 99, 98, 93, 102, 96, 98, 104, 102, 95, 104, 97, 103, 107, 102, 102, 105, 104, 99, 103], ![93, 104, 99, 97, 105, 93, 97, 103, 103, 101, 104, 97, 96, 98, 96, 101, 105, 105, 107, 100, 102, 103, 101, 95, 104, 104, 96, 104, 97, 97, 100, 102, 98, 107, 104, 101, 102, 102, 100, 96, 104, 98, 102, 99, 97, 100, 99, 109, 102], ![102, 107, 107, 95, 96, 100, 104, 105, 97, 96, 110, 102, 92, 104, 106, 104, 109, 98, 103, 96, 98, 97, 105, 96, 104, 99, 101, 100, 91, 97, 103, 97, 105, 100, 96, 104, 98, 96, 104, 104, 102, 104, 99, 95, 101, 99, 103, 101, 101]]

def envelope0068FibreMax : Fin 9 -> Nat :=
  ![111, 108, 108, 108, 108, 110, 108, 109, 110]

theorem envelope0068 : TailR263EvenOneDiagonalRange 7018746 7053839 := by
  intro N hLower hStop
  have hNUpper : N <= 7053838 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7053838 (envelope0068BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7053838 (envelope0068CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7053838 (envelope0068FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7053838) (count := 177478) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0068BaseCounts, envelope0068CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0068FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0068FibreCounts, envelope0068FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0068FibreMax cell) <=
          ∑ cell : Fin 9, envelope0068FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0068FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0068BaseCounts, envelope0068FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0069BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 111468
  | .evenTwoCell residue => ![2483, 2465, 2478, 2475, 2491, 2466, 2486, 2480, 2484] residue

def envelope0069CellCounts : Fin 9 -> Nat :=
  ![4951, 4951, 4956, 4962, 4936, 4964, 4949, 4957, 4959]

def envelope0069FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![100, 96, 95, 101, 102, 100, 99, 99, 98, 109, 97, 99, 102, 102, 101, 101, 97, 101, 98, 105, 105, 103, 96, 103, 98, 98, 97, 103, 103, 99, 100, 98, 105, 103, 98, 103, 102, 100, 104, 106, 99, 101, 98, 106, 105, 103, 100, 111, 102], ![94, 107, 104, 102, 105, 100, 104, 105, 96, 99, 101, 102, 100, 101, 98, 107, 103, 97, 100, 96, 107, 102, 96, 101, 99, 99, 101, 109, 104, 104, 106, 99, 106, 100, 98, 102, 97, 105, 104, 97, 102, 101, 98, 98, 101, 100, 98, 99, 97], ![110, 98, 101, 105, 99, 100, 97, 100, 103, 104, 100, 98, 105, 105, 101, 100, 97, 101, 104, 103, 99, 106, 97, 101, 102, 98, 102, 103, 94, 98, 99, 97, 101, 103, 101, 103, 108, 104, 98, 97, 102, 96, 105, 105, 104, 98, 99, 103, 102], ![105, 105, 98, 107, 100, 99, 102, 105, 102, 101, 96, 103, 104, 97, 100, 103, 102, 104, 101, 103, 103, 103, 95, 100, 100, 105, 103, 94, 104, 108, 102, 100, 101, 103, 106, 98, 105, 97, 96, 101, 101, 101, 102, 104, 105, 96, 96, 99, 97], ![106, 101, 100, 99, 96, 101, 101, 95, 104, 100, 98, 99, 105, 99, 106, 96, 98, 103, 96, 102, 98, 100, 103, 107, 102, 106, 102, 93, 101, 109, 97, 103, 106, 100, 99, 102, 99, 103, 98, 96, 104, 102, 100, 96, 95, 102, 103, 99, 106], ![98, 96, 103, 106, 104, 111, 102, 100, 105, 97, 100, 102, 104, 101, 101, 102, 95, 102, 102, 100, 105, 98, 105, 99, 101, 98, 97, 95, 103, 106, 99, 106, 95, 100, 105, 101, 101, 100, 107, 100, 98, 99, 102, 105, 105, 103, 100, 98, 102], ![101, 105, 102, 108, 97, 100, 101, 98, 96, 100, 101, 106, 100, 99, 103, 98, 101, 100, 106, 103, 97, 98, 106, 99, 100, 104, 97, 107, 100, 95, 99, 99, 93, 103, 96, 98, 104, 103, 96, 106, 97, 104, 107, 102, 102, 105, 104, 99, 104], ![96, 104, 99, 97, 105, 94, 99, 104, 103, 101, 104, 99, 96, 98, 96, 102, 105, 105, 107, 100, 102, 104, 101, 96, 104, 104, 96, 105, 97, 98, 101, 103, 99, 108, 105, 102, 102, 102, 102, 96, 105, 98, 102, 99, 99, 100, 101, 109, 103], ![103, 107, 108, 96, 97, 102, 104, 105, 98, 96, 110, 103, 92, 105, 106, 104, 109, 98, 104, 97, 99, 98, 106, 96, 104, 99, 101, 100, 92, 97, 104, 97, 105, 100, 96, 105, 101, 97, 105, 104, 102, 104, 99, 97, 102, 99, 104, 101, 101]]

def envelope0069FibreMax : Fin 9 -> Nat :=
  ![111, 109, 110, 108, 109, 111, 108, 109, 110]

theorem envelope0069 : TailR263EvenOneDiagonalRange 7053839 7089108 := by
  intro N hLower hStop
  have hNUpper : N <= 7089107 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7089107 (envelope0069BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7089107 (envelope0069CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7089107 (envelope0069FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7089107) (count := 178361) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0069BaseCounts, envelope0069CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0069FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0069FibreCounts, envelope0069FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0069FibreMax cell) <=
          ∑ cell : Fin 9, envelope0069FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0069FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0069BaseCounts, envelope0069FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0070BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 112031
  | .evenTwoCell residue => ![2496, 2478, 2492, 2484, 2503, 2475, 2500, 2495, 2497] residue

def envelope0070CellCounts : Fin 9 -> Nat :=
  ![4976, 4974, 4983, 4986, 4965, 4992, 4976, 4978, 4982]

def envelope0070FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![101, 97, 96, 101, 102, 100, 99, 99, 100, 109, 98, 102, 102, 102, 101, 101, 97, 102, 98, 106, 105, 103, 97, 104, 99, 100, 98, 105, 103, 99, 100, 98, 105, 105, 98, 104, 102, 100, 104, 106, 99, 103, 98, 107, 105, 103, 100, 111, 102], ![94, 109, 104, 103, 105, 100, 104, 107, 97, 100, 101, 102, 100, 101, 98, 108, 103, 99, 100, 96, 107, 102, 96, 102, 99, 100, 101, 109, 104, 104, 107, 101, 107, 101, 99, 103, 97, 105, 104, 98, 102, 102, 98, 98, 101, 100, 98, 101, 97], ![110, 99, 101, 105, 99, 101, 99, 101, 104, 104, 100, 98, 105, 107, 101, 101, 97, 101, 104, 103, 99, 107, 97, 104, 102, 99, 102, 106, 96, 99, 100, 98, 101, 103, 101, 103, 108, 105, 98, 98, 103, 97, 105, 105, 104, 98, 100, 103, 102], ![105, 105, 99, 107, 101, 100, 102, 105, 102, 102, 96, 104, 104, 99, 101, 105, 103, 105, 101, 104, 103, 104, 95, 100, 100, 105, 103, 94, 104, 108, 104, 100, 102, 103, 106, 98, 106, 97, 98, 101, 101, 101, 102, 104, 106, 96, 98, 99, 98], ![107, 102, 100, 100, 97, 102, 102, 97, 105, 101, 99, 100, 105, 99, 106, 96, 98, 103, 97, 102, 99, 101, 103, 108, 102, 106, 104, 93, 103, 109, 97, 103, 106, 100, 100, 102, 100, 104, 98, 97, 104, 102, 101, 96, 96, 104, 103, 100, 106], ![98, 96, 103, 106, 104, 111, 102, 100, 105, 97, 101, 103, 105, 101, 103, 103, 96, 102, 103, 100, 105, 98, 105, 99, 102, 98, 100, 95, 104, 106, 99, 106, 98, 100, 107, 101, 101, 100, 107, 101, 99, 99, 105, 105, 106, 104, 101, 99, 103], ![102, 106, 102, 109, 97, 101, 102, 98, 97, 101, 101, 106, 100, 101, 104, 99, 103, 100, 106, 104, 97, 99, 108, 99, 101, 105, 97, 107, 100, 96, 100, 99, 94, 103, 96, 99, 104, 104, 97, 106, 98, 104, 107, 102, 102, 105, 104, 100, 104], ![96, 104, 99, 97, 106, 95, 99, 104, 103, 101, 105, 99, 98, 98, 97, 102, 105, 105, 107, 100, 103, 104, 102, 96, 104, 104, 96, 105, 99, 98, 102, 103, 99, 108, 105, 102, 102, 103, 102, 98, 105, 98, 102, 102, 99, 102, 101, 111, 103], ![103, 108, 109, 96, 98, 102, 104, 105, 98, 96, 110, 103, 93, 105, 107, 104, 110, 99, 105, 98, 99, 98, 106, 96, 104, 99, 101, 101, 92, 98, 106, 97, 105, 101, 98, 107, 102, 98, 105, 104, 102, 104, 99, 98, 102, 100, 104, 102, 101]]

def envelope0070FibreMax : Fin 9 -> Nat :=
  ![111, 109, 110, 108, 109, 111, 109, 111, 110]

theorem envelope0070 : TailR263EvenOneDiagonalRange 7089108 7124553 := by
  intro N hLower hStop
  have hNUpper : N <= 7124552 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7124552 (envelope0070BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7124552 (envelope0070CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7124552 (envelope0070FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7124552) (count := 179263) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0070BaseCounts, envelope0070CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0070FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0070FibreCounts, envelope0070FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0070FibreMax cell) <=
          ∑ cell : Fin 9, envelope0070FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0070FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0070BaseCounts, envelope0070FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0071BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 112593
  | .evenTwoCell residue => ![2509, 2491, 2505, 2498, 2515, 2487, 2512, 2508, 2507] residue

def envelope0071CellCounts : Fin 9 -> Nat :=
  ![4999, 5002, 5006, 5016, 4989, 5016, 4995, 5001, 5008]

def envelope0071FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![102, 98, 96, 101, 102, 101, 100, 101, 100, 110, 99, 102, 103, 102, 101, 101, 98, 102, 99, 106, 105, 103, 97, 105, 100, 101, 99, 105, 104, 99, 100, 98, 106, 105, 100, 104, 102, 100, 104, 106, 101, 103, 99, 107, 105, 103, 100, 111, 103], ![96, 109, 104, 103, 105, 100, 105, 107, 99, 100, 101, 102, 100, 101, 100, 108, 105, 100, 101, 96, 107, 102, 97, 102, 100, 101, 101, 109, 104, 104, 108, 102, 108, 102, 99, 105, 98, 105, 105, 99, 102, 104, 98, 98, 101, 101, 99, 102, 97], ![110, 99, 101, 105, 100, 102, 100, 103, 104, 104, 100, 99, 106, 107, 102, 101, 97, 101, 104, 103, 100, 108, 101, 105, 103, 99, 102, 106, 97, 99, 101, 98, 101, 103, 101, 103, 108, 105, 98, 99, 104, 97, 105, 106, 104, 99, 100, 104, 102], ![105, 105, 100, 109, 102, 101, 102, 106, 102, 104, 97, 104, 107, 99, 103, 106, 103, 105, 102, 104, 104, 104, 95, 100, 100, 106, 103, 95, 104, 110, 104, 101, 102, 103, 106, 100, 106, 98, 98, 101, 101, 102, 102, 105, 106, 98, 98, 100, 98], ![107, 102, 101, 101, 97, 103, 102, 97, 106, 101, 100, 100, 105, 99, 106, 96, 98, 104, 97, 103, 100, 101, 105, 108, 103, 107, 105, 95, 103, 109, 97, 103, 106, 101, 100, 103, 101, 104, 99, 99, 104, 103, 102, 97, 96, 104, 103, 100, 106], ![99, 96, 103, 106, 104, 111, 102, 101, 105, 98, 101, 104, 105, 102, 103, 104, 97, 103, 103, 100, 106, 98, 105, 100, 103, 99, 102, 96, 104, 107, 99, 107, 98, 100, 107, 101, 101, 100, 107, 102, 100, 100, 105, 106, 106, 105, 102, 100, 103], ![102, 107, 103, 109, 98, 101, 102, 100, 97, 101, 101, 106, 100, 102, 104, 100, 103, 100, 107, 104, 97, 100, 108, 100, 101, 105, 97, 107, 100, 97, 100, 100, 94, 103, 98, 99, 105, 104, 98, 106, 98, 104, 107, 102, 102, 105, 105, 100, 106], ![96, 104, 99, 98, 106, 96, 99, 104, 103, 102, 105, 101, 99, 99, 97, 102, 105, 105, 107, 101, 103, 105, 103, 97, 104, 105, 96, 107, 99, 99, 102, 103, 99, 108, 105, 102, 103, 103, 103, 98, 105, 99, 103, 103, 101, 102, 102, 111, 103], ![104, 109, 110, 97, 99, 102, 105, 105, 99, 97, 110, 104, 93, 105, 107, 104, 110, 100, 106, 98, 100, 98, 106, 97, 106, 100, 102, 101, 93, 98, 106, 97, 106, 101, 100, 107, 103, 98, 105, 104, 102, 105, 99, 98, 105, 100, 104, 102, 101]]

def envelope0071FibreMax : Fin 9 -> Nat :=
  ![111, 109, 110, 110, 109, 111, 109, 111, 110]

theorem envelope0071 : TailR263EvenOneDiagonalRange 7124553 7160175 := by
  intro N hLower hStop
  have hNUpper : N <= 7160174 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7160174 (envelope0071BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7160174 (envelope0071CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7160174 (envelope0071FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7160174) (count := 180157) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0071BaseCounts, envelope0071CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0071FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0071FibreCounts, envelope0071FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0071FibreMax cell) <=
          ∑ cell : Fin 9, envelope0071FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0071FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0071BaseCounts, envelope0071FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0072BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 113148
  | .evenTwoCell residue => ![2520, 2500, 2522, 2511, 2527, 2500, 2524, 2520, 2520] residue

def envelope0072CellCounts : Fin 9 -> Nat :=
  ![5020, 5027, 5027, 5038, 5015, 5042, 5022, 5029, 5038]

def envelope0072FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![103, 98, 96, 101, 102, 101, 101, 101, 101, 111, 99, 102, 103, 102, 101, 102, 98, 103, 100, 106, 105, 103, 98, 106, 101, 102, 99, 105, 104, 99, 100, 99, 106, 106, 100, 104, 102, 100, 105, 107, 102, 105, 99, 107, 105, 103, 100, 112, 105], ![96, 109, 105, 103, 105, 101, 105, 108, 99, 100, 101, 103, 100, 103, 100, 110, 105, 100, 101, 96, 107, 103, 97, 102, 100, 101, 102, 109, 104, 109, 109, 104, 108, 102, 99, 105, 98, 106, 105, 100, 102, 104, 99, 98, 101, 101, 100, 102, 100], ![110, 100, 101, 106, 101, 103, 101, 103, 104, 104, 100, 101, 106, 108, 102, 101, 99, 102, 104, 104, 101, 109, 101, 105, 103, 99, 102, 106, 97, 100, 101, 98, 101, 103, 101, 103, 109, 107, 99, 100, 104, 97, 105, 106, 104, 99, 101, 104, 102], ![105, 106, 100, 110, 102, 101, 102, 106, 103, 105, 98, 106, 107, 100, 103, 106, 103, 106, 102, 105, 104, 104, 95, 100, 100, 107, 105, 95, 104, 110, 105, 101, 102, 103, 107, 100, 107, 98, 98, 102, 101, 102, 103, 105, 107, 98, 101, 100, 98], ![108, 104, 102, 101, 98, 103, 103, 98, 106, 102, 100, 100, 105, 99, 106, 96, 99, 104, 98, 104, 100, 102, 105, 108, 104, 107, 106, 95, 103, 110, 97, 104, 106, 104, 101, 104, 101, 105, 99, 99, 105, 103, 104, 97, 96, 104, 103, 100, 107], ![99, 96, 103, 106, 104, 111, 103, 101, 106, 99, 102, 105, 107, 102, 106, 104, 98, 103, 103, 101, 106, 98, 106, 100, 104, 99, 103, 96, 105, 107, 101, 107, 99, 100, 107, 101, 101, 100, 108, 102, 103, 100, 106, 106, 107, 105, 103, 100, 103], ![103, 109, 105, 111, 99, 102, 103, 100, 97, 101, 101, 106, 101, 102, 105, 100, 103, 101, 107, 105, 98, 100, 109, 101, 101, 105, 97, 107, 101, 97, 100, 100, 94, 104, 98, 100, 106, 104, 99, 107, 98, 104, 107, 103, 103, 106, 105, 101, 106], ![96, 104, 100, 98, 107, 96, 99, 104, 104, 102, 107, 101, 101, 101, 97, 102, 105, 105, 108, 101, 104, 105, 104, 98, 105, 105, 99, 108, 99, 100, 102, 105, 99, 108, 106, 103, 103, 104, 103, 98, 106, 99, 104, 104, 101, 103, 102, 111, 103], ![105, 110, 111, 98, 99, 102, 105, 105, 100, 97, 111, 104, 96, 105, 107, 105, 111, 101, 108, 99, 100, 98, 106, 97, 107, 101, 103, 102, 93, 98, 106, 98, 106, 103, 100, 107, 103, 99, 105, 105, 102, 106, 100, 100, 105, 101, 104, 102, 102]]

def envelope0072FibreMax : Fin 9 -> Nat :=
  ![112, 110, 110, 110, 110, 111, 111, 111, 111]

theorem envelope0072 : TailR263EvenOneDiagonalRange 7160175 7195975 := by
  intro N hLower hStop
  have hNUpper : N <= 7195974 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7195974 (envelope0072BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7195974 (envelope0072CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7195974 (envelope0072FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7195974) (count := 181050) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0072BaseCounts, envelope0072CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0072FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0072FibreCounts, envelope0072FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0072FibreMax cell) <=
          ∑ cell : Fin 9, envelope0072FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0072FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0072BaseCounts, envelope0072FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0073BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 113716
  | .evenTwoCell residue => ![2532, 2512, 2533, 2523, 2538, 2511, 2535, 2535, 2535] residue

def envelope0073CellCounts : Fin 9 -> Nat :=
  ![5042, 5051, 5056, 5066, 5042, 5065, 5048, 5050, 5059]

def envelope0073FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![103, 98, 97, 101, 102, 102, 101, 103, 102, 111, 99, 102, 103, 102, 102, 102, 99, 103, 100, 106, 105, 105, 98, 107, 102, 102, 99, 105, 104, 99, 101, 99, 107, 106, 100, 105, 102, 101, 106, 107, 103, 105, 101, 107, 105, 103, 101, 112, 107], ![96, 109, 105, 103, 106, 101, 106, 108, 99, 100, 101, 103, 102, 103, 102, 110, 105, 100, 103, 97, 108, 103, 98, 104, 100, 101, 103, 109, 106, 109, 110, 104, 109, 102, 99, 105, 99, 106, 106, 100, 102, 104, 99, 98, 101, 102, 101, 104, 100], ![110, 100, 102, 107, 102, 104, 101, 105, 105, 104, 103, 101, 107, 108, 102, 101, 99, 102, 105, 106, 101, 110, 101, 105, 103, 99, 103, 106, 99, 101, 101, 99, 101, 103, 101, 104, 110, 109, 101, 100, 104, 97, 105, 107, 104, 100, 102, 104, 102], ![106, 106, 102, 110, 102, 101, 102, 106, 104, 105, 100, 106, 107, 100, 103, 107, 104, 106, 103, 106, 104, 104, 95, 100, 100, 108, 106, 97, 105, 111, 106, 102, 102, 104, 107, 101, 107, 98, 99, 102, 104, 103, 103, 107, 107, 99, 101, 100, 98], ![109, 105, 103, 102, 98, 103, 104, 98, 106, 102, 100, 100, 105, 99, 107, 98, 99, 106, 99, 105, 101, 103, 105, 109, 104, 107, 106, 97, 103, 110, 98, 105, 106, 105, 102, 104, 103, 105, 99, 101, 105, 104, 104, 97, 96, 104, 103, 101, 107], ![99, 96, 103, 106, 104, 112, 103, 102, 108, 99, 103, 105, 107, 103, 107, 105, 98, 103, 103, 101, 107, 99, 106, 101, 104, 100, 103, 97, 105, 107, 101, 108, 99, 102, 108, 101, 101, 101, 108, 103, 103, 101, 106, 107, 107, 106, 103, 100, 104], ![103, 110, 105, 112, 100, 103, 103, 100, 97, 101, 101, 107, 102, 102, 105, 100, 105, 101, 108, 106, 98, 101, 109, 101, 101, 105, 97, 109, 101, 98, 100, 100, 95, 104, 100, 101, 106, 104, 103, 107, 98, 104, 107, 103, 105, 106, 106, 101, 107], ![96, 105, 100, 100, 107, 96, 100, 105, 105, 104, 107, 102, 101, 101, 97, 102, 105, 105, 108, 103, 104, 105, 104, 99, 105, 108, 99, 108, 100, 100, 102, 105, 99, 108, 106, 103, 104, 104, 103, 99, 106, 100, 105, 104, 102, 103, 102, 111, 103], ![105, 111, 111, 98, 99, 102, 107, 106, 100, 98, 111, 104, 96, 105, 108, 106, 112, 101, 108, 99, 100, 98, 106, 97, 108, 101, 104, 103, 93, 98, 107, 98, 108, 103, 101, 107, 103, 99, 105, 105, 103, 106, 101, 100, 105, 101, 105, 103, 104]]

def envelope0073FibreMax : Fin 9 -> Nat :=
  ![112, 110, 110, 111, 110, 112, 112, 111, 112]

theorem envelope0073 : TailR263EvenOneDiagonalRange 7195975 7231954 := by
  intro N hLower hStop
  have hNUpper : N <= 7231953 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7231953 (envelope0073BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7231953 (envelope0073CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7231953 (envelope0073FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7231953) (count := 181949) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0073BaseCounts, envelope0073CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0073FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0073FibreCounts, envelope0073FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0073FibreMax cell) <=
          ∑ cell : Fin 9, envelope0073FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0073FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0073BaseCounts, envelope0073FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0074BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 114297
  | .evenTwoCell residue => ![2542, 2525, 2543, 2538, 2552, 2524, 2546, 2547, 2546] residue

def envelope0074CellCounts : Fin 9 -> Nat :=
  ![5073, 5073, 5080, 5087, 5065, 5093, 5077, 5079, 5086]

def envelope0074FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![104, 99, 97, 103, 103, 104, 102, 104, 104, 111, 99, 102, 103, 103, 102, 102, 99, 103, 100, 107, 106, 106, 99, 108, 102, 102, 99, 106, 104, 100, 103, 100, 107, 106, 100, 105, 105, 102, 107, 108, 104, 106, 101, 107, 105, 104, 101, 112, 107], ![96, 109, 105, 104, 106, 102, 106, 108, 99, 100, 101, 105, 102, 106, 102, 110, 106, 102, 103, 97, 108, 104, 98, 104, 100, 101, 103, 111, 106, 110, 111, 104, 109, 102, 99, 106, 99, 107, 106, 100, 102, 104, 99, 99, 102, 103, 103, 104, 100], ![110, 101, 103, 108, 103, 105, 101, 105, 105, 105, 103, 102, 107, 108, 102, 101, 99, 103, 106, 107, 102, 110, 101, 105, 103, 100, 103, 107, 99, 101, 101, 100, 101, 103, 103, 104, 112, 109, 101, 100, 104, 98, 106, 107, 105, 100, 103, 106, 102], ![106, 107, 102, 110, 102, 101, 102, 106, 104, 107, 101, 107, 107, 100, 103, 108, 104, 107, 103, 106, 105, 105, 95, 100, 100, 108, 107, 98, 105, 111, 106, 102, 103, 104, 110, 101, 107, 98, 99, 102, 105, 103, 105, 107, 109, 99, 101, 100, 99], ![110, 105, 104, 102, 98, 104, 104, 98, 106, 102, 100, 100, 105, 99, 108, 101, 101, 106, 100, 105, 101, 103, 106, 109, 105, 107, 106, 97, 103, 111, 99, 105, 108, 106, 102, 105, 103, 105, 100, 101, 106, 104, 104, 97, 96, 105, 104, 101, 108], ![99, 96, 105, 106, 106, 113, 104, 103, 108, 100, 103, 105, 107, 104, 109, 105, 98, 103, 103, 101, 108, 100, 107, 102, 105, 101, 104, 97, 106, 107, 102, 108, 100, 102, 108, 101, 102, 101, 109, 103, 104, 102, 107, 107, 108, 106, 103, 101, 104], ![104, 110, 106, 113, 101, 103, 103, 100, 97, 101, 102, 107, 103, 102, 107, 101, 106, 102, 109, 106, 99, 101, 109, 102, 102, 105, 98, 109, 103, 99, 100, 101, 97, 105, 102, 101, 106, 106, 103, 107, 98, 104, 107, 104, 105, 107, 106, 101, 107], ![97, 105, 101, 101, 107, 97, 100, 107, 106, 106, 108, 102, 101, 101, 98, 102, 106, 105, 109, 105, 104, 105, 105, 99, 107, 108, 99, 110, 101, 100, 102, 105, 99, 109, 106, 105, 104, 104, 104, 99, 107, 101, 105, 105, 103, 103, 102, 111, 103], ![109, 111, 111, 98, 99, 102, 108, 106, 101, 98, 111, 104, 96, 106, 108, 107, 112, 102, 108, 99, 100, 98, 106, 98, 108, 102, 104, 103, 93, 100, 108, 100, 108, 106, 101, 108, 103, 99, 105, 106, 103, 108, 101, 100, 105, 102, 106, 105, 104]]

def envelope0074FibreMax : Fin 9 -> Nat :=
  ![112, 111, 112, 111, 111, 113, 113, 111, 112]

theorem envelope0074 : TailR263EvenOneDiagonalRange 7231954 7268113 := by
  intro N hLower hStop
  have hNUpper : N <= 7268112 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7268112 (envelope0074BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7268112 (envelope0074CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7268112 (envelope0074FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7268112) (count := 182873) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0074BaseCounts, envelope0074CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0074FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0074FibreCounts, envelope0074FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0074FibreMax cell) <=
          ∑ cell : Fin 9, envelope0074FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0074FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0074BaseCounts, envelope0074FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0075BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 114868
  | .evenTwoCell residue => ![2553, 2541, 2555, 2552, 2567, 2536, 2557, 2556, 2558] residue

def envelope0075CellCounts : Fin 9 -> Nat :=
  ![5100, 5097, 5105, 5115, 5089, 5116, 5102, 5106, 5109]

def envelope0075FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![104, 99, 98, 103, 105, 104, 103, 104, 104, 111, 99, 103, 104, 103, 103, 103, 99, 103, 100, 108, 107, 107, 101, 108, 104, 102, 99, 106, 105, 100, 104, 100, 108, 106, 100, 106, 106, 103, 108, 108, 104, 107, 101, 107, 106, 104, 102, 113, 108], ![96, 109, 105, 104, 107, 102, 106, 108, 100, 100, 103, 107, 104, 106, 102, 110, 106, 102, 105, 98, 109, 104, 99, 104, 100, 101, 105, 111, 108, 110, 111, 104, 109, 102, 100, 106, 100, 107, 106, 100, 102, 104, 100, 100, 103, 104, 103, 105, 100], ![112, 102, 104, 109, 103, 105, 101, 105, 106, 106, 104, 102, 107, 108, 102, 101, 100, 104, 107, 107, 102, 110, 101, 105, 104, 101, 104, 107, 99, 101, 103, 100, 101, 105, 103, 106, 112, 109, 101, 100, 104, 101, 106, 109, 105, 100, 103, 106, 102], ![106, 107, 102, 110, 103, 102, 103, 106, 106, 107, 102, 108, 107, 101, 104, 108, 105, 107, 103, 106, 106, 105, 95, 101, 101, 109, 108, 98, 107, 111, 106, 103, 103, 105, 110, 101, 107, 98, 99, 103, 106, 106, 106, 108, 109, 100, 101, 101, 99], ![110, 106, 104, 103, 98, 104, 104, 99, 106, 104, 100, 100, 105, 100, 108, 102, 102, 107, 100, 105, 101, 105, 106, 110, 105, 107, 106, 97, 103, 112, 99, 108, 108, 107, 103, 106, 103, 106, 100, 102, 106, 104, 104, 97, 96, 106, 104, 102, 109], ![99, 96, 105, 107, 106, 113, 105, 103, 109, 100, 103, 106, 107, 105, 109, 105, 99, 103, 103, 102, 108, 101, 108, 102, 106, 101, 104, 98, 106, 108, 102, 109, 100, 102, 108, 102, 102, 101, 109, 106, 104, 102, 108, 109, 108, 108, 104, 101, 104], ![104, 111, 106, 114, 102, 103, 103, 100, 97, 101, 102, 108, 103, 103, 107, 102, 106, 103, 110, 107, 99, 101, 110, 102, 102, 107, 100, 110, 103, 99, 101, 101, 98, 106, 102, 101, 107, 106, 103, 107, 99, 104, 108, 104, 106, 107, 108, 101, 108], ![97, 106, 101, 101, 108, 98, 101, 110, 106, 107, 108, 103, 101, 103, 98, 103, 106, 106, 109, 105, 105, 106, 106, 101, 107, 108, 100, 110, 101, 100, 102, 105, 100, 109, 107, 105, 104, 104, 104, 100, 108, 101, 106, 105, 103, 104, 102, 111, 105], ![109, 111, 111, 98, 99, 103, 108, 107, 101, 98, 111, 105, 97, 107, 109, 107, 113, 103, 108, 99, 100, 98, 107, 99, 109, 102, 104, 103, 94, 100, 109, 101, 109, 106, 101, 108, 103, 99, 106, 106, 104, 108, 101, 102, 106, 103, 107, 105, 105]]

def envelope0075FibreMax : Fin 9 -> Nat :=
  ![113, 111, 112, 111, 112, 113, 114, 111, 113]

theorem envelope0075 : TailR263EvenOneDiagonalRange 7268113 7304453 := by
  intro N hLower hStop
  have hNUpper : N <= 7304452 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7304452 (envelope0075BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7304452 (envelope0075CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7304452 (envelope0075FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7304452) (count := 183782) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0075BaseCounts, envelope0075CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0075FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0075FibreCounts, envelope0075FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0075FibreMax cell) <=
          ∑ cell : Fin 9, envelope0075FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0075FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0075BaseCounts, envelope0075FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0076BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 115439
  | .evenTwoCell residue => ![2564, 2551, 2568, 2566, 2581, 2549, 2572, 2567, 2569] residue

def envelope0076CellCounts : Fin 9 -> Nat :=
  ![5127, 5123, 5130, 5136, 5121, 5142, 5128, 5131, 5133]

def envelope0076FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![105, 100, 98, 105, 105, 105, 103, 104, 104, 112, 99, 104, 104, 104, 103, 103, 99, 103, 103, 110, 108, 108, 101, 108, 104, 102, 99, 107, 106, 102, 104, 101, 108, 106, 101, 107, 107, 106, 108, 108, 104, 107, 101, 107, 106, 105, 102, 113, 108], ![96, 110, 105, 105, 107, 104, 106, 109, 102, 102, 104, 109, 105, 106, 102, 110, 106, 103, 105, 99, 110, 104, 99, 104, 100, 103, 105, 112, 108, 110, 111, 104, 109, 103, 100, 107, 100, 107, 106, 100, 102, 106, 101, 101, 103, 104, 103, 105, 101], ![112, 104, 105, 109, 103, 105, 101, 106, 106, 108, 105, 102, 107, 108, 102, 102, 101, 105, 108, 107, 103, 110, 101, 106, 104, 102, 104, 107, 99, 101, 103, 101, 103, 105, 105, 108, 113, 109, 101, 100, 105, 101, 107, 109, 105, 100, 103, 106, 103], ![106, 107, 102, 110, 103, 103, 103, 108, 106, 107, 102, 108, 107, 102, 104, 109, 107, 107, 103, 106, 106, 105, 98, 102, 102, 110, 108, 98, 107, 111, 107, 103, 103, 105, 110, 101, 107, 98, 100, 104, 107, 107, 106, 108, 110, 100, 102, 101, 100], ![111, 106, 105, 105, 98, 105, 106, 99, 106, 105, 100, 100, 106, 100, 110, 102, 103, 107, 100, 106, 102, 106, 107, 110, 105, 108, 108, 97, 105, 112, 101, 108, 109, 108, 103, 106, 103, 106, 101, 102, 106, 104, 105, 97, 97, 106, 107, 103, 109], ![100, 96, 106, 107, 107, 114, 105, 104, 109, 101, 104, 106, 108, 105, 109, 105, 99, 103, 104, 102, 109, 102, 109, 103, 106, 101, 105, 98, 107, 108, 102, 109, 100, 104, 109, 102, 103, 102, 110, 107, 105, 102, 109, 109, 108, 109, 104, 101, 105], ![106, 111, 107, 114, 103, 103, 104, 100, 99, 101, 103, 108, 104, 103, 108, 102, 107, 104, 111, 107, 99, 101, 110, 102, 104, 107, 101, 110, 104, 100, 102, 101, 99, 107, 102, 102, 107, 106, 103, 107, 99, 105, 108, 105, 106, 108, 108, 102, 108], ![98, 108, 101, 102, 108, 99, 102, 110, 107, 107, 108, 103, 101, 103, 100, 104, 107, 106, 109, 106, 105, 106, 107, 101, 107, 109, 100, 110, 102, 100, 102, 106, 101, 110, 107, 105, 106, 104, 105, 101, 108, 102, 106, 106, 103, 104, 102, 112, 105], ![109, 111, 111, 98, 100, 103, 109, 108, 101, 98, 112, 105, 98, 108, 109, 108, 113, 105, 108, 99, 100, 100, 107, 100, 109, 102, 105, 103, 94, 103, 109, 102, 109, 106, 101, 108, 103, 101, 106, 106, 104, 108, 101, 103, 106, 105, 107, 107, 105]]

def envelope0076FibreMax : Fin 9 -> Nat :=
  ![113, 112, 113, 111, 112, 114, 114, 112, 113]

theorem envelope0076 : TailR263EvenOneDiagonalRange 7304453 7340975 := by
  intro N hLower hStop
  have hNUpper : N <= 7340974 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7340974 (envelope0076BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7340974 (envelope0076CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7340974 (envelope0076FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7340974) (count := 184697) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0076BaseCounts, envelope0076CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0076FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0076FibreCounts, envelope0076FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0076FibreMax cell) <=
          ∑ cell : Fin 9, envelope0076FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0076FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0076BaseCounts, envelope0076FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0077BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 116022
  | .evenTwoCell residue => ![2581, 2568, 2582, 2577, 2593, 2563, 2585, 2578, 2581] residue

def envelope0077CellCounts : Fin 9 -> Nat :=
  ![5151, 5147, 5155, 5166, 5147, 5166, 5150, 5158, 5162]

def envelope0077FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![107, 100, 100, 105, 106, 105, 103, 104, 104, 112, 100, 104, 107, 104, 103, 103, 100, 103, 105, 110, 109, 109, 101, 108, 104, 102, 99, 107, 107, 102, 104, 101, 108, 107, 102, 108, 108, 107, 108, 109, 104, 107, 102, 107, 107, 105, 103, 113, 108], ![97, 110, 107, 105, 107, 104, 106, 110, 103, 103, 105, 110, 105, 106, 102, 110, 107, 103, 106, 99, 110, 104, 99, 104, 102, 103, 107, 112, 108, 110, 111, 104, 110, 103, 101, 107, 100, 107, 106, 100, 103, 107, 104, 102, 103, 105, 103, 105, 102], ![114, 104, 105, 109, 103, 105, 102, 106, 107, 108, 105, 102, 107, 109, 104, 103, 103, 106, 108, 107, 103, 110, 102, 106, 105, 102, 105, 107, 99, 103, 103, 102, 103, 107, 105, 108, 113, 109, 101, 101, 105, 102, 108, 109, 105, 101, 103, 108, 103], ![106, 108, 102, 110, 104, 104, 105, 109, 107, 107, 104, 108, 108, 103, 105, 109, 107, 107, 104, 106, 106, 107, 99, 103, 103, 110, 108, 98, 107, 112, 107, 104, 104, 106, 110, 102, 107, 99, 101, 105, 108, 107, 107, 108, 110, 101, 102, 102, 100], ![111, 106, 106, 106, 99, 107, 106, 99, 106, 106, 101, 101, 106, 102, 110, 103, 103, 107, 100, 107, 103, 107, 107, 110, 105, 108, 108, 98, 105, 113, 101, 109, 110, 108, 104, 107, 103, 107, 101, 102, 106, 104, 105, 98, 97, 107, 109, 104, 109], ![100, 97, 106, 108, 108, 114, 106, 104, 109, 102, 104, 107, 108, 105, 109, 107, 99, 104, 104, 103, 110, 102, 110, 103, 106, 102, 105, 101, 107, 108, 102, 109, 100, 105, 109, 103, 104, 102, 111, 108, 105, 103, 109, 110, 109, 109, 104, 101, 105], ![106, 112, 107, 114, 103, 104, 104, 101, 100, 102, 103, 109, 104, 104, 111, 103, 107, 104, 111, 107, 99, 101, 110, 103, 104, 108, 102, 111, 104, 101, 102, 102, 99, 107, 102, 102, 107, 106, 103, 107, 100, 105, 109, 106, 106, 108, 109, 102, 109], ![99, 108, 102, 102, 109, 100, 102, 111, 107, 107, 108, 103, 101, 104, 100, 105, 108, 106, 110, 107, 106, 106, 108, 101, 108, 109, 100, 110, 102, 100, 103, 106, 103, 110, 108, 106, 107, 105, 105, 101, 109, 102, 106, 106, 105, 104, 104, 113, 106], ![109, 111, 111, 99, 100, 104, 109, 108, 101, 99, 112, 105, 99, 109, 110, 109, 113, 106, 109, 99, 101, 100, 107, 100, 109, 104, 106, 105, 96, 103, 110, 104, 109, 106, 102, 108, 104, 101, 107, 106, 104, 108, 102, 103, 108, 105, 109, 107, 106]]

def envelope0077FibreMax : Fin 9 -> Nat :=
  ![113, 112, 114, 112, 113, 114, 114, 113, 113]

theorem envelope0077 : TailR263EvenOneDiagonalRange 7340975 7377679 := by
  intro N hLower hStop
  have hNUpper : N <= 7377678 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7377678 (envelope0077BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7377678 (envelope0077CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7377678 (envelope0077FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7377678) (count := 185632) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0077BaseCounts, envelope0077CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0077FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0077FibreCounts, envelope0077FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0077FibreMax cell) <=
          ∑ cell : Fin 9, envelope0077FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0077FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0077BaseCounts, envelope0077FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0078BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 116603
  | .evenTwoCell residue => ![2597, 2579, 2596, 2589, 2603, 2576, 2599, 2591, 2595] residue

def envelope0078CellCounts : Fin 9 -> Nat :=
  ![5177, 5174, 5183, 5188, 5177, 5193, 5175, 5182, 5184]

def envelope0078FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![107, 101, 100, 106, 106, 105, 105, 104, 104, 114, 101, 106, 107, 104, 103, 104, 100, 105, 105, 110, 109, 109, 101, 108, 104, 103, 99, 109, 107, 102, 104, 102, 110, 109, 103, 109, 108, 107, 109, 109, 104, 108, 102, 108, 107, 105, 103, 113, 109], ![98, 111, 107, 105, 107, 104, 107, 111, 105, 104, 105, 110, 105, 106, 102, 111, 107, 105, 107, 99, 110, 105, 100, 105, 103, 105, 107, 112, 108, 110, 111, 105, 110, 104, 101, 108, 100, 107, 106, 101, 104, 108, 105, 103, 103, 105, 103, 106, 103], ![114, 104, 105, 109, 103, 106, 102, 106, 107, 108, 106, 103, 107, 111, 105, 105, 104, 107, 108, 107, 104, 111, 102, 109, 105, 102, 105, 107, 99, 103, 105, 102, 106, 107, 106, 108, 114, 110, 102, 101, 106, 102, 108, 109, 105, 101, 104, 108, 105], ![106, 108, 102, 111, 106, 105, 106, 109, 107, 108, 105, 108, 108, 104, 105, 109, 107, 107, 104, 106, 107, 108, 101, 104, 103, 110, 108, 98, 107, 112, 108, 104, 104, 106, 110, 102, 108, 100, 102, 106, 109, 107, 107, 109, 111, 101, 103, 102, 100], ![112, 107, 106, 107, 100, 108, 106, 99, 106, 106, 102, 102, 107, 103, 111, 104, 103, 107, 101, 107, 104, 107, 107, 111, 105, 108, 109, 98, 107, 113, 102, 109, 110, 109, 107, 107, 104, 107, 101, 102, 108, 104, 106, 98, 99, 107, 110, 104, 110], ![101, 97, 108, 109, 109, 115, 107, 104, 110, 103, 105, 107, 108, 105, 109, 107, 99, 104, 106, 104, 110, 105, 111, 104, 107, 102, 106, 101, 107, 108, 102, 109, 101, 105, 110, 104, 105, 103, 111, 108, 106, 103, 109, 111, 109, 109, 104, 101, 105], ![107, 112, 109, 114, 103, 105, 105, 101, 102, 102, 104, 109, 105, 104, 112, 103, 108, 104, 111, 107, 99, 102, 111, 103, 105, 108, 103, 111, 105, 102, 103, 102, 99, 108, 102, 102, 107, 106, 103, 108, 100, 106, 110, 106, 107, 109, 109, 103, 109], ![99, 109, 102, 103, 110, 100, 103, 111, 108, 107, 108, 103, 102, 104, 100, 105, 108, 107, 111, 108, 107, 106, 108, 102, 108, 109, 100, 110, 103, 101, 103, 107, 103, 111, 108, 107, 107, 106, 107, 102, 109, 102, 106, 107, 105, 105, 104, 114, 107], ![109, 111, 112, 100, 101, 104, 109, 108, 102, 99, 114, 106, 99, 110, 110, 109, 113, 106, 109, 101, 101, 101, 107, 100, 109, 104, 107, 106, 96, 104, 110, 104, 109, 106, 102, 109, 105, 102, 107, 106, 105, 109, 102, 105, 108, 106, 109, 107, 106]]

def envelope0078FibreMax : Fin 9 -> Nat :=
  ![114, 112, 114, 112, 113, 115, 114, 114, 114]

theorem envelope0078 : TailR263EvenOneDiagonalRange 7377679 7414567 := by
  intro N hLower hStop
  have hNUpper : N <= 7414566 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7414566 (envelope0078BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7414566 (envelope0078CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7414566 (envelope0078FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7414566) (count := 186561) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0078BaseCounts, envelope0078CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0078FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0078FibreCounts, envelope0078FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0078FibreMax cell) <=
          ∑ cell : Fin 9, envelope0078FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0078FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0078BaseCounts, envelope0078FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0079BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 117179
  | .evenTwoCell residue => ![2609, 2592, 2611, 2601, 2615, 2590, 2610, 2604, 2611] residue

def envelope0079CellCounts : Fin 9 -> Nat :=
  ![5203, 5200, 5205, 5217, 5199, 5221, 5201, 5211, 5211]

def envelope0079FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![111, 101, 100, 106, 106, 105, 105, 104, 105, 114, 102, 107, 107, 104, 103, 104, 102, 106, 106, 110, 109, 109, 101, 108, 106, 104, 100, 109, 107, 102, 105, 102, 112, 109, 104, 109, 108, 107, 109, 110, 105, 108, 103, 110, 107, 105, 103, 114, 110], ![99, 112, 107, 105, 107, 105, 107, 112, 106, 104, 105, 110, 105, 106, 103, 111, 108, 105, 107, 99, 110, 106, 103, 106, 104, 106, 107, 112, 108, 110, 114, 105, 111, 104, 101, 109, 100, 108, 107, 103, 104, 109, 105, 103, 104, 105, 103, 107, 103], ![114, 104, 106, 109, 104, 106, 103, 106, 107, 108, 106, 105, 109, 111, 107, 105, 104, 108, 108, 107, 105, 111, 103, 110, 105, 102, 105, 107, 100, 105, 105, 103, 106, 107, 106, 108, 114, 111, 102, 102, 106, 102, 108, 109, 105, 102, 104, 110, 105], ![106, 108, 104, 113, 106, 106, 106, 109, 107, 108, 106, 108, 109, 104, 105, 109, 107, 107, 104, 108, 108, 111, 102, 104, 104, 110, 108, 99, 107, 113, 111, 104, 104, 106, 110, 103, 108, 101, 103, 106, 110, 107, 107, 111, 111, 102, 103, 104, 100], ![113, 107, 107, 107, 100, 109, 106, 99, 106, 107, 103, 103, 108, 103, 111, 104, 103, 108, 101, 108, 104, 107, 107, 111, 105, 109, 109, 100, 109, 114, 102, 109, 110, 110, 107, 108, 104, 107, 101, 103, 108, 105, 106, 100, 99, 108, 110, 104, 110], ![101, 99, 108, 110, 109, 115, 107, 105, 110, 103, 106, 107, 108, 106, 109, 110, 100, 105, 107, 104, 111, 105, 111, 105, 107, 103, 106, 102, 107, 109, 102, 110, 101, 106, 111, 105, 106, 103, 111, 109, 106, 103, 111, 111, 111, 109, 104, 101, 106], ![107, 112, 109, 114, 103, 106, 105, 102, 103, 103, 105, 111, 105, 104, 112, 104, 108, 104, 111, 107, 99, 103, 111, 104, 105, 109, 104, 113, 105, 103, 103, 102, 100, 108, 102, 102, 107, 107, 105, 108, 101, 107, 110, 107, 107, 111, 110, 103, 110], ![100, 110, 103, 105, 110, 101, 103, 111, 108, 107, 108, 104, 103, 105, 100, 105, 109, 108, 112, 110, 107, 106, 109, 102, 108, 109, 101, 111, 104, 101, 104, 107, 106, 111, 109, 107, 109, 106, 109, 102, 109, 102, 106, 107, 106, 105, 104, 114, 108], ![110, 111, 112, 101, 101, 105, 109, 109, 102, 101, 114, 106, 100, 112, 110, 109, 113, 106, 109, 101, 102, 102, 107, 101, 109, 105, 108, 106, 98, 104, 110, 104, 109, 106, 103, 110, 107, 102, 107, 107, 106, 110, 105, 105, 109, 106, 109, 107, 106]]

def envelope0079FibreMax : Fin 9 -> Nat :=
  ![114, 114, 114, 113, 114, 115, 114, 114, 114]

theorem envelope0079 : TailR263EvenOneDiagonalRange 7414567 7451639 := by
  intro N hLower hStop
  have hNUpper : N <= 7451638 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 7451638 (envelope0079BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 7451638 (envelope0079CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 7451638 (envelope0079FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 7451638) (count := 187490) (by decide)
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
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0079BaseCounts, envelope0079CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0079FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0079FibreCounts, envelope0079FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0079FibreMax cell) <=
          ∑ cell : Fin 9, envelope0079FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0079FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0079BaseCounts, envelope0079FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
