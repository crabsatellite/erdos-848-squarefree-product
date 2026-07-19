import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0001
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0016ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![88, 86, 82, 86, 83, 86, 86, 84, 84]

def tailEnvelope0016ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![83, 84, 82, 85, 83, 84, 83, 84, 83]

def tailEnvelope0016ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![83, 84, 82, 84, 82, 84, 83, 83, 83]

theorem tailEnvelope0016ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0016FailureFibreExactOne
      tailEnvelope0016ThreeFibreTopOneOne
      tailEnvelope0016ThreeFibreTopTwoOne
      tailEnvelope0016ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0016ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![85, 85, 86, 87, 85, 88, 83, 88, 83]

def tailEnvelope0016ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 85, 84, 84, 84, 83, 83, 85, 81]

def tailEnvelope0016ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![84, 83, 84, 83, 82, 83, 82, 83, 81]

theorem tailEnvelope0016ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0016FailureFibreExactThree
      tailEnvelope0016ThreeFibreTopOneThree
      tailEnvelope0016ThreeFibreTopTwoThree
      tailEnvelope0016ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0016ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5415347 5442423
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5442422 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0016FailureFibreExactOne
      tailEnvelope0016ThreeFibreTopOneOne tailEnvelope0016ThreeFibreTopTwoOne
      tailEnvelope0016ThreeFibreTopThreeOne
      (lower := 5415347) (upper := 5442422) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0016ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0016ThreeFibreTopOneOne,
        tailEnvelope0016ThreeFibreTopTwoOne, tailEnvelope0016ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0016FailureFibreExactThree
      tailEnvelope0016ThreeFibreTopOneThree tailEnvelope0016ThreeFibreTopTwoThree
      tailEnvelope0016ThreeFibreTopThreeThree
      (lower := 5415347) (upper := 5442422) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0016ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0016ThreeFibreTopOneThree,
        tailEnvelope0016ThreeFibreTopTwoThree, tailEnvelope0016ThreeFibreTopThreeThree])

def tailEnvelope0017ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![88, 87, 83, 87, 84, 86, 86, 84, 84]

def tailEnvelope0017ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![84, 84, 82, 86, 83, 85, 84, 84, 84]

def tailEnvelope0017ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![84, 84, 82, 85, 82, 85, 83, 83, 83]

theorem tailEnvelope0017ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0017FailureFibreExactOne
      tailEnvelope0017ThreeFibreTopOneOne
      tailEnvelope0017ThreeFibreTopTwoOne
      tailEnvelope0017ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0017ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![85, 86, 87, 87, 86, 89, 85, 88, 83]

def tailEnvelope0017ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 86, 86, 84, 84, 84, 84, 85, 82]

def tailEnvelope0017ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![84, 83, 84, 84, 82, 83, 83, 83, 81]

theorem tailEnvelope0017ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0017FailureFibreExactThree
      tailEnvelope0017ThreeFibreTopOneThree
      tailEnvelope0017ThreeFibreTopTwoThree
      tailEnvelope0017ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0017ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5442423 5469635
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5469634 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0017FailureFibreExactOne
      tailEnvelope0017ThreeFibreTopOneOne tailEnvelope0017ThreeFibreTopTwoOne
      tailEnvelope0017ThreeFibreTopThreeOne
      (lower := 5442423) (upper := 5469634) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0017ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0017ThreeFibreTopOneOne,
        tailEnvelope0017ThreeFibreTopTwoOne, tailEnvelope0017ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0017FailureFibreExactThree
      tailEnvelope0017ThreeFibreTopOneThree tailEnvelope0017ThreeFibreTopTwoThree
      tailEnvelope0017ThreeFibreTopThreeThree
      (lower := 5442423) (upper := 5469634) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0017ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0017ThreeFibreTopOneThree,
        tailEnvelope0017ThreeFibreTopTwoThree, tailEnvelope0017ThreeFibreTopThreeThree])

def tailEnvelope0018ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![88, 87, 83, 87, 85, 87, 87, 84, 84]

def tailEnvelope0018ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![85, 85, 83, 87, 83, 85, 84, 84, 84]

def tailEnvelope0018ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![84, 84, 83, 86, 83, 85, 84, 84, 83]

theorem tailEnvelope0018ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0018FailureFibreExactOne
      tailEnvelope0018ThreeFibreTopOneOne
      tailEnvelope0018ThreeFibreTopTwoOne
      tailEnvelope0018ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0018ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![85, 86, 87, 87, 86, 89, 86, 89, 84]

