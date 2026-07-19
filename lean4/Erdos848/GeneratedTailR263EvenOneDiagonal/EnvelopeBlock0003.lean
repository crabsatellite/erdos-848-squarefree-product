import Erdos848.GeneratedTailR263EvenOneDiagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263EvenOneDiagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0048BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 100386
  | .evenTwoCell residue => ![2241, 2225, 2234, 2234, 2241, 2216, 2234, 2239, 2237] residue

def envelope0048CellCounts : Fin 9 -> Nat :=
  ![4455, 4455, 4463, 4464, 4447, 4476, 4466, 4468, 4464]

def envelope0048FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![90, 88, 84, 91, 89, 89, 93, 94, 90, 97, 86, 86, 93, 92, 90, 92, 88, 93, 89, 97, 94, 90, 89, 94, 88, 91, 90, 91, 85, 87, 88, 92, 95, 93, 87, 92, 92, 89, 94, 99, 90, 92, 88, 97, 94, 89, 85, 97, 92], ![86, 99, 93, 89, 91, 88, 95, 97, 84, 86, 90, 96, 90, 94, 88, 98, 92, 85, 86, 86, 96, 92, 84, 92, 91, 91, 91, 96, 94, 97, 99, 94, 95, 88, 85, 90, 88, 95, 92, 88, 90, 90, 87, 88, 90, 91, 88, 92, 88], ![97, 86, 89, 95, 90, 93, 90, 91, 92, 90, 88, 91, 94, 93, 89, 89, 89, 93, 94, 94, 87, 95, 89, 89, 89, 87, 91, 94, 86, 89, 90, 86, 92, 91, 90, 96, 102, 95, 89, 87, 93, 86, 94, 95, 94, 87, 89, 93, 91], ![93, 95, 86, 97, 93, 90, 89, 94, 92, 95, 89, 95, 96, 86, 87, 93, 93, 93, 91, 89, 93, 92, 85, 92, 91, 97, 93, 84, 95, 100, 91, 84, 88, 89, 95, 87, 95, 86, 86, 89, 91, 95, 94, 92, 92, 86, 88, 89, 89], ![97, 89, 88, 91, 89, 95, 89, 86, 92, 90, 89, 89, 93, 88, 95, 90, 91, 95, 85, 90, 87, 91, 92, 97, 94, 93, 88, 83, 93, 98, 87, 91, 95, 93, 91, 95, 89, 92, 86, 86, 94, 93, 90, 84, 84, 94, 89, 88, 99], ![87, 83, 90, 95, 94, 100, 94, 88, 96, 89, 91, 91, 94, 89, 94, 90, 86, 93, 89, 88, 95, 90, 96, 89, 93, 91, 88, 85, 94, 98, 90, 92, 83, 90, 94, 89, 89, 91, 100, 93, 92, 93, 92, 91, 92, 92, 92, 90, 91], ![90, 98, 89, 99, 87, 92, 91, 89, 87, 90, 90, 93, 90, 92, 95, 89, 92, 89, 94, 91, 87, 90, 96, 92, 88, 91, 89, 96, 93, 85, 91, 90, 86, 96, 88, 88, 94, 94, 86, 92, 87, 89, 95, 88, 93, 97, 97, 87, 94], ![82, 92, 91, 91, 94, 86, 87, 96, 92, 89, 94, 88, 86, 92, 87, 91, 93, 94, 97, 93, 95, 95, 91, 84, 94, 93, 90, 98, 86, 86, 90, 89, 87, 96, 92, 92, 95, 96, 94, 89, 95, 88, 90, 94, 90, 89, 91, 95, 89], ![96, 99, 103, 86, 85, 89, 91, 93, 91, 87, 100, 93, 84, 95, 96, 92, 94, 87, 95, 89, 85, 86, 94, 86, 94, 90, 92, 94, 82, 86, 94, 88, 97, 92, 87, 93, 90, 87, 93, 91, 89, 93, 88, 89, 94, 91, 92, 92, 90]]

def envelope0048FibreMax : Fin 9 -> Nat :=
  ![99, 99, 102, 100, 99, 100, 99, 98, 103]

theorem envelope0048 : TailR263EvenOneDiagonalRange 6352415 6384177 := by
  intro N hLower hStop
  have hNUpper : N <= 6384176 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6384176 (envelope0048BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6384176 (envelope0048CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6384176 (envelope0048FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6384176) (count := 160645) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0048BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0048BaseCounts, envelope0048CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0048FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0048FibreCounts, envelope0048FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0048FibreMax cell) <=
          ∑ cell : Fin 9, envelope0048FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0048FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0048BaseCounts, envelope0048FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0049BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 100893
  | .evenTwoCell residue => ![2253, 2239, 2244, 2241, 2253, 2226, 2244, 2252, 2248] residue

def envelope0049CellCounts : Fin 9 -> Nat :=
  ![4475, 4477, 4484, 4486, 4467, 4497, 4491, 4490, 4489]

def envelope0049FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![91, 88, 84, 92, 89, 90, 93, 94, 91, 97, 86, 86, 93, 92, 91, 92, 89, 93, 90, 97, 95, 90, 90, 94, 88, 91, 90, 91, 86, 87, 89, 92, 95, 94, 87, 92, 93, 90, 95, 99, 90, 92, 88, 98, 95, 89, 87, 98, 92], ![86, 99, 93, 89, 92, 89, 95, 98, 84, 86, 91, 96, 91, 94, 88, 98, 93, 86, 87, 86, 96, 92, 85, 92, 92, 91, 92, 96, 95, 97, 99, 94, 95, 88, 86, 90, 89, 95, 94, 90, 91, 90, 88, 88, 91, 91, 88, 92, 89], ![98, 86, 90, 95, 90, 93, 90, 91, 93, 90, 89, 91, 94, 94, 90, 90, 90, 93, 95, 96, 87, 95, 89, 89, 89, 88, 92, 94, 86, 90, 91, 87, 93, 91, 91, 96, 103, 95, 89, 87, 93, 86, 94, 96, 94, 88, 89, 93, 91], ![94, 96, 86, 97, 93, 90, 93, 94, 92, 95, 89, 95, 96, 86, 88, 93, 94, 93, 91, 89, 94, 92, 87, 92, 92, 97, 93, 84, 95, 100, 91, 84, 88, 90, 96, 87, 96, 86, 88, 90, 91, 96, 94, 93, 93, 86, 88, 90, 89], ![97, 89, 88, 91, 90, 95, 90, 86, 92, 90, 89, 90, 93, 89, 95, 90, 91, 95, 85, 91, 88, 91, 92, 98, 94, 93, 89, 84, 93, 99, 87, 92, 95, 93, 91, 95, 91, 93, 86, 87, 95, 93, 90, 84, 84, 96, 90, 89, 99], ![87, 83, 92, 95, 95, 100, 94, 88, 96, 89, 91, 91, 94, 89, 94, 91, 86, 93, 90, 89, 96, 91, 96, 90, 93, 91, 88, 87, 94, 99, 90, 93, 83, 90, 95, 90, 90, 92, 100, 93, 92, 93, 92, 93, 92, 93, 92, 90, 92], ![90, 99, 91, 100, 89, 92, 91, 89, 87, 92, 91, 96, 90, 92, 95, 89, 92, 89, 95, 92, 87, 90, 96, 92, 88, 93, 89, 98, 93, 85, 91, 90, 86, 97, 88, 89, 94, 94, 88, 92, 87, 90, 96, 88, 94, 97, 97, 87, 94], ![84, 93, 92, 91, 94, 86, 87, 97, 92, 90, 94, 88, 86, 92, 87, 92, 94, 95, 98, 93, 95, 96, 91, 86, 94, 94, 91, 98, 86, 86, 90, 91, 87, 97, 93, 92, 95, 96, 94, 89, 96, 88, 91, 94, 90, 89, 91, 95, 90], ![96, 100, 103, 86, 85, 90, 92, 95, 91, 88, 100, 95, 84, 96, 96, 92, 94, 87, 95, 89, 85, 88, 94, 87, 95, 90, 93, 94, 82, 86, 95, 88, 99, 93, 87, 94, 90, 87, 94, 91, 91, 93, 89, 89, 94, 91, 93, 92, 91]]

def envelope0049FibreMax : Fin 9 -> Nat :=
  ![99, 99, 103, 100, 99, 100, 100, 98, 103]

