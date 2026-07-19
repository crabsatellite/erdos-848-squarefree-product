import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0006
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0096ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![127, 123, 125, 123, 123, 124, 123, 125, 124]

def tailEnvelope0096ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![125, 123, 121, 122, 123, 124, 121, 122, 123]

def tailEnvelope0096ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![121, 122, 121, 122, 123, 123, 121, 121, 123]

theorem tailEnvelope0096ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0096FailureFibreExactOne
      tailEnvelope0096ThreeFibreTopOneOne
      tailEnvelope0096ThreeFibreTopTwoOne
      tailEnvelope0096ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0096ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![124, 124, 124, 125, 122, 124, 123, 124, 123]

def tailEnvelope0096ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![123, 123, 122, 124, 121, 123, 121, 121, 121]

def tailEnvelope0096ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![122, 122, 122, 122, 121, 122, 121, 121, 121]

theorem tailEnvelope0096ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0096FailureFibreExactThree
      tailEnvelope0096ThreeFibreTopOneThree
      tailEnvelope0096ThreeFibreTopTwoThree
      tailEnvelope0096ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0096ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8070644 8110997
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8110996 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0096FailureFibreExactOne
      tailEnvelope0096ThreeFibreTopOneOne tailEnvelope0096ThreeFibreTopTwoOne
      tailEnvelope0096ThreeFibreTopThreeOne
      (lower := 8070644) (upper := 8110996) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0096FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0096ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0096ThreeFibreTopOneOne,
        tailEnvelope0096ThreeFibreTopTwoOne, tailEnvelope0096ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0096FailureFibreExactThree
      tailEnvelope0096ThreeFibreTopOneThree tailEnvelope0096ThreeFibreTopTwoThree
      tailEnvelope0096ThreeFibreTopThreeThree
      (lower := 8070644) (upper := 8110996) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0096FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0096ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0096ThreeFibreTopOneThree,
        tailEnvelope0096ThreeFibreTopTwoThree, tailEnvelope0096ThreeFibreTopThreeThree])

def tailEnvelope0097ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![127, 125, 125, 123, 124, 125, 125, 125, 124]

def tailEnvelope0097ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![126, 123, 122, 123, 124, 125, 122, 122, 123]

def tailEnvelope0097ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![121, 122, 122, 122, 124, 124, 122, 122, 123]

theorem tailEnvelope0097ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0097FailureFibreExactOne
      tailEnvelope0097ThreeFibreTopOneOne
      tailEnvelope0097ThreeFibreTopTwoOne
      tailEnvelope0097ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0097ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![125, 124, 124, 126, 123, 124, 124, 124, 123]

def tailEnvelope0097ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![124, 123, 124, 125, 122, 124, 124, 122, 123]

def tailEnvelope0097ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![124, 122, 122, 123, 122, 123, 121, 121, 122]

theorem tailEnvelope0097ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0097FailureFibreExactThree
      tailEnvelope0097ThreeFibreTopOneThree
      tailEnvelope0097ThreeFibreTopTwoThree
      tailEnvelope0097ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0097ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8110997 8151551
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8151550 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0097FailureFibreExactOne
      tailEnvelope0097ThreeFibreTopOneOne tailEnvelope0097ThreeFibreTopTwoOne
      tailEnvelope0097ThreeFibreTopThreeOne
      (lower := 8110997) (upper := 8151550) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0097FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0097ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0097ThreeFibreTopOneOne,
        tailEnvelope0097ThreeFibreTopTwoOne, tailEnvelope0097ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0097FailureFibreExactThree
      tailEnvelope0097ThreeFibreTopOneThree tailEnvelope0097ThreeFibreTopTwoThree
      tailEnvelope0097ThreeFibreTopThreeThree
      (lower := 8110997) (upper := 8151550) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0097FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0097ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0097ThreeFibreTopOneThree,
        tailEnvelope0097ThreeFibreTopTwoThree, tailEnvelope0097ThreeFibreTopThreeThree])

