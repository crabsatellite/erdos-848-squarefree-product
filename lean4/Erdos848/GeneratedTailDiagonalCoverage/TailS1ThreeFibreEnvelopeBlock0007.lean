import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0007
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0112ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![134, 134, 134, 135, 134, 135, 133, 132, 133]

def tailEnvelope0112ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![132, 133, 132, 134, 131, 133, 132, 131, 133]

def tailEnvelope0112ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![131, 132, 132, 132, 131, 132, 131, 131, 133]

theorem tailEnvelope0112ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0112FailureFibreExactOne
      tailEnvelope0112ThreeFibreTopOneOne
      tailEnvelope0112ThreeFibreTopTwoOne
      tailEnvelope0112ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0112ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![135, 133, 133, 136, 132, 133, 132, 135, 132]

def tailEnvelope0112ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![135, 132, 133, 134, 131, 133, 131, 134, 132]

def tailEnvelope0112ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![133, 131, 131, 132, 130, 133, 131, 133, 132]

theorem tailEnvelope0112ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0112FailureFibreExactThree
      tailEnvelope0112ThreeFibreTopOneThree
      tailEnvelope0112ThreeFibreTopTwoThree
      tailEnvelope0112ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0112ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8741072 8784777
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8784776 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0112FailureFibreExactOne
      tailEnvelope0112ThreeFibreTopOneOne tailEnvelope0112ThreeFibreTopTwoOne
      tailEnvelope0112ThreeFibreTopThreeOne
      (lower := 8741072) (upper := 8784776) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0112FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0112ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0112ThreeFibreTopOneOne,
        tailEnvelope0112ThreeFibreTopTwoOne, tailEnvelope0112ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0112FailureFibreExactThree
      tailEnvelope0112ThreeFibreTopOneThree tailEnvelope0112ThreeFibreTopTwoThree
      tailEnvelope0112ThreeFibreTopThreeThree
      (lower := 8741072) (upper := 8784776) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0112FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0112ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0112ThreeFibreTopOneThree,
        tailEnvelope0112ThreeFibreTopTwoThree, tailEnvelope0112ThreeFibreTopThreeThree])

def tailEnvelope0113ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![134, 134, 134, 136, 136, 135, 133, 133, 136]

def tailEnvelope0113ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![133, 134, 133, 135, 132, 133, 133, 133, 134]

def tailEnvelope0113ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![132, 133, 132, 133, 132, 132, 132, 132, 133]

theorem tailEnvelope0113ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0113FailureFibreExactOne
      tailEnvelope0113ThreeFibreTopOneOne
      tailEnvelope0113ThreeFibreTopTwoOne
      tailEnvelope0113ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0113ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![135, 133, 134, 136, 132, 134, 134, 135, 133]

def tailEnvelope0113ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![135, 132, 133, 135, 132, 133, 131, 134, 132]

def tailEnvelope0113ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![134, 132, 132, 134, 131, 133, 131, 133, 132]

theorem tailEnvelope0113ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0113FailureFibreExactThree
      tailEnvelope0113ThreeFibreTopOneThree
      tailEnvelope0113ThreeFibreTopTwoThree
      tailEnvelope0113ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0113ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8784777 8828700
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8828699 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0113FailureFibreExactOne
      tailEnvelope0113ThreeFibreTopOneOne tailEnvelope0113ThreeFibreTopTwoOne
      tailEnvelope0113ThreeFibreTopThreeOne
      (lower := 8784777) (upper := 8828699) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0113FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0113ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0113ThreeFibreTopOneOne,
        tailEnvelope0113ThreeFibreTopTwoOne, tailEnvelope0113ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0113FailureFibreExactThree
      tailEnvelope0113ThreeFibreTopOneThree tailEnvelope0113ThreeFibreTopTwoThree
      tailEnvelope0113ThreeFibreTopThreeThree
      (lower := 8784777) (upper := 8828699) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0113FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0113ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0113ThreeFibreTopOneThree,
        tailEnvelope0113ThreeFibreTopTwoThree, tailEnvelope0113ThreeFibreTopThreeThree])

