import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0003
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0048ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![98, 101, 99, 100, 99, 102, 99, 100, 98]

def tailEnvelope0048ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![97, 100, 99, 99, 98, 97, 98, 98, 97]

def tailEnvelope0048ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![97, 98, 99, 97, 96, 97, 97, 98, 97]

theorem tailEnvelope0048ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0048FailureFibreExactOne
      tailEnvelope0048ThreeFibreTopOneOne
      tailEnvelope0048ThreeFibreTopTwoOne
      tailEnvelope0048ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0048ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![100, 101, 99, 100, 98, 99, 101, 100, 98]

def tailEnvelope0048ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![99, 100, 98, 98, 97, 97, 97, 98, 96]

def tailEnvelope0048ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 96, 98, 98, 95, 97, 97, 97, 95]

theorem tailEnvelope0048ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0048FailureFibreExactThree
      tailEnvelope0048ThreeFibreTopOneThree
      tailEnvelope0048ThreeFibreTopTwoThree
      tailEnvelope0048ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0048ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6352415 6384177
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6384176 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0048FailureFibreExactOne
      tailEnvelope0048ThreeFibreTopOneOne tailEnvelope0048ThreeFibreTopTwoOne
      tailEnvelope0048ThreeFibreTopThreeOne
      (lower := 6352415) (upper := 6384176) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0048FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0048ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0048ThreeFibreTopOneOne,
        tailEnvelope0048ThreeFibreTopTwoOne, tailEnvelope0048ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0048FailureFibreExactThree
      tailEnvelope0048ThreeFibreTopOneThree tailEnvelope0048ThreeFibreTopTwoThree
      tailEnvelope0048ThreeFibreTopThreeThree
      (lower := 6352415) (upper := 6384176) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0048FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0048ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0048ThreeFibreTopOneThree,
        tailEnvelope0048ThreeFibreTopTwoThree, tailEnvelope0048ThreeFibreTopThreeThree])

def tailEnvelope0049ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![101, 101, 100, 100, 101, 102, 99, 100, 98]

def tailEnvelope0049ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![97, 100, 99, 100, 99, 97, 98, 100, 98]

def tailEnvelope0049ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![97, 100, 99, 99, 97, 97, 98, 99, 98]

theorem tailEnvelope0049ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0049FailureFibreExactOne
      tailEnvelope0049ThreeFibreTopOneOne
      tailEnvelope0049ThreeFibreTopTwoOne
      tailEnvelope0049ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0049ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![101, 101, 99, 101, 98, 100, 101, 101, 98]

def tailEnvelope0049ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![99, 100, 99, 98, 97, 99, 99, 98, 97]

def tailEnvelope0049ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 97, 99, 98, 96, 98, 98, 97, 95]

theorem tailEnvelope0049ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0049FailureFibreExactThree
      tailEnvelope0049ThreeFibreTopOneThree
      tailEnvelope0049ThreeFibreTopTwoThree
      tailEnvelope0049ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0049ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6384177 6416097
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6416096 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0049FailureFibreExactOne
      tailEnvelope0049ThreeFibreTopOneOne tailEnvelope0049ThreeFibreTopTwoOne
      tailEnvelope0049ThreeFibreTopThreeOne
      (lower := 6384177) (upper := 6416096) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0049FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0049ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0049ThreeFibreTopOneOne,
        tailEnvelope0049ThreeFibreTopTwoOne, tailEnvelope0049ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0049FailureFibreExactThree
      tailEnvelope0049ThreeFibreTopOneThree tailEnvelope0049ThreeFibreTopTwoThree
      tailEnvelope0049ThreeFibreTopThreeThree
      (lower := 6384177) (upper := 6416096) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0049FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0049ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0049ThreeFibreTopOneThree,
        tailEnvelope0049ThreeFibreTopTwoThree, tailEnvelope0049ThreeFibreTopThreeThree])