def tailEnvelope0098ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![128, 125, 126, 127, 125, 127, 125, 126, 126]

def tailEnvelope0098ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![126, 124, 123, 123, 124, 125, 123, 122, 124]

def tailEnvelope0098ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![124, 124, 123, 123, 124, 125, 122, 122, 123]

theorem tailEnvelope0098ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0098FailureFibreExactOne
      tailEnvelope0098ThreeFibreTopOneOne
      tailEnvelope0098ThreeFibreTopTwoOne
      tailEnvelope0098ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0098ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![125, 124, 125, 128, 124, 124, 124, 126, 124]

def tailEnvelope0098ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![125, 124, 124, 126, 123, 124, 124, 123, 123]

def tailEnvelope0098ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![125, 122, 123, 123, 123, 124, 122, 123, 123]

theorem tailEnvelope0098ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0098FailureFibreExactThree
      tailEnvelope0098ThreeFibreTopOneThree
      tailEnvelope0098ThreeFibreTopTwoThree
      tailEnvelope0098ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0098ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8151551 8192308
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8192307 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0098FailureFibreExactOne
      tailEnvelope0098ThreeFibreTopOneOne tailEnvelope0098ThreeFibreTopTwoOne
      tailEnvelope0098ThreeFibreTopThreeOne
      (lower := 8151551) (upper := 8192307) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0098FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0098ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0098ThreeFibreTopOneOne,
        tailEnvelope0098ThreeFibreTopTwoOne, tailEnvelope0098ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0098FailureFibreExactThree
      tailEnvelope0098ThreeFibreTopOneThree tailEnvelope0098ThreeFibreTopTwoThree
      tailEnvelope0098ThreeFibreTopThreeThree
      (lower := 8151551) (upper := 8192307) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0098FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0098ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0098ThreeFibreTopOneThree,
        tailEnvelope0098ThreeFibreTopTwoThree, tailEnvelope0098ThreeFibreTopThreeThree])

def tailEnvelope0099ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![128, 125, 127, 127, 126, 127, 125, 126, 126]

def tailEnvelope0099ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![127, 125, 124, 125, 125, 125, 123, 124, 125]

def tailEnvelope0099ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![124, 124, 124, 123, 124, 125, 123, 123, 124]

theorem tailEnvelope0099ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0099FailureFibreExactOne
      tailEnvelope0099ThreeFibreTopOneOne
      tailEnvelope0099ThreeFibreTopTwoOne
      tailEnvelope0099ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0099ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![128, 125, 125, 128, 125, 125, 126, 126, 124]

def tailEnvelope0099ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![126, 124, 125, 126, 124, 125, 125, 124, 123]

def tailEnvelope0099ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![125, 122, 124, 125, 123, 124, 123, 124, 123]

theorem tailEnvelope0099ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0099FailureFibreExactThree
      tailEnvelope0099ThreeFibreTopOneThree
      tailEnvelope0099ThreeFibreTopTwoThree
      tailEnvelope0099ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0099ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8192308 8233269
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8233268 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0099FailureFibreExactOne
      tailEnvelope0099ThreeFibreTopOneOne tailEnvelope0099ThreeFibreTopTwoOne
      tailEnvelope0099ThreeFibreTopThreeOne
      (lower := 8192308) (upper := 8233268) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0099FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0099ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0099ThreeFibreTopOneOne,
        tailEnvelope0099ThreeFibreTopTwoOne, tailEnvelope0099ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0099FailureFibreExactThree
      tailEnvelope0099ThreeFibreTopOneThree tailEnvelope0099ThreeFibreTopTwoThree
      tailEnvelope0099ThreeFibreTopThreeThree
      (lower := 8192308) (upper := 8233268) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0099FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0099ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0099ThreeFibreTopOneThree,
        tailEnvelope0099ThreeFibreTopTwoThree, tailEnvelope0099ThreeFibreTopThreeThree])