def tailEnvelope0114ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![134, 136, 134, 138, 136, 136, 134, 135, 136]

def tailEnvelope0114ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![133, 135, 133, 135, 132, 134, 134, 133, 134]

def tailEnvelope0114ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![132, 133, 132, 134, 132, 134, 132, 132, 134]

theorem tailEnvelope0114ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0114FailureFibreExactOne
      tailEnvelope0114ThreeFibreTopOneOne
      tailEnvelope0114ThreeFibreTopTwoOne
      tailEnvelope0114ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0114ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![135, 134, 135, 136, 133, 134, 134, 135, 133]

def tailEnvelope0114ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![135, 132, 134, 135, 132, 134, 132, 134, 133]

def tailEnvelope0114ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![134, 132, 133, 134, 132, 133, 132, 133, 132]

theorem tailEnvelope0114ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0114FailureFibreExactThree
      tailEnvelope0114ThreeFibreTopOneThree
      tailEnvelope0114ThreeFibreTopTwoThree
      tailEnvelope0114ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0114ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8828700 8872843
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8872842 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0114FailureFibreExactOne
      tailEnvelope0114ThreeFibreTopOneOne tailEnvelope0114ThreeFibreTopTwoOne
      tailEnvelope0114ThreeFibreTopThreeOne
      (lower := 8828700) (upper := 8872842) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0114FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0114ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0114ThreeFibreTopOneOne,
        tailEnvelope0114ThreeFibreTopTwoOne, tailEnvelope0114ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0114FailureFibreExactThree
      tailEnvelope0114ThreeFibreTopOneThree tailEnvelope0114ThreeFibreTopTwoThree
      tailEnvelope0114ThreeFibreTopThreeThree
      (lower := 8828700) (upper := 8872842) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0114FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0114ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0114ThreeFibreTopOneThree,
        tailEnvelope0114ThreeFibreTopTwoThree, tailEnvelope0114ThreeFibreTopThreeThree])

def tailEnvelope0115ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![135, 137, 134, 138, 136, 136, 134, 135, 137]

def tailEnvelope0115ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![133, 135, 133, 135, 132, 134, 134, 134, 135]

def tailEnvelope0115ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![133, 135, 132, 134, 132, 134, 133, 133, 134]

theorem tailEnvelope0115ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0115FailureFibreExactOne
      tailEnvelope0115ThreeFibreTopOneOne
      tailEnvelope0115ThreeFibreTopTwoOne
      tailEnvelope0115ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0115ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![136, 134, 136, 136, 134, 134, 135, 136, 133]

def tailEnvelope0115ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![135, 132, 134, 135, 132, 134, 132, 134, 133]

def tailEnvelope0115ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![134, 132, 134, 134, 132, 134, 132, 133, 133]

theorem tailEnvelope0115ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0115FailureFibreExactThree
      tailEnvelope0115ThreeFibreTopOneThree
      tailEnvelope0115ThreeFibreTopTwoThree
      tailEnvelope0115ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0115ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8872843 8917207
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8917206 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0115FailureFibreExactOne
      tailEnvelope0115ThreeFibreTopOneOne tailEnvelope0115ThreeFibreTopTwoOne
      tailEnvelope0115ThreeFibreTopThreeOne
      (lower := 8872843) (upper := 8917206) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0115FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0115ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0115ThreeFibreTopOneOne,
        tailEnvelope0115ThreeFibreTopTwoOne, tailEnvelope0115ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0115FailureFibreExactThree
      tailEnvelope0115ThreeFibreTopOneThree tailEnvelope0115ThreeFibreTopTwoThree
      tailEnvelope0115ThreeFibreTopThreeThree
      (lower := 8872843) (upper := 8917206) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0115FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0115ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0115ThreeFibreTopOneThree,
        tailEnvelope0115ThreeFibreTopTwoThree, tailEnvelope0115ThreeFibreTopThreeThree])