def tailEnvelope0050ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![102, 101, 100, 101, 101, 102, 100, 100, 98]

def tailEnvelope0050ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![98, 101, 99, 100, 99, 98, 98, 100, 98]

def tailEnvelope0050ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![97, 100, 99, 99, 97, 98, 98, 100, 98]

theorem tailEnvelope0050ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0050FailureFibreExactOne
      tailEnvelope0050ThreeFibreTopOneOne
      tailEnvelope0050ThreeFibreTopTwoOne
      tailEnvelope0050ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0050ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![101, 101, 100, 101, 99, 100, 101, 102, 99]

def tailEnvelope0050ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![99, 100, 99, 100, 97, 100, 100, 99, 97]

def tailEnvelope0050ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 98, 99, 98, 96, 99, 98, 98, 96]

theorem tailEnvelope0050ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0050FailureFibreExactThree
      tailEnvelope0050ThreeFibreTopOneThree
      tailEnvelope0050ThreeFibreTopTwoThree
      tailEnvelope0050ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0050ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6416097 6448177
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6448176 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0050FailureFibreExactOne
      tailEnvelope0050ThreeFibreTopOneOne tailEnvelope0050ThreeFibreTopTwoOne
      tailEnvelope0050ThreeFibreTopThreeOne
      (lower := 6416097) (upper := 6448176) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0050FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0050ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0050ThreeFibreTopOneOne,
        tailEnvelope0050ThreeFibreTopTwoOne, tailEnvelope0050ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0050FailureFibreExactThree
      tailEnvelope0050ThreeFibreTopOneThree tailEnvelope0050ThreeFibreTopTwoThree
      tailEnvelope0050ThreeFibreTopThreeThree
      (lower := 6416097) (upper := 6448176) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0050FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0050ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0050ThreeFibreTopOneThree,
        tailEnvelope0050ThreeFibreTopTwoThree, tailEnvelope0050ThreeFibreTopThreeThree])

def tailEnvelope0051ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![102, 102, 101, 101, 101, 102, 100, 103, 99]

def tailEnvelope0051ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![99, 101, 99, 100, 99, 99, 99, 100, 98]

def tailEnvelope0051ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![97, 101, 99, 99, 97, 98, 98, 100, 98]

theorem tailEnvelope0051ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0051FailureFibreExactOne
      tailEnvelope0051ThreeFibreTopOneOne
      tailEnvelope0051ThreeFibreTopTwoOne
      tailEnvelope0051ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0051ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![101, 101, 100, 101, 99, 100, 101, 102, 99]

def tailEnvelope0051ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![100, 100, 99, 100, 97, 100, 100, 99, 97]

def tailEnvelope0051ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 99, 99, 99, 96, 99, 99, 99, 96]

theorem tailEnvelope0051ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0051FailureFibreExactThree
      tailEnvelope0051ThreeFibreTopOneThree
      tailEnvelope0051ThreeFibreTopTwoThree
      tailEnvelope0051ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0051ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6448177 6480417
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6480416 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0051FailureFibreExactOne
      tailEnvelope0051ThreeFibreTopOneOne tailEnvelope0051ThreeFibreTopTwoOne
      tailEnvelope0051ThreeFibreTopThreeOne
      (lower := 6448177) (upper := 6480416) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0051FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0051ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0051ThreeFibreTopOneOne,
        tailEnvelope0051ThreeFibreTopTwoOne, tailEnvelope0051ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0051FailureFibreExactThree
      tailEnvelope0051ThreeFibreTopOneThree tailEnvelope0051ThreeFibreTopTwoThree
      tailEnvelope0051ThreeFibreTopThreeThree
      (lower := 6448177) (upper := 6480416) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0051FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0051ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0051ThreeFibreTopOneThree,
        tailEnvelope0051ThreeFibreTopTwoThree, tailEnvelope0051ThreeFibreTopThreeThree])