def tailEnvelope0100ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![128, 125, 128, 128, 126, 129, 126, 126, 126]

def tailEnvelope0100ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![127, 125, 125, 126, 125, 126, 125, 125, 126]

def tailEnvelope0100ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![125, 125, 125, 125, 125, 125, 123, 124, 125]

theorem tailEnvelope0100ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0100FailureFibreExactOne
      tailEnvelope0100ThreeFibreTopOneOne
      tailEnvelope0100ThreeFibreTopTwoOne
      tailEnvelope0100ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0100ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![129, 125, 125, 128, 125, 126, 126, 126, 125]

def tailEnvelope0100ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![128, 124, 125, 126, 124, 126, 125, 125, 124]

def tailEnvelope0100ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![125, 124, 125, 125, 123, 125, 123, 125, 123]

theorem tailEnvelope0100ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0100FailureFibreExactThree
      tailEnvelope0100ThreeFibreTopOneThree
      tailEnvelope0100ThreeFibreTopTwoThree
      tailEnvelope0100ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0100ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8233269 8274435
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8274434 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0100FailureFibreExactOne
      tailEnvelope0100ThreeFibreTopOneOne tailEnvelope0100ThreeFibreTopTwoOne
      tailEnvelope0100ThreeFibreTopThreeOne
      (lower := 8233269) (upper := 8274434) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0100FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0100ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0100ThreeFibreTopOneOne,
        tailEnvelope0100ThreeFibreTopTwoOne, tailEnvelope0100ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0100FailureFibreExactThree
      tailEnvelope0100ThreeFibreTopOneThree tailEnvelope0100ThreeFibreTopTwoThree
      tailEnvelope0100ThreeFibreTopThreeThree
      (lower := 8233269) (upper := 8274434) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0100FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0100ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0100ThreeFibreTopOneThree,
        tailEnvelope0100ThreeFibreTopTwoThree, tailEnvelope0100ThreeFibreTopThreeThree])

def tailEnvelope0101ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![128, 126, 128, 130, 127, 129, 126, 126, 127]

def tailEnvelope0101ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![127, 126, 125, 126, 125, 126, 125, 126, 126]

def tailEnvelope0101ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![125, 125, 125, 125, 125, 126, 125, 126, 126]

theorem tailEnvelope0101ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0101FailureFibreExactOne
      tailEnvelope0101ThreeFibreTopOneOne
      tailEnvelope0101ThreeFibreTopTwoOne
      tailEnvelope0101ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0101ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![129, 126, 126, 128, 125, 127, 127, 126, 126]

def tailEnvelope0101ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![128, 124, 125, 127, 124, 126, 125, 125, 125]

def tailEnvelope0101ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![125, 124, 125, 126, 124, 125, 123, 125, 124]

theorem tailEnvelope0101ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0101FailureFibreExactThree
      tailEnvelope0101ThreeFibreTopOneThree
      tailEnvelope0101ThreeFibreTopTwoThree
      tailEnvelope0101ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0101ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8274435 8315807
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8315806 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0101FailureFibreExactOne
      tailEnvelope0101ThreeFibreTopOneOne tailEnvelope0101ThreeFibreTopTwoOne
      tailEnvelope0101ThreeFibreTopThreeOne
      (lower := 8274435) (upper := 8315806) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0101FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0101ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0101ThreeFibreTopOneOne,
        tailEnvelope0101ThreeFibreTopTwoOne, tailEnvelope0101ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0101FailureFibreExactThree
      tailEnvelope0101ThreeFibreTopOneThree tailEnvelope0101ThreeFibreTopTwoThree
      tailEnvelope0101ThreeFibreTopThreeThree
      (lower := 8274435) (upper := 8315806) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0101FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0101ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0101ThreeFibreTopOneThree,
        tailEnvelope0101ThreeFibreTopTwoThree, tailEnvelope0101ThreeFibreTopThreeThree])