theorem envelope0049 : TailR263EvenOneDiagonalRange 6384177 6416097 := by
  intro N hLower hStop
  have hNUpper : N <= 6416096 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6416096 (envelope0049BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6416096 (envelope0049CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6416096 (envelope0049FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6416096) (count := 161449) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0049BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0049BaseCounts, envelope0049CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0049FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0049FibreCounts, envelope0049FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0049FibreMax cell) <=
          ∑ cell : Fin 9, envelope0049FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0049FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0049BaseCounts, envelope0049FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0050BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 101404
  | .evenTwoCell residue => ![2261, 2249, 2256, 2252, 2263, 2240, 2256, 2261, 2258] residue

def envelope0050CellCounts : Fin 9 -> Nat :=
  ![4501, 4497, 4509, 4513, 4493, 4520, 4509, 4512, 4510]

def envelope0050FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![91, 88, 87, 92, 89, 90, 93, 94, 91, 99, 86, 87, 93, 94, 91, 93, 89, 93, 90, 98, 95, 92, 90, 94, 88, 91, 90, 92, 87, 88, 90, 92, 96, 94, 87, 94, 93, 91, 95, 99, 90, 92, 88, 99, 95, 91, 88, 99, 93], ![86, 100, 93, 89, 93, 90, 96, 98, 84, 87, 91, 97, 91, 94, 88, 98, 93, 87, 87, 87, 96, 92, 85, 93, 92, 92, 92, 97, 95, 97, 99, 94, 97, 90, 86, 91, 89, 96, 94, 91, 91, 91, 88, 88, 91, 92, 88, 92, 89], ![98, 87, 90, 95, 91, 93, 90, 91, 93, 91, 89, 91, 95, 96, 92, 91, 91, 94, 95, 96, 88, 96, 89, 90, 90, 89, 92, 94, 87, 90, 92, 87, 93, 91, 91, 96, 103, 95, 89, 87, 94, 87, 95, 96, 96, 88, 90, 93, 92], ![96, 96, 86, 98, 93, 92, 94, 95, 92, 95, 89, 95, 96, 88, 88, 94, 94, 93, 91, 90, 94, 93, 87, 92, 92, 97, 93, 85, 96, 100, 93, 84, 89, 90, 96, 88, 97, 86, 89, 90, 92, 96, 96, 94, 94, 86, 89, 90, 90], ![97, 89, 88, 93, 90, 95, 90, 86, 92, 90, 90, 90, 95, 90, 96, 90, 91, 96, 85, 91, 89, 91, 93, 99, 94, 93, 90, 84, 95, 99, 90, 93, 95, 93, 91, 95, 92, 93, 88, 87, 95, 94, 91, 84, 86, 96, 91, 89, 99], ![87, 84, 92, 96, 96, 100, 94, 88, 96, 89, 92, 91, 95, 89, 94, 91, 86, 96, 91, 90, 97, 92, 96, 90, 93, 91, 89, 87, 96, 99, 90, 93, 84, 91, 96, 91, 91, 92, 100, 93, 92, 93, 93, 94, 93, 93, 92, 90, 92], ![91, 99, 93, 100, 89, 92, 91, 89, 89, 92, 92, 96, 90, 92, 95, 89, 93, 89, 96, 92, 88, 90, 96, 92, 90, 93, 90, 98, 93, 85, 91, 90, 87, 97, 88, 89, 94, 94, 88, 92, 87, 91, 96, 90, 94, 97, 97, 89, 94], ![85, 94, 92, 91, 95, 86, 89, 97, 93, 90, 94, 88, 86, 92, 87, 93, 96, 96, 98, 93, 95, 96, 92, 86, 94, 94, 91, 98, 86, 86, 90, 91, 89, 98, 96, 92, 95, 96, 94, 90, 97, 89, 91, 94, 90, 89, 91, 96, 91], ![96, 100, 103, 86, 86, 90, 94, 95, 92, 88, 100, 95, 85, 96, 96, 94, 94, 87, 96, 89, 85, 89, 95, 88, 96, 90, 93, 95, 82, 87, 95, 89, 99, 93, 87, 94, 90, 88, 94, 93, 92, 94, 89, 89, 94, 92, 93, 92, 91]]

def envelope0050FibreMax : Fin 9 -> Nat :=
  ![99, 100, 103, 100, 99, 100, 100, 98, 103]

theorem envelope0050 : TailR263EvenOneDiagonalRange 6416097 6448177 := by
  intro N hLower hStop
  have hNUpper : N <= 6448176 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6448176 (envelope0050BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6448176 (envelope0050CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6448176 (envelope0050FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6448176) (count := 162264) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0050BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0050BaseCounts, envelope0050CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0050FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0050FibreCounts, envelope0050FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0050FibreMax cell) <=
          ∑ cell : Fin 9, envelope0050FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0050FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0050BaseCounts, envelope0050FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0051BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 101914
  | .evenTwoCell residue => ![2272, 2259, 2269, 2261, 2276, 2256, 2268, 2272, 2269] residue

def envelope0051CellCounts : Fin 9 -> Nat :=
  ![4523, 4519, 4526, 4533, 4511, 4540, 4532, 4536, 4533]

def envelope0051FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![91, 88, 87, 92, 90, 91, 93, 94, 91, 99, 87, 87, 95, 94, 92, 93, 89, 93, 91, 98, 96, 92, 90, 95, 88, 91, 91, 92, 88, 89, 90, 93, 96, 94, 88, 95, 94, 91, 95, 100, 90, 92, 89, 99, 96, 93, 88, 100, 93], ![87, 100, 94, 90, 93, 90, 96, 98, 85, 87, 92, 97, 91, 94, 88, 98, 94, 87, 88, 88, 97, 92, 86, 93, 93, 93, 95, 97, 95, 98, 99, 94, 98, 90, 87, 91, 90, 96, 95, 91, 91, 92, 88, 89, 91, 92, 88, 92, 89], ![98, 87, 90, 95, 91, 93, 91, 92, 94, 91, 90, 91, 95, 97, 93, 91, 92, 94, 95, 96, 88, 96, 90, 90, 90, 89, 92, 95, 87, 91, 92, 88, 93, 92, 91, 96, 103, 95, 89, 88, 94, 88, 95, 97, 96, 89, 90, 94, 92], ![96, 96, 87, 98, 94, 92, 95, 95, 92, 95, 89, 95, 97, 88, 88, 94, 94, 93, 92, 90, 95, 94, 87, 93, 92, 97, 93, 85, 96, 101, 93, 86, 89, 90, 98, 88, 98, 87, 89, 91, 92, 96, 96, 96, 94, 87, 89, 91, 90], ![97, 89, 88, 93, 90, 95, 90, 87, 92, 92, 90, 92, 95, 91, 97, 90, 91, 96, 85, 92, 89, 92, 93, 99, 95, 94, 90, 85, 95, 100, 90, 93, 95, 93, 91, 96, 92, 93, 88, 87, 95, 95, 91, 86, 86, 97, 91, 89, 99], ![89, 85, 93, 97, 96, 100, 94, 88, 96, 89, 92, 94, 95, 89, 94, 91, 87, 97, 92, 91, 97, 92, 97, 90, 93, 92, 89, 89, 96, 99, 90, 93, 85, 92, 97, 92, 91, 92, 100, 93, 92, 93, 93, 94, 93, 93, 92, 90, 92], ![91, 100, 93, 100, 89, 92, 91, 91, 89, 94, 92, 96, 90, 92, 95, 91, 93, 90, 96, 92, 88, 90, 96, 93, 90, 96, 90, 98, 93, 85, 91, 90, 87, 97, 89, 89, 94, 94, 89, 93, 88, 94, 98, 90, 94, 97, 97, 90, 95], ![86, 95, 92, 91, 95, 87, 89, 98, 93, 91, 94, 88, 86, 93, 88, 94, 97, 96, 98, 93, 95, 96, 94, 86, 95, 94, 91, 98, 88, 86, 91, 92, 90, 99, 96, 92, 95, 96, 95, 91, 98, 89, 91, 94, 90, 89, 91, 97, 93], ![96, 100, 103, 87, 86, 92, 94, 96, 92, 90, 100, 95, 86, 96, 97, 94, 94, 87, 96, 89, 86, 90, 96, 89, 96, 90, 93, 95, 83, 88, 97, 89, 99, 94, 87, 94, 91, 88, 96, 93, 93, 94, 89, 89, 95, 92, 94, 92, 91]]

def envelope0051FibreMax : Fin 9 -> Nat :=
  ![100, 100, 103, 101, 100, 100, 100, 99, 103]

