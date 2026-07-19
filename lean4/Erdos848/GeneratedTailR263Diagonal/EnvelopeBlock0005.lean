import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0080Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 117762
  | .evenTwoCell residue => ![2620, 2605, 2626, 2613, 2628, 2603, 2623, 2620, 2622] residue

theorem envelope0080 : TailR263DiagonalRange 7451639 7488897 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7488896 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7488896 (envelope0080Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0080Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0080Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0080Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0080Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0080Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7451639) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0080Counts (.evenTwoCell residue)) = 23560 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0080Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0081Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 118336
  | .evenTwoCell residue => ![2632, 2618, 2636, 2629, 2644, 2615, 2638, 2635, 2636] residue

theorem envelope0081 : TailR263DiagonalRange 7488897 7526341 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7526340 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7526340 (envelope0081Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0081Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0081Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0081Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0081Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0081Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7488897) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0081Counts (.evenTwoCell residue)) = 23683 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0081Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0082Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 118940
  | .evenTwoCell residue => ![2644, 2628, 2652, 2642, 2658, 2627, 2650, 2646, 2651] residue

theorem envelope0082 : TailR263DiagonalRange 7526341 7563972 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7563971 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7563971 (envelope0082Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0082Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0082Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0082Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0082Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0082Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7526341) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0082Counts (.evenTwoCell residue)) = 23798 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0082Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0083Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 119539
  | .evenTwoCell residue => ![2662, 2643, 2663, 2658, 2669, 2640, 2659, 2659, 2668] residue

theorem envelope0083 : TailR263DiagonalRange 7563972 7601791 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7601790 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7601790 (envelope0083Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0083Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0083Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0083Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0083Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0083Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7563972) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0083Counts (.evenTwoCell residue)) = 23921 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0083Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0084Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 120137
  | .evenTwoCell residue => ![2674, 2656, 2672, 2669, 2684, 2655, 2675, 2670, 2683] residue

theorem envelope0084 : TailR263DiagonalRange 7601791 7639799 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7639798 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7639798 (envelope0084Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0084Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0084Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0084Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0084Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0084Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7601791) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0084Counts (.evenTwoCell residue)) = 24038 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0084Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0085Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 120736
  | .evenTwoCell residue => ![2690, 2672, 2686, 2681, 2699, 2669, 2691, 2685, 2691] residue

theorem envelope0085 : TailR263DiagonalRange 7639799 7677997 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7677996 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7677996 (envelope0085Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0085Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0085Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0085Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0085Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0085Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7639799) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0085Counts (.evenTwoCell residue)) = 24164 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0085Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0086Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 121336
  | .evenTwoCell residue => ![2702, 2682, 2701, 2693, 2713, 2683, 2703, 2700, 2702] residue

theorem envelope0086 : TailR263DiagonalRange 7677997 7716386 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7716385 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7716385 (envelope0086Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0086Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0086Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0086Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0086Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0086Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7677997) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0086Counts (.evenTwoCell residue)) = 24279 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0086Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0087Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 121939
  | .evenTwoCell residue => ![2713, 2697, 2715, 2707, 2726, 2699, 2719, 2712, 2714] residue

theorem envelope0087 : TailR263DiagonalRange 7716386 7754967 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7754966 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7754966 (envelope0087Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0087Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0087Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0087Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0087Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0087Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7716386) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0087Counts (.evenTwoCell residue)) = 24402 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0087Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0088Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 122545
  | .evenTwoCell residue => ![2726, 2711, 2730, 2720, 2740, 2709, 2731, 2723, 2728] residue

theorem envelope0088 : TailR263DiagonalRange 7754967 7793741 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7793740 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7793740 (envelope0088Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0088Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0088Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0088Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0088Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0088Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7754967) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0088Counts (.evenTwoCell residue)) = 24518 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0088Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0089Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 123160
  | .evenTwoCell residue => ![2740, 2723, 2744, 2735, 2754, 2722, 2744, 2741, 2746] residue

theorem envelope0089 : TailR263DiagonalRange 7793741 7832709 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7832708 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7832708 (envelope0089Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0089Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0089Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0089Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0089Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0089Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7793741) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0089Counts (.evenTwoCell residue)) = 24649 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0089Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0090Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 123781
  | .evenTwoCell residue => ![2755, 2739, 2754, 2754, 2767, 2738, 2755, 2755, 2756] residue

theorem envelope0090 : TailR263DiagonalRange 7832709 7871872 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7871871 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7871871 (envelope0090Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0090Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0090Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0090Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0090Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0090Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7832709) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0090Counts (.evenTwoCell residue)) = 24773 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0090Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0091Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 124395
  | .evenTwoCell residue => ![2769, 2755, 2766, 2767, 2781, 2751, 2768, 2765, 2772] residue

theorem envelope0091 : TailR263DiagonalRange 7871872 7911231 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7911230 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7911230 (envelope0091Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0091Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0091Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0091Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0091Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0091Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7871872) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0091Counts (.evenTwoCell residue)) = 24894 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0091Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0092Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 125025
  | .evenTwoCell residue => ![2782, 2766, 2781, 2778, 2796, 2766, 2783, 2776, 2783] residue

theorem envelope0092 : TailR263DiagonalRange 7911231 7950787 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7950786 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7950786 (envelope0092Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0092Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0092Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0092Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0092Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0092Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7911231) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0092Counts (.evenTwoCell residue)) = 25011 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0092Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0093Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 125645
  | .evenTwoCell residue => ![2797, 2787, 2797, 2790, 2808, 2780, 2796, 2787, 2794] residue

theorem envelope0093 : TailR263DiagonalRange 7950787 7990540 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7990539 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7990539 (envelope0093Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0093Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0093Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0093Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0093Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0093Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7950787) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0093Counts (.evenTwoCell residue)) = 25136 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0093Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0094Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 126274
  | .evenTwoCell residue => ![2810, 2802, 2808, 2803, 2821, 2792, 2810, 2803, 2810] residue

theorem envelope0094 : TailR263DiagonalRange 7990540 8030492 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8030491 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8030491 (envelope0094Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0094Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0094Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0094Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0094Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0094Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7990540) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0094Counts (.evenTwoCell residue)) = 25259 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0094Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0095Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 126898
  | .evenTwoCell residue => ![2825, 2813, 2823, 2821, 2833, 2806, 2826, 2819, 2819] residue

theorem envelope0095 : TailR263DiagonalRange 8030492 8070644 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8070643 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8070643 (envelope0095Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0095Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0095Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0095Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0095Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0095Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8030492) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0095Counts (.evenTwoCell residue)) = 25385 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0095Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