def tailEnvelope0102ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![128, 127, 128, 131, 127, 129, 128, 127, 127]

def tailEnvelope0102ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![127, 126, 125, 127, 125, 127, 125, 127, 127]

def tailEnvelope0102ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![125, 126, 125, 127, 125, 126, 125, 126, 126]

theorem tailEnvelope0102ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0102FailureFibreExactOne
      tailEnvelope0102ThreeFibreTopOneOne
      tailEnvelope0102ThreeFibreTopTwoOne
      tailEnvelope0102ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0102ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![130, 127, 126, 128, 127, 127, 127, 126, 126]

def tailEnvelope0102ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![129, 125, 126, 127, 125, 127, 126, 126, 126]

def tailEnvelope0102ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![125, 124, 125, 127, 124, 127, 124, 125, 125]

theorem tailEnvelope0102ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0102FailureFibreExactThree
      tailEnvelope0102ThreeFibreTopOneThree
      tailEnvelope0102ThreeFibreTopTwoThree
      tailEnvelope0102ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0102ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8315807 8357386
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8357385 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0102FailureFibreExactOne
      tailEnvelope0102ThreeFibreTopOneOne tailEnvelope0102ThreeFibreTopTwoOne
      tailEnvelope0102ThreeFibreTopThreeOne
      (lower := 8315807) (upper := 8357385) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0102FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0102ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0102ThreeFibreTopOneOne,
        tailEnvelope0102ThreeFibreTopTwoOne, tailEnvelope0102ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0102FailureFibreExactThree
      tailEnvelope0102ThreeFibreTopOneThree tailEnvelope0102ThreeFibreTopTwoThree
      tailEnvelope0102ThreeFibreTopThreeThree
      (lower := 8315807) (upper := 8357385) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0102FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0102ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0102ThreeFibreTopOneThree,
        tailEnvelope0102ThreeFibreTopTwoThree, tailEnvelope0102ThreeFibreTopThreeThree])

def tailEnvelope0103ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![129, 129, 129, 132, 128, 129, 128, 127, 129]

def tailEnvelope0103ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![127, 126, 126, 128, 125, 128, 126, 127, 127]

def tailEnvelope0103ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![127, 126, 125, 127, 125, 127, 126, 127, 127]

theorem tailEnvelope0103ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0103FailureFibreExactOne
      tailEnvelope0103ThreeFibreTopOneOne
      tailEnvelope0103ThreeFibreTopTwoOne
      tailEnvelope0103ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0103ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![130, 128, 126, 128, 127, 127, 127, 126, 127]

def tailEnvelope0103ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![130, 126, 126, 128, 126, 127, 126, 126, 126]

def tailEnvelope0103ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![126, 125, 126, 128, 126, 127, 125, 126, 126]

theorem tailEnvelope0103ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0103FailureFibreExactThree
      tailEnvelope0103ThreeFibreTopOneThree
      tailEnvelope0103ThreeFibreTopTwoThree
      tailEnvelope0103ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0103ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8357386 8399172
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8399171 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0103FailureFibreExactOne
      tailEnvelope0103ThreeFibreTopOneOne tailEnvelope0103ThreeFibreTopTwoOne
      tailEnvelope0103ThreeFibreTopThreeOne
      (lower := 8357386) (upper := 8399171) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0103FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0103ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0103ThreeFibreTopOneOne,
        tailEnvelope0103ThreeFibreTopTwoOne, tailEnvelope0103ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0103FailureFibreExactThree
      tailEnvelope0103ThreeFibreTopOneThree tailEnvelope0103ThreeFibreTopTwoThree
      tailEnvelope0103ThreeFibreTopThreeThree
      (lower := 8357386) (upper := 8399171) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0103FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0103ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0103ThreeFibreTopOneThree,
        tailEnvelope0103ThreeFibreTopTwoThree, tailEnvelope0103ThreeFibreTopThreeThree])