def tailEnvelope0116ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![136, 138, 135, 138, 136, 137, 136, 138, 137]

def tailEnvelope0116ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![135, 135, 133, 136, 132, 136, 134, 135, 135]

def tailEnvelope0116ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![135, 135, 133, 135, 132, 135, 134, 134, 135]

theorem tailEnvelope0116ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0116FailureFibreExactOne
      tailEnvelope0116ThreeFibreTopOneOne
      tailEnvelope0116ThreeFibreTopTwoOne
      tailEnvelope0116ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0116ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![136, 136, 137, 136, 136, 135, 136, 137, 135]

def tailEnvelope0116ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![136, 133, 135, 135, 133, 134, 132, 135, 133]

def tailEnvelope0116ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![135, 133, 134, 135, 132, 134, 132, 133, 133]

theorem tailEnvelope0116ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0116FailureFibreExactThree
      tailEnvelope0116ThreeFibreTopOneThree
      tailEnvelope0116ThreeFibreTopTwoThree
      tailEnvelope0116ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0116ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8917207 8961793
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8961792 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0116FailureFibreExactOne
      tailEnvelope0116ThreeFibreTopOneOne tailEnvelope0116ThreeFibreTopTwoOne
      tailEnvelope0116ThreeFibreTopThreeOne
      (lower := 8917207) (upper := 8961792) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0116FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0116ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0116ThreeFibreTopOneOne,
        tailEnvelope0116ThreeFibreTopTwoOne, tailEnvelope0116ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0116FailureFibreExactThree
      tailEnvelope0116ThreeFibreTopOneThree tailEnvelope0116ThreeFibreTopTwoThree
      tailEnvelope0116ThreeFibreTopThreeThree
      (lower := 8917207) (upper := 8961792) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0116FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0116ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0116ThreeFibreTopOneThree,
        tailEnvelope0116ThreeFibreTopTwoThree, tailEnvelope0116ThreeFibreTopThreeThree])

def tailEnvelope0117ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![138, 140, 137, 138, 136, 138, 136, 139, 138]

def tailEnvelope0117ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![136, 136, 134, 137, 133, 136, 136, 135, 136]

def tailEnvelope0117ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![136, 136, 133, 135, 133, 135, 135, 135, 136]

theorem tailEnvelope0117ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0117FailureFibreExactOne
      tailEnvelope0117ThreeFibreTopOneOne
      tailEnvelope0117ThreeFibreTopTwoOne
      tailEnvelope0117ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0117ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![137, 136, 137, 137, 136, 136, 136, 137, 135]

def tailEnvelope0117ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![137, 133, 137, 136, 134, 135, 134, 135, 133]

def tailEnvelope0117ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![136, 133, 135, 135, 134, 135, 133, 135, 133]

theorem tailEnvelope0117ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0117FailureFibreExactThree
      tailEnvelope0117ThreeFibreTopOneThree
      tailEnvelope0117ThreeFibreTopTwoThree
      tailEnvelope0117ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0117ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8961793 9006601
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9006600 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0117FailureFibreExactOne
      tailEnvelope0117ThreeFibreTopOneOne tailEnvelope0117ThreeFibreTopTwoOne
      tailEnvelope0117ThreeFibreTopThreeOne
      (lower := 8961793) (upper := 9006600) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0117FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0117ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0117ThreeFibreTopOneOne,
        tailEnvelope0117ThreeFibreTopTwoOne, tailEnvelope0117ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0117FailureFibreExactThree
      tailEnvelope0117ThreeFibreTopOneThree tailEnvelope0117ThreeFibreTopTwoThree
      tailEnvelope0117ThreeFibreTopThreeThree
      (lower := 8961793) (upper := 9006600) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0117FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0117ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0117ThreeFibreTopOneThree,
        tailEnvelope0117ThreeFibreTopTwoThree, tailEnvelope0117ThreeFibreTopThreeThree])