theorem envelope0051 : TailR263EvenOneDiagonalRange 6448177 6480417 := by
  intro N hLower hStop
  have hNUpper : N <= 6480416 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6480416 (envelope0051BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6480416 (envelope0051CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6480416 (envelope0051FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6480416) (count := 163069) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0051BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0051BaseCounts, envelope0051CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0051FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0051FibreCounts, envelope0051FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0051FibreMax cell) <=
          ∑ cell : Fin 9, envelope0051FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0051FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0051BaseCounts, envelope0051FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0052BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 102425
  | .evenTwoCell residue => ![2283, 2271, 2281, 2275, 2287, 2266, 2280, 2285, 2278] residue

def envelope0052CellCounts : Fin 9 -> Nat :=
  ![4542, 4547, 4547, 4557, 4533, 4564, 4557, 4555, 4556]

def envelope0052FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![91, 89, 87, 94, 90, 91, 93, 94, 91, 100, 87, 89, 95, 95, 92, 93, 89, 94, 91, 99, 96, 92, 90, 95, 88, 92, 91, 92, 90, 89, 91, 93, 96, 96, 89, 96, 94, 91, 95, 100, 90, 92, 89, 99, 97, 93, 89, 100, 93], ![87, 101, 95, 91, 95, 91, 97, 99, 86, 88, 92, 97, 91, 94, 88, 99, 94, 88, 88, 90, 99, 93, 86, 94, 93, 94, 95, 98, 95, 98, 99, 94, 98, 90, 88, 93, 90, 98, 95, 91, 92, 92, 89, 90, 91, 92, 88, 92, 89], ![98, 89, 90, 95, 91, 94, 91, 93, 94, 91, 91, 91, 96, 98, 93, 92, 92, 95, 95, 96, 88, 96, 90, 90, 92, 89, 93, 95, 88, 91, 93, 88, 93, 92, 91, 96, 103, 95, 90, 88, 95, 88, 96, 98, 96, 89, 91, 95, 93], ![97, 96, 88, 100, 94, 92, 95, 96, 92, 95, 89, 95, 97, 88, 89, 95, 95, 94, 93, 91, 96, 94, 88, 93, 93, 97, 93, 85, 98, 101, 94, 86, 89, 91, 98, 89, 98, 89, 90, 91, 92, 96, 96, 96, 95, 87, 90, 91, 90], ![97, 89, 89, 93, 91, 95, 90, 87, 93, 92, 93, 92, 96, 91, 97, 90, 92, 96, 88, 93, 90, 92, 93, 99, 96, 94, 91, 85, 96, 100, 90, 93, 95, 93, 92, 96, 93, 93, 88, 88, 95, 95, 93, 86, 86, 97, 91, 89, 100], ![90, 87, 94, 97, 96, 102, 94, 89, 97, 89, 93, 94, 95, 89, 94, 92, 88, 97, 93, 92, 97, 92, 97, 91, 94, 92, 90, 90, 96, 100, 90, 94, 86, 93, 97, 92, 91, 92, 100, 93, 92, 93, 93, 95, 94, 93, 92, 90, 93], ![92, 101, 93, 100, 89, 92, 93, 91, 91, 94, 93, 96, 90, 92, 96, 91, 94, 90, 96, 92, 88, 90, 98, 93, 91, 96, 90, 98, 93, 85, 91, 92, 87, 98, 89, 91, 94, 94, 89, 96, 88, 96, 98, 90, 95, 97, 98, 91, 95], ![86, 95, 92, 91, 96, 87, 91, 98, 93, 91, 94, 88, 86, 93, 88, 95, 98, 96, 98, 93, 95, 97, 96, 87, 95, 94, 91, 98, 88, 88, 92, 93, 91, 99, 96, 92, 95, 97, 95, 91, 98, 89, 91, 94, 90, 90, 92, 98, 94], ![96, 100, 103, 89, 87, 92, 95, 97, 92, 90, 100, 96, 86, 97, 97, 94, 94, 87, 96, 90, 87, 91, 97, 89, 97, 91, 93, 96, 83, 89, 97, 89, 99, 94, 87, 95, 92, 90, 97, 94, 93, 94, 90, 89, 95, 93, 94, 92, 91]]

def envelope0052FibreMax : Fin 9 -> Nat :=
  ![100, 101, 103, 101, 100, 102, 101, 99, 103]

theorem envelope0052 : TailR263EvenOneDiagonalRange 6480417 6512819 := by
  intro N hLower hStop
  have hNUpper : N <= 6512818 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6512818 (envelope0052BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6512818 (envelope0052CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6512818 (envelope0052FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6512818) (count := 163889) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0052BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0052BaseCounts, envelope0052CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0052FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0052FibreCounts, envelope0052FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0052FibreMax cell) <=
          ∑ cell : Fin 9, envelope0052FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0052FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0052BaseCounts, envelope0052FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0053BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 102926
  | .evenTwoCell residue => ![2292, 2282, 2293, 2286, 2296, 2279, 2294, 2297, 2289] residue

def envelope0053CellCounts : Fin 9 -> Nat :=
  ![4568, 4569, 4573, 4577, 4557, 4583, 4581, 4579, 4578]

def envelope0053FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![92, 90, 88, 94, 90, 91, 93, 94, 92, 100, 89, 89, 96, 95, 92, 93, 90, 94, 92, 99, 96, 92, 90, 95, 90, 92, 92, 95, 90, 90, 91, 93, 97, 96, 89, 97, 94, 91, 95, 100, 91, 93, 89, 101, 98, 96, 89, 100, 93], ![88, 102, 95, 92, 96, 91, 98, 100, 87, 88, 92, 97, 91, 94, 91, 99, 95, 88, 89, 90, 100, 93, 86, 94, 93, 94, 95, 98, 95, 98, 99, 94, 98, 91, 89, 94, 91, 98, 95, 92, 93, 93, 89, 90, 92, 92, 88, 93, 89], ![99, 89, 90, 95, 92, 94, 92, 93, 95, 92, 92, 92, 96, 98, 93, 92, 92, 95, 95, 96, 89, 97, 90, 92, 92, 90, 93, 96, 88, 92, 93, 89, 93, 93, 91, 96, 103, 96, 90, 89, 95, 89, 96, 100, 98, 91, 91, 96, 93], ![97, 97, 88, 100, 94, 93, 95, 96, 93, 95, 89, 96, 97, 89, 89, 95, 96, 94, 94, 93, 96, 95, 88, 93, 93, 97, 93, 86, 98, 101, 95, 88, 90, 91, 98, 90, 98, 90, 90, 91, 92, 96, 96, 97, 95, 88, 90, 91, 91], ![98, 90, 89, 94, 91, 95, 90, 88, 93, 94, 93, 93, 98, 91, 97, 90, 92, 97, 88, 94, 90, 92, 93, 100, 96, 96, 91, 86, 96, 102, 90, 93, 97, 94, 92, 97, 93, 93, 88, 89, 95, 96, 93, 86, 87, 97, 91, 89, 100], ![91, 88, 94, 97, 96, 102, 94, 90, 97, 90, 93, 94, 95, 90, 95, 93, 89, 97, 93, 92, 98, 92, 97, 92, 94, 93, 90, 90, 96, 100, 90, 95, 87, 93, 97, 92, 91, 92, 100, 93, 93, 93, 94, 95, 94, 93, 92, 91, 96], ![92, 101, 93, 100, 89, 94, 93, 92, 91, 94, 94, 97, 91, 93, 96, 91, 94, 90, 96, 92, 88, 91, 98, 94, 92, 96, 90, 98, 95, 87, 92, 92, 88, 98, 89, 91, 94, 96, 90, 96, 90, 96, 99, 90, 95, 97, 99, 91, 96], ![86, 95, 93, 92, 96, 87, 91, 98, 93, 91, 96, 88, 89, 93, 90, 95, 99, 96, 98, 93, 96, 97, 96, 88, 95, 94, 91, 98, 90, 88, 94, 94, 91, 99, 96, 92, 96, 97, 96, 91, 98, 89, 91, 94, 91, 92, 93, 99, 94], ![96, 100, 104, 89, 88, 93, 95, 97, 92, 90, 101, 96, 87, 98, 97, 95, 94, 87, 97, 91, 89, 92, 97, 89, 97, 91, 93, 96, 84, 89, 97, 89, 99, 94, 88, 95, 94, 90, 98, 94, 94, 94, 91, 89, 95, 93, 97, 92, 91]]

def envelope0053FibreMax : Fin 9 -> Nat :=
  ![101, 102, 103, 101, 102, 102, 101, 99, 104]