def tailEnvelope0018ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 86, 87, 85, 84, 84, 84, 85, 83]

def tailEnvelope0018ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![84, 84, 85, 85, 83, 84, 83, 84, 83]

theorem tailEnvelope0018ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0018FailureFibreExactThree
      tailEnvelope0018ThreeFibreTopOneThree
      tailEnvelope0018ThreeFibreTopTwoThree
      tailEnvelope0018ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0018ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5469635 5496983
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5496982 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0018FailureFibreExactOne
      tailEnvelope0018ThreeFibreTopOneOne tailEnvelope0018ThreeFibreTopTwoOne
      tailEnvelope0018ThreeFibreTopThreeOne
      (lower := 5469635) (upper := 5496982) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0018ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0018ThreeFibreTopOneOne,
        tailEnvelope0018ThreeFibreTopTwoOne, tailEnvelope0018ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0018FailureFibreExactThree
      tailEnvelope0018ThreeFibreTopOneThree tailEnvelope0018ThreeFibreTopTwoThree
      tailEnvelope0018ThreeFibreTopThreeThree
      (lower := 5469635) (upper := 5496982) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0018ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0018ThreeFibreTopOneThree,
        tailEnvelope0018ThreeFibreTopTwoThree, tailEnvelope0018ThreeFibreTopThreeThree])

def tailEnvelope0019ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 87, 84, 87, 85, 87, 88, 85, 85]

def tailEnvelope0019ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![85, 86, 83, 87, 84, 85, 84, 84, 85]

def tailEnvelope0019ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![84, 85, 83, 86, 84, 85, 84, 84, 84]

theorem tailEnvelope0019ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0019FailureFibreExactOne
      tailEnvelope0019ThreeFibreTopOneOne
      tailEnvelope0019ThreeFibreTopTwoOne
      tailEnvelope0019ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0019ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![85, 87, 87, 87, 86, 90, 86, 90, 84]

def tailEnvelope0019ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 87, 87, 86, 84, 85, 84, 85, 83]

def tailEnvelope0019ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![85, 84, 86, 85, 83, 84, 84, 84, 83]

theorem tailEnvelope0019ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0019FailureFibreExactThree
      tailEnvelope0019ThreeFibreTopOneThree
      tailEnvelope0019ThreeFibreTopTwoThree
      tailEnvelope0019ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0019ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5496983 5524467
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5524466 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0019FailureFibreExactOne
      tailEnvelope0019ThreeFibreTopOneOne tailEnvelope0019ThreeFibreTopTwoOne
      tailEnvelope0019ThreeFibreTopThreeOne
      (lower := 5496983) (upper := 5524466) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0019ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0019ThreeFibreTopOneOne,
        tailEnvelope0019ThreeFibreTopTwoOne, tailEnvelope0019ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0019FailureFibreExactThree
      tailEnvelope0019ThreeFibreTopOneThree tailEnvelope0019ThreeFibreTopTwoThree
      tailEnvelope0019ThreeFibreTopThreeThree
      (lower := 5496983) (upper := 5524466) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0019ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0019ThreeFibreTopOneThree,
        tailEnvelope0019ThreeFibreTopTwoThree, tailEnvelope0019ThreeFibreTopThreeThree])

def tailEnvelope0020ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 87, 84, 87, 85, 87, 88, 85, 85]

def tailEnvelope0020ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![85, 86, 83, 87, 84, 86, 86, 84, 85]

def tailEnvelope0020ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![85, 85, 83, 86, 84, 86, 84, 84, 85]

theorem tailEnvelope0020ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0020FailureFibreExactOne
      tailEnvelope0020ThreeFibreTopOneOne
      tailEnvelope0020ThreeFibreTopTwoOne
      tailEnvelope0020ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0020ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 86, 90, 86, 90, 85]

def tailEnvelope0020ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 87, 87, 86, 84, 86, 85, 86, 84]

def tailEnvelope0020ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![85, 84, 86, 86, 83, 85, 84, 85, 83]

