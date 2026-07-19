import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0064Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 108744
  | .evenTwoCell residue => ![2421, 2407, 2421, 2416, 2428, 2400, 2424, 2425, 2420] residue

theorem envelope0064 : TailR263DiagonalRange 6880110 6914510 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6914509 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6914509 (envelope0064Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0064Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0064Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0064Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0064Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0064Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6880110) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0064Counts (.evenTwoCell residue)) = 21762 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0064Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0065Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 109280
  | .evenTwoCell residue => ![2431, 2420, 2435, 2429, 2438, 2412, 2435, 2436, 2433] residue

theorem envelope0065 : TailR263DiagonalRange 6914510 6949082 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6949081 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6949081 (envelope0065Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0065Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0065Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0065Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0065Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0065Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6914510) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0065Counts (.evenTwoCell residue)) = 21869 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0065Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0066Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 109825
  | .evenTwoCell residue => ![2442, 2432, 2443, 2441, 2450, 2425, 2448, 2447, 2445] residue

theorem envelope0066 : TailR263DiagonalRange 6949082 6983827 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6983826 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6983826 (envelope0066Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0066Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0066Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0066Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0066Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0066Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6949082) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0066Counts (.evenTwoCell residue)) = 21973 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0066Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0067Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 110370
  | .evenTwoCell residue => ![2459, 2446, 2453, 2452, 2463, 2438, 2458, 2459, 2460] residue

theorem envelope0067 : TailR263DiagonalRange 6983827 7018746 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7018745 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7018745 (envelope0067Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0067Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0067Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0067Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0067Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0067Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6983827) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0067Counts (.evenTwoCell residue)) = 22088 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0067Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0068Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 110916
  | .evenTwoCell residue => ![2470, 2456, 2466, 2463, 2478, 2451, 2473, 2470, 2470] residue

theorem envelope0068 : TailR263DiagonalRange 7018746 7053839 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7053838 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7053838 (envelope0068Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0068Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0068Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0068Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0068Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0068Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7018746) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0068Counts (.evenTwoCell residue)) = 22197 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0068Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0069Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 111468
  | .evenTwoCell residue => ![2483, 2465, 2478, 2475, 2491, 2466, 2486, 2480, 2484] residue

theorem envelope0069 : TailR263DiagonalRange 7053839 7089108 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7089107 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7089107 (envelope0069Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0069Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0069Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0069Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0069Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0069Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7053839) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0069Counts (.evenTwoCell residue)) = 22308 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0069Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0070Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 112031
  | .evenTwoCell residue => ![2496, 2478, 2492, 2484, 2503, 2475, 2500, 2495, 2497] residue

theorem envelope0070 : TailR263DiagonalRange 7089108 7124553 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7124552 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7124552 (envelope0070Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0070Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0070Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0070Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0070Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0070Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7089108) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0070Counts (.evenTwoCell residue)) = 22420 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0070Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0071Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 112593
  | .evenTwoCell residue => ![2509, 2491, 2505, 2498, 2515, 2487, 2512, 2508, 2507] residue

theorem envelope0071 : TailR263DiagonalRange 7124553 7160175 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7160174 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7160174 (envelope0071Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0071Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0071Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0071Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0071Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0071Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7124553) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0071Counts (.evenTwoCell residue)) = 22532 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0071Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0072Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 113148
  | .evenTwoCell residue => ![2520, 2500, 2522, 2511, 2527, 2500, 2524, 2520, 2520] residue

theorem envelope0072 : TailR263DiagonalRange 7160175 7195975 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7195974 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7195974 (envelope0072Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0072Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0072Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0072Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0072Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0072Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7160175) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0072Counts (.evenTwoCell residue)) = 22644 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0072Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0073Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 113716
  | .evenTwoCell residue => ![2532, 2512, 2533, 2523, 2538, 2511, 2535, 2535, 2535] residue

theorem envelope0073 : TailR263DiagonalRange 7195975 7231954 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7231953 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7231953 (envelope0073Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0073Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0073Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0073Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0073Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0073Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7195975) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0073Counts (.evenTwoCell residue)) = 22754 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0073Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0074Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 114297
  | .evenTwoCell residue => ![2542, 2525, 2543, 2538, 2552, 2524, 2546, 2547, 2546] residue

theorem envelope0074 : TailR263DiagonalRange 7231954 7268113 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7268112 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7268112 (envelope0074Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0074Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0074Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0074Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0074Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0074Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7231954) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0074Counts (.evenTwoCell residue)) = 22863 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0074Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0075Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 114868
  | .evenTwoCell residue => ![2553, 2541, 2555, 2552, 2567, 2536, 2557, 2556, 2558] residue

theorem envelope0075 : TailR263DiagonalRange 7268113 7304453 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7304452 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7304452 (envelope0075Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0075Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0075Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0075Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0075Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0075Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7268113) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0075Counts (.evenTwoCell residue)) = 22975 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0075Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0076Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 115439
  | .evenTwoCell residue => ![2564, 2551, 2568, 2566, 2581, 2549, 2572, 2567, 2569] residue

theorem envelope0076 : TailR263DiagonalRange 7304453 7340975 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7340974 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7340974 (envelope0076Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0076Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0076Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0076Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0076Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0076Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7304453) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0076Counts (.evenTwoCell residue)) = 23087 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0076Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0077Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 116022
  | .evenTwoCell residue => ![2581, 2568, 2582, 2577, 2593, 2563, 2585, 2578, 2581] residue

theorem envelope0077 : TailR263DiagonalRange 7340975 7377679 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7377678 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7377678 (envelope0077Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0077Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0077Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0077Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0077Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0077Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7340975) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0077Counts (.evenTwoCell residue)) = 23208 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0077Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0078Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 116603
  | .evenTwoCell residue => ![2597, 2579, 2596, 2589, 2603, 2576, 2599, 2591, 2595] residue

theorem envelope0078 : TailR263DiagonalRange 7377679 7414567 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7414566 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7414566 (envelope0078Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0078Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0078Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0078Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0078Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0078Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7377679) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0078Counts (.evenTwoCell residue)) = 23325 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0078Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0079Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 117179
  | .evenTwoCell residue => ![2609, 2592, 2611, 2601, 2615, 2590, 2610, 2604, 2611] residue

theorem envelope0079 : TailR263DiagonalRange 7414567 7451639 := by
  intro N hLower hStop
  have hNUpper : N ≤ 7451638 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 7451638 (envelope0079Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0079Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0079Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0079Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0079Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0079Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 7414567) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0079Counts (.evenTwoCell residue)) = 23443 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0079Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