theorem envelope0053 : TailR263EvenOneDiagonalRange 6512819 6545383 := by
  intro N hLower hStop
  have hNUpper : N <= 6545382 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6545382 (envelope0053BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6545382 (envelope0053CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6545382 (envelope0053FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6545382) (count := 164699) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0053BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0053BaseCounts, envelope0053CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0053FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0053FibreCounts, envelope0053FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0053FibreMax cell) <=
          ∑ cell : Fin 9, envelope0053FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0053FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0053BaseCounts, envelope0053FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0054BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 103453
  | .evenTwoCell residue => ![2302, 2293, 2304, 2296, 2308, 2288, 2305, 2307, 2301] residue

def envelope0054CellCounts : Fin 9 -> Nat :=
  ![4590, 4589, 4595, 4602, 4582, 4609, 4600, 4601, 4602]

def envelope0054FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![92, 91, 88, 94, 90, 91, 93, 95, 93, 102, 89, 90, 96, 95, 92, 94, 90, 95, 92, 99, 96, 94, 90, 95, 90, 92, 93, 96, 91, 90, 92, 93, 97, 96, 91, 97, 94, 91, 95, 101, 92, 94, 90, 101, 99, 96, 89, 100, 94], ![89, 102, 96, 92, 96, 92, 98, 100, 89, 90, 92, 97, 91, 95, 91, 99, 96, 89, 89, 91, 100, 93, 87, 94, 93, 94, 95, 98, 95, 98, 100, 94, 99, 92, 89, 95, 91, 98, 96, 92, 94, 93, 89, 90, 92, 92, 89, 93, 90], ![99, 89, 90, 96, 93, 94, 92, 94, 95, 93, 92, 93, 97, 98, 94, 92, 92, 95, 96, 96, 90, 97, 91, 92, 93, 90, 94, 96, 88, 92, 94, 89, 93, 93, 91, 96, 104, 96, 92, 90, 96, 89, 97, 100, 99, 91, 93, 96, 93], ![98, 97, 89, 100, 95, 93, 95, 96, 94, 95, 90, 96, 97, 89, 90, 96, 96, 95, 95, 93, 97, 95, 89, 93, 93, 99, 94, 86, 99, 102, 95, 91, 90, 92, 99, 90, 99, 90, 90, 91, 93, 96, 97, 97, 95, 88, 90, 92, 91], ![99, 91, 90, 94, 91, 95, 92, 88, 95, 94, 94, 93, 98, 91, 97, 90, 93, 97, 89, 95, 90, 92, 95, 100, 97, 96, 92, 86, 96, 102, 90, 93, 98, 94, 92, 97, 93, 93, 90, 89, 97, 97, 93, 87, 87, 97, 94, 89, 100], ![92, 88, 95, 97, 96, 102, 95, 90, 98, 90, 93, 94, 95, 91, 96, 94, 90, 97, 93, 92, 98, 92, 97, 92, 94, 93, 90, 90, 96, 101, 91, 97, 87, 94, 97, 92, 93, 92, 100, 94, 93, 94, 96, 97, 94, 93, 95, 92, 97], ![92, 101, 93, 100, 91, 94, 95, 92, 91, 94, 94, 97, 91, 94, 96, 92, 94, 90, 96, 92, 88, 91, 99, 95, 92, 96, 90, 99, 95, 88, 92, 93, 88, 98, 89, 91, 95, 97, 91, 98, 90, 97, 99, 90, 95, 98, 99, 92, 96], ![86, 95, 94, 92, 98, 88, 91, 98, 93, 91, 96, 90, 89, 95, 90, 95, 99, 96, 98, 94, 96, 98, 96, 88, 95, 94, 91, 100, 90, 90, 94, 94, 91, 99, 96, 93, 96, 98, 96, 91, 98, 89, 92, 95, 92, 95, 93, 99, 94], ![96, 101, 105, 90, 89, 93, 95, 97, 92, 91, 102, 97, 87, 98, 98, 95, 95, 88, 98, 91, 91, 92, 97, 89, 97, 92, 94, 97, 84, 89, 98, 89, 99, 95, 88, 97, 94, 91, 98, 94, 95, 94, 91, 89, 96, 93, 97, 93, 91]]

def envelope0054FibreMax : Fin 9 -> Nat :=
  ![102, 102, 104, 102, 102, 102, 101, 100, 105]

theorem envelope0054 : TailR263EvenOneDiagonalRange 6545383 6578109 := by
  intro N hLower hStop
  have hNUpper : N <= 6578108 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6578108 (envelope0054BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6578108 (envelope0054CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6578108 (envelope0054FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6578108) (count := 165527) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0054BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0054BaseCounts, envelope0054CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0054FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0054FibreCounts, envelope0054FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0054FibreMax cell) <=
          ∑ cell : Fin 9, envelope0054FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0054FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0054BaseCounts, envelope0054FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0055BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 103962
  | .evenTwoCell residue => ![2312, 2302, 2316, 2309, 2321, 2302, 2314, 2318, 2311] residue

def envelope0055CellCounts : Fin 9 -> Nat :=
  ![4609, 4615, 4622, 4629, 4603, 4632, 4620, 4627, 4622]

def envelope0055FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 88, 94, 90, 91, 93, 95, 95, 102, 90, 90, 96, 95, 93, 96, 91, 95, 92, 99, 96, 94, 90, 95, 90, 95, 93, 97, 91, 90, 92, 94, 97, 97, 91, 97, 94, 91, 95, 102, 92, 95, 90, 102, 99, 96, 90, 101, 94], ![89, 103, 98, 92, 97, 92, 99, 100, 90, 91, 92, 97, 91, 95, 91, 102, 96, 90, 90, 91, 100, 94, 88, 95, 93, 94, 95, 98, 95, 99, 100, 95, 99, 92, 90, 95, 92, 99, 96, 93, 94, 94, 89, 90, 92, 93, 89, 94, 92], ![99, 90, 90, 96, 94, 95, 93, 94, 96, 94, 92, 93, 98, 99, 95, 92, 92, 95, 97, 98, 90, 98, 91, 94, 93, 91, 94, 97, 88, 93, 94, 89, 95, 93, 91, 97, 104, 97, 92, 91, 96, 90, 97, 101, 99, 92, 93, 97, 93], ![98, 98, 89, 101, 96, 93, 95, 96, 94, 96, 90, 97, 97, 90, 92, 96, 97, 96, 95, 96, 97, 96, 89, 93, 94, 100, 94, 87, 99, 102, 96, 91, 91, 93, 99, 91, 99, 90, 90, 91, 93, 96, 97, 97, 97, 88, 91, 93, 93], ![101, 92, 90, 94, 91, 96, 92, 90, 95, 94, 94, 93, 98, 91, 97, 91, 93, 98, 89, 95, 90, 93, 95, 102, 97, 96, 92, 86, 97, 102, 90, 93, 98, 94, 93, 97, 93, 94, 90, 90, 99, 97, 94, 88, 87, 97, 94, 90, 101], ![92, 88, 95, 98, 96, 103, 95, 92, 98, 90, 93, 94, 96, 91, 96, 94, 90, 98, 93, 92, 98, 92, 98, 92, 95, 93, 90, 90, 97, 101, 95, 97, 88, 95, 97, 92, 93, 92, 101, 95, 94, 94, 96, 97, 95, 94, 96, 93, 98], ![92, 101, 93, 102, 91, 95, 95, 92, 91, 94, 94, 98, 92, 94, 96, 92, 94, 92, 96, 93, 89, 92, 100, 95, 92, 96, 91, 100, 96, 88, 93, 93, 88, 98, 89, 92, 96, 98, 92, 98, 90, 97, 99, 90, 96, 98, 99, 92, 96], ![86, 95, 95, 92, 99, 88, 91, 98, 93, 91, 97, 90, 91, 95, 90, 95, 99, 97, 98, 94, 97, 98, 96, 88, 96, 95, 93, 100, 92, 91, 94, 95, 92, 99, 97, 94, 97, 98, 96, 91, 98, 89, 94, 96, 92, 96, 94, 101, 94], ![97, 102, 105, 91, 89, 93, 95, 97, 93, 91, 104, 97, 87, 98, 99, 95, 97, 89, 99, 92, 91, 92, 97, 89, 98, 92, 95, 97, 84, 89, 98, 89, 99, 95, 91, 98, 94, 91, 98, 94, 95, 95, 91, 90, 96, 93, 97, 93, 91]]

def envelope0055FibreMax : Fin 9 -> Nat :=
  ![102, 103, 104, 102, 102, 103, 102, 101, 105]