def tailEnvelope0104ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![130, 129, 130, 132, 130, 129, 129, 128, 129]

def tailEnvelope0104ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![128, 126, 127, 129, 126, 129, 127, 127, 128]

def tailEnvelope0104ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![127, 126, 127, 127, 126, 128, 126, 127, 127]

theorem tailEnvelope0104ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0104FailureFibreExactOne
      tailEnvelope0104ThreeFibreTopOneOne
      tailEnvelope0104ThreeFibreTopTwoOne
      tailEnvelope0104ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0104ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![131, 128, 128, 129, 128, 129, 127, 128, 128]

def tailEnvelope0104ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![130, 127, 128, 129, 128, 127, 127, 127, 127]

def tailEnvelope0104ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![127, 125, 127, 128, 126, 127, 125, 127, 126]

theorem tailEnvelope0104ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0104FailureFibreExactThree
      tailEnvelope0104ThreeFibreTopOneThree
      tailEnvelope0104ThreeFibreTopTwoThree
      tailEnvelope0104ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0104ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8399172 8441167
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8441166 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0104FailureFibreExactOne
      tailEnvelope0104ThreeFibreTopOneOne tailEnvelope0104ThreeFibreTopTwoOne
      tailEnvelope0104ThreeFibreTopThreeOne
      (lower := 8399172) (upper := 8441166) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0104FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0104ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0104ThreeFibreTopOneOne,
        tailEnvelope0104ThreeFibreTopTwoOne, tailEnvelope0104ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0104FailureFibreExactThree
      tailEnvelope0104ThreeFibreTopOneThree tailEnvelope0104ThreeFibreTopTwoThree
      tailEnvelope0104ThreeFibreTopThreeThree
      (lower := 8399172) (upper := 8441166) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0104FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0104ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0104ThreeFibreTopOneThree,
        tailEnvelope0104ThreeFibreTopTwoThree, tailEnvelope0104ThreeFibreTopThreeThree])

def tailEnvelope0105ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![131, 131, 131, 133, 130, 131, 129, 128, 129]

def tailEnvelope0105ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![129, 128, 128, 129, 127, 129, 128, 128, 128]

def tailEnvelope0105ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![128, 127, 127, 127, 126, 128, 127, 127, 128]

theorem tailEnvelope0105ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0105FailureFibreExactOne
      tailEnvelope0105ThreeFibreTopOneOne
      tailEnvelope0105ThreeFibreTopTwoOne
      tailEnvelope0105ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0105ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![131, 129, 128, 130, 128, 129, 128, 129, 128]

def tailEnvelope0105ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![131, 127, 128, 129, 128, 129, 127, 128, 127]

def tailEnvelope0105ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![128, 126, 128, 128, 126, 127, 126, 127, 127]

theorem tailEnvelope0105ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0105FailureFibreExactThree
      tailEnvelope0105ThreeFibreTopOneThree
      tailEnvelope0105ThreeFibreTopTwoThree
      tailEnvelope0105ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0105ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8441167 8483372
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8483371 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0105FailureFibreExactOne
      tailEnvelope0105ThreeFibreTopOneOne tailEnvelope0105ThreeFibreTopTwoOne
      tailEnvelope0105ThreeFibreTopThreeOne
      (lower := 8441167) (upper := 8483371) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0105FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0105ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0105ThreeFibreTopOneOne,
        tailEnvelope0105ThreeFibreTopTwoOne, tailEnvelope0105ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0105FailureFibreExactThree
      tailEnvelope0105ThreeFibreTopOneThree tailEnvelope0105ThreeFibreTopTwoThree
      tailEnvelope0105ThreeFibreTopThreeThree
      (lower := 8441167) (upper := 8483371) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0105FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0105ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0105ThreeFibreTopOneThree,
        tailEnvelope0105ThreeFibreTopTwoThree, tailEnvelope0105ThreeFibreTopThreeThree])