def tailEnvelope0118ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![138, 141, 138, 138, 138, 138, 137, 139, 138]

def tailEnvelope0118ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![137, 136, 136, 138, 135, 136, 137, 136, 136]

def tailEnvelope0118ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![136, 136, 135, 137, 133, 136, 136, 136, 136]

theorem tailEnvelope0118ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0118FailureFibreExactOne
      tailEnvelope0118ThreeFibreTopOneOne
      tailEnvelope0118ThreeFibreTopTwoOne
      tailEnvelope0118ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0118ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![137, 137, 138, 137, 137, 138, 138, 138, 135]

def tailEnvelope0118ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![137, 134, 138, 137, 135, 137, 134, 136, 134]

def tailEnvelope0118ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![137, 134, 136, 136, 135, 136, 134, 136, 134]

theorem tailEnvelope0118ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0118FailureFibreExactThree
      tailEnvelope0118ThreeFibreTopOneThree
      tailEnvelope0118ThreeFibreTopTwoThree
      tailEnvelope0118ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0118ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9006601 9051634
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9051633 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0118FailureFibreExactOne
      tailEnvelope0118ThreeFibreTopOneOne tailEnvelope0118ThreeFibreTopTwoOne
      tailEnvelope0118ThreeFibreTopThreeOne
      (lower := 9006601) (upper := 9051633) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0118FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0118ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0118ThreeFibreTopOneOne,
        tailEnvelope0118ThreeFibreTopTwoOne, tailEnvelope0118ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0118FailureFibreExactThree
      tailEnvelope0118ThreeFibreTopOneThree tailEnvelope0118ThreeFibreTopTwoThree
      tailEnvelope0118ThreeFibreTopThreeThree
      (lower := 9006601) (upper := 9051633) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0118FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0118ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0118ThreeFibreTopOneThree,
        tailEnvelope0118ThreeFibreTopTwoThree, tailEnvelope0118ThreeFibreTopThreeThree])

def tailEnvelope0119ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![139, 142, 139, 140, 138, 139, 137, 139, 139]

def tailEnvelope0119ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![137, 137, 136, 138, 136, 138, 137, 136, 137]

def tailEnvelope0119ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![136, 136, 136, 137, 134, 137, 136, 136, 136]

theorem tailEnvelope0119ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0119FailureFibreExactOne
      tailEnvelope0119ThreeFibreTopOneOne
      tailEnvelope0119ThreeFibreTopTwoOne
      tailEnvelope0119ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0119ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![139, 137, 138, 138, 137, 138, 138, 138, 135]

def tailEnvelope0119ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![138, 135, 138, 137, 136, 137, 136, 137, 135]

def tailEnvelope0119ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![138, 134, 138, 137, 136, 137, 135, 136, 135]

theorem tailEnvelope0119ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0119FailureFibreExactThree
      tailEnvelope0119ThreeFibreTopOneThree
      tailEnvelope0119ThreeFibreTopTwoThree
      tailEnvelope0119ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0119ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9051634 9096892
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9096891 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0119FailureFibreExactOne
      tailEnvelope0119ThreeFibreTopOneOne tailEnvelope0119ThreeFibreTopTwoOne
      tailEnvelope0119ThreeFibreTopThreeOne
      (lower := 9051634) (upper := 9096891) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0119FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0119ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0119ThreeFibreTopOneOne,
        tailEnvelope0119ThreeFibreTopTwoOne, tailEnvelope0119ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0119FailureFibreExactThree
      tailEnvelope0119ThreeFibreTopOneThree tailEnvelope0119ThreeFibreTopTwoThree
      tailEnvelope0119ThreeFibreTopThreeThree
      (lower := 9051634) (upper := 9096891) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0119FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0119ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0119ThreeFibreTopOneThree,
        tailEnvelope0119ThreeFibreTopTwoThree, tailEnvelope0119ThreeFibreTopThreeThree])

