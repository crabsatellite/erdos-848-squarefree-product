import Erdos848.GeneratedTailR263Diagonal.CoreAggregate

namespace Erdos848.GeneratedTailR263Diagonal

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def envelope0016Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 85572
  | .evenTwoCell residue => ![1910, 1900, 1907, 1897, 1906, 1895, 1907, 1909, 1903] residue

theorem envelope0016 : TailR263DiagonalRange 5415347 5442423 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5442422 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5442422 (envelope0016Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0016Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0016Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0016Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0016Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0016Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5415347) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0016Counts (.evenTwoCell residue)) = 17134 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0016Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0017Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 86000
  | .evenTwoCell residue => ![1917, 1908, 1915, 1906, 1920, 1906, 1917, 1917, 1913] residue

theorem envelope0017 : TailR263DiagonalRange 5442423 5469635 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5469634 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5469634 (envelope0017Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0017Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0017Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0017Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0017Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0017Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5442423) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0017Counts (.evenTwoCell residue)) = 17219 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0017Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0018Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 86435
  | .evenTwoCell residue => ![1928, 1920, 1923, 1917, 1930, 1915, 1924, 1922, 1927] residue

theorem envelope0018 : TailR263DiagonalRange 5469635 5496983 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5496982 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5496982 (envelope0018Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0018Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0018Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0018Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0018Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0018Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5469635) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0018Counts (.evenTwoCell residue)) = 17306 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0018Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0019Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 86876
  | .evenTwoCell residue => ![1936, 1928, 1933, 1926, 1939, 1926, 1934, 1932, 1933] residue

theorem envelope0019 : TailR263DiagonalRange 5496983 5524467 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5524466 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5524466 (envelope0019Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0019Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0019Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0019Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0019Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0019Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5496983) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0019Counts (.evenTwoCell residue)) = 17387 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0019Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0020Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 87310
  | .evenTwoCell residue => ![1947, 1940, 1944, 1934, 1949, 1936, 1944, 1940, 1940] residue

theorem envelope0020 : TailR263DiagonalRange 5524467 5552089 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5552088 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5552088 (envelope0020Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0020Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0020Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0020Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0020Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0020Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5524467) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0020Counts (.evenTwoCell residue)) = 17474 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0020Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0021Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 87746
  | .evenTwoCell residue => ![1958, 1952, 1955, 1943, 1956, 1946, 1953, 1950, 1952] residue

theorem envelope0021 : TailR263DiagonalRange 5552089 5579849 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5579848 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5579848 (envelope0021Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0021Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0021Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0021Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0021Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0021Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5552089) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0021Counts (.evenTwoCell residue)) = 17565 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0021Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0022Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 88190
  | .evenTwoCell residue => ![1967, 1964, 1962, 1954, 1964, 1954, 1962, 1964, 1962] residue

theorem envelope0022 : TailR263DiagonalRange 5579849 5607748 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5607747 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5607747 (envelope0022Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0022Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0022Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0022Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0022Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0022Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5579849) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0022Counts (.evenTwoCell residue)) = 17653 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0022Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0023Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 88627
  | .evenTwoCell residue => ![1977, 1972, 1974, 1966, 1974, 1961, 1972, 1974, 1970] residue

theorem envelope0023 : TailR263DiagonalRange 5607748 5635786 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5635785 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5635785 (envelope0023Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0023Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0023Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0023Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0023Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0023Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5607748) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0023Counts (.evenTwoCell residue)) = 17740 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0023Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0024Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 89068
  | .evenTwoCell residue => ![1986, 1982, 1983, 1972, 1982, 1971, 1986, 1985, 1983] residue

theorem envelope0024 : TailR263DiagonalRange 5635786 5663964 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5663963 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5663963 (envelope0024Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0024Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0024Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0024Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0024Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0024Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5635786) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0024Counts (.evenTwoCell residue)) = 17830 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0024Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0025Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 89520
  | .evenTwoCell residue => ![1992, 1989, 1992, 1984, 1995, 1982, 1995, 1993, 1991] residue