def tailEnvelope0052ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![102, 102, 101, 102, 101, 102, 100, 103, 99]

def tailEnvelope0052ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![99, 101, 99, 100, 100, 99, 99, 102, 99]

def tailEnvelope0052ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![98, 101, 99, 99, 98, 98, 98, 100, 99]

theorem tailEnvelope0052ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0052FailureFibreExactOne
      tailEnvelope0052ThreeFibreTopOneOne
      tailEnvelope0052ThreeFibreTopTwoOne
      tailEnvelope0052ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0052ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![101, 101, 100, 101, 99, 100, 101, 103, 100]

def tailEnvelope0052ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![100, 100, 100, 100, 97, 100, 100, 99, 97]

def tailEnvelope0052ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 100, 99, 100, 97, 99, 99, 99, 97]

theorem tailEnvelope0052ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0052FailureFibreExactThree
      tailEnvelope0052ThreeFibreTopOneThree
      tailEnvelope0052ThreeFibreTopTwoThree
      tailEnvelope0052ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0052ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6480417 6512819
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6512818 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0052FailureFibreExactOne
      tailEnvelope0052ThreeFibreTopOneOne tailEnvelope0052ThreeFibreTopTwoOne
      tailEnvelope0052ThreeFibreTopThreeOne
      (lower := 6480417) (upper := 6512818) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0052FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0052ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0052ThreeFibreTopOneOne,
        tailEnvelope0052ThreeFibreTopTwoOne, tailEnvelope0052ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0052FailureFibreExactThree
      tailEnvelope0052ThreeFibreTopOneThree tailEnvelope0052ThreeFibreTopTwoThree
      tailEnvelope0052ThreeFibreTopThreeThree
      (lower := 6480417) (upper := 6512818) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0052FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0052ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0052ThreeFibreTopOneThree,
        tailEnvelope0052ThreeFibreTopTwoThree, tailEnvelope0052ThreeFibreTopThreeThree])

def tailEnvelope0053ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![103, 102, 101, 102, 101, 102, 100, 104, 99]

def tailEnvelope0053ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![99, 102, 99, 100, 100, 99, 99, 102, 99]

def tailEnvelope0053ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![98, 101, 99, 99, 98, 99, 99, 100, 99]

theorem tailEnvelope0053ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0053FailureFibreExactOne
      tailEnvelope0053ThreeFibreTopOneOne
      tailEnvelope0053ThreeFibreTopTwoOne
      tailEnvelope0053ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0053ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![102, 101, 100, 101, 99, 100, 101, 103, 101]

def tailEnvelope0053ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![101, 100, 100, 101, 97, 100, 100, 100, 98]

def tailEnvelope0053ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![99, 100, 100, 100, 97, 99, 99, 99, 97]

theorem tailEnvelope0053ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0053FailureFibreExactThree
      tailEnvelope0053ThreeFibreTopOneThree
      tailEnvelope0053ThreeFibreTopTwoThree
      tailEnvelope0053ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0053ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6512819 6545383
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6545382 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0053FailureFibreExactOne
      tailEnvelope0053ThreeFibreTopOneOne tailEnvelope0053ThreeFibreTopTwoOne
      tailEnvelope0053ThreeFibreTopThreeOne
      (lower := 6512819) (upper := 6545382) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0053FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0053ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0053ThreeFibreTopOneOne,
        tailEnvelope0053ThreeFibreTopTwoOne, tailEnvelope0053ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0053FailureFibreExactThree
      tailEnvelope0053ThreeFibreTopOneThree tailEnvelope0053ThreeFibreTopTwoThree
      tailEnvelope0053ThreeFibreTopThreeThree
      (lower := 6512819) (upper := 6545382) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0053FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0053ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0053ThreeFibreTopOneThree,
        tailEnvelope0053ThreeFibreTopTwoThree, tailEnvelope0053ThreeFibreTopThreeThree])