def tailEnvelope0120ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![140, 142, 139, 141, 138, 140, 137, 139, 140]

def tailEnvelope0120ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![139, 138, 137, 138, 137, 139, 137, 137, 139]

def tailEnvelope0120ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![137, 137, 137, 137, 134, 138, 136, 137, 137]

theorem tailEnvelope0120ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0120FailureFibreExactOne
      tailEnvelope0120ThreeFibreTopOneOne
      tailEnvelope0120ThreeFibreTopTwoOne
      tailEnvelope0120ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0120ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![140, 137, 139, 139, 137, 138, 139, 138, 137]

def tailEnvelope0120ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![140, 136, 139, 138, 137, 138, 137, 137, 135]

def tailEnvelope0120ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![138, 136, 139, 138, 137, 138, 135, 137, 135]

theorem tailEnvelope0120ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0120FailureFibreExactThree
      tailEnvelope0120ThreeFibreTopOneThree
      tailEnvelope0120ThreeFibreTopTwoThree
      tailEnvelope0120ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0120ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9096892 9142376
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9142375 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0120FailureFibreExactOne
      tailEnvelope0120ThreeFibreTopOneOne tailEnvelope0120ThreeFibreTopTwoOne
      tailEnvelope0120ThreeFibreTopThreeOne
      (lower := 9096892) (upper := 9142375) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0120FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0120ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0120ThreeFibreTopOneOne,
        tailEnvelope0120ThreeFibreTopTwoOne, tailEnvelope0120ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0120FailureFibreExactThree
      tailEnvelope0120ThreeFibreTopOneThree tailEnvelope0120ThreeFibreTopTwoThree
      tailEnvelope0120ThreeFibreTopThreeThree
      (lower := 9096892) (upper := 9142375) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0120FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0120ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0120ThreeFibreTopOneThree,
        tailEnvelope0120ThreeFibreTopTwoThree, tailEnvelope0120ThreeFibreTopThreeThree])

def tailEnvelope0121ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![140, 142, 139, 141, 138, 143, 138, 140, 142]

def tailEnvelope0121ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![139, 140, 137, 138, 137, 141, 137, 137, 139]

def tailEnvelope0121ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![137, 138, 137, 137, 135, 139, 137, 137, 139]

theorem tailEnvelope0121ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0121FailureFibreExactOne
      tailEnvelope0121ThreeFibreTopOneOne
      tailEnvelope0121ThreeFibreTopTwoOne
      tailEnvelope0121ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0121ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![140, 138, 140, 139, 137, 139, 141, 138, 138]

def tailEnvelope0121ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![140, 137, 139, 139, 137, 138, 137, 137, 138]

def tailEnvelope0121ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![138, 136, 139, 138, 137, 138, 137, 137, 137]

theorem tailEnvelope0121ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0121FailureFibreExactThree
      tailEnvelope0121ThreeFibreTopOneThree
      tailEnvelope0121ThreeFibreTopTwoThree
      tailEnvelope0121ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0121ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9142376 9188087
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9188086 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0121FailureFibreExactOne
      tailEnvelope0121ThreeFibreTopOneOne tailEnvelope0121ThreeFibreTopTwoOne
      tailEnvelope0121ThreeFibreTopThreeOne
      (lower := 9142376) (upper := 9188086) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0121FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0121ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0121ThreeFibreTopOneOne,
        tailEnvelope0121ThreeFibreTopTwoOne, tailEnvelope0121ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0121FailureFibreExactThree
      tailEnvelope0121ThreeFibreTopOneThree tailEnvelope0121ThreeFibreTopTwoThree
      tailEnvelope0121ThreeFibreTopThreeThree
      (lower := 9142376) (upper := 9188086) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0121FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0121ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0121ThreeFibreTopOneThree,
        tailEnvelope0121ThreeFibreTopTwoThree, tailEnvelope0121ThreeFibreTopThreeThree])