theorem tailEnvelope0020ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0020FailureFibreExactThree
      tailEnvelope0020ThreeFibreTopOneThree
      tailEnvelope0020ThreeFibreTopTwoThree
      tailEnvelope0020ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0020ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5524467 5552089
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5552088 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0020FailureFibreExactOne
      tailEnvelope0020ThreeFibreTopOneOne tailEnvelope0020ThreeFibreTopTwoOne
      tailEnvelope0020ThreeFibreTopThreeOne
      (lower := 5524467) (upper := 5552088) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0020ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0020ThreeFibreTopOneOne,
        tailEnvelope0020ThreeFibreTopTwoOne, tailEnvelope0020ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0020FailureFibreExactThree
      tailEnvelope0020ThreeFibreTopOneThree tailEnvelope0020ThreeFibreTopTwoThree
      tailEnvelope0020ThreeFibreTopThreeThree
      (lower := 5524467) (upper := 5552088) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0020ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0020ThreeFibreTopOneThree,
        tailEnvelope0020ThreeFibreTopTwoThree, tailEnvelope0020ThreeFibreTopThreeThree])

def tailEnvelope0021ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 87, 86, 87, 85, 87, 89, 85, 85]

def tailEnvelope0021ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![86, 87, 84, 87, 84, 86, 86, 84, 85]

def tailEnvelope0021ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![86, 85, 83, 86, 84, 86, 85, 84, 85]

theorem tailEnvelope0021ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0021FailureFibreExactOne
      tailEnvelope0021ThreeFibreTopOneOne
      tailEnvelope0021ThreeFibreTopTwoOne
      tailEnvelope0021ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0021ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 87, 90, 86, 90, 85]

def tailEnvelope0021ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 87, 87, 86, 84, 86, 85, 87, 84]

def tailEnvelope0021ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![85, 84, 86, 86, 83, 86, 84, 85, 84]

theorem tailEnvelope0021ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0021FailureFibreExactThree
      tailEnvelope0021ThreeFibreTopOneThree
      tailEnvelope0021ThreeFibreTopTwoThree
      tailEnvelope0021ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0021ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5552089 5579849
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5579848 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0021FailureFibreExactOne
      tailEnvelope0021ThreeFibreTopOneOne tailEnvelope0021ThreeFibreTopTwoOne
      tailEnvelope0021ThreeFibreTopThreeOne
      (lower := 5552089) (upper := 5579848) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0021ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0021ThreeFibreTopOneOne,
        tailEnvelope0021ThreeFibreTopTwoOne, tailEnvelope0021ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0021FailureFibreExactThree
      tailEnvelope0021ThreeFibreTopOneThree tailEnvelope0021ThreeFibreTopTwoThree
      tailEnvelope0021ThreeFibreTopThreeThree
      (lower := 5552089) (upper := 5579848) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0021ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0021ThreeFibreTopOneThree,
        tailEnvelope0021ThreeFibreTopTwoThree, tailEnvelope0021ThreeFibreTopThreeThree])

def tailEnvelope0022ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 87, 86, 87, 87, 87, 89, 86, 85]

def tailEnvelope0022ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![86, 87, 84, 87, 86, 87, 87, 85, 85]

def tailEnvelope0022ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![86, 87, 83, 86, 85, 86, 85, 85, 85]

theorem tailEnvelope0022ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0022FailureFibreExactOne
      tailEnvelope0022ThreeFibreTopOneOne
      tailEnvelope0022ThreeFibreTopTwoOne
      tailEnvelope0022ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0022ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 87, 90, 86, 90, 85]

def tailEnvelope0022ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![85, 87, 87, 87, 85, 86, 85, 88, 84]

def tailEnvelope0022ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![85, 84, 86, 86, 84, 86, 85, 85, 84]

theorem tailEnvelope0022ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0022FailureFibreExactThree
      tailEnvelope0022ThreeFibreTopOneThree
      tailEnvelope0022ThreeFibreTopTwoThree
      tailEnvelope0022ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0022ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5579849 5607748
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5607747 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0022FailureFibreExactOne
      tailEnvelope0022ThreeFibreTopOneOne tailEnvelope0022ThreeFibreTopTwoOne
      tailEnvelope0022ThreeFibreTopThreeOne
      (lower := 5579849) (upper := 5607747) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0022ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0022ThreeFibreTopOneOne,
        tailEnvelope0022ThreeFibreTopTwoOne, tailEnvelope0022ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0022FailureFibreExactThree
      tailEnvelope0022ThreeFibreTopOneThree tailEnvelope0022ThreeFibreTopTwoThree
      tailEnvelope0022ThreeFibreTopThreeThree
      (lower := 5579849) (upper := 5607747) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0022ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0022ThreeFibreTopOneThree,
        tailEnvelope0022ThreeFibreTopTwoThree, tailEnvelope0022ThreeFibreTopThreeThree])

