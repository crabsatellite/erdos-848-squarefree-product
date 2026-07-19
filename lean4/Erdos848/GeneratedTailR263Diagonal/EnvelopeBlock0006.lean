import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0096Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 127530
  | .evenTwoCell residue => ![2836, 2827, 2837, 2838, 2847, 2819, 2842, 2832, 2835] residue

theorem envelope0096 : TailR263DiagonalRange 8070644 8110997 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8110996 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8110996 (envelope0096Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0096Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0096Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0096Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0096Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0096Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8070644) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0096Counts (.evenTwoCell residue)) = 25513 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0096Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0097Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 128169
  | .evenTwoCell residue => ![2849, 2840, 2851, 2853, 2861, 2835, 2854, 2848, 2852] residue

theorem envelope0097 : TailR263DiagonalRange 8110997 8151551 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8151550 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8151550 (envelope0097Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0097Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0097Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0097Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0097Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0097Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8110997) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0097Counts (.evenTwoCell residue)) = 25643 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0097Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0098Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 128820
  | .evenTwoCell residue => ![2865, 2855, 2870, 2866, 2876, 2847, 2866, 2862, 2864] residue

theorem envelope0098 : TailR263DiagonalRange 8151551 8192308 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8192307 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8192307 (envelope0098Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0098Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0098Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0098Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0098Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0098Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8151551) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0098Counts (.evenTwoCell residue)) = 25771 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0098Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0099Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 129462
  | .evenTwoCell residue => ![2881, 2870, 2880, 2880, 2892, 2859, 2881, 2876, 2882] residue

theorem envelope0099 : TailR263DiagonalRange 8192308 8233269 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8233268 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8233268 (envelope0099Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0099Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0099Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0099Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0099Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0099Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8192308) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0099Counts (.evenTwoCell residue)) = 25901 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0099Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0100Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 130113
  | .evenTwoCell residue => ![2896, 2886, 2896, 2894, 2906, 2877, 2898, 2890, 2896] residue

theorem envelope0100 : TailR263DiagonalRange 8233269 8274435 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8274434 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8274434 (envelope0100Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0100Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0100Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0100Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0100Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0100Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8233269) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0100Counts (.evenTwoCell residue)) = 26039 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0100Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0101Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 130759
  | .evenTwoCell residue => ![2911, 2899, 2909, 2907, 2919, 2891, 2913, 2904, 2910] residue

theorem envelope0101 : TailR263DiagonalRange 8274435 8315807 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8315806 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8315806 (envelope0101Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0101Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0101Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0101Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0101Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0101Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8274435) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0101Counts (.evenTwoCell residue)) = 26163 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0101Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0102Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 131421
  | .evenTwoCell residue => ![2922, 2915, 2924, 2924, 2933, 2907, 2927, 2916, 2922] residue

theorem envelope0102 : TailR263DiagonalRange 8315807 8357386 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8357385 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8357385 (envelope0102Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0102Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0102Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0102Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0102Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0102Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8315807) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0102Counts (.evenTwoCell residue)) = 26290 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0102Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0103Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 132074
  | .evenTwoCell residue => ![2939, 2928, 2940, 2936, 2947, 2919, 2941, 2930, 2937] residue

theorem envelope0103 : TailR263DiagonalRange 8357386 8399172 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8399171 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8399171 (envelope0103Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0103Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0103Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0103Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0103Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0103Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8357386) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0103Counts (.evenTwoCell residue)) = 26417 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0103Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0104Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 132731
  | .evenTwoCell residue => ![2953, 2941, 2950, 2955, 2963, 2934, 2954, 2950, 2956] residue

theorem envelope0104 : TailR263DiagonalRange 8399172 8441167 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8441166 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8441166 (envelope0104Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0104Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0104Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0104Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0104Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0104Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8399172) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0104Counts (.evenTwoCell residue)) = 26556 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0104Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0105Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 133396
  | .evenTwoCell residue => ![2969, 2956, 2966, 2968, 2976, 2949, 2968, 2963, 2971] residue

theorem envelope0105 : TailR263DiagonalRange 8441167 8483372 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8483371 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8483371 (envelope0105Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0105Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0105Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0105Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0105Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0105Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8441167) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0105Counts (.evenTwoCell residue)) = 26686 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0105Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0106Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 134062
  | .evenTwoCell residue => ![2986, 2971, 2980, 2983, 2994, 2967, 2980, 2977, 2986] residue

theorem envelope0106 : TailR263DiagonalRange 8483372 8525788 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8525787 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8525787 (envelope0106Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0106Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0106Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0106Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0106Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0106Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8483372) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0106Counts (.evenTwoCell residue)) = 26824 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0106Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0107Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 134740
  | .evenTwoCell residue => ![3003, 2986, 2994, 2998, 3009, 2981, 2993, 2992, 2996] residue

theorem envelope0107 : TailR263DiagonalRange 8525788 8568416 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8568415 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8568415 (envelope0107Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0107Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0107Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0107Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0107Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0107Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8525788) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0107Counts (.evenTwoCell residue)) = 26952 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0107Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0108Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 135407
  | .evenTwoCell residue => ![3018, 3003, 3012, 3011, 3022, 2996, 3010, 3006, 3015] residue

theorem envelope0108 : TailR263DiagonalRange 8568416 8611258 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8611257 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8611257 (envelope0108Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0108Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0108Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0108Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0108Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0108Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8568416) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0108Counts (.evenTwoCell residue)) = 27093 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0108Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0109Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 136083
  | .evenTwoCell residue => ![3034, 3017, 3027, 3023, 3035, 3009, 3024, 3025, 3027] residue

theorem envelope0109 : TailR263DiagonalRange 8611258 8654314 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8654313 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8654313 (envelope0109Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0109Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0109Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0109Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0109Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0109Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8611258) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0109Counts (.evenTwoCell residue)) = 27221 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0109Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0110Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 136772
  | .evenTwoCell residue => ![3047, 3034, 3041, 3037, 3047, 3025, 3042, 3041, 3044] residue

theorem envelope0110 : TailR263DiagonalRange 8654314 8697585 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8697584 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8697584 (envelope0110Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0110Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0110Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0110Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0110Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0110Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8654314) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0110Counts (.evenTwoCell residue)) = 27358 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0110Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0111Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 137452
  | .evenTwoCell residue => ![3062, 3045, 3055, 3052, 3065, 3042, 3056, 3058, 3061] residue

theorem envelope0111 : TailR263DiagonalRange 8697585 8741072 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8741071 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8741071 (envelope0111Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0111Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0111Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0111Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0111Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0111Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8697585) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0111Counts (.evenTwoCell residue)) = 27496 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0111Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