theorem envelope0055 : TailR263EvenOneDiagonalRange 6578109 6610999 := by
  intro N hLower hStop
  have hNUpper : N <= 6610998 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6610998 (envelope0055BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6610998 (envelope0055CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6610998 (envelope0055FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6610998) (count := 166346) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0055BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0055BaseCounts, envelope0055CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0055FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0055FibreCounts, envelope0055FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0055FibreMax cell) <=
          ∑ cell : Fin 9, envelope0055FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0055FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0055BaseCounts, envelope0055FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0056BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 104484
  | .evenTwoCell residue => ![2327, 2315, 2328, 2319, 2330, 2310, 2326, 2333, 2325] residue

def envelope0056CellCounts : Fin 9 -> Nat :=
  ![4634, 4634, 4646, 4650, 4629, 4658, 4644, 4651, 4643]

def envelope0056FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 88, 94, 90, 92, 93, 97, 95, 105, 90, 90, 96, 96, 93, 96, 91, 95, 93, 99, 97, 94, 91, 97, 93, 96, 93, 97, 91, 90, 94, 94, 98, 97, 91, 97, 95, 91, 96, 102, 94, 95, 91, 102, 99, 96, 91, 101, 94], ![90, 103, 98, 92, 97, 93, 99, 100, 90, 91, 92, 97, 92, 95, 93, 102, 96, 90, 90, 91, 101, 94, 89, 95, 93, 94, 95, 98, 96, 99, 101, 96, 99, 93, 90, 95, 93, 99, 97, 93, 94, 94, 90, 90, 93, 95, 90, 95, 92], ![99, 91, 91, 97, 94, 96, 94, 96, 96, 94, 93, 93, 99, 100, 95, 92, 92, 95, 98, 98, 91, 98, 91, 94, 94, 91, 97, 97, 89, 94, 94, 89, 95, 94, 93, 97, 104, 97, 93, 91, 97, 90, 98, 101, 99, 92, 93, 97, 93], ![99, 98, 90, 101, 96, 94, 95, 97, 94, 97, 91, 97, 97, 92, 92, 97, 98, 96, 96, 96, 97, 96, 89, 93, 95, 100, 95, 87, 99, 103, 97, 92, 91, 93, 99, 91, 99, 91, 90, 91, 93, 97, 97, 98, 97, 89, 91, 94, 93], ![102, 92, 90, 95, 92, 96, 95, 90, 96, 94, 94, 93, 99, 91, 98, 91, 94, 98, 90, 95, 91, 93, 96, 102, 97, 97, 92, 86, 97, 102, 90, 94, 99, 95, 93, 97, 94, 95, 91, 91, 99, 97, 95, 91, 87, 97, 94, 91, 101], ![92, 88, 95, 99, 98, 103, 96, 92, 99, 90, 93, 95, 96, 92, 96, 95, 90, 98, 93, 92, 98, 93, 98, 93, 97, 93, 90, 91, 97, 103, 95, 99, 88, 95, 97, 93, 93, 93, 101, 96, 94, 94, 97, 98, 95, 96, 97, 94, 98], ![92, 101, 94, 102, 91, 96, 95, 92, 91, 94, 94, 101, 92, 95, 97, 92, 94, 93, 98, 94, 90, 93, 100, 95, 92, 96, 91, 101, 96, 89, 93, 93, 88, 98, 91, 93, 97, 99, 92, 99, 90, 97, 100, 91, 96, 99, 99, 92, 96], ![87, 95, 95, 93, 100, 88, 91, 98, 93, 93, 97, 92, 91, 95, 90, 95, 99, 98, 98, 95, 97, 98, 96, 89, 96, 99, 93, 101, 92, 91, 94, 95, 92, 100, 98, 95, 97, 98, 96, 91, 98, 92, 95, 96, 94, 96, 94, 101, 94], ![98, 103, 106, 92, 89, 93, 95, 98, 93, 92, 104, 97, 87, 98, 99, 96, 98, 90, 100, 92, 91, 92, 97, 90, 98, 92, 95, 97, 86, 89, 98, 89, 100, 96, 92, 99, 94, 91, 98, 94, 96, 95, 92, 90, 96, 93, 98, 93, 92]]

def envelope0056FibreMax : Fin 9 -> Nat :=
  ![105, 103, 104, 103, 102, 103, 102, 101, 106]

theorem envelope0056 : TailR263EvenOneDiagonalRange 6610999 6644053 := by
  intro N hLower hStop
  have hNUpper : N <= 6644052 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6644052 (envelope0056BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6644052 (envelope0056CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6644052 (envelope0056FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6644052) (count := 167186) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0056BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0056BaseCounts, envelope0056CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0056FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0056FibreCounts, envelope0056FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0056FibreMax cell) <=
          ∑ cell : Fin 9, envelope0056FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0056FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0056BaseCounts, envelope0056FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0057BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 105013
  | .evenTwoCell residue => ![2337, 2326, 2339, 2332, 2346, 2324, 2338, 2343, 2333] residue

def envelope0057CellCounts : Fin 9 -> Nat :=
  ![4656, 4657, 4670, 4674, 4654, 4677, 4667, 4668, 4669]

def envelope0057FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 88, 96, 91, 93, 95, 97, 96, 105, 90, 90, 96, 96, 94, 97, 91, 95, 93, 99, 97, 96, 92, 98, 94, 96, 93, 97, 91, 91, 94, 94, 98, 97, 91, 97, 95, 92, 97, 103, 94, 96, 91, 102, 99, 97, 91, 103, 94], ![90, 103, 98, 92, 97, 95, 99, 100, 90, 92, 92, 98, 92, 97, 93, 103, 96, 90, 90, 92, 101, 95, 89, 95, 93, 94, 95, 99, 96, 100, 102, 96, 100, 95, 90, 96, 93, 101, 98, 93, 94, 94, 90, 91, 93, 96, 91, 95, 93], ![99, 92, 91, 98, 95, 96, 94, 96, 96, 95, 94, 94, 100, 100, 95, 92, 92, 96, 98, 99, 94, 99, 91, 95, 94, 92, 97, 98, 90, 94, 94, 89, 95, 95, 93, 98, 104, 98, 93, 92, 97, 90, 98, 101, 100, 92, 93, 97, 95], ![99, 101, 90, 101, 96, 94, 95, 98, 94, 98, 92, 98, 97, 92, 93, 98, 98, 97, 97, 97, 97, 96, 89, 94, 95, 100, 95, 87, 100, 103, 99, 92, 92, 93, 100, 91, 99, 91, 90, 92, 93, 97, 98, 99, 98, 89, 92, 94, 94], ![102, 93, 91, 95, 93, 98, 95, 91, 96, 95, 94, 93, 99, 92, 98, 91, 94, 98, 91, 96, 91, 94, 98, 102, 98, 97, 92, 86, 97, 102, 91, 94, 100, 95, 93, 98, 94, 98, 93, 91, 100, 97, 95, 91, 87, 97, 95, 91, 102], ![92, 88, 95, 100, 98, 103, 96, 92, 99, 90, 94, 95, 98, 92, 97, 95, 90, 98, 95, 92, 99, 93, 99, 93, 97, 93, 92, 91, 99, 103, 96, 99, 88, 95, 97, 93, 94, 93, 101, 96, 94, 94, 98, 98, 97, 96, 98, 94, 98], ![92, 102, 96, 103, 92, 98, 95, 93, 91, 95, 95, 101, 93, 95, 97, 92, 94, 94, 100, 95, 91, 93, 101, 95, 92, 96, 92, 101, 97, 89, 93, 93, 88, 99, 92, 94, 98, 99, 92, 99, 90, 97, 100, 91, 96, 99, 99, 92, 96], ![88, 95, 96, 93, 100, 88, 91, 98, 95, 93, 99, 92, 91, 95, 90, 95, 100, 98, 99, 95, 97, 98, 96, 89, 98, 99, 94, 101, 92, 91, 94, 96, 92, 101, 98, 97, 97, 98, 96, 91, 98, 93, 95, 96, 94, 96, 95, 101, 94], ![99, 104, 106, 92, 90, 93, 97, 98, 94, 92, 104, 97, 87, 99, 100, 98, 100, 91, 100, 92, 91, 92, 98, 90, 98, 93, 95, 97, 86, 89, 99, 91, 101, 97, 93, 99, 95, 91, 98, 96, 96, 96, 92, 90, 96, 93, 98, 93, 93]]

def envelope0057FibreMax : Fin 9 -> Nat :=
  ![105, 103, 104, 103, 102, 103, 103, 101, 106]

theorem envelope0057 : TailR263EvenOneDiagonalRange 6644053 6677273 := by
  intro N hLower hStop
  have hNUpper : N <= 6677272 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6677272 (envelope0057BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6677272 (envelope0057CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6677272 (envelope0057FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6677272) (count := 168023) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0057BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0057BaseCounts, envelope0057CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0057FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0057FibreCounts, envelope0057FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0057FibreMax cell) <=
          ∑ cell : Fin 9, envelope0057FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0057FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0057BaseCounts, envelope0057FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0058BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 105537
  | .evenTwoCell residue => ![2350, 2337, 2351, 2342, 2357, 2332, 2351, 2352, 2346] residue

def envelope0058CellCounts : Fin 9 -> Nat :=
  ![4678, 4682, 4691, 4696, 4679, 4702, 4691, 4693, 4692]

def envelope0058FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 88, 97, 91, 94, 95, 98, 96, 105, 90, 90, 97, 96, 95, 97, 91, 95, 93, 99, 99, 97, 93, 98, 94, 96, 93, 97, 92, 91, 95, 94, 98, 97, 91, 97, 96, 94, 99, 103, 95, 96, 91, 102, 100, 97, 94, 104, 94], ![90, 103, 99, 94, 98, 95, 99, 100, 90, 92, 93, 98, 94, 97, 94, 103, 96, 91, 92, 92, 102, 95, 89, 95, 94, 94, 96, 101, 97, 101, 102, 97, 100, 95, 91, 96, 94, 101, 98, 93, 94, 94, 91, 91, 94, 97, 91, 96, 93], ![101, 92, 92, 100, 95, 97, 94, 96, 97, 95, 95, 94, 100, 100, 97, 92, 93, 96, 99, 99, 95, 99, 92, 96, 95, 92, 98, 98, 90, 94, 94, 89, 95, 95, 93, 98, 105, 98, 94, 92, 97, 91, 98, 102, 100, 92, 93, 97, 95], ![100, 101, 90, 101, 96, 94, 96, 98, 95, 98, 93, 98, 99, 93, 94, 98, 98, 97, 97, 97, 97, 96, 89, 94, 95, 101, 95, 89, 100, 104, 99, 94, 92, 94, 100, 91, 99, 91, 90, 93, 94, 98, 98, 100, 100, 89, 92, 95, 94], ![103, 94, 91, 96, 94, 98, 97, 91, 98, 95, 94, 93, 99, 92, 98, 92, 94, 98, 92, 96, 92, 96, 98, 103, 98, 97, 93, 86, 97, 103, 91, 97, 100, 95, 94, 98, 95, 98, 93, 92, 100, 97, 96, 91, 87, 98, 95, 92, 102], ![92, 89, 95, 100, 100, 104, 96, 92, 99, 91, 94, 98, 100, 93, 97, 95, 91, 98, 95, 93, 99, 93, 99, 93, 97, 94, 92, 92, 99, 104, 96, 99, 90, 95, 97, 94, 95, 94, 101, 96, 94, 94, 98, 100, 98, 97, 98, 94, 98], ![93, 103, 97, 104, 92, 98, 95, 93, 91, 96, 95, 102, 94, 95, 98, 93, 95, 95, 101, 96, 91, 93, 101, 95, 92, 96, 92, 102, 97, 89, 93, 93, 89, 100, 93, 95, 98, 99, 92, 99, 91, 97, 101, 92, 97, 99, 99, 92, 98], ![88, 96, 96, 93, 100, 89, 91, 100, 96, 96, 99, 92, 91, 95, 90, 96, 100, 99, 99, 95, 97, 98, 96, 91, 98, 100, 95, 101, 92, 93, 94, 96, 93, 101, 99, 97, 97, 98, 96, 92, 100, 94, 97, 96, 94, 96, 95, 101, 95], ![100, 104, 106, 92, 90, 94, 97, 99, 94, 92, 106, 97, 87, 100, 101, 99, 103, 91, 100, 92, 91, 92, 99, 90, 99, 93, 95, 97, 86, 89, 100, 92, 103, 97, 93, 99, 95, 91, 99, 96, 97, 96, 92, 90, 96, 94, 99, 94, 94]]