def tailEnvelope0023ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 87, 87, 87, 87, 87, 89, 86, 86]

def tailEnvelope0023ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![86, 87, 85, 87, 86, 87, 87, 85, 86]

def tailEnvelope0023ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![86, 87, 84, 86, 85, 86, 85, 85, 85]

theorem tailEnvelope0023ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0023FailureFibreExactOne
      tailEnvelope0023ThreeFibreTopOneOne
      tailEnvelope0023ThreeFibreTopTwoOne
      tailEnvelope0023ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0023ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![86, 88, 88, 88, 87, 91, 86, 90, 85]

def tailEnvelope0023ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![86, 87, 87, 87, 85, 86, 85, 89, 84]

def tailEnvelope0023ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![85, 84, 87, 86, 84, 86, 85, 85, 84]

theorem tailEnvelope0023ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0023FailureFibreExactThree
      tailEnvelope0023ThreeFibreTopOneThree
      tailEnvelope0023ThreeFibreTopTwoThree
      tailEnvelope0023ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0023ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5607748 5635786
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5635785 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0023FailureFibreExactOne
      tailEnvelope0023ThreeFibreTopOneOne tailEnvelope0023ThreeFibreTopTwoOne
      tailEnvelope0023ThreeFibreTopThreeOne
      (lower := 5607748) (upper := 5635785) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0023ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0023ThreeFibreTopOneOne,
        tailEnvelope0023ThreeFibreTopTwoOne, tailEnvelope0023ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0023FailureFibreExactThree
      tailEnvelope0023ThreeFibreTopOneThree tailEnvelope0023ThreeFibreTopTwoThree
      tailEnvelope0023ThreeFibreTopThreeThree
      (lower := 5607748) (upper := 5635785) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0023ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0023ThreeFibreTopOneThree,
        tailEnvelope0023ThreeFibreTopTwoThree, tailEnvelope0023ThreeFibreTopThreeThree])

def tailEnvelope0024ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 89, 87, 88, 88, 87, 89, 86, 86]

def tailEnvelope0024ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![87, 87, 85, 87, 86, 87, 87, 86, 86]

def tailEnvelope0024ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![86, 87, 85, 86, 86, 86, 85, 86, 86]

theorem tailEnvelope0024ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0024FailureFibreExactOne
      tailEnvelope0024ThreeFibreTopOneOne
      tailEnvelope0024ThreeFibreTopTwoOne
      tailEnvelope0024ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0024ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![88, 88, 88, 88, 87, 91, 87, 90, 85]

def tailEnvelope0024ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![87, 87, 87, 87, 86, 86, 85, 90, 85]

def tailEnvelope0024ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![86, 85, 87, 86, 85, 86, 85, 85, 84]

theorem tailEnvelope0024ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0024FailureFibreExactThree
      tailEnvelope0024ThreeFibreTopOneThree
      tailEnvelope0024ThreeFibreTopTwoThree
      tailEnvelope0024ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0024ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5635786 5663964
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5663963 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0024FailureFibreExactOne
      tailEnvelope0024ThreeFibreTopOneOne tailEnvelope0024ThreeFibreTopTwoOne
      tailEnvelope0024ThreeFibreTopThreeOne
      (lower := 5635786) (upper := 5663963) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0024ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0024ThreeFibreTopOneOne,
        tailEnvelope0024ThreeFibreTopTwoOne, tailEnvelope0024ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0024FailureFibreExactThree
      tailEnvelope0024ThreeFibreTopOneThree tailEnvelope0024ThreeFibreTopTwoThree
      tailEnvelope0024ThreeFibreTopThreeThree
      (lower := 5635786) (upper := 5663963) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0024ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0024ThreeFibreTopOneThree,
        tailEnvelope0024ThreeFibreTopTwoThree, tailEnvelope0024ThreeFibreTopThreeThree])

def tailEnvelope0025ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 89, 88, 89, 88, 87, 89, 87, 87]

def tailEnvelope0025ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![87, 88, 87, 87, 88, 87, 87, 87, 86]

def tailEnvelope0025ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![87, 88, 86, 87, 86, 87, 86, 86, 86]

