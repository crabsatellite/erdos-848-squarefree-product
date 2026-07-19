import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0112Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 138134
  | .evenTwoCell residue => ![3079, 3063, 3071, 3069, 3078, 3056, 3069, 3071, 3077] residue

theorem envelope0112 : TailR263DiagonalRange 8741072 8784777 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8784776 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8784776 (envelope0112Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0112Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0112Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0112Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0112Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0112Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8741072) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0112Counts (.evenTwoCell residue)) = 27633 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0112Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0113Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 138828
  | .evenTwoCell residue => ![3097, 3077, 3088, 3084, 3094, 3070, 3086, 3088, 3091] residue

theorem envelope0113 : TailR263DiagonalRange 8784777 8828700 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8828699 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8828699 (envelope0113Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0113Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0113Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0113Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0113Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0113Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8784777) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0113Counts (.evenTwoCell residue)) = 27775 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0113Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0114Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 139523
  | .evenTwoCell residue => ![3112, 3093, 3102, 3096, 3110, 3085, 3103, 3104, 3105] residue

theorem envelope0114 : TailR263DiagonalRange 8828700 8872843 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8872842 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8872842 (envelope0114Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0114Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0114Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0114Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0114Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0114Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8828700) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0114Counts (.evenTwoCell residue)) = 27910 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0114Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0115Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 140216
  | .evenTwoCell residue => ![3125, 3108, 3117, 3110, 3126, 3104, 3121, 3121, 3121] residue

theorem envelope0115 : TailR263DiagonalRange 8872843 8917207 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8917206 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8917206 (envelope0115Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0115Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0115Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0115Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0115Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0115Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8872843) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0115Counts (.evenTwoCell residue)) = 28053 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0115Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0116Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 140922
  | .evenTwoCell residue => ![3139, 3120, 3134, 3128, 3141, 3120, 3134, 3135, 3134] residue

theorem envelope0116 : TailR263DiagonalRange 8917207 8961793 := by
  intro N hLower hStop
  have hNUpper : N ≤ 8961792 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 8961792 (envelope0116Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0116Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0116Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0116Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0116Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0116Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8917207) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0116Counts (.evenTwoCell residue)) = 28185 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0116Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0117Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 141631
  | .evenTwoCell residue => ![3158, 3138, 3154, 3144, 3155, 3133, 3149, 3153, 3152] residue

theorem envelope0117 : TailR263DiagonalRange 8961793 9006601 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9006600 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9006600 (envelope0117Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0117Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0117Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0117Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0117Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0117Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 8961793) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0117Counts (.evenTwoCell residue)) = 28336 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0117Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0118Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 142334
  | .evenTwoCell residue => ![3173, 3154, 3169, 3159, 3173, 3145, 3163, 3168, 3169] residue

theorem envelope0118 : TailR263DiagonalRange 9006601 9051634 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9051633 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9051633 (envelope0118Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0118Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0118Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0118Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0118Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0118Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9006601) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0118Counts (.evenTwoCell residue)) = 28473 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0118Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0119Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 143048
  | .evenTwoCell residue => ![3188, 3170, 3184, 3173, 3188, 3159, 3182, 3184, 3186] residue

theorem envelope0119 : TailR263DiagonalRange 9051634 9096892 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9096891 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9096891 (envelope0119Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0119Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0119Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0119Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0119Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0119Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9051634) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0119Counts (.evenTwoCell residue)) = 28614 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0119Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0120Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 143764
  | .evenTwoCell residue => ![3205, 3185, 3197, 3189, 3205, 3178, 3196, 3200, 3202] residue

theorem envelope0120 : TailR263DiagonalRange 9096892 9142376 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9142375 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9142375 (envelope0120Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0120Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0120Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0120Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0120Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0120Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9096892) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0120Counts (.evenTwoCell residue)) = 28757 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0120Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0121Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 144484
  | .evenTwoCell residue => ![3222, 3199, 3216, 3203, 3222, 3196, 3211, 3216, 3219] residue

theorem envelope0121 : TailR263DiagonalRange 9142376 9188087 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9188086 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9188086 (envelope0121Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0121Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0121Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0121Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0121Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0121Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9142376) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0121Counts (.evenTwoCell residue)) = 28904 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0121Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0122Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 145201
  | .evenTwoCell residue => ![3239, 3215, 3231, 3220, 3237, 3216, 3226, 3230, 3232] residue

theorem envelope0122 : TailR263DiagonalRange 9188087 9234027 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9234026 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9234026 (envelope0122Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0122Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0122Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0122Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0122Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0122Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9188087) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0122Counts (.evenTwoCell residue)) = 29046 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0122Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0123Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 145927
  | .evenTwoCell residue => ![3252, 3237, 3248, 3234, 3253, 3231, 3245, 3246, 3249] residue

theorem envelope0123 : TailR263DiagonalRange 9234027 9280197 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9280196 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9280196 (envelope0123Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0123Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0123Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0123Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0123Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0123Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9234027) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0123Counts (.evenTwoCell residue)) = 29195 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0123Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0124Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 146658
  | .evenTwoCell residue => ![3270, 3250, 3263, 3251, 3269, 3251, 3262, 3263, 3265] residue

theorem envelope0124 : TailR263DiagonalRange 9280197 9326597 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9326596 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9326596 (envelope0124Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0124Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0124Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0124Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0124Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0124Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9280197) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0124Counts (.evenTwoCell residue)) = 29344 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0124Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0125Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 147400
  | .evenTwoCell residue => ![3286, 3265, 3282, 3270, 3283, 3263, 3275, 3280, 3283] residue

theorem envelope0125 : TailR263DiagonalRange 9326597 9373229 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9373228 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9373228 (envelope0125Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0125Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0125Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0125Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0125Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0125Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9326597) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0125Counts (.evenTwoCell residue)) = 29487 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0125Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0126Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 148137
  | .evenTwoCell residue => ![3301, 3280, 3296, 3285, 3302, 3282, 3293, 3295, 3300] residue

theorem envelope0126 : TailR263DiagonalRange 9373229 9420095 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9420094 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9420094 (envelope0126Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0126Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0126Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0126Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0126Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0126Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9373229) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0126Counts (.evenTwoCell residue)) = 29634 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0126Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0127Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 148871
  | .evenTwoCell residue => ![3317, 3296, 3314, 3300, 3317, 3297, 3310, 3312, 3317] residue

theorem envelope0127 : TailR263DiagonalRange 9420095 9467195 := by
  intro N hLower hStop
  have hNUpper : N ≤ 9467194 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 9467194 (envelope0127Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0127Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0127Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0127Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0127Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0127Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 9420095) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0127Counts (.evenTwoCell residue)) = 29780 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0127Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