def tailEnvelope0054ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![103, 102, 101, 102, 101, 102, 101, 104, 100]

def tailEnvelope0054ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![99, 102, 100, 101, 101, 100, 100, 103, 99]

def tailEnvelope0054ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![99, 101, 100, 99, 100, 100, 100, 100, 99]

theorem tailEnvelope0054ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0054FailureFibreExactOne
      tailEnvelope0054ThreeFibreTopOneOne
      tailEnvelope0054ThreeFibreTopTwoOne
      tailEnvelope0054ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0054ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![102, 103, 100, 102, 99, 100, 101, 103, 101]

def tailEnvelope0054ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![101, 101, 100, 102, 98, 100, 101, 101, 98]

def tailEnvelope0054ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![100, 101, 100, 102, 98, 99, 100, 99, 98]

theorem tailEnvelope0054ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0054FailureFibreExactThree
      tailEnvelope0054ThreeFibreTopOneThree
      tailEnvelope0054ThreeFibreTopTwoThree
      tailEnvelope0054ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0054ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6545383 6578109
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6578108 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0054FailureFibreExactOne
      tailEnvelope0054ThreeFibreTopOneOne tailEnvelope0054ThreeFibreTopTwoOne
      tailEnvelope0054ThreeFibreTopThreeOne
      (lower := 6545383) (upper := 6578108) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0054FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0054ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0054ThreeFibreTopOneOne,
        tailEnvelope0054ThreeFibreTopTwoOne, tailEnvelope0054ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0054FailureFibreExactThree
      tailEnvelope0054ThreeFibreTopOneThree tailEnvelope0054ThreeFibreTopTwoThree
      tailEnvelope0054ThreeFibreTopThreeThree
      (lower := 6545383) (upper := 6578108) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0054FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0054ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0054ThreeFibreTopOneThree,
        tailEnvelope0054ThreeFibreTopTwoThree, tailEnvelope0054ThreeFibreTopThreeThree])

def tailEnvelope0055ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![103, 103, 102, 104, 102, 103, 101, 104, 101]

def tailEnvelope0055ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![100, 102, 101, 102, 101, 101, 101, 103, 100]

def tailEnvelope0055ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![99, 102, 101, 100, 101, 100, 100, 100, 100]

theorem tailEnvelope0055ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0055FailureFibreExactOne
      tailEnvelope0055ThreeFibreTopOneOne
      tailEnvelope0055ThreeFibreTopTwoOne
      tailEnvelope0055ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0055ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![102, 104, 103, 102, 101, 102, 102, 103, 102]

def tailEnvelope0055ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![102, 101, 101, 102, 100, 101, 102, 101, 99]

def tailEnvelope0055ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![100, 101, 100, 102, 99, 100, 101, 100, 98]

theorem tailEnvelope0055ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0055FailureFibreExactThree
      tailEnvelope0055ThreeFibreTopOneThree
      tailEnvelope0055ThreeFibreTopTwoThree
      tailEnvelope0055ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0055ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6578109 6610999
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6610998 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0055FailureFibreExactOne
      tailEnvelope0055ThreeFibreTopOneOne tailEnvelope0055ThreeFibreTopTwoOne
      tailEnvelope0055ThreeFibreTopThreeOne
      (lower := 6578109) (upper := 6610998) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0055FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0055ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0055ThreeFibreTopOneOne,
        tailEnvelope0055ThreeFibreTopTwoOne, tailEnvelope0055ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0055FailureFibreExactThree
      tailEnvelope0055ThreeFibreTopOneThree tailEnvelope0055ThreeFibreTopTwoThree
      tailEnvelope0055ThreeFibreTopThreeThree
      (lower := 6578109) (upper := 6610998) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0055FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0055ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0055ThreeFibreTopOneThree,
        tailEnvelope0055ThreeFibreTopTwoThree, tailEnvelope0055ThreeFibreTopThreeThree])

