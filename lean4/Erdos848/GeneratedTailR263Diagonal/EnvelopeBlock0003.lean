import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0048Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 100386
  | .evenTwoCell residue => ![2241, 2225, 2234, 2234, 2241, 2216, 2234, 2239, 2237] residue

theorem envelope0048 : TailR263DiagonalRange 6352415 6384177 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6384176 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6384176 (envelope0048Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0048Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0048Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0048Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0048Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0048Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6352415) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0048Counts (.evenTwoCell residue)) = 20101 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0048Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0049Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 100893
  | .evenTwoCell residue => ![2253, 2239, 2244, 2241, 2253, 2226, 2244, 2252, 2248] residue

theorem envelope0049 : TailR263DiagonalRange 6384177 6416097 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6416096 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6416096 (envelope0049Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0049Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0049Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0049Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0049Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0049Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6384177) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0049Counts (.evenTwoCell residue)) = 20200 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0049Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0050Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 101404
  | .evenTwoCell residue => ![2261, 2249, 2256, 2252, 2263, 2240, 2256, 2261, 2258] residue

theorem envelope0050 : TailR263DiagonalRange 6416097 6448177 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6448176 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6448176 (envelope0050Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0050Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0050Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0050Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0050Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0050Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6416097) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0050Counts (.evenTwoCell residue)) = 20296 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0050Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0051Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 101914
  | .evenTwoCell residue => ![2272, 2259, 2269, 2261, 2276, 2256, 2268, 2272, 2269] residue

theorem envelope0051 : TailR263DiagonalRange 6448177 6480417 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6480416 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6480416 (envelope0051Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0051Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0051Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0051Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0051Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0051Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6448177) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0051Counts (.evenTwoCell residue)) = 20402 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0051Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0052Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 102425
  | .evenTwoCell residue => ![2283, 2271, 2281, 2275, 2287, 2266, 2280, 2285, 2278] residue

theorem envelope0052 : TailR263DiagonalRange 6480417 6512819 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6512818 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6512818 (envelope0052Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0052Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0052Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0052Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0052Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0052Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6480417) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0052Counts (.evenTwoCell residue)) = 20506 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0052Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0053Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 102926
  | .evenTwoCell residue => ![2292, 2282, 2293, 2286, 2296, 2279, 2294, 2297, 2289] residue

theorem envelope0053 : TailR263DiagonalRange 6512819 6545383 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6545382 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6545382 (envelope0053Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0053Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0053Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0053Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0053Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0053Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6512819) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0053Counts (.evenTwoCell residue)) = 20608 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0053Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0054Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 103453
  | .evenTwoCell residue => ![2302, 2293, 2304, 2296, 2308, 2288, 2305, 2307, 2301] residue

theorem envelope0054 : TailR263DiagonalRange 6545383 6578109 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6578108 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6578108 (envelope0054Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0054Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0054Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0054Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0054Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0054Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6545383) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0054Counts (.evenTwoCell residue)) = 20704 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0054Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0055Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 103962
  | .evenTwoCell residue => ![2312, 2302, 2316, 2309, 2321, 2302, 2314, 2318, 2311] residue

theorem envelope0055 : TailR263DiagonalRange 6578109 6610999 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6610998 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6610998 (envelope0055Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0055Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0055Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0055Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0055Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0055Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6578109) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0055Counts (.evenTwoCell residue)) = 20805 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0055Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0056Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 104484
  | .evenTwoCell residue => ![2327, 2315, 2328, 2319, 2330, 2310, 2326, 2333, 2325] residue

theorem envelope0056 : TailR263DiagonalRange 6610999 6644053 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6644052 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6644052 (envelope0056Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0056Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0056Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0056Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0056Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0056Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6610999) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0056Counts (.evenTwoCell residue)) = 20913 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0056Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0057Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 105013
  | .evenTwoCell residue => ![2337, 2326, 2339, 2332, 2346, 2324, 2338, 2343, 2333] residue

theorem envelope0057 : TailR263DiagonalRange 6644053 6677273 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6677272 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6677272 (envelope0057Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0057Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0057Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0057Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0057Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0057Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6644053) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0057Counts (.evenTwoCell residue)) = 21018 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0057Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0058Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 105537
  | .evenTwoCell residue => ![2350, 2337, 2351, 2342, 2357, 2332, 2351, 2352, 2346] residue

theorem envelope0058 : TailR263DiagonalRange 6677273 6710659 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6710658 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6710658 (envelope0058Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0058Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0058Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0058Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0058Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0058Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6677273) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0058Counts (.evenTwoCell residue)) = 21118 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0058Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0059Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 106072
  | .evenTwoCell residue => ![2361, 2349, 2365, 2352, 2369, 2344, 2362, 2361, 2356] residue

theorem envelope0059 : TailR263DiagonalRange 6710659 6744212 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6744211 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6744211 (envelope0059Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0059Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0059Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0059Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0059Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0059Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6710659) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0059Counts (.evenTwoCell residue)) = 21219 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0059Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0060Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 106607
  | .evenTwoCell residue => ![2372, 2361, 2376, 2365, 2384, 2355, 2375, 2372, 2368] residue

theorem envelope0060 : TailR263DiagonalRange 6744212 6777933 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6777932 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6777932 (envelope0060Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0060Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0060Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0060Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0060Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0060Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6744212) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0060Counts (.evenTwoCell residue)) = 21328 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0060Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0061Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 107137
  | .evenTwoCell residue => ![2385, 2375, 2386, 2377, 2392, 2365, 2387, 2387, 2381] residue

theorem envelope0061 : TailR263DiagonalRange 6777933 6811822 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6811821 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6811821 (envelope0061Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0061Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0061Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0061Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0061Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0061Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6777933) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0061Counts (.evenTwoCell residue)) = 21435 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0061Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0062Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 107670
  | .evenTwoCell residue => ![2397, 2387, 2397, 2391, 2406, 2376, 2400, 2398, 2395] residue

theorem envelope0062 : TailR263DiagonalRange 6811822 6845881 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6845880 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6845880 (envelope0062Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0062Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0062Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0062Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0062Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0062Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6811822) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0062Counts (.evenTwoCell residue)) = 21547 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0062Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0063Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 108203
  | .evenTwoCell residue => ![2408, 2397, 2406, 2403, 2417, 2388, 2415, 2412, 2408] residue

theorem envelope0063 : TailR263DiagonalRange 6845881 6880110 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6880109 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6880109 (envelope0063Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0063Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0063Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0063Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0063Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0063Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6845881) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0063Counts (.evenTwoCell residue)) = 21654 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0063Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