theorem tailEnvelope0025ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0025FailureFibreExactOne
      tailEnvelope0025ThreeFibreTopOneOne
      tailEnvelope0025ThreeFibreTopTwoOne
      tailEnvelope0025ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0025ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![88, 90, 89, 89, 88, 92, 88, 91, 85]

def tailEnvelope0025ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![88, 88, 87, 87, 86, 88, 86, 90, 85]

def tailEnvelope0025ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![86, 85, 87, 87, 86, 87, 86, 86, 85]

theorem tailEnvelope0025ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0025FailureFibreExactThree
      tailEnvelope0025ThreeFibreTopOneThree
      tailEnvelope0025ThreeFibreTopTwoThree
      tailEnvelope0025ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0025ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5663964 5692283
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5692282 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0025FailureFibreExactOne
      tailEnvelope0025ThreeFibreTopOneOne tailEnvelope0025ThreeFibreTopTwoOne
      tailEnvelope0025ThreeFibreTopThreeOne
      (lower := 5663964) (upper := 5692282) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0025ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0025ThreeFibreTopOneOne,
        tailEnvelope0025ThreeFibreTopTwoOne, tailEnvelope0025ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0025FailureFibreExactThree
      tailEnvelope0025ThreeFibreTopOneThree tailEnvelope0025ThreeFibreTopTwoThree
      tailEnvelope0025ThreeFibreTopThreeThree
      (lower := 5663964) (upper := 5692282) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0025ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0025ThreeFibreTopOneThree,
        tailEnvelope0025ThreeFibreTopTwoThree, tailEnvelope0025ThreeFibreTopThreeThree])

def tailEnvelope0026ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![89, 89, 89, 90, 90, 89, 90, 87, 88]

def tailEnvelope0026ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![88, 89, 87, 89, 88, 88, 88, 87, 87]

def tailEnvelope0026ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![88, 89, 86, 87, 87, 87, 86, 86, 86]

theorem tailEnvelope0026ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0026FailureFibreExactOne
      tailEnvelope0026ThreeFibreTopOneOne
      tailEnvelope0026ThreeFibreTopTwoOne
      tailEnvelope0026ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0026ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![89, 90, 89, 90, 88, 92, 88, 91, 86]

def tailEnvelope0026ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![88, 89, 88, 88, 86, 88, 87, 90, 86]

def tailEnvelope0026ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![87, 86, 87, 88, 86, 88, 86, 87, 85]

theorem tailEnvelope0026ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0026FailureFibreExactThree
      tailEnvelope0026ThreeFibreTopOneThree
      tailEnvelope0026ThreeFibreTopTwoThree
      tailEnvelope0026ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0026ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5692283 5720744
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5720743 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0026FailureFibreExactOne
      tailEnvelope0026ThreeFibreTopOneOne tailEnvelope0026ThreeFibreTopTwoOne
      tailEnvelope0026ThreeFibreTopThreeOne
      (lower := 5692283) (upper := 5720743) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0026ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0026ThreeFibreTopOneOne,
        tailEnvelope0026ThreeFibreTopTwoOne, tailEnvelope0026ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0026FailureFibreExactThree
      tailEnvelope0026ThreeFibreTopOneThree tailEnvelope0026ThreeFibreTopTwoThree
      tailEnvelope0026ThreeFibreTopThreeThree
      (lower := 5692283) (upper := 5720743) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0026ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0026ThreeFibreTopOneThree,
        tailEnvelope0026ThreeFibreTopTwoThree, tailEnvelope0026ThreeFibreTopThreeThree])

def tailEnvelope0027ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![90, 90, 90, 90, 90, 89, 90, 87, 88]

def tailEnvelope0027ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![88, 89, 87, 89, 88, 88, 88, 87, 88]

def tailEnvelope0027ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![88, 89, 86, 88, 87, 88, 87, 87, 87]

theorem tailEnvelope0027ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0027FailureFibreExactOne
      tailEnvelope0027ThreeFibreTopOneOne
      tailEnvelope0027ThreeFibreTopTwoOne
      tailEnvelope0027ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0027ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![90, 90, 90, 90, 89, 93, 89, 93, 86]

def tailEnvelope0027ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![89, 90, 88, 89, 87, 89, 87, 90, 86]

def tailEnvelope0027ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![88, 86, 88, 88, 86, 88, 87, 87, 86]

