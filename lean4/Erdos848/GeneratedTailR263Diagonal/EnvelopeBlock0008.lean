import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0128Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 149622
  | .evenTwoCell residue => ![3333, 3314, 3330, 3315, 3334, 3315, 3330, 3328, 3332] residue

theorem envelope0128 : TailR263DiagonalRange 9467195 9514530 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9514529 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9514529 (envelope0128Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0128Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0128Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0128Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0128Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0128Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9467195) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0128Counts (.evenTwoCell residue)) = 29931 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0128Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0129Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 150356
  | .evenTwoCell residue => ![3349, 3331, 3349, 3333, 3353, 3331, 3345, 3343, 3346] residue

theorem envelope0129 : TailR263DiagonalRange 9514530 9562102 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9562101 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9562101 (envelope0129Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0129Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0129Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0129Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0129Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0129Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9514530) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0129Counts (.evenTwoCell residue)) = 30080 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0129Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0130Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 151114
  | .evenTwoCell residue => ![3364, 3349, 3366, 3351, 3368, 3344, 3363, 3365, 3362] residue

theorem envelope0130 : TailR263DiagonalRange 9562102 9609912 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9609911 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9609911 (envelope0130Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0130Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0130Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0130Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0130Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0130Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9562102) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0130Counts (.evenTwoCell residue)) = 30232 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0130Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0131Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 151861
  | .evenTwoCell residue => ![3384, 3368, 3386, 3369, 3387, 3359, 3377, 3379, 3381] residue

theorem envelope0131 : TailR263DiagonalRange 9609912 9657961 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9657960 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9657960 (envelope0131Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0131Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0131Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0131Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0131Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0131Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9609912) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0131Counts (.evenTwoCell residue)) = 30390 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0131Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0132Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 152625
  | .evenTwoCell residue => ![3397, 3380, 3400, 3383, 3405, 3375, 3394, 3401, 3401] residue

theorem envelope0132 : TailR263DiagonalRange 9657961 9706250 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9706249 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9706249 (envelope0132Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0132Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0132Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0132Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0132Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0132Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9657961) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0132Counts (.evenTwoCell residue)) = 30536 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0132Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0133Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 153393
  | .evenTwoCell residue => ![3413, 3396, 3417, 3404, 3425, 3391, 3409, 3414, 3418] residue

theorem envelope0133 : TailR263DiagonalRange 9706250 9754781 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9754780 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9754780 (envelope0133Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0133Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0133Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0133Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0133Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0133Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9706250) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0133Counts (.evenTwoCell residue)) = 30687 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0133Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0134Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 154157
  | .evenTwoCell residue => ![3436, 3417, 3434, 3419, 3443, 3405, 3425, 3429, 3435] residue

theorem envelope0134 : TailR263DiagonalRange 9754781 9803554 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9803553 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9803553 (envelope0134Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0134Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0134Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0134Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0134Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0134Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9754781) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0134Counts (.evenTwoCell residue)) = 30843 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0134Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0135Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 154933
  | .evenTwoCell residue => ![3452, 3435, 3453, 3435, 3455, 3421, 3445, 3445, 3454] residue

theorem envelope0135 : TailR263DiagonalRange 9803554 9852571 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9852570 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9852570 (envelope0135Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0135Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0135Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0135Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0135Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0135Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9803554) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0135Counts (.evenTwoCell residue)) = 30995 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0135Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0136Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 155699
  | .evenTwoCell residue => ![3471, 3452, 3468, 3450, 3469, 3442, 3462, 3465, 3472] residue

theorem envelope0136 : TailR263DiagonalRange 9852571 9901833 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9901832 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9901832 (envelope0136Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0136Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0136Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0136Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0136Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0136Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9852571) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0136Counts (.evenTwoCell residue)) = 31151 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0136Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0137Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 156479
  | .evenTwoCell residue => ![3485, 3469, 3485, 3471, 3489, 3458, 3477, 3481, 3490] residue

theorem envelope0137 : TailR263DiagonalRange 9901833 9951342 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9951341 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9951341 (envelope0137Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0137Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0137Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0137Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0137Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0137Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9901833) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0137Counts (.evenTwoCell residue)) = 31305 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0137Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0138Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 157249
  | .evenTwoCell residue => ![3503, 3482, 3499, 3489, 3506, 3475, 3495, 3499, 3507] residue

theorem envelope0138 : TailR263DiagonalRange 9951342 10000000 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9999999 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9999999 (envelope0138Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0138Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0138Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0138Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0138Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0138Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9951342) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0138Counts (.evenTwoCell residue)) = 31455 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0138Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