def tailEnvelope0056ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![104, 103, 103, 104, 102, 103, 102, 105, 102]

def tailEnvelope0056ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![101, 103, 102, 102, 101, 101, 101, 103, 101]

def tailEnvelope0056ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![99, 103, 101, 101, 101, 101, 101, 101, 100]

theorem tailEnvelope0056ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0056FailureFibreExactOne
      tailEnvelope0056ThreeFibreTopOneOne
      tailEnvelope0056ThreeFibreTopTwoOne
      tailEnvelope0056ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0056ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![103, 104, 103, 104, 101, 102, 102, 104, 102]

def tailEnvelope0056ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![102, 102, 101, 103, 100, 102, 102, 101, 99]

def tailEnvelope0056ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![102, 101, 101, 102, 99, 101, 101, 100, 99]

theorem tailEnvelope0056ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0056FailureFibreExactThree
      tailEnvelope0056ThreeFibreTopOneThree
      tailEnvelope0056ThreeFibreTopTwoThree
      tailEnvelope0056ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0056ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6610999 6644053
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6644052 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0056FailureFibreExactOne
      tailEnvelope0056ThreeFibreTopOneOne tailEnvelope0056ThreeFibreTopTwoOne
      tailEnvelope0056ThreeFibreTopThreeOne
      (lower := 6610999) (upper := 6644052) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0056FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0056ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0056ThreeFibreTopOneOne,
        tailEnvelope0056ThreeFibreTopTwoOne, tailEnvelope0056ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0056FailureFibreExactThree
      tailEnvelope0056ThreeFibreTopOneThree tailEnvelope0056ThreeFibreTopTwoThree
      tailEnvelope0056ThreeFibreTopThreeThree
      (lower := 6610999) (upper := 6644052) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0056FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0056ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0056ThreeFibreTopOneThree,
        tailEnvelope0056ThreeFibreTopTwoThree, tailEnvelope0056ThreeFibreTopThreeThree])

def tailEnvelope0057ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![104, 104, 104, 104, 103, 104, 103, 105, 103]

def tailEnvelope0057ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![101, 104, 103, 103, 102, 102, 102, 104, 101]

def tailEnvelope0057ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![100, 103, 102, 102, 101, 102, 101, 101, 101]

theorem tailEnvelope0057ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0057FailureFibreExactOne
      tailEnvelope0057ThreeFibreTopOneOne
      tailEnvelope0057ThreeFibreTopTwoOne
      tailEnvelope0057ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0057ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![105, 105, 103, 104, 103, 105, 103, 104, 103]

def tailEnvelope0057ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![102, 102, 101, 103, 100, 103, 102, 102, 100]

def tailEnvelope0057ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![102, 101, 101, 102, 99, 102, 102, 101, 99]

theorem tailEnvelope0057ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0057FailureFibreExactThree
      tailEnvelope0057ThreeFibreTopOneThree
      tailEnvelope0057ThreeFibreTopTwoThree
      tailEnvelope0057ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0057ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6644053 6677273
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6677272 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0057FailureFibreExactOne
      tailEnvelope0057ThreeFibreTopOneOne tailEnvelope0057ThreeFibreTopTwoOne
      tailEnvelope0057ThreeFibreTopThreeOne
      (lower := 6644053) (upper := 6677272) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0057FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0057ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0057ThreeFibreTopOneOne,
        tailEnvelope0057ThreeFibreTopTwoOne, tailEnvelope0057ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0057FailureFibreExactThree
      tailEnvelope0057ThreeFibreTopOneThree tailEnvelope0057ThreeFibreTopTwoThree
      tailEnvelope0057ThreeFibreTopThreeThree
      (lower := 6644053) (upper := 6677272) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0057FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0057ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0057ThreeFibreTopOneThree,
        tailEnvelope0057ThreeFibreTopTwoThree, tailEnvelope0057ThreeFibreTopThreeThree])