def tailEnvelope0122ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![141, 142, 140, 141, 138, 144, 138, 141, 142]

def tailEnvelope0122ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![139, 140, 137, 140, 137, 142, 138, 139, 140]

def tailEnvelope0122ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![139, 138, 137, 140, 136, 139, 137, 137, 139]

theorem tailEnvelope0122ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0122FailureFibreExactOne
      tailEnvelope0122ThreeFibreTopOneOne
      tailEnvelope0122ThreeFibreTopTwoOne
      tailEnvelope0122ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0122ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![140, 140, 140, 140, 138, 140, 141, 139, 139]

def tailEnvelope0122ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![140, 137, 139, 139, 137, 139, 140, 138, 138]

def tailEnvelope0122ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![139, 137, 139, 138, 137, 138, 138, 137, 137]

theorem tailEnvelope0122ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0122FailureFibreExactThree
      tailEnvelope0122ThreeFibreTopOneThree
      tailEnvelope0122ThreeFibreTopTwoThree
      tailEnvelope0122ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0122ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9188087 9234027
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9234026 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0122FailureFibreExactOne
      tailEnvelope0122ThreeFibreTopOneOne tailEnvelope0122ThreeFibreTopTwoOne
      tailEnvelope0122ThreeFibreTopThreeOne
      (lower := 9188087) (upper := 9234026) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0122FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0122ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0122ThreeFibreTopOneOne,
        tailEnvelope0122ThreeFibreTopTwoOne, tailEnvelope0122ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0122FailureFibreExactThree
      tailEnvelope0122ThreeFibreTopOneThree tailEnvelope0122ThreeFibreTopTwoThree
      tailEnvelope0122ThreeFibreTopThreeThree
      (lower := 9188087) (upper := 9234026) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0122FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0122ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0122ThreeFibreTopOneThree,
        tailEnvelope0122ThreeFibreTopTwoThree, tailEnvelope0122ThreeFibreTopThreeThree])

def tailEnvelope0123ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![141, 143, 141, 142, 140, 144, 139, 143, 142]

def tailEnvelope0123ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![140, 141, 139, 141, 137, 142, 139, 140, 140]

def tailEnvelope0123ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![139, 139, 138, 140, 137, 140, 138, 139, 139]

theorem tailEnvelope0123ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0123FailureFibreExactOne
      tailEnvelope0123ThreeFibreTopOneOne
      tailEnvelope0123ThreeFibreTopTwoOne
      tailEnvelope0123ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0123ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![141, 141, 141, 140, 140, 141, 142, 141, 141]

def tailEnvelope0123ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![141, 138, 140, 140, 138, 140, 141, 139, 138]

def tailEnvelope0123ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![140, 138, 139, 139, 138, 139, 138, 138, 138]

theorem tailEnvelope0123ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0123FailureFibreExactThree
      tailEnvelope0123ThreeFibreTopOneThree
      tailEnvelope0123ThreeFibreTopTwoThree
      tailEnvelope0123ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0123ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9234027 9280197
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9280196 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0123FailureFibreExactOne
      tailEnvelope0123ThreeFibreTopOneOne tailEnvelope0123ThreeFibreTopTwoOne
      tailEnvelope0123ThreeFibreTopThreeOne
      (lower := 9234027) (upper := 9280196) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0123FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0123ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0123ThreeFibreTopOneOne,
        tailEnvelope0123ThreeFibreTopTwoOne, tailEnvelope0123ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0123FailureFibreExactThree
      tailEnvelope0123ThreeFibreTopOneThree tailEnvelope0123ThreeFibreTopTwoThree
      tailEnvelope0123ThreeFibreTopThreeThree
      (lower := 9234027) (upper := 9280196) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0123FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0123ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0123ThreeFibreTopOneThree,
        tailEnvelope0123ThreeFibreTopTwoThree, tailEnvelope0123ThreeFibreTopThreeThree])