theorem tailEnvelope0027ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0027FailureFibreExactThree
      tailEnvelope0027ThreeFibreTopOneThree
      tailEnvelope0027ThreeFibreTopTwoThree
      tailEnvelope0027ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0027ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5720744 5749347
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5749346 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0027FailureFibreExactOne
      tailEnvelope0027ThreeFibreTopOneOne tailEnvelope0027ThreeFibreTopTwoOne
      tailEnvelope0027ThreeFibreTopThreeOne
      (lower := 5720744) (upper := 5749346) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0027ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0027ThreeFibreTopOneOne,
        tailEnvelope0027ThreeFibreTopTwoOne, tailEnvelope0027ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0027FailureFibreExactThree
      tailEnvelope0027ThreeFibreTopOneThree tailEnvelope0027ThreeFibreTopTwoThree
      tailEnvelope0027ThreeFibreTopThreeThree
      (lower := 5720744) (upper := 5749346) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0027ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0027ThreeFibreTopOneThree,
        tailEnvelope0027ThreeFibreTopTwoThree, tailEnvelope0027ThreeFibreTopThreeThree])

def tailEnvelope0028ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![90, 90, 91, 90, 92, 91, 90, 88, 89]

def tailEnvelope0028ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![88, 90, 88, 89, 88, 90, 89, 87, 88]

def tailEnvelope0028ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![88, 89, 88, 89, 88, 89, 88, 87, 88]

theorem tailEnvelope0028ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0028FailureFibreExactOne
      tailEnvelope0028ThreeFibreTopOneOne
      tailEnvelope0028ThreeFibreTopTwoOne
      tailEnvelope0028ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0028ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![90, 91, 90, 91, 90, 93, 89, 93, 87]

def tailEnvelope0028ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![89, 91, 89, 90, 88, 89, 88, 90, 87]

def tailEnvelope0028ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![89, 87, 89, 88, 87, 89, 88, 89, 86]

theorem tailEnvelope0028ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0028FailureFibreExactThree
      tailEnvelope0028ThreeFibreTopOneThree
      tailEnvelope0028ThreeFibreTopTwoThree
      tailEnvelope0028ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0028ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5749347 5778093
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5778092 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0028FailureFibreExactOne
      tailEnvelope0028ThreeFibreTopOneOne tailEnvelope0028ThreeFibreTopTwoOne
      tailEnvelope0028ThreeFibreTopThreeOne
      (lower := 5749347) (upper := 5778092) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0028ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0028ThreeFibreTopOneOne,
        tailEnvelope0028ThreeFibreTopTwoOne, tailEnvelope0028ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0028FailureFibreExactThree
      tailEnvelope0028ThreeFibreTopOneThree tailEnvelope0028ThreeFibreTopTwoThree
      tailEnvelope0028ThreeFibreTopThreeThree
      (lower := 5749347) (upper := 5778092) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0028ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0028ThreeFibreTopOneThree,
        tailEnvelope0028ThreeFibreTopTwoThree, tailEnvelope0028ThreeFibreTopThreeThree])

def tailEnvelope0029ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![91, 91, 91, 90, 93, 92, 91, 89, 89]

def tailEnvelope0029ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![89, 90, 88, 90, 88, 90, 90, 88, 89]

def tailEnvelope0029ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![89, 90, 88, 89, 88, 89, 89, 88, 88]

theorem tailEnvelope0029ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0029FailureFibreExactOne
      tailEnvelope0029ThreeFibreTopOneOne
      tailEnvelope0029ThreeFibreTopTwoOne
      tailEnvelope0029ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0029ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![90, 91, 91, 91, 90, 94, 89, 93, 88]

def tailEnvelope0029ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![89, 91, 90, 90, 88, 89, 88, 90, 87]

def tailEnvelope0029ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![89, 87, 89, 90, 87, 89, 88, 89, 87]