def tailEnvelope0106ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![132, 131, 132, 133, 130, 131, 129, 129, 130]

def tailEnvelope0106ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![131, 128, 129, 130, 128, 129, 129, 128, 130]

def tailEnvelope0106ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![128, 128, 127, 129, 127, 129, 127, 128, 128]

theorem tailEnvelope0106ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0106FailureFibreExactOne
      tailEnvelope0106ThreeFibreTopOneOne
      tailEnvelope0106ThreeFibreTopTwoOne
      tailEnvelope0106ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0106ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![131, 130, 129, 130, 129, 130, 129, 129, 129]

def tailEnvelope0106ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![131, 129, 128, 130, 129, 129, 127, 128, 129]

def tailEnvelope0106ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![129, 127, 128, 128, 127, 129, 127, 128, 127]

theorem tailEnvelope0106ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0106FailureFibreExactThree
      tailEnvelope0106ThreeFibreTopOneThree
      tailEnvelope0106ThreeFibreTopTwoThree
      tailEnvelope0106ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0106ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8483372 8525788
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8525787 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0106FailureFibreExactOne
      tailEnvelope0106ThreeFibreTopOneOne tailEnvelope0106ThreeFibreTopTwoOne
      tailEnvelope0106ThreeFibreTopThreeOne
      (lower := 8483372) (upper := 8525787) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0106FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0106ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0106ThreeFibreTopOneOne,
        tailEnvelope0106ThreeFibreTopTwoOne, tailEnvelope0106ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0106FailureFibreExactThree
      tailEnvelope0106ThreeFibreTopOneThree tailEnvelope0106ThreeFibreTopTwoThree
      tailEnvelope0106ThreeFibreTopThreeThree
      (lower := 8483372) (upper := 8525787) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0106FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0106ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0106ThreeFibreTopOneThree,
        tailEnvelope0106ThreeFibreTopTwoThree, tailEnvelope0106ThreeFibreTopThreeThree])

def tailEnvelope0107ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![132, 131, 132, 134, 130, 132, 130, 129, 130]

def tailEnvelope0107ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![131, 129, 131, 130, 128, 130, 129, 129, 130]

def tailEnvelope0107ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![128, 128, 128, 130, 127, 130, 128, 128, 130]

theorem tailEnvelope0107ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0107FailureFibreExactOne
      tailEnvelope0107ThreeFibreTopOneOne
      tailEnvelope0107ThreeFibreTopTwoOne
      tailEnvelope0107ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0107ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![131, 130, 130, 131, 129, 131, 129, 130, 130]

def tailEnvelope0107ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![131, 130, 128, 130, 129, 130, 127, 130, 129]

def tailEnvelope0107ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![129, 127, 128, 129, 128, 130, 127, 128, 129]

theorem tailEnvelope0107ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0107FailureFibreExactThree
      tailEnvelope0107ThreeFibreTopOneThree
      tailEnvelope0107ThreeFibreTopTwoThree
      tailEnvelope0107ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0107ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8525788 8568416
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8568415 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0107FailureFibreExactOne
      tailEnvelope0107ThreeFibreTopOneOne tailEnvelope0107ThreeFibreTopTwoOne
      tailEnvelope0107ThreeFibreTopThreeOne
      (lower := 8525788) (upper := 8568415) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0107FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0107ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0107ThreeFibreTopOneOne,
        tailEnvelope0107ThreeFibreTopTwoOne, tailEnvelope0107ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0107FailureFibreExactThree
      tailEnvelope0107ThreeFibreTopOneThree tailEnvelope0107ThreeFibreTopTwoThree
      tailEnvelope0107ThreeFibreTopThreeThree
      (lower := 8525788) (upper := 8568415) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0107FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0107ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0107ThreeFibreTopOneThree,
        tailEnvelope0107ThreeFibreTopTwoThree, tailEnvelope0107ThreeFibreTopThreeThree])