def tailEnvelope0124ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![141, 143, 141, 143, 141, 144, 141, 144, 143]

def tailEnvelope0124ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![140, 141, 139, 142, 139, 142, 139, 141, 141]

def tailEnvelope0124ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![139, 140, 138, 141, 138, 141, 139, 139, 141]

theorem tailEnvelope0124ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0124FailureFibreExactOne
      tailEnvelope0124ThreeFibreTopOneOne
      tailEnvelope0124ThreeFibreTopTwoOne
      tailEnvelope0124ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0124ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![144, 141, 143, 141, 140, 141, 143, 142, 141]

def tailEnvelope0124ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![143, 138, 141, 141, 139, 140, 141, 139, 138]

def tailEnvelope0124ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![141, 138, 140, 140, 138, 140, 141, 139, 138]

theorem tailEnvelope0124ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0124FailureFibreExactThree
      tailEnvelope0124ThreeFibreTopOneThree
      tailEnvelope0124ThreeFibreTopTwoThree
      tailEnvelope0124ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0124ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9280197 9326597
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9326596 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0124FailureFibreExactOne
      tailEnvelope0124ThreeFibreTopOneOne tailEnvelope0124ThreeFibreTopTwoOne
      tailEnvelope0124ThreeFibreTopThreeOne
      (lower := 9280197) (upper := 9326596) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0124FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0124ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0124ThreeFibreTopOneOne,
        tailEnvelope0124ThreeFibreTopTwoOne, tailEnvelope0124ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0124FailureFibreExactThree
      tailEnvelope0124ThreeFibreTopOneThree tailEnvelope0124ThreeFibreTopTwoThree
      tailEnvelope0124ThreeFibreTopThreeThree
      (lower := 9280197) (upper := 9326596) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0124FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0124ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0124ThreeFibreTopOneThree,
        tailEnvelope0124ThreeFibreTopTwoThree, tailEnvelope0124ThreeFibreTopThreeThree])

def tailEnvelope0125ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![142, 144, 142, 145, 142, 145, 142, 144, 144]

def tailEnvelope0125ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![141, 141, 141, 144, 140, 144, 142, 141, 141]

def tailEnvelope0125ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![140, 140, 139, 142, 139, 144, 139, 141, 141]

theorem tailEnvelope0125ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0125FailureFibreExactOne
      tailEnvelope0125ThreeFibreTopOneOne
      tailEnvelope0125ThreeFibreTopTwoOne
      tailEnvelope0125ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0125ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![144, 141, 144, 142, 140, 142, 144, 142, 141]

def tailEnvelope0125ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![143, 139, 142, 141, 140, 141, 141, 140, 139]

def tailEnvelope0125ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![142, 139, 141, 141, 139, 141, 141, 140, 139]

theorem tailEnvelope0125ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0125FailureFibreExactThree
      tailEnvelope0125ThreeFibreTopOneThree
      tailEnvelope0125ThreeFibreTopTwoThree
      tailEnvelope0125ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0125ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9326597 9373229
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9373228 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0125FailureFibreExactOne
      tailEnvelope0125ThreeFibreTopOneOne tailEnvelope0125ThreeFibreTopTwoOne
      tailEnvelope0125ThreeFibreTopThreeOne
      (lower := 9326597) (upper := 9373228) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0125FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0125ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0125ThreeFibreTopOneOne,
        tailEnvelope0125ThreeFibreTopTwoOne, tailEnvelope0125ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0125FailureFibreExactThree
      tailEnvelope0125ThreeFibreTopOneThree tailEnvelope0125ThreeFibreTopTwoThree
      tailEnvelope0125ThreeFibreTopThreeThree
      (lower := 9326597) (upper := 9373228) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0125FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0125ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0125ThreeFibreTopOneThree,
        tailEnvelope0125ThreeFibreTopTwoThree, tailEnvelope0125ThreeFibreTopThreeThree])