theorem tailEnvelope0029ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0029FailureFibreExactThree
      tailEnvelope0029ThreeFibreTopOneThree
      tailEnvelope0029ThreeFibreTopTwoThree
      tailEnvelope0029ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0029ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5778093 5806983
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5806982 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0029FailureFibreExactOne
      tailEnvelope0029ThreeFibreTopOneOne tailEnvelope0029ThreeFibreTopTwoOne
      tailEnvelope0029ThreeFibreTopThreeOne
      (lower := 5778093) (upper := 5806982) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0029ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0029ThreeFibreTopOneOne,
        tailEnvelope0029ThreeFibreTopTwoOne, tailEnvelope0029ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0029FailureFibreExactThree
      tailEnvelope0029ThreeFibreTopOneThree tailEnvelope0029ThreeFibreTopTwoThree
      tailEnvelope0029ThreeFibreTopThreeThree
      (lower := 5778093) (upper := 5806982) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0029ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0029ThreeFibreTopOneThree,
        tailEnvelope0029ThreeFibreTopTwoThree, tailEnvelope0029ThreeFibreTopThreeThree])

def tailEnvelope0030ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![91, 91, 91, 90, 93, 92, 91, 89, 91]

def tailEnvelope0030ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![89, 90, 89, 90, 88, 91, 90, 88, 89]

def tailEnvelope0030ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![89, 90, 88, 89, 88, 89, 89, 88, 89]

theorem tailEnvelope0030ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0030FailureFibreExactOne
      tailEnvelope0030ThreeFibreTopOneOne
      tailEnvelope0030ThreeFibreTopTwoOne
      tailEnvelope0030ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0030ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 90, 94, 89, 93, 88]

def tailEnvelope0030ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![89, 91, 90, 90, 88, 90, 89, 90, 88]

def tailEnvelope0030ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![89, 89, 90, 90, 87, 89, 88, 90, 87]

theorem tailEnvelope0030ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0030FailureFibreExactThree
      tailEnvelope0030ThreeFibreTopOneThree
      tailEnvelope0030ThreeFibreTopTwoThree
      tailEnvelope0030ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0030ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5806983 5836017
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5836016 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0030FailureFibreExactOne
      tailEnvelope0030ThreeFibreTopOneOne tailEnvelope0030ThreeFibreTopTwoOne
      tailEnvelope0030ThreeFibreTopThreeOne
      (lower := 5806983) (upper := 5836016) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0030ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0030ThreeFibreTopOneOne,
        tailEnvelope0030ThreeFibreTopTwoOne, tailEnvelope0030ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0030FailureFibreExactThree
      tailEnvelope0030ThreeFibreTopOneThree tailEnvelope0030ThreeFibreTopTwoThree
      tailEnvelope0030ThreeFibreTopThreeThree
      (lower := 5806983) (upper := 5836016) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0030ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0030ThreeFibreTopOneThree,
        tailEnvelope0030ThreeFibreTopTwoThree, tailEnvelope0030ThreeFibreTopThreeThree])

def tailEnvelope0031ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![92, 91, 91, 90, 93, 92, 91, 91, 92]

def tailEnvelope0031ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![90, 91, 89, 90, 88, 91, 90, 89, 90]

def tailEnvelope0031ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![89, 91, 89, 89, 88, 89, 89, 88, 90]

theorem tailEnvelope0031ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0031FailureFibreExactOne
      tailEnvelope0031ThreeFibreTopOneOne
      tailEnvelope0031ThreeFibreTopTwoOne
      tailEnvelope0031ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0031ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 91, 94, 89, 93, 88]

def tailEnvelope0031ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![91, 91, 91, 90, 89, 90, 89, 91, 88]

def tailEnvelope0031ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![90, 89, 90, 90, 88, 89, 89, 90, 88]

theorem tailEnvelope0031ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0031FailureFibreExactThree
      tailEnvelope0031ThreeFibreTopOneThree
      tailEnvelope0031ThreeFibreTopTwoThree
      tailEnvelope0031ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0031ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5836017 5865197
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5865196 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0031FailureFibreExactOne
      tailEnvelope0031ThreeFibreTopOneOne tailEnvelope0031ThreeFibreTopTwoOne
      tailEnvelope0031ThreeFibreTopThreeOne
      (lower := 5836017) (upper := 5865196) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0031ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0031ThreeFibreTopOneOne,
        tailEnvelope0031ThreeFibreTopTwoOne, tailEnvelope0031ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0031FailureFibreExactThree
      tailEnvelope0031ThreeFibreTopOneThree tailEnvelope0031ThreeFibreTopTwoThree
      tailEnvelope0031ThreeFibreTopThreeThree
      (lower := 5836017) (upper := 5865196) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0031ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0031ThreeFibreTopOneThree,
        tailEnvelope0031ThreeFibreTopTwoThree, tailEnvelope0031ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