def tailEnvelope0058ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![105, 105, 104, 105, 103, 104, 103, 108, 103]

def tailEnvelope0058ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![101, 104, 103, 105, 103, 102, 102, 105, 102]

def tailEnvelope0058ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![101, 104, 103, 102, 102, 102, 102, 102, 101]

theorem tailEnvelope0058ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0058FailureFibreExactOne
      tailEnvelope0058ThreeFibreTopOneOne
      tailEnvelope0058ThreeFibreTopTwoOne
      tailEnvelope0058ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0058ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![105, 105, 105, 106, 103, 105, 106, 107, 103]

def tailEnvelope0058ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![102, 102, 102, 103, 100, 104, 103, 102, 101]

def tailEnvelope0058ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![102, 101, 102, 103, 100, 103, 103, 101, 100]

theorem tailEnvelope0058ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0058FailureFibreExactThree
      tailEnvelope0058ThreeFibreTopOneThree
      tailEnvelope0058ThreeFibreTopTwoThree
      tailEnvelope0058ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0058ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6677273 6710659
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6710658 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0058FailureFibreExactOne
      tailEnvelope0058ThreeFibreTopOneOne tailEnvelope0058ThreeFibreTopTwoOne
      tailEnvelope0058ThreeFibreTopThreeOne
      (lower := 6677273) (upper := 6710658) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0058FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0058ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0058ThreeFibreTopOneOne,
        tailEnvelope0058ThreeFibreTopTwoOne, tailEnvelope0058ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0058FailureFibreExactThree
      tailEnvelope0058ThreeFibreTopOneThree tailEnvelope0058ThreeFibreTopTwoThree
      tailEnvelope0058ThreeFibreTopThreeThree
      (lower := 6677273) (upper := 6710658) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0058FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0058ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0058ThreeFibreTopOneThree,
        tailEnvelope0058ThreeFibreTopTwoThree, tailEnvelope0058ThreeFibreTopThreeThree])

def tailEnvelope0059ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![105, 105, 104, 105, 104, 104, 104, 108, 104]

def tailEnvelope0059ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![101, 104, 103, 105, 103, 103, 102, 105, 103]

def tailEnvelope0059ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![101, 104, 103, 103, 102, 102, 102, 102, 102]

theorem tailEnvelope0059ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0059FailureFibreExactOne
      tailEnvelope0059ThreeFibreTopOneOne
      tailEnvelope0059ThreeFibreTopTwoOne
      tailEnvelope0059ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0059ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![107, 105, 105, 106, 103, 105, 106, 107, 103]

def tailEnvelope0059ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![102, 103, 102, 105, 101, 105, 104, 103, 102]

def tailEnvelope0059ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![102, 102, 102, 103, 101, 103, 103, 102, 101]

theorem tailEnvelope0059ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0059FailureFibreExactThree
      tailEnvelope0059ThreeFibreTopOneThree
      tailEnvelope0059ThreeFibreTopTwoThree
      tailEnvelope0059ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0059ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6710659 6744212
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6744211 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0059FailureFibreExactOne
      tailEnvelope0059ThreeFibreTopOneOne tailEnvelope0059ThreeFibreTopTwoOne
      tailEnvelope0059ThreeFibreTopThreeOne
      (lower := 6710659) (upper := 6744211) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0059FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0059ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0059ThreeFibreTopOneOne,
        tailEnvelope0059ThreeFibreTopTwoOne, tailEnvelope0059ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0059FailureFibreExactThree
      tailEnvelope0059ThreeFibreTopOneThree tailEnvelope0059ThreeFibreTopTwoThree
      tailEnvelope0059ThreeFibreTopThreeThree
      (lower := 6710659) (upper := 6744211) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0059FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0059ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0059ThreeFibreTopOneThree,
        tailEnvelope0059ThreeFibreTopTwoThree, tailEnvelope0059ThreeFibreTopThreeThree])