def tailEnvelope0108ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![132, 131, 132, 134, 130, 133, 130, 130, 131]

def tailEnvelope0108ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![131, 131, 131, 130, 128, 131, 130, 129, 130]

def tailEnvelope0108ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![128, 129, 128, 130, 128, 130, 128, 129, 130]

theorem tailEnvelope0108ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0108FailureFibreExactOne
      tailEnvelope0108ThreeFibreTopOneOne
      tailEnvelope0108ThreeFibreTopTwoOne
      tailEnvelope0108ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0108ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![131, 131, 131, 131, 130, 131, 129, 130, 130]

def tailEnvelope0108ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![131, 131, 128, 131, 129, 130, 129, 130, 130]

def tailEnvelope0108ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![130, 128, 128, 130, 128, 130, 127, 129, 129]

theorem tailEnvelope0108ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0108FailureFibreExactThree
      tailEnvelope0108ThreeFibreTopOneThree
      tailEnvelope0108ThreeFibreTopTwoThree
      tailEnvelope0108ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0108ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8568416 8611258
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8611257 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0108FailureFibreExactOne
      tailEnvelope0108ThreeFibreTopOneOne tailEnvelope0108ThreeFibreTopTwoOne
      tailEnvelope0108ThreeFibreTopThreeOne
      (lower := 8568416) (upper := 8611257) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0108FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0108ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0108ThreeFibreTopOneOne,
        tailEnvelope0108ThreeFibreTopTwoOne, tailEnvelope0108ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0108FailureFibreExactThree
      tailEnvelope0108ThreeFibreTopOneThree tailEnvelope0108ThreeFibreTopTwoThree
      tailEnvelope0108ThreeFibreTopThreeThree
      (lower := 8568416) (upper := 8611257) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0108FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0108ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0108ThreeFibreTopOneThree,
        tailEnvelope0108ThreeFibreTopTwoThree, tailEnvelope0108ThreeFibreTopThreeThree])

def tailEnvelope0109ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![132, 131, 132, 134, 130, 134, 131, 131, 131]

def tailEnvelope0109ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![131, 131, 131, 130, 128, 131, 130, 129, 131]

def tailEnvelope0109ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![129, 130, 128, 130, 128, 130, 129, 129, 130]

theorem tailEnvelope0109ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0109FailureFibreExactOne
      tailEnvelope0109ThreeFibreTopOneOne
      tailEnvelope0109ThreeFibreTopTwoOne
      tailEnvelope0109ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0109ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![132, 132, 132, 134, 131, 131, 129, 131, 131]

def tailEnvelope0109ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![131, 131, 131, 131, 129, 131, 129, 131, 130]

def tailEnvelope0109ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![130, 129, 129, 131, 129, 130, 128, 129, 129]

theorem tailEnvelope0109ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0109FailureFibreExactThree
      tailEnvelope0109ThreeFibreTopOneThree
      tailEnvelope0109ThreeFibreTopTwoThree
      tailEnvelope0109ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0109ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8611258 8654314
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8654313 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0109FailureFibreExactOne
      tailEnvelope0109ThreeFibreTopOneOne tailEnvelope0109ThreeFibreTopTwoOne
      tailEnvelope0109ThreeFibreTopThreeOne
      (lower := 8611258) (upper := 8654313) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0109FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0109ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0109ThreeFibreTopOneOne,
        tailEnvelope0109ThreeFibreTopTwoOne, tailEnvelope0109ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0109FailureFibreExactThree
      tailEnvelope0109ThreeFibreTopOneThree tailEnvelope0109ThreeFibreTopTwoThree
      tailEnvelope0109ThreeFibreTopThreeThree
      (lower := 8611258) (upper := 8654313) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0109FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0109ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0109ThreeFibreTopOneThree,
        tailEnvelope0109ThreeFibreTopTwoThree, tailEnvelope0109ThreeFibreTopThreeThree])