def envelope0058FibreMax : Fin 9 -> Nat :=
  ![105, 103, 105, 104, 103, 104, 104, 101, 106]

theorem envelope0058 : TailR263EvenOneDiagonalRange 6677273 6710659 := by
  intro N hLower hStop
  have hNUpper : N <= 6710658 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6710658 (envelope0058BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6710658 (envelope0058CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6710658 (envelope0058FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6710658) (count := 168859) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0058BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0058BaseCounts, envelope0058CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0058FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0058FibreCounts, envelope0058FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0058FibreMax cell) <=
          ∑ cell : Fin 9, envelope0058FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0058FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0058BaseCounts, envelope0058FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0059BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 106072
  | .evenTwoCell residue => ![2361, 2349, 2365, 2352, 2369, 2344, 2362, 2361, 2356] residue

def envelope0059CellCounts : Fin 9 -> Nat :=
  ![4705, 4708, 4716, 4718, 4702, 4728, 4715, 4716, 4710]

def envelope0059FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 88, 97, 93, 96, 96, 98, 96, 105, 92, 91, 97, 97, 95, 97, 91, 95, 93, 100, 100, 98, 94, 98, 94, 96, 93, 98, 93, 92, 95, 95, 98, 97, 91, 98, 96, 96, 99, 104, 97, 96, 91, 103, 100, 98, 94, 105, 95], ![90, 104, 99, 95, 98, 95, 99, 100, 90, 93, 94, 99, 94, 97, 94, 103, 96, 92, 92, 93, 102, 97, 89, 96, 94, 95, 96, 104, 98, 101, 103, 97, 100, 96, 91, 98, 94, 101, 99, 93, 94, 94, 91, 92, 97, 97, 92, 96, 94], ![102, 93, 93, 100, 96, 97, 94, 97, 99, 98, 95, 94, 100, 100, 97, 92, 93, 97, 100, 99, 96, 101, 92, 97, 95, 93, 98, 98, 90, 94, 94, 90, 95, 95, 94, 99, 105, 99, 94, 92, 98, 91, 100, 102, 100, 92, 93, 97, 96], ![100, 101, 90, 101, 96, 95, 96, 99, 95, 98, 93, 101, 100, 94, 94, 98, 98, 98, 97, 97, 97, 96, 90, 94, 96, 101, 96, 89, 101, 104, 100, 94, 94, 94, 100, 91, 99, 91, 92, 93, 95, 98, 99, 100, 101, 89, 93, 95, 95], ![104, 94, 92, 97, 94, 98, 97, 91, 98, 95, 94, 93, 100, 92, 99, 92, 94, 99, 93, 98, 92, 96, 100, 103, 98, 100, 93, 86, 98, 103, 92, 97, 100, 96, 94, 98, 96, 98, 95, 92, 100, 98, 96, 91, 88, 98, 96, 92, 102], ![92, 89, 97, 100, 101, 104, 96, 93, 100, 91, 96, 98, 101, 94, 97, 95, 91, 98, 96, 93, 100, 93, 100, 94, 98, 94, 95, 92, 100, 104, 96, 99, 90, 95, 98, 94, 96, 94, 101, 96, 95, 94, 100, 100, 99, 98, 98, 95, 98], ![95, 104, 98, 104, 92, 98, 95, 93, 92, 96, 96, 102, 94, 95, 98, 94, 96, 96, 101, 97, 91, 93, 102, 95, 93, 96, 93, 102, 97, 90, 93, 93, 90, 101, 93, 95, 100, 99, 92, 99, 91, 98, 102, 93, 97, 99, 100, 93, 99], ![89, 96, 96, 93, 100, 90, 93, 100, 98, 96, 99, 92, 91, 95, 91, 96, 101, 99, 99, 96, 97, 99, 97, 92, 99, 101, 95, 101, 92, 93, 94, 97, 93, 102, 100, 97, 97, 98, 97, 93, 101, 95, 97, 96, 94, 96, 95, 103, 95], ![100, 104, 106, 92, 92, 94, 97, 99, 94, 92, 106, 97, 87, 101, 101, 101, 103, 91, 100, 92, 91, 93, 99, 90, 99, 93, 95, 97, 86, 92, 100, 94, 103, 97, 93, 99, 95, 93, 99, 97, 97, 96, 92, 90, 96, 95, 100, 95, 95]]

def envelope0059FibreMax : Fin 9 -> Nat :=
  ![105, 104, 105, 104, 104, 104, 104, 103, 106]

theorem envelope0059 : TailR263EvenOneDiagonalRange 6710659 6744212 := by
  intro N hLower hStop
  have hNUpper : N <= 6744211 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6744211 (envelope0059BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6744211 (envelope0059CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6744211 (envelope0059FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6744211) (count := 169709) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0059BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0059BaseCounts, envelope0059CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0059FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0059FibreCounts, envelope0059FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0059FibreMax cell) <=
          ∑ cell : Fin 9, envelope0059FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0059FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0059BaseCounts, envelope0059FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0060BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 106607
  | .evenTwoCell residue => ![2372, 2361, 2376, 2365, 2384, 2355, 2375, 2372, 2368] residue

def envelope0060CellCounts : Fin 9 -> Nat :=
  ![4727, 4734, 4737, 4742, 4723, 4750, 4737, 4738, 4740]

def envelope0060FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![93, 91, 89, 98, 94, 97, 96, 98, 96, 105, 92, 91, 98, 97, 95, 97, 91, 95, 94, 101, 101, 99, 94, 98, 94, 96, 94, 98, 96, 92, 95, 95, 98, 97, 94, 99, 98, 96, 100, 104, 97, 96, 92, 104, 100, 98, 94, 105, 95], ![91, 104, 100, 95, 98, 95, 99, 100, 91, 93, 96, 99, 95, 97, 94, 105, 98, 92, 94, 93, 102, 97, 89, 96, 96, 95, 98, 104, 99, 102, 103, 97, 102, 96, 91, 98, 94, 101, 99, 93, 95, 96, 91, 94, 97, 98, 92, 96, 94], ![103, 94, 95, 100, 96, 97, 95, 97, 99, 98, 95, 94, 100, 100, 98, 93, 94, 98, 100, 100, 96, 101, 93, 97, 95, 93, 98, 98, 90, 94, 94, 91, 95, 96, 95, 99, 107, 99, 94, 93, 98, 92, 100, 102, 100, 93, 93, 98, 97], ![100, 101, 90, 101, 97, 95, 97, 100, 96, 98, 94, 101, 100, 94, 94, 99, 98, 99, 97, 97, 97, 97, 90, 96, 96, 102, 96, 90, 101, 105, 100, 95, 96, 94, 100, 91, 99, 92, 92, 94, 96, 99, 99, 101, 102, 90, 93, 96, 95], ![104, 95, 92, 97, 94, 99, 98, 91, 98, 95, 94, 94, 100, 94, 99, 92, 95, 99, 94, 100, 92, 97, 100, 103, 98, 100, 93, 87, 98, 104, 92, 98, 101, 96, 95, 99, 96, 99, 95, 92, 100, 98, 96, 93, 88, 98, 96, 93, 102], ![94, 90, 97, 101, 101, 105, 98, 94, 101, 93, 96, 99, 101, 94, 97, 95, 91, 98, 96, 94, 100, 93, 100, 95, 98, 95, 95, 93, 100, 104, 96, 99, 90, 96, 98, 95, 96, 94, 102, 97, 95, 95, 100, 100, 100, 98, 98, 95, 98], ![95, 104, 98, 104, 92, 98, 95, 94, 92, 97, 96, 102, 94, 95, 99, 95, 98, 97, 101, 97, 91, 93, 102, 96, 94, 97, 93, 102, 97, 90, 96, 93, 91, 101, 94, 95, 101, 99, 92, 99, 92, 98, 103, 93, 98, 99, 101, 93, 101], ![89, 96, 96, 93, 100, 91, 94, 102, 98, 96, 99, 93, 91, 96, 91, 97, 101, 101, 99, 96, 97, 100, 97, 93, 100, 101, 95, 102, 92, 93, 95, 97, 94, 102, 100, 97, 97, 99, 98, 94, 102, 95, 98, 96, 94, 96, 96, 103, 96], ![100, 104, 106, 93, 92, 94, 98, 100, 94, 92, 106, 97, 89, 101, 104, 101, 103, 92, 100, 93, 92, 93, 100, 90, 99, 93, 95, 97, 88, 92, 102, 94, 103, 97, 93, 100, 96, 93, 101, 98, 97, 97, 93, 90, 97, 96, 101, 99, 95]]