def tailEnvelope0060ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![105, 105, 104, 107, 105, 104, 104, 108, 104]

def tailEnvelope0060ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![102, 104, 103, 105, 103, 103, 103, 106, 104]

def tailEnvelope0060ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![101, 104, 103, 104, 102, 103, 102, 102, 102]

theorem tailEnvelope0060ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0060FailureFibreExactOne
      tailEnvelope0060ThreeFibreTopOneOne
      tailEnvelope0060ThreeFibreTopTwoOne
      tailEnvelope0060ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0060ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![107, 105, 105, 106, 104, 105, 106, 107, 103]

def tailEnvelope0060ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![103, 104, 103, 106, 101, 105, 105, 104, 102]

def tailEnvelope0060ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![103, 102, 102, 103, 101, 103, 103, 102, 101]

theorem tailEnvelope0060ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0060FailureFibreExactThree
      tailEnvelope0060ThreeFibreTopOneThree
      tailEnvelope0060ThreeFibreTopTwoThree
      tailEnvelope0060ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0060ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6744212 6777933
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6777932 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0060FailureFibreExactOne
      tailEnvelope0060ThreeFibreTopOneOne tailEnvelope0060ThreeFibreTopTwoOne
      tailEnvelope0060ThreeFibreTopThreeOne
      (lower := 6744212) (upper := 6777932) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0060FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0060ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0060ThreeFibreTopOneOne,
        tailEnvelope0060ThreeFibreTopTwoOne, tailEnvelope0060ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0060FailureFibreExactThree
      tailEnvelope0060ThreeFibreTopOneThree tailEnvelope0060ThreeFibreTopTwoThree
      tailEnvelope0060ThreeFibreTopThreeThree
      (lower := 6744212) (upper := 6777932) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0060FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0060ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0060ThreeFibreTopOneThree,
        tailEnvelope0060ThreeFibreTopTwoThree, tailEnvelope0060ThreeFibreTopThreeThree])

def tailEnvelope0061ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![105, 105, 104, 108, 105, 106, 104, 109, 105]

def tailEnvelope0061ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![103, 104, 104, 105, 103, 104, 103, 107, 105]

def tailEnvelope0061ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![102, 104, 103, 104, 103, 103, 103, 102, 103]

theorem tailEnvelope0061ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0061FailureFibreExactOne
      tailEnvelope0061ThreeFibreTopOneOne
      tailEnvelope0061ThreeFibreTopTwoOne
      tailEnvelope0061ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0061ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![107, 106, 105, 106, 104, 105, 106, 107, 103]

def tailEnvelope0061ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![103, 105, 104, 106, 102, 105, 105, 105, 103]

def tailEnvelope0061ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![103, 103, 103, 104, 102, 104, 104, 103, 102]

theorem tailEnvelope0061ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0061FailureFibreExactThree
      tailEnvelope0061ThreeFibreTopOneThree
      tailEnvelope0061ThreeFibreTopTwoThree
      tailEnvelope0061ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0061ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6777933 6811822
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6811821 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0061FailureFibreExactOne
      tailEnvelope0061ThreeFibreTopOneOne tailEnvelope0061ThreeFibreTopTwoOne
      tailEnvelope0061ThreeFibreTopThreeOne
      (lower := 6777933) (upper := 6811821) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0061FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0061ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0061ThreeFibreTopOneOne,
        tailEnvelope0061ThreeFibreTopTwoOne, tailEnvelope0061ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0061FailureFibreExactThree
      tailEnvelope0061ThreeFibreTopOneThree tailEnvelope0061ThreeFibreTopTwoThree
      tailEnvelope0061ThreeFibreTopThreeThree
      (lower := 6777933) (upper := 6811821) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0061FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0061ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0061ThreeFibreTopOneThree,
        tailEnvelope0061ThreeFibreTopTwoThree, tailEnvelope0061ThreeFibreTopThreeThree])