def tailEnvelope0126ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![143, 145, 143, 145, 142, 146, 142, 144, 144]

def tailEnvelope0126ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![143, 141, 141, 144, 140, 145, 142, 142, 142]

def tailEnvelope0126ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![141, 140, 139, 142, 140, 144, 139, 141, 142]

theorem tailEnvelope0126ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0126FailureFibreExactOne
      tailEnvelope0126ThreeFibreTopOneOne
      tailEnvelope0126ThreeFibreTopTwoOne
      tailEnvelope0126ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0126ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![144, 142, 144, 142, 140, 143, 146, 142, 141]

def tailEnvelope0126ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![143, 141, 142, 142, 140, 142, 141, 140, 141]

def tailEnvelope0126ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![142, 140, 142, 141, 140, 142, 141, 140, 141]

theorem tailEnvelope0126ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0126FailureFibreExactThree
      tailEnvelope0126ThreeFibreTopOneThree
      tailEnvelope0126ThreeFibreTopTwoThree
      tailEnvelope0126ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0126ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9373229 9420095
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9420094 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0126FailureFibreExactOne
      tailEnvelope0126ThreeFibreTopOneOne tailEnvelope0126ThreeFibreTopTwoOne
      tailEnvelope0126ThreeFibreTopThreeOne
      (lower := 9373229) (upper := 9420094) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0126FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0126ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0126ThreeFibreTopOneOne,
        tailEnvelope0126ThreeFibreTopTwoOne, tailEnvelope0126ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0126FailureFibreExactThree
      tailEnvelope0126ThreeFibreTopOneThree tailEnvelope0126ThreeFibreTopTwoThree
      tailEnvelope0126ThreeFibreTopThreeThree
      (lower := 9373229) (upper := 9420094) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0126FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0126ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0126ThreeFibreTopOneThree,
        tailEnvelope0126ThreeFibreTopTwoThree, tailEnvelope0126ThreeFibreTopThreeThree])

def tailEnvelope0127ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![143, 145, 144, 146, 143, 148, 142, 145, 145]

def tailEnvelope0127ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![143, 142, 142, 145, 140, 146, 142, 144, 143]

def tailEnvelope0127ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![142, 141, 140, 142, 140, 144, 141, 142, 142]

theorem tailEnvelope0127ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0127FailureFibreExactOne
      tailEnvelope0127ThreeFibreTopOneOne
      tailEnvelope0127ThreeFibreTopTwoOne
      tailEnvelope0127ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0127ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![144, 143, 144, 142, 141, 144, 146, 142, 141]

def tailEnvelope0127ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![143, 141, 144, 142, 141, 142, 142, 142, 141]

def tailEnvelope0127ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![142, 141, 142, 141, 140, 142, 141, 140, 141]

theorem tailEnvelope0127ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0127FailureFibreExactThree
      tailEnvelope0127ThreeFibreTopOneThree
      tailEnvelope0127ThreeFibreTopTwoThree
      tailEnvelope0127ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0127ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9420095 9467195
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9467194 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0127FailureFibreExactOne
      tailEnvelope0127ThreeFibreTopOneOne tailEnvelope0127ThreeFibreTopTwoOne
      tailEnvelope0127ThreeFibreTopThreeOne
      (lower := 9420095) (upper := 9467194) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0127FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0127ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0127ThreeFibreTopOneOne,
        tailEnvelope0127ThreeFibreTopTwoOne, tailEnvelope0127ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0127FailureFibreExactThree
      tailEnvelope0127ThreeFibreTopOneThree tailEnvelope0127ThreeFibreTopTwoThree
      tailEnvelope0127ThreeFibreTopThreeThree
      (lower := 9420095) (upper := 9467194) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0127FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0127ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0127ThreeFibreTopOneThree,
        tailEnvelope0127ThreeFibreTopTwoThree, tailEnvelope0127ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