def envelope0060FibreMax : Fin 9 -> Nat :=
  ![105, 105, 107, 105, 104, 105, 104, 103, 106]

theorem envelope0060 : TailR263EvenOneDiagonalRange 6744212 6777933 := by
  intro N hLower hStop
  have hNUpper : N <= 6777932 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6777932 (envelope0060BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6777932 (envelope0060CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6777932 (envelope0060FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6777932) (count := 170563) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0060BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0060BaseCounts, envelope0060CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0060FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0060FibreCounts, envelope0060FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0060FibreMax cell) <=
          ∑ cell : Fin 9, envelope0060FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0060FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0060BaseCounts, envelope0060FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0061BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 107137
  | .evenTwoCell residue => ![2385, 2375, 2386, 2377, 2392, 2365, 2387, 2387, 2381] residue

def envelope0061CellCounts : Fin 9 -> Nat :=
  ![4747, 4757, 4763, 4765, 4751, 4773, 4760, 4763, 4763]

def envelope0061FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![95, 92, 90, 98, 95, 97, 96, 98, 96, 106, 92, 92, 98, 97, 95, 97, 91, 96, 95, 102, 102, 99, 94, 98, 94, 97, 94, 99, 98, 92, 95, 95, 98, 98, 95, 99, 99, 97, 100, 104, 97, 96, 92, 104, 101, 98, 94, 105, 95], ![91, 105, 100, 95, 98, 95, 99, 101, 92, 96, 96, 101, 95, 97, 94, 106, 98, 94, 94, 93, 103, 98, 89, 97, 96, 97, 98, 105, 99, 102, 103, 97, 102, 96, 92, 98, 94, 101, 99, 94, 96, 96, 92, 94, 98, 98, 92, 96, 95], ![105, 95, 96, 100, 96, 98, 95, 98, 99, 98, 95, 94, 100, 101, 98, 94, 95, 98, 101, 101, 96, 101, 93, 98, 96, 93, 98, 98, 90, 94, 95, 91, 97, 97, 96, 100, 107, 100, 95, 94, 98, 92, 101, 102, 100, 94, 94, 98, 98], ![100, 101, 90, 102, 97, 96, 97, 102, 97, 99, 94, 101, 101, 94, 95, 99, 98, 99, 97, 97, 98, 97, 91, 96, 97, 102, 99, 90, 102, 105, 101, 96, 96, 96, 100, 91, 100, 92, 93, 94, 97, 99, 99, 101, 102, 90, 94, 96, 95], ![105, 95, 93, 97, 95, 99, 98, 93, 98, 96, 95, 94, 101, 94, 100, 93, 96, 101, 95, 100, 94, 98, 100, 104, 98, 100, 94, 87, 99, 104, 92, 99, 101, 97, 96, 99, 97, 100, 95, 92, 100, 98, 97, 93, 89, 98, 96, 94, 102], ![94, 90, 98, 101, 101, 106, 99, 95, 102, 93, 97, 99, 102, 94, 97, 95, 92, 98, 97, 94, 100, 93, 101, 95, 100, 95, 96, 93, 100, 104, 96, 99, 92, 96, 99, 95, 96, 94, 102, 97, 96, 96, 101, 103, 100, 99, 98, 95, 98], ![96, 104, 100, 105, 92, 98, 96, 94, 93, 97, 96, 102, 94, 96, 100, 95, 99, 97, 101, 97, 92, 93, 104, 96, 96, 97, 93, 102, 97, 91, 96, 95, 91, 102, 94, 95, 101, 99, 92, 100, 92, 99, 103, 93, 98, 100, 101, 95, 101], ![89, 97, 96, 93, 102, 91, 96, 102, 98, 97, 99, 95, 92, 96, 91, 97, 101, 101, 99, 96, 98, 101, 99, 94, 100, 101, 95, 102, 93, 94, 95, 98, 94, 102, 100, 97, 98, 100, 99, 95, 102, 96, 98, 96, 95, 97, 96, 104, 96], ![100, 105, 106, 93, 92, 95, 98, 100, 94, 92, 106, 98, 89, 103, 104, 101, 103, 92, 100, 94, 93, 94, 100, 90, 99, 94, 96, 99, 88, 94, 102, 94, 103, 97, 93, 101, 96, 94, 101, 98, 97, 99, 93, 92, 98, 97, 102, 99, 95]]

def envelope0061FibreMax : Fin 9 -> Nat :=
  ![106, 106, 107, 105, 105, 106, 105, 104, 106]

theorem envelope0061 : TailR263EvenOneDiagonalRange 6777933 6811822 := by
  intro N hLower hStop
  have hNUpper : N <= 6811821 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6811821 (envelope0061BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6811821 (envelope0061CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6811821 (envelope0061FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6811821) (count := 171414) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0061BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0061BaseCounts, envelope0061CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0061FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0061FibreCounts, envelope0061FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0061FibreMax cell) <=
          ∑ cell : Fin 9, envelope0061FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0061FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0061BaseCounts, envelope0061FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0062BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 107670
  | .evenTwoCell residue => ![2397, 2387, 2397, 2391, 2406, 2376, 2400, 2398, 2395] residue

def envelope0062CellCounts : Fin 9 -> Nat :=
  ![4775, 4781, 4787, 4787, 4774, 4793, 4783, 4785, 4789]

def envelope0062FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![97, 93, 91, 99, 95, 97, 96, 98, 97, 106, 93, 92, 98, 97, 95, 97, 94, 97, 97, 103, 102, 99, 94, 98, 95, 97, 95, 99, 98, 93, 95, 95, 100, 100, 95, 100, 99, 98, 100, 105, 97, 97, 92, 105, 101, 98, 94, 106, 96], ![92, 105, 100, 97, 98, 95, 100, 101, 94, 96, 97, 101, 96, 97, 96, 106, 99, 94, 96, 93, 103, 98, 90, 97, 97, 97, 99, 105, 99, 102, 103, 98, 103, 97, 92, 98, 94, 101, 99, 94, 97, 98, 92, 95, 98, 98, 92, 97, 95], ![105, 96, 96, 100, 97, 98, 96, 98, 99, 98, 96, 94, 101, 101, 98, 95, 95, 99, 101, 101, 96, 102, 94, 99, 96, 93, 98, 98, 90, 95, 95, 93, 98, 100, 97, 100, 107, 101, 96, 95, 98, 92, 101, 102, 100, 95, 94, 99, 99], ![100, 101, 91, 102, 97, 96, 98, 102, 98, 99, 94, 102, 101, 95, 95, 99, 98, 99, 97, 98, 100, 98, 92, 97, 98, 103, 99, 91, 102, 106, 101, 96, 96, 97, 100, 92, 100, 92, 93, 95, 97, 100, 99, 102, 102, 91, 95, 96, 95], ![105, 98, 93, 98, 95, 99, 98, 93, 98, 97, 95, 95, 101, 96, 100, 94, 96, 102, 95, 101, 94, 99, 100, 104, 98, 101, 94, 89, 99, 104, 93, 99, 101, 98, 96, 100, 97, 101, 95, 92, 100, 98, 97, 93, 90, 99, 97, 94, 103], ![94, 91, 99, 101, 102, 106, 100, 96, 102, 94, 98, 99, 102, 94, 97, 96, 92, 99, 97, 94, 100, 94, 101, 97, 100, 95, 96, 93, 100, 104, 96, 99, 92, 97, 100, 95, 96, 97, 102, 98, 97, 96, 101, 103, 100, 99, 98, 95, 99], ![96, 104, 100, 105, 93, 99, 96, 95, 93, 97, 96, 102, 95, 97, 101, 96, 99, 98, 103, 97, 92, 93, 104, 96, 97, 97, 94, 102, 97, 91, 98, 95, 92, 102, 94, 95, 101, 99, 93, 100, 93, 99, 103, 94, 99, 101, 102, 96, 102], ![89, 97, 97, 95, 103, 93, 96, 102, 98, 97, 99, 95, 92, 96, 92, 97, 101, 101, 99, 97, 99, 102, 100, 94, 100, 102, 95, 102, 95, 94, 95, 98, 94, 102, 101, 98, 99, 101, 100, 95, 102, 96, 98, 96, 96, 97, 97, 104, 97], ![100, 105, 106, 93, 93, 95, 99, 100, 94, 92, 108, 98, 91, 103, 104, 101, 104, 92, 102, 94, 94, 94, 100, 90, 99, 95, 98, 99, 90, 94, 102, 96, 103, 98, 93, 103, 97, 94, 101, 99, 97, 99, 94, 93, 99, 98, 102, 99, 95]]