theorem envelope0025 : TailR263DiagonalRange 5663964 5692283 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5692282 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5692282 (envelope0025Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0025Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0025Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0025Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0025Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0025Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5663964) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0025Counts (.evenTwoCell residue)) = 17913 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0025Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0026Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 89965
  | .evenTwoCell residue => ![2004, 2001, 2005, 1995, 2006, 1989, 2001, 2003, 2002] residue

theorem envelope0026 : TailR263DiagonalRange 5692283 5720744 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5720743 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5720743 (envelope0026Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0026Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0026Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0026Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0026Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0026Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5692283) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0026Counts (.evenTwoCell residue)) = 18006 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0026Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0027Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 90410
  | .evenTwoCell residue => ![2015, 2010, 2012, 2004, 2016, 2000, 2010, 2014, 2013] residue

theorem envelope0027 : TailR263DiagonalRange 5720744 5749347 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5749346 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5749346 (envelope0027Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0027Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0027Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0027Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0027Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0027Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5720744) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0027Counts (.evenTwoCell residue)) = 18094 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0027Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0028Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 90860
  | .evenTwoCell residue => ![2027, 2019, 2018, 2016, 2026, 2012, 2021, 2024, 2022] residue

theorem envelope0028 : TailR263DiagonalRange 5749347 5778093 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5778092 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5778092 (envelope0028Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0028Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0028Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0028Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0028Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0028Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5749347) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0028Counts (.evenTwoCell residue)) = 18185 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0028Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0029Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 91317
  | .evenTwoCell residue => ![2041, 2032, 2029, 2024, 2037, 2020, 2030, 2034, 2031] residue

theorem envelope0029 : TailR263DiagonalRange 5778093 5806983 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5806982 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5806982 (envelope0029Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0029Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0029Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0029Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0029Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0029Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5778093) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0029Counts (.evenTwoCell residue)) = 18278 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0029Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0030Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 91761
  | .evenTwoCell residue => ![2051, 2041, 2038, 2031, 2044, 2029, 2043, 2045, 2045] residue

theorem envelope0030 : TailR263DiagonalRange 5806983 5836017 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5836016 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5836016 (envelope0030Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0030Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0030Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0030Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0030Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0030Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5806983) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0030Counts (.evenTwoCell residue)) = 18367 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0030Counts, tailR263EvenTwoAllDiagonalEnvelope])

def envelope0031Counts : TailR263DiagonalTarget → ℕ
  | .lowTwo => 92227
  | .evenTwoCell residue => ![2062, 2050, 2050, 2042, 2054, 2042, 2053, 2054, 2053] residue

theorem envelope0031 : TailR263DiagonalRange 5836017 5865197 := by
  intro N hLower hStop
  have hNUpper : N ≤ 5865196 := by omega
  have hcutoff : ∀ target,
      (targetMarkers target).Cutoff 5865196 (envelope0031Counts target) := by
    intro target
    cases target with
    | lowTwo => decide
    | evenTwoCell residue => fin_cases residue <;> decide
  refine { lowTwo := ?_, evenTwoCell := ?_, evenTwoAll := ?_ }
  · have hcard := tailR263LowTwoDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0031Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard
    exact hratio.trans (by norm_num [envelope0031Counts, tailR263LowTwoDiagonalEnvelope])
  · intro residue
    have hcard := tailR263EvenTwoCellDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0031Counts hcutoff
      (by decide) hNUpper residue
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard
    fin_cases residue <;> exact hratio.trans (by norm_num [envelope0031Counts, tailR263EvenTwoCellDiagonalEnvelope])
  · have hcard := tailR263EvenTwoAllDiagonal_card_le
      GeneratedTailDiagonalCoverage.certificate targetMarkers
      projectsTargets targetMarkersOrdered envelope0031Counts hcutoff
      (by decide) hNUpper
    have hratio := natCardRatio_le_block
      (lower := 5836017) (N := N) (by decide) hLower hcard
    have hsum : (∑ residue : Fin 9,
        envelope0031Counts (.evenTwoCell residue)) = 18460 := by decide
    rw [hsum] at hratio
    exact hratio.trans (by norm_num [envelope0031Counts, tailR263EvenTwoAllDiagonalEnvelope])

end Erdos848.GeneratedTailR263Diagonal