def tailEnvelope0110ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![132, 132, 133, 134, 132, 134, 131, 132, 132]

def tailEnvelope0110ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![131, 131, 131, 131, 130, 132, 130, 130, 131]

def tailEnvelope0110ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![130, 130, 130, 131, 129, 131, 130, 130, 131]

theorem tailEnvelope0110ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0110FailureFibreExactOne
      tailEnvelope0110ThreeFibreTopOneOne
      tailEnvelope0110ThreeFibreTopTwoOne
      tailEnvelope0110ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0110ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![132, 133, 132, 134, 131, 132, 131, 133, 131]

def tailEnvelope0110ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![132, 131, 132, 133, 130, 131, 130, 132, 131]

def tailEnvelope0110ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![131, 129, 129, 131, 129, 130, 130, 131, 131]

theorem tailEnvelope0110ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0110FailureFibreExactThree
      tailEnvelope0110ThreeFibreTopOneThree
      tailEnvelope0110ThreeFibreTopTwoThree
      tailEnvelope0110ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0110ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8654314 8697585
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8697584 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0110FailureFibreExactOne
      tailEnvelope0110ThreeFibreTopOneOne tailEnvelope0110ThreeFibreTopTwoOne
      tailEnvelope0110ThreeFibreTopThreeOne
      (lower := 8654314) (upper := 8697584) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0110FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0110ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0110ThreeFibreTopOneOne,
        tailEnvelope0110ThreeFibreTopTwoOne, tailEnvelope0110ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0110FailureFibreExactThree
      tailEnvelope0110ThreeFibreTopOneThree tailEnvelope0110ThreeFibreTopTwoThree
      tailEnvelope0110ThreeFibreTopThreeThree
      (lower := 8654314) (upper := 8697584) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0110FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0110ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0110ThreeFibreTopOneThree,
        tailEnvelope0110ThreeFibreTopTwoThree, tailEnvelope0110ThreeFibreTopThreeThree])

def tailEnvelope0111ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![133, 132, 133, 134, 134, 134, 132, 132, 132]

def tailEnvelope0111ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![132, 132, 132, 133, 131, 133, 131, 131, 132]

def tailEnvelope0111ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![131, 131, 131, 131, 130, 131, 130, 130, 132]

theorem tailEnvelope0111ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0111FailureFibreExactOne
      tailEnvelope0111ThreeFibreTopOneOne
      tailEnvelope0111ThreeFibreTopTwoOne
      tailEnvelope0111ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0111ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![134, 133, 132, 135, 132, 132, 131, 134, 131]

def tailEnvelope0111ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![134, 131, 132, 133, 131, 131, 131, 133, 131]

def tailEnvelope0111ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![133, 130, 130, 132, 130, 131, 130, 132, 131]

theorem tailEnvelope0111ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0111FailureFibreExactThree
      tailEnvelope0111ThreeFibreTopOneThree
      tailEnvelope0111ThreeFibreTopTwoThree
      tailEnvelope0111ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0111ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8697585 8741072
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8741071 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0111FailureFibreExactOne
      tailEnvelope0111ThreeFibreTopOneOne tailEnvelope0111ThreeFibreTopTwoOne
      tailEnvelope0111ThreeFibreTopThreeOne
      (lower := 8697585) (upper := 8741071) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0111FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0111ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0111ThreeFibreTopOneOne,
        tailEnvelope0111ThreeFibreTopTwoOne, tailEnvelope0111ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0111FailureFibreExactThree
      tailEnvelope0111ThreeFibreTopOneThree tailEnvelope0111ThreeFibreTopTwoThree
      tailEnvelope0111ThreeFibreTopThreeThree
      (lower := 8697585) (upper := 8741071) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0111FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0111ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0111ThreeFibreTopOneThree,
        tailEnvelope0111ThreeFibreTopTwoThree, tailEnvelope0111ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
