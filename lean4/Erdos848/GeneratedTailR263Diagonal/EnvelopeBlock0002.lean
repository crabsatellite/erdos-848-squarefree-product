import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0032Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 92687
  | .evenTwoCell residue => ![2071, 2063, 2059, 2053, 2065, 2052, 2063, 2065, 2063] residue

theorem envelope0032 : TailR263DiagonalRange 5865197 5894522 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5894521 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5894521 (envelope0032Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0032Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0032Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0032Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0032Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0032Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5865197) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0032Counts (.evenTwoCell residue)) = 18554 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0032Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0033Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 93151
  | .evenTwoCell residue => ![2077, 2073, 2068, 2069, 2074, 2062, 2073, 2075, 2073] residue

theorem envelope0033 : TailR263DiagonalRange 5894522 5923994 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5923993 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5923993 (envelope0033Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0033Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0033Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0033Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0033Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0033Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5894522) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0033Counts (.evenTwoCell residue)) = 18644 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0033Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0034Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 93617
  | .evenTwoCell residue => ![2088, 2083, 2083, 2076, 2084, 2069, 2084, 2088, 2081] residue

theorem envelope0034 : TailR263DiagonalRange 5923994 5953613 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5953612 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5953612 (envelope0034Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0034Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0034Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0034Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0034Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0034Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5923994) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0034Counts (.evenTwoCell residue)) = 18736 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0034Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0035Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 94093
  | .evenTwoCell residue => ![2099, 2092, 2092, 2086, 2097, 2080, 2096, 2097, 2091] residue

theorem envelope0035 : TailR263DiagonalRange 5953613 5983381 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5983380 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5983380 (envelope0035Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0035Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0035Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0035Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0035Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0035Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5953613) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0035Counts (.evenTwoCell residue)) = 18830 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0035Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0036Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 94561
  | .evenTwoCell residue => ![2108, 2102, 2104, 2098, 2108, 2090, 2104, 2109, 2101] residue

theorem envelope0036 : TailR263DiagonalRange 5983381 6013297 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6013296 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6013296 (envelope0036Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0036Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0036Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0036Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0036Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0036Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5983381) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0036Counts (.evenTwoCell residue)) = 18924 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0036Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0037Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 95025
  | .evenTwoCell residue => ![2121, 2110, 2115, 2109, 2116, 2101, 2118, 2119, 2116] residue

theorem envelope0037 : TailR263DiagonalRange 6013297 6043363 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6043362 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6043362 (envelope0037Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0037Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0037Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0037Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0037Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0037Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6013297) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0037Counts (.evenTwoCell residue)) = 19025 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0037Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0038Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 95503
  | .evenTwoCell residue => ![2129, 2118, 2124, 2120, 2130, 2114, 2128, 2131, 2123] residue

theorem envelope0038 : TailR263DiagonalRange 6043363 6073579 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6073578 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6073578 (envelope0038Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0038Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0038Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0038Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0038Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0038Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6043363) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0038Counts (.evenTwoCell residue)) = 19117 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0038Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0039Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 95988
  | .evenTwoCell residue => ![2140, 2129, 2136, 2130, 2143, 2121, 2137, 2141, 2137] residue

theorem envelope0039 : TailR263DiagonalRange 6073579 6103946 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6103945 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6103945 (envelope0039Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0039Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0039Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0039Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0039Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0039Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6073579) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0039Counts (.evenTwoCell residue)) = 19214 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0039Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0040Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 96459
  | .evenTwoCell residue => ![2153, 2139, 2147, 2142, 2154, 2134, 2146, 2154, 2147] residue

theorem envelope0040 : TailR263DiagonalRange 6103946 6134465 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6134464 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6134464 (envelope0040Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0040Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0040Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0040Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0040Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0040Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6103946) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0040Counts (.evenTwoCell residue)) = 19316 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0040Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0041Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 96932
  | .evenTwoCell residue => ![2163, 2153, 2158, 2154, 2162, 2143, 2158, 2163, 2158] residue

theorem envelope0041 : TailR263DiagonalRange 6134465 6165137 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6165136 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6165136 (envelope0041Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0041Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0041Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0041Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0041Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0041Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6134465) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0041Counts (.evenTwoCell residue)) = 19412 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0041Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0042Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 97428
  | .evenTwoCell residue => ![2172, 2162, 2169, 2165, 2173, 2156, 2169, 2175, 2166] residue

theorem envelope0042 : TailR263DiagonalRange 6165137 6195962 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6195961 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6195961 (envelope0042Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0042Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0042Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0042Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0042Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0042Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6165137) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0042Counts (.evenTwoCell residue)) = 19507 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0042Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0043Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 97914
  | .evenTwoCell residue => ![2184, 2175, 2182, 2176, 2181, 2164, 2179, 2185, 2178] residue

theorem envelope0043 : TailR263DiagonalRange 6195962 6226941 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6226940 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6226940 (envelope0043Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0043Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0043Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0043Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0043Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0043Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6195962) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0043Counts (.evenTwoCell residue)) = 19604 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0043Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0044Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 98401
  | .evenTwoCell residue => ![2194, 2183, 2192, 2187, 2195, 2174, 2192, 2198, 2188] residue

theorem envelope0044 : TailR263DiagonalRange 6226941 6258075 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6258074 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6258074 (envelope0044Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0044Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0044Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0044Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0044Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0044Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6226941) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0044Counts (.evenTwoCell residue)) = 19703 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0044Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0045Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 98899
  | .evenTwoCell residue => ![2203, 2196, 2201, 2201, 2205, 2185, 2200, 2208, 2200] residue

theorem envelope0045 : TailR263DiagonalRange 6258075 6289365 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6289364 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6289364 (envelope0045Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0045Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0045Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0045Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0045Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0045Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6258075) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0045Counts (.evenTwoCell residue)) = 19799 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0045Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0046Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 99388
  | .evenTwoCell residue => ![2215, 2206, 2212, 2210, 2220, 2194, 2212, 2218, 2212] residue

theorem envelope0046 : TailR263DiagonalRange 6289365 6320811 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6320810 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6320810 (envelope0046Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0046Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0046Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0046Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0046Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0046Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6289365) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0046Counts (.evenTwoCell residue)) = 19899 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0046Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0047Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 99888
  | .evenTwoCell residue => ![2229, 2215, 2223, 2221, 2228, 2203, 2221, 2232, 2225] residue

theorem envelope0047 : TailR263DiagonalRange 6320811 6352415 := by
  intro N hLower hStop
  have hNUpper : N ≤ 6352414 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 6352414 (envelope0047Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0047Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0047Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0047Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0047Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0047Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 6320811) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0047Counts (.evenTwoCell residue)) = 19997 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0047Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