def tailEnvelope0062ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![106, 105, 104, 108, 105, 106, 104, 109, 105]

def tailEnvelope0062ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![104, 104, 104, 105, 103, 105, 104, 107, 105]

def tailEnvelope0062ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![102, 104, 103, 104, 103, 104, 103, 103, 103]

theorem tailEnvelope0062ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0062FailureFibreExactOne
      tailEnvelope0062ThreeFibreTopOneOne
      tailEnvelope0062ThreeFibreTopTwoOne
      tailEnvelope0062ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0062ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![108, 106, 105, 107, 104, 105, 106, 107, 103]

def tailEnvelope0062ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![103, 105, 104, 106, 103, 105, 105, 105, 103]

def tailEnvelope0062ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![103, 103, 103, 104, 102, 104, 104, 104, 102]

theorem tailEnvelope0062ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0062FailureFibreExactThree
      tailEnvelope0062ThreeFibreTopOneThree
      tailEnvelope0062ThreeFibreTopTwoThree
      tailEnvelope0062ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0062ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6811822 6845881
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6845880 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0062FailureFibreExactOne
      tailEnvelope0062ThreeFibreTopOneOne tailEnvelope0062ThreeFibreTopTwoOne
      tailEnvelope0062ThreeFibreTopThreeOne
      (lower := 6811822) (upper := 6845880) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0062FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0062ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0062ThreeFibreTopOneOne,
        tailEnvelope0062ThreeFibreTopTwoOne, tailEnvelope0062ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0062FailureFibreExactThree
      tailEnvelope0062ThreeFibreTopOneThree tailEnvelope0062ThreeFibreTopTwoThree
      tailEnvelope0062ThreeFibreTopThreeThree
      (lower := 6811822) (upper := 6845880) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0062FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0062ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0062ThreeFibreTopOneThree,
        tailEnvelope0062ThreeFibreTopTwoThree, tailEnvelope0062ThreeFibreTopThreeThree])

def tailEnvelope0063ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![107, 106, 105, 109, 105, 107, 104, 110, 105]

def tailEnvelope0063ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![105, 105, 104, 105, 104, 106, 104, 108, 105]

def tailEnvelope0063ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![103, 105, 103, 104, 103, 105, 103, 103, 103]

theorem tailEnvelope0063ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0063FailureFibreExactOne
      tailEnvelope0063ThreeFibreTopOneOne
      tailEnvelope0063ThreeFibreTopTwoOne
      tailEnvelope0063ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0063ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![108, 107, 105, 108, 105, 105, 106, 107, 103]

def tailEnvelope0063ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![104, 105, 105, 106, 104, 105, 105, 105, 103]

def tailEnvelope0063ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![104, 104, 104, 106, 103, 105, 104, 105, 103]

theorem tailEnvelope0063ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0063FailureFibreExactThree
      tailEnvelope0063ThreeFibreTopOneThree
      tailEnvelope0063ThreeFibreTopTwoThree
      tailEnvelope0063ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0063ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6845881 6880110
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6880109 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0063FailureFibreExactOne
      tailEnvelope0063ThreeFibreTopOneOne tailEnvelope0063ThreeFibreTopTwoOne
      tailEnvelope0063ThreeFibreTopThreeOne
      (lower := 6845881) (upper := 6880109) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0063FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0063ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0063ThreeFibreTopOneOne,
        tailEnvelope0063ThreeFibreTopTwoOne, tailEnvelope0063ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0063FailureFibreExactThree
      tailEnvelope0063ThreeFibreTopOneThree tailEnvelope0063ThreeFibreTopTwoThree
      tailEnvelope0063ThreeFibreTopThreeThree
      (lower := 6845881) (upper := 6880109) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0063FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0063ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0063ThreeFibreTopOneThree,
        tailEnvelope0063ThreeFibreTopTwoThree, tailEnvelope0063ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