def envelope0062FibreMax : Fin 9 -> Nat :=
  ![106, 106, 107, 106, 105, 106, 105, 104, 108]

theorem envelope0062 : TailR263EvenOneDiagonalRange 6811822 6845881 := by
  intro N hLower hStop
  have hNUpper : N <= 6845880 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6845880 (envelope0062BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6845880 (envelope0062CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6845880 (envelope0062FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6845880) (count := 172271) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0062BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0062BaseCounts, envelope0062CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0062FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0062FibreCounts, envelope0062FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0062FibreMax cell) <=
          ∑ cell : Fin 9, envelope0062FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0062FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0062BaseCounts, envelope0062FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

def envelope0063BaseCounts : TailR263DiagonalTarget -> Nat
  | .lowTwo => 108203
  | .evenTwoCell residue => ![2408, 2397, 2406, 2403, 2417, 2388, 2415, 2412, 2408] residue

def envelope0063CellCounts : Fin 9 -> Nat :=
  ![4797, 4806, 4808, 4815, 4796, 4819, 4808, 4808, 4811]

def envelope0063FibreCounts : Fin 9 -> Fin 49 -> Nat :=
  ![![98, 94, 92, 99, 96, 97, 96, 99, 97, 107, 95, 92, 98, 97, 95, 98, 95, 98, 98, 103, 102, 100, 94, 100, 95, 98, 95, 99, 98, 93, 95, 95, 101, 100, 96, 100, 99, 98, 100, 105, 98, 97, 94, 105, 101, 98, 94, 106, 97], ![92, 105, 100, 97, 99, 96, 100, 103, 94, 97, 97, 101, 97, 98, 96, 106, 99, 94, 96, 93, 103, 98, 90, 98, 98, 98, 99, 105, 99, 102, 104, 98, 103, 97, 93, 98, 94, 101, 101, 95, 98, 98, 93, 95, 99, 98, 97, 98, 96], ![106, 96, 97, 101, 97, 99, 96, 98, 99, 98, 96, 94, 101, 101, 100, 95, 96, 99, 101, 101, 97, 102, 95, 100, 97, 93, 98, 100, 91, 95, 96, 93, 99, 101, 97, 100, 107, 101, 97, 95, 98, 92, 101, 102, 101, 95, 95, 100, 99], ![100, 102, 91, 103, 98, 97, 98, 103, 98, 99, 95, 102, 102, 96, 97, 99, 98, 99, 98, 98, 101, 100, 92, 98, 98, 103, 100, 91, 103, 106, 101, 96, 96, 97, 102, 92, 103, 92, 94, 95, 98, 100, 100, 103, 104, 91, 95, 96, 95], ![106, 98, 95, 98, 95, 99, 98, 93, 99, 97, 96, 96, 102, 96, 102, 94, 97, 102, 96, 101, 94, 99, 100, 104, 99, 101, 95, 89, 99, 105, 93, 100, 102, 98, 97, 100, 97, 101, 95, 92, 100, 98, 97, 94, 92, 100, 97, 95, 103], ![95, 91, 99, 102, 102, 107, 101, 97, 103, 94, 98, 99, 102, 95, 98, 96, 93, 99, 97, 94, 101, 94, 102, 97, 101, 96, 96, 93, 100, 104, 96, 102, 92, 98, 100, 97, 97, 97, 103, 99, 97, 97, 101, 103, 100, 100, 99, 96, 99], ![96, 104, 100, 105, 94, 99, 97, 95, 93, 97, 98, 103, 98, 98, 101, 96, 100, 98, 104, 97, 92, 94, 104, 97, 97, 97, 94, 103, 97, 93, 98, 96, 92, 102, 94, 95, 101, 100, 93, 101, 93, 99, 103, 96, 99, 103, 103, 97, 102], ![89, 98, 98, 96, 103, 93, 96, 102, 99, 99, 99, 96, 92, 97, 92, 97, 101, 101, 99, 98, 100, 103, 100, 94, 100, 102, 95, 103, 95, 95, 95, 98, 94, 102, 102, 99, 100, 102, 100, 95, 103, 96, 100, 97, 96, 98, 97, 104, 98], ![100, 106, 106, 94, 93, 96, 100, 100, 94, 94, 108, 100, 91, 103, 104, 102, 104, 93, 102, 95, 94, 94, 100, 90, 99, 97, 98, 100, 90, 96, 102, 96, 103, 99, 93, 104, 97, 94, 101, 99, 97, 101, 94, 94, 99, 98, 102, 99, 96]]

def envelope0063FibreMax : Fin 9 -> Nat :=
  ![107, 106, 107, 106, 106, 107, 105, 104, 108]

theorem envelope0063 : TailR263EvenOneDiagonalRange 6845881 6880110 := by
  intro N hLower hStop
  have hNUpper : N <= 6880109 := by omega
  have hbaseCutoff : ∀ target,
      (GeneratedTailR263Diagonal.targetMarkers target).Cutoff 6880109 (envelope0063BaseCounts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  have hcellCutoff : ∀ cell,
      (cellTargets cell).Cutoff 6880109 (envelope0063CellCounts cell) := by
    intro cell
    fin_cases cell <;> decide
  have hfibreCutoff : ∀ cell residue,
      (fibreTargets cell residue).Cutoff 6880109 (envelope0063FibreCounts cell residue) := by
    intro cell residue
    fin_cases cell <;> fin_cases residue <;> decide
  have hsource := tailDiagonalBad_card_le_marker
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailDiagonalCoverage.indexedMarkerOrdered
    (upper := 6880109) (count := 173125) (by decide)
    (by decide) hNUpper
  have hbase := tailR263EvenTwoAllDiagonal_card_le
    GeneratedTailDiagonalCoverage.certificate
    GeneratedTailR263Diagonal.targetMarkers
    GeneratedTailR263Diagonal.projectsTargets
    GeneratedTailR263Diagonal.targetMarkersOrdered
    envelope0063BaseCounts hbaseCutoff (by decide) hNUpper
  refine { unrestricted := ?_, concentrated := ?_, fibreCover := ?_ }
  · have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hsource
    exact hratio.trans (by norm_num [tailR263EvenOneUnrestrictedDiagonalEnvelope])
  · intro cell
    have hcell := tailR263EvenOneCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate cellTargets
      projectsCells (cellTargetsOrdered cell)
      (hcellCutoff cell) (by decide) hNUpper
    have hcard := tailR263EvenOneConcentratedDiagonal_card_le
      hbase hcell
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard
    fin_cases cell <;> exact hratio.trans (by norm_num [envelope0063BaseCounts, envelope0063CellCounts, tailR263EvenOneConcentratedDiagonalEnvelope])
  · intro cells residues
    have hfibre : ∀ cell ∈ cells,
        (tailR263EvenOneCellFibreDiagonal N cell (residues cell)).card <= envelope0063FibreMax cell := by
      intro cell hcell
      have hexact := tailR263EvenOneCellFibreDiagonal_card_le
        GeneratedTailDiagonalCoverage.certificate cellTargets
        projectsCells fibreTargets projectsFibres
        (fibreTargetsOrdered cell (residues cell))
        (hfibreCutoff cell (residues cell)) (by decide) hNUpper
      generalize hresidue : residues cell = residue at hexact ⊢
      fin_cases cell <;> fin_cases residue <;>
        exact hexact.trans (by norm_num [envelope0063FibreCounts, envelope0063FibreMax])
    have hcard := tailR263EvenOneFibreCoverDiagonal_card_le
      hbase hfibre
    have hsum :
        (∑ cell ∈ cells, envelope0063FibreMax cell) <=
          ∑ cell : Fin 9, envelope0063FibreMax cell := by
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.subset_univ cells) (by omega)
    have hcard' :
        (tailR263EvenOneFibreCoverDiagonal N cells residues).card <=
          ((tailR263EvenTwoAllDiagonal N).card +
            ∑ cell : Fin 9, envelope0063FibreMax cell) := by
      exact hcard.trans (Nat.add_le_add_left hsum _)
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard'
    exact hratio.trans (by norm_num [envelope0063BaseCounts, envelope0063FibreMax, tailR263EvenOneFibreCoverDiagonalEnvelope])

end Erdos848.GeneratedTailR263EvenOneDiagonal
