import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0000
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0000ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![81, 83, 77, 80, 76, 80, 78, 77, 78]

def tailEnvelope0000ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![77, 78, 77, 78, 76, 80, 77, 77, 78]

def tailEnvelope0000ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![77, 78, 75, 78, 76, 79, 77, 76, 78]

theorem tailEnvelope0000ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0000FailureFibreExactOne
      tailEnvelope0000ThreeFibreTopOneOne
      tailEnvelope0000ThreeFibreTopTwoOne
      tailEnvelope0000ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0000ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 79, 79, 78, 78, 76]

def tailEnvelope0000ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![77, 76, 78, 80, 78, 78, 77, 77, 76]

def tailEnvelope0000ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![77, 76, 78, 78, 78, 77, 76, 77, 76]

theorem tailEnvelope0000ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0000FailureFibreExactThree
      tailEnvelope0000ThreeFibreTopOneThree
      tailEnvelope0000ThreeFibreTopTwoThree
      tailEnvelope0000ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0000ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5000000 5025000
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5024999 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0000FailureFibreExactOne
      tailEnvelope0000ThreeFibreTopOneOne tailEnvelope0000ThreeFibreTopTwoOne
      tailEnvelope0000ThreeFibreTopThreeOne
      (lower := 5000000) (upper := 5024999) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0000ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0000ThreeFibreTopOneOne,
        tailEnvelope0000ThreeFibreTopTwoOne, tailEnvelope0000ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0000FailureFibreExactThree
      tailEnvelope0000ThreeFibreTopOneThree tailEnvelope0000ThreeFibreTopTwoThree
      tailEnvelope0000ThreeFibreTopThreeThree
      (lower := 5000000) (upper := 5024999) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0000ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0000ThreeFibreTopOneThree,
        tailEnvelope0000ThreeFibreTopTwoThree, tailEnvelope0000ThreeFibreTopThreeThree])

def tailEnvelope0001ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![82, 83, 77, 80, 77, 80, 78, 78, 79]

def tailEnvelope0001ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![78, 79, 77, 78, 76, 80, 78, 77, 79]

def tailEnvelope0001ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![77, 78, 75, 78, 76, 79, 77, 77, 78]

theorem tailEnvelope0001ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0001FailureFibreExactOne
      tailEnvelope0001ThreeFibreTopOneOne
      tailEnvelope0001ThreeFibreTopTwoOne
      tailEnvelope0001ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0001ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 79, 79, 78, 78, 76]

def tailEnvelope0001ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![78, 77, 78, 80, 78, 78, 77, 78, 76]

def tailEnvelope0001ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![78, 76, 78, 78, 78, 77, 77, 77, 76]

theorem tailEnvelope0001ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0001FailureFibreExactThree
      tailEnvelope0001ThreeFibreTopOneThree
      tailEnvelope0001ThreeFibreTopTwoThree
      tailEnvelope0001ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0001ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5025000 5050125
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5050124 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0001FailureFibreExactOne
      tailEnvelope0001ThreeFibreTopOneOne tailEnvelope0001ThreeFibreTopTwoOne
      tailEnvelope0001ThreeFibreTopThreeOne
      (lower := 5025000) (upper := 5050124) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0001ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0001ThreeFibreTopOneOne,
        tailEnvelope0001ThreeFibreTopTwoOne, tailEnvelope0001ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0001FailureFibreExactThree
      tailEnvelope0001ThreeFibreTopOneThree tailEnvelope0001ThreeFibreTopTwoThree
      tailEnvelope0001ThreeFibreTopThreeThree
      (lower := 5025000) (upper := 5050124) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0001ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0001ThreeFibreTopOneThree,
        tailEnvelope0001ThreeFibreTopTwoThree, tailEnvelope0001ThreeFibreTopThreeThree])

def tailEnvelope0002ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![82, 83, 77, 80, 77, 80, 79, 78, 80]

def tailEnvelope0002ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![78, 79, 77, 78, 77, 80, 78, 77, 79]

def tailEnvelope0002ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![78, 78, 76, 78, 77, 79, 77, 77, 78]

theorem tailEnvelope0002ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0002FailureFibreExactOne
      tailEnvelope0002ThreeFibreTopOneOne
      tailEnvelope0002ThreeFibreTopTwoOne
      tailEnvelope0002ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0002ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 80, 79, 79, 79, 77]

def tailEnvelope0002ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![78, 77, 78, 80, 79, 79, 78, 79, 76]

def tailEnvelope0002ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![78, 77, 78, 78, 78, 78, 77, 77, 76]

theorem tailEnvelope0002ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0002FailureFibreExactThree
      tailEnvelope0002ThreeFibreTopOneThree
      tailEnvelope0002ThreeFibreTopTwoThree
      tailEnvelope0002ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0002ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5050125 5075375
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5075374 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0002FailureFibreExactOne
      tailEnvelope0002ThreeFibreTopOneOne tailEnvelope0002ThreeFibreTopTwoOne
      tailEnvelope0002ThreeFibreTopThreeOne
      (lower := 5050125) (upper := 5075374) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0002ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0002ThreeFibreTopOneOne,
        tailEnvelope0002ThreeFibreTopTwoOne, tailEnvelope0002ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0002FailureFibreExactThree
      tailEnvelope0002ThreeFibreTopOneThree tailEnvelope0002ThreeFibreTopTwoThree
      tailEnvelope0002ThreeFibreTopThreeThree
      (lower := 5050125) (upper := 5075374) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0002ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0002ThreeFibreTopOneThree,
        tailEnvelope0002ThreeFibreTopTwoThree, tailEnvelope0002ThreeFibreTopThreeThree])

def tailEnvelope0003ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![82, 84, 78, 81, 78, 81, 79, 78, 80]

def tailEnvelope0003ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![78, 80, 78, 79, 77, 81, 79, 78, 80]

def tailEnvelope0003ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![78, 79, 77, 79, 77, 80, 79, 77, 79]

theorem tailEnvelope0003ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0003FailureFibreExactOne
      tailEnvelope0003ThreeFibreTopOneOne
      tailEnvelope0003ThreeFibreTopTwoOne
      tailEnvelope0003ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0003ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![79, 79, 81, 82, 81, 79, 80, 81, 79]

def tailEnvelope0003ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![78, 77, 80, 80, 79, 79, 79, 79, 77]

def tailEnvelope0003ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![78, 77, 78, 79, 79, 79, 77, 78, 76]

theorem tailEnvelope0003ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0003FailureFibreExactThree
      tailEnvelope0003ThreeFibreTopOneThree
      tailEnvelope0003ThreeFibreTopTwoThree
      tailEnvelope0003ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0003ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5075375 5100751
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5100750 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0003FailureFibreExactOne
      tailEnvelope0003ThreeFibreTopOneOne tailEnvelope0003ThreeFibreTopTwoOne
      tailEnvelope0003ThreeFibreTopThreeOne
      (lower := 5075375) (upper := 5100750) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0003ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0003ThreeFibreTopOneOne,
        tailEnvelope0003ThreeFibreTopTwoOne, tailEnvelope0003ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0003FailureFibreExactThree
      tailEnvelope0003ThreeFibreTopOneThree tailEnvelope0003ThreeFibreTopTwoThree
      tailEnvelope0003ThreeFibreTopThreeThree
      (lower := 5075375) (upper := 5100750) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0003ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0003ThreeFibreTopOneThree,
        tailEnvelope0003ThreeFibreTopTwoThree, tailEnvelope0003ThreeFibreTopThreeThree])

def tailEnvelope0004ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![83, 84, 79, 81, 79, 81, 80, 78, 82]

def tailEnvelope0004ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![79, 80, 79, 80, 78, 81, 79, 78, 81]

def tailEnvelope0004ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![78, 79, 78, 79, 78, 80, 79, 78, 79]

theorem tailEnvelope0004ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0004FailureFibreExactOne
      tailEnvelope0004ThreeFibreTopOneOne
      tailEnvelope0004ThreeFibreTopTwoOne
      tailEnvelope0004ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0004ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![80, 79, 81, 82, 81, 80, 80, 81, 79]

def tailEnvelope0004ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![79, 78, 80, 80, 79, 80, 79, 79, 78]

def tailEnvelope0004ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![79, 78, 79, 79, 79, 79, 79, 79, 77]

theorem tailEnvelope0004ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0004FailureFibreExactThree
      tailEnvelope0004ThreeFibreTopOneThree
      tailEnvelope0004ThreeFibreTopTwoThree
      tailEnvelope0004ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0004ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5100751 5126254
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5126253 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0004FailureFibreExactOne
      tailEnvelope0004ThreeFibreTopOneOne tailEnvelope0004ThreeFibreTopTwoOne
      tailEnvelope0004ThreeFibreTopThreeOne
      (lower := 5100751) (upper := 5126253) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0004ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0004ThreeFibreTopOneOne,
        tailEnvelope0004ThreeFibreTopTwoOne, tailEnvelope0004ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0004FailureFibreExactThree
      tailEnvelope0004ThreeFibreTopOneThree tailEnvelope0004ThreeFibreTopTwoThree
      tailEnvelope0004ThreeFibreTopThreeThree
      (lower := 5100751) (upper := 5126253) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0004ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0004ThreeFibreTopOneThree,
        tailEnvelope0004ThreeFibreTopTwoThree, tailEnvelope0004ThreeFibreTopThreeThree])

def tailEnvelope0005ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![83, 84, 79, 81, 79, 81, 82, 79, 82]

def tailEnvelope0005ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![79, 80, 79, 80, 79, 81, 79, 78, 82]

def tailEnvelope0005ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![79, 79, 78, 80, 78, 81, 79, 78, 79]

theorem tailEnvelope0005ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0005FailureFibreExactOne
      tailEnvelope0005ThreeFibreTopOneOne
      tailEnvelope0005ThreeFibreTopTwoOne
      tailEnvelope0005ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0005ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![81, 81, 81, 82, 82, 81, 83, 81, 81]

def tailEnvelope0005ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![80, 79, 80, 80, 79, 81, 79, 80, 78]

def tailEnvelope0005ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![80, 78, 80, 79, 79, 80, 79, 79, 78]

theorem tailEnvelope0005ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0005FailureFibreExactThree
      tailEnvelope0005ThreeFibreTopOneThree
      tailEnvelope0005ThreeFibreTopTwoThree
      tailEnvelope0005ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0005ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5126254 5151885
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5151884 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0005FailureFibreExactOne
      tailEnvelope0005ThreeFibreTopOneOne tailEnvelope0005ThreeFibreTopTwoOne
      tailEnvelope0005ThreeFibreTopThreeOne
      (lower := 5126254) (upper := 5151884) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0005ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0005ThreeFibreTopOneOne,
        tailEnvelope0005ThreeFibreTopTwoOne, tailEnvelope0005ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0005FailureFibreExactThree
      tailEnvelope0005ThreeFibreTopOneThree tailEnvelope0005ThreeFibreTopTwoThree
      tailEnvelope0005ThreeFibreTopThreeThree
      (lower := 5126254) (upper := 5151884) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0005ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0005ThreeFibreTopOneThree,
        tailEnvelope0005ThreeFibreTopTwoThree, tailEnvelope0005ThreeFibreTopThreeThree])

def tailEnvelope0006ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![83, 84, 81, 82, 80, 82, 82, 79, 82]

def tailEnvelope0006ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![80, 80, 80, 81, 79, 82, 80, 79, 82]

def tailEnvelope0006ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![79, 80, 78, 80, 78, 81, 80, 79, 80]

theorem tailEnvelope0006ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0006FailureFibreExactOne
      tailEnvelope0006ThreeFibreTopOneOne
      tailEnvelope0006ThreeFibreTopTwoOne
      tailEnvelope0006ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0006ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![81, 81, 82, 82, 82, 83, 83, 83, 81]

def tailEnvelope0006ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![81, 80, 81, 80, 80, 81, 79, 80, 78]

def tailEnvelope0006ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![80, 79, 80, 80, 79, 81, 79, 79, 78]

theorem tailEnvelope0006ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0006FailureFibreExactThree
      tailEnvelope0006ThreeFibreTopOneThree
      tailEnvelope0006ThreeFibreTopTwoThree
      tailEnvelope0006ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0006ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5151885 5177644
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5177643 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0006FailureFibreExactOne
      tailEnvelope0006ThreeFibreTopOneOne tailEnvelope0006ThreeFibreTopTwoOne
      tailEnvelope0006ThreeFibreTopThreeOne
      (lower := 5151885) (upper := 5177643) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0006ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0006ThreeFibreTopOneOne,
        tailEnvelope0006ThreeFibreTopTwoOne, tailEnvelope0006ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0006FailureFibreExactThree
      tailEnvelope0006ThreeFibreTopOneThree tailEnvelope0006ThreeFibreTopTwoThree
      tailEnvelope0006ThreeFibreTopThreeThree
      (lower := 5151885) (upper := 5177643) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0006ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0006ThreeFibreTopOneThree,
        tailEnvelope0006ThreeFibreTopTwoThree, tailEnvelope0006ThreeFibreTopThreeThree])

def tailEnvelope0007ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 82, 80, 83, 83, 80, 82]

def tailEnvelope0007ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![80, 83, 81, 82, 80, 82, 80, 79, 82]

def tailEnvelope0007ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![80, 80, 79, 81, 79, 82, 80, 79, 80]

theorem tailEnvelope0007ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0007FailureFibreExactOne
      tailEnvelope0007ThreeFibreTopOneOne
      tailEnvelope0007ThreeFibreTopTwoOne
      tailEnvelope0007ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0007ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 82, 82, 83, 82, 84, 83, 84, 81]

def tailEnvelope0007ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 80, 81, 82, 80, 82, 79, 82, 79]

def tailEnvelope0007ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![81, 79, 81, 80, 79, 81, 79, 79, 78]

theorem tailEnvelope0007ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0007FailureFibreExactThree
      tailEnvelope0007ThreeFibreTopOneThree
      tailEnvelope0007ThreeFibreTopTwoThree
      tailEnvelope0007ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0007ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5177644 5203532
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5203531 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0007FailureFibreExactOne
      tailEnvelope0007ThreeFibreTopOneOne tailEnvelope0007ThreeFibreTopTwoOne
      tailEnvelope0007ThreeFibreTopThreeOne
      (lower := 5177644) (upper := 5203531) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0007ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0007ThreeFibreTopOneOne,
        tailEnvelope0007ThreeFibreTopTwoOne, tailEnvelope0007ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0007FailureFibreExactThree
      tailEnvelope0007ThreeFibreTopOneThree tailEnvelope0007ThreeFibreTopTwoThree
      tailEnvelope0007ThreeFibreTopThreeThree
      (lower := 5177644) (upper := 5203531) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0007ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0007ThreeFibreTopOneThree,
        tailEnvelope0007ThreeFibreTopTwoThree, tailEnvelope0007ThreeFibreTopThreeThree])

def tailEnvelope0008ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 81, 83, 83, 80, 83]

def tailEnvelope0008ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![80, 83, 81, 82, 80, 82, 80, 80, 82]

def tailEnvelope0008ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![80, 81, 80, 81, 79, 82, 80, 79, 80]

theorem tailEnvelope0008ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0008FailureFibreExactOne
      tailEnvelope0008ThreeFibreTopOneOne
      tailEnvelope0008ThreeFibreTopTwoOne
      tailEnvelope0008ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0008ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 82, 82, 83, 82, 85, 83, 84, 81]

def tailEnvelope0008ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 81, 81, 82, 80, 82, 80, 84, 79]

def tailEnvelope0008ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![81, 80, 81, 80, 79, 81, 80, 80, 79]

theorem tailEnvelope0008ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0008FailureFibreExactThree
      tailEnvelope0008ThreeFibreTopOneThree
      tailEnvelope0008ThreeFibreTopTwoThree
      tailEnvelope0008ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0008ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5203532 5229549
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5229548 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0008FailureFibreExactOne
      tailEnvelope0008ThreeFibreTopOneOne tailEnvelope0008ThreeFibreTopTwoOne
      tailEnvelope0008ThreeFibreTopThreeOne
      (lower := 5203532) (upper := 5229548) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0008ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0008ThreeFibreTopOneOne,
        tailEnvelope0008ThreeFibreTopTwoOne, tailEnvelope0008ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0008FailureFibreExactThree
      tailEnvelope0008ThreeFibreTopOneThree tailEnvelope0008ThreeFibreTopTwoThree
      tailEnvelope0008ThreeFibreTopThreeThree
      (lower := 5203532) (upper := 5229548) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0008ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0008ThreeFibreTopOneThree,
        tailEnvelope0008ThreeFibreTopTwoThree, tailEnvelope0008ThreeFibreTopThreeThree])

def tailEnvelope0009ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 82, 83, 83, 81, 83]

def tailEnvelope0009ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![80, 83, 81, 83, 80, 83, 81, 80, 82]

def tailEnvelope0009ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![80, 81, 80, 81, 79, 82, 81, 80, 80]

theorem tailEnvelope0009ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0009FailureFibreExactOne
      tailEnvelope0009ThreeFibreTopOneOne
      tailEnvelope0009ThreeFibreTopTwoOne
      tailEnvelope0009ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0009ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 82, 83, 83, 82, 85, 83, 84, 81]

def tailEnvelope0009ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 81, 81, 82, 80, 82, 81, 84, 80]

def tailEnvelope0009ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![82, 80, 81, 81, 80, 81, 80, 80, 79]

theorem tailEnvelope0009ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0009FailureFibreExactThree
      tailEnvelope0009ThreeFibreTopOneThree
      tailEnvelope0009ThreeFibreTopTwoThree
      tailEnvelope0009ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0009ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5229549 5255696
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5255695 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0009FailureFibreExactOne
      tailEnvelope0009ThreeFibreTopOneOne tailEnvelope0009ThreeFibreTopTwoOne
      tailEnvelope0009ThreeFibreTopThreeOne
      (lower := 5229549) (upper := 5255695) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0009ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0009ThreeFibreTopOneOne,
        tailEnvelope0009ThreeFibreTopTwoOne, tailEnvelope0009ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0009FailureFibreExactThree
      tailEnvelope0009ThreeFibreTopOneThree tailEnvelope0009ThreeFibreTopTwoThree
      tailEnvelope0009ThreeFibreTopThreeThree
      (lower := 5229549) (upper := 5255695) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0009ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0009ThreeFibreTopOneThree,
        tailEnvelope0009ThreeFibreTopTwoThree, tailEnvelope0009ThreeFibreTopThreeThree])

def tailEnvelope0010ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 82, 84, 83, 81, 83]

def tailEnvelope0010ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![81, 83, 81, 83, 80, 83, 82, 81, 82]

def tailEnvelope0010ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![80, 82, 80, 81, 80, 82, 81, 80, 80]

theorem tailEnvelope0010ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0010FailureFibreExactOne
      tailEnvelope0010ThreeFibreTopOneOne
      tailEnvelope0010ThreeFibreTopTwoOne
      tailEnvelope0010ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0010ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 83, 83, 84, 82, 85, 83, 84, 81]

def tailEnvelope0010ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 81, 82, 82, 80, 82, 83, 84, 80]

def tailEnvelope0010ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![82, 80, 81, 81, 80, 81, 80, 80, 80]

theorem tailEnvelope0010ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0010FailureFibreExactThree
      tailEnvelope0010ThreeFibreTopOneThree
      tailEnvelope0010ThreeFibreTopTwoThree
      tailEnvelope0010ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0010ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5255696 5281974
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5281973 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0010FailureFibreExactOne
      tailEnvelope0010ThreeFibreTopOneOne tailEnvelope0010ThreeFibreTopTwoOne
      tailEnvelope0010ThreeFibreTopThreeOne
      (lower := 5255696) (upper := 5281973) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0010ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0010ThreeFibreTopOneOne,
        tailEnvelope0010ThreeFibreTopTwoOne, tailEnvelope0010ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0010FailureFibreExactThree
      tailEnvelope0010ThreeFibreTopOneThree tailEnvelope0010ThreeFibreTopTwoThree
      tailEnvelope0010ThreeFibreTopThreeThree
      (lower := 5255696) (upper := 5281973) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0010ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0010ThreeFibreTopOneThree,
        tailEnvelope0010ThreeFibreTopTwoThree, tailEnvelope0010ThreeFibreTopThreeThree])

def tailEnvelope0011ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 84, 82, 84, 83, 82, 83]

def tailEnvelope0011ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![82, 83, 81, 83, 81, 83, 82, 81, 82]

def tailEnvelope0011ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![81, 83, 80, 81, 80, 83, 81, 81, 81]

theorem tailEnvelope0011ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0011FailureFibreExactOne
      tailEnvelope0011ThreeFibreTopOneOne
      tailEnvelope0011ThreeFibreTopTwoOne
      tailEnvelope0011ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0011ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 83, 84, 84, 83, 85, 83, 85, 81]

def tailEnvelope0011ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 83, 83, 82, 81, 82, 83, 84, 81]

def tailEnvelope0011ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![82, 81, 82, 81, 81, 81, 80, 80, 80]

theorem tailEnvelope0011ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0011FailureFibreExactThree
      tailEnvelope0011ThreeFibreTopOneThree
      tailEnvelope0011ThreeFibreTopTwoThree
      tailEnvelope0011ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0011ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5281974 5308383
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5308382 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0011FailureFibreExactOne
      tailEnvelope0011ThreeFibreTopOneOne tailEnvelope0011ThreeFibreTopTwoOne
      tailEnvelope0011ThreeFibreTopThreeOne
      (lower := 5281974) (upper := 5308382) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0011ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0011ThreeFibreTopOneOne,
        tailEnvelope0011ThreeFibreTopTwoOne, tailEnvelope0011ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0011FailureFibreExactThree
      tailEnvelope0011ThreeFibreTopOneThree tailEnvelope0011ThreeFibreTopTwoThree
      tailEnvelope0011ThreeFibreTopThreeThree
      (lower := 5281974) (upper := 5308382) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0011ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0011ThreeFibreTopOneThree,
        tailEnvelope0011ThreeFibreTopTwoThree, tailEnvelope0011ThreeFibreTopThreeThree])

def tailEnvelope0012ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![84, 84, 81, 84, 82, 84, 85, 82, 83]

def tailEnvelope0012ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![82, 83, 81, 83, 81, 83, 82, 81, 82]

def tailEnvelope0012ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![81, 83, 80, 82, 80, 83, 81, 81, 82]

theorem tailEnvelope0012ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0012FailureFibreExactOne
      tailEnvelope0012ThreeFibreTopOneOne
      tailEnvelope0012ThreeFibreTopTwoOne
      tailEnvelope0012ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0012ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![83, 84, 84, 85, 83, 85, 83, 85, 81]

def tailEnvelope0012ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![82, 83, 83, 82, 81, 82, 83, 84, 81]

def tailEnvelope0012ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![82, 82, 83, 82, 81, 81, 80, 81, 81]

theorem tailEnvelope0012ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0012FailureFibreExactThree
      tailEnvelope0012ThreeFibreTopOneThree
      tailEnvelope0012ThreeFibreTopTwoThree
      tailEnvelope0012ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0012ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5308383 5334924
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5334923 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0012FailureFibreExactOne
      tailEnvelope0012ThreeFibreTopOneOne tailEnvelope0012ThreeFibreTopTwoOne
      tailEnvelope0012ThreeFibreTopThreeOne
      (lower := 5308383) (upper := 5334923) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0012ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0012ThreeFibreTopOneOne,
        tailEnvelope0012ThreeFibreTopTwoOne, tailEnvelope0012ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0012FailureFibreExactThree
      tailEnvelope0012ThreeFibreTopOneThree tailEnvelope0012ThreeFibreTopTwoThree
      tailEnvelope0012ThreeFibreTopThreeThree
      (lower := 5308383) (upper := 5334923) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0012ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0012ThreeFibreTopOneThree,
        tailEnvelope0012ThreeFibreTopTwoThree, tailEnvelope0012ThreeFibreTopThreeThree])

def tailEnvelope0013ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![86, 85, 81, 85, 82, 84, 85, 83, 83]

def tailEnvelope0013ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![82, 84, 81, 83, 82, 83, 82, 82, 82]

def tailEnvelope0013ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![82, 83, 80, 82, 81, 83, 81, 82, 82]

theorem tailEnvelope0013ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0013FailureFibreExactOne
      tailEnvelope0013ThreeFibreTopOneOne
      tailEnvelope0013ThreeFibreTopTwoOne
      tailEnvelope0013ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0013ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![84, 84, 84, 86, 83, 85, 83, 85, 81]

def tailEnvelope0013ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![83, 83, 83, 82, 82, 82, 83, 85, 81]

def tailEnvelope0013ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![83, 82, 83, 82, 81, 82, 80, 82, 81]

theorem tailEnvelope0013ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0013FailureFibreExactThree
      tailEnvelope0013ThreeFibreTopOneThree
      tailEnvelope0013ThreeFibreTopTwoThree
      tailEnvelope0013ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0013ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5334924 5361598
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5361597 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0013FailureFibreExactOne
      tailEnvelope0013ThreeFibreTopOneOne tailEnvelope0013ThreeFibreTopTwoOne
      tailEnvelope0013ThreeFibreTopThreeOne
      (lower := 5334924) (upper := 5361597) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0013ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0013ThreeFibreTopOneOne,
        tailEnvelope0013ThreeFibreTopTwoOne, tailEnvelope0013ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0013FailureFibreExactThree
      tailEnvelope0013ThreeFibreTopOneThree tailEnvelope0013ThreeFibreTopTwoThree
      tailEnvelope0013ThreeFibreTopThreeThree
      (lower := 5334924) (upper := 5361597) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0013ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0013ThreeFibreTopOneThree,
        tailEnvelope0013ThreeFibreTopTwoThree, tailEnvelope0013ThreeFibreTopThreeThree])

def tailEnvelope0014ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![86, 85, 82, 86, 83, 85, 85, 83, 83]

def tailEnvelope0014ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![82, 84, 81, 85, 82, 84, 83, 83, 83]

def tailEnvelope0014ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![82, 84, 80, 82, 81, 84, 82, 82, 82]

theorem tailEnvelope0014ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0014FailureFibreExactOne
      tailEnvelope0014ThreeFibreTopOneOne
      tailEnvelope0014ThreeFibreTopTwoOne
      tailEnvelope0014ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0014ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![84, 85, 86, 86, 84, 87, 83, 85, 82]

def tailEnvelope0014ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![83, 83, 84, 83, 83, 83, 83, 85, 81]

def tailEnvelope0014ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![83, 82, 83, 83, 81, 82, 81, 82, 81]

theorem tailEnvelope0014ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0014FailureFibreExactThree
      tailEnvelope0014ThreeFibreTopOneThree
      tailEnvelope0014ThreeFibreTopTwoThree
      tailEnvelope0014ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0014ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5361598 5388405
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5388404 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0014FailureFibreExactOne
      tailEnvelope0014ThreeFibreTopOneOne tailEnvelope0014ThreeFibreTopTwoOne
      tailEnvelope0014ThreeFibreTopThreeOne
      (lower := 5361598) (upper := 5388404) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0014ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0014ThreeFibreTopOneOne,
        tailEnvelope0014ThreeFibreTopTwoOne, tailEnvelope0014ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0014FailureFibreExactThree
      tailEnvelope0014ThreeFibreTopOneThree tailEnvelope0014ThreeFibreTopTwoThree
      tailEnvelope0014ThreeFibreTopThreeThree
      (lower := 5361598) (upper := 5388404) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0014ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0014ThreeFibreTopOneThree,
        tailEnvelope0014ThreeFibreTopTwoThree, tailEnvelope0014ThreeFibreTopThreeThree])

def tailEnvelope0015ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![87, 86, 82, 86, 83, 86, 85, 84, 83]

def tailEnvelope0015ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![83, 84, 82, 85, 83, 84, 83, 83, 83]

def tailEnvelope0015ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![82, 84, 81, 83, 81, 84, 83, 82, 83]

theorem tailEnvelope0015ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0015FailureFibreExactOne
      tailEnvelope0015ThreeFibreTopOneOne
      tailEnvelope0015ThreeFibreTopTwoOne
      tailEnvelope0015ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0015ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![84, 85, 86, 87, 85, 88, 83, 86, 82]

def tailEnvelope0015ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![84, 84, 84, 83, 84, 83, 83, 85, 81]

def tailEnvelope0015ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![84, 82, 83, 83, 82, 82, 82, 83, 81]

theorem tailEnvelope0015ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0015FailureFibreExactThree
      tailEnvelope0015ThreeFibreTopOneThree
      tailEnvelope0015ThreeFibreTopTwoThree
      tailEnvelope0015ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0015ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5388405 5415347
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5415346 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0015FailureFibreExactOne
      tailEnvelope0015ThreeFibreTopOneOne tailEnvelope0015ThreeFibreTopTwoOne
      tailEnvelope0015ThreeFibreTopThreeOne
      (lower := 5388405) (upper := 5415346) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0015ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0015ThreeFibreTopOneOne,
        tailEnvelope0015ThreeFibreTopTwoOne, tailEnvelope0015ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0015FailureFibreExactThree
      tailEnvelope0015ThreeFibreTopOneThree tailEnvelope0015ThreeFibreTopTwoThree
      tailEnvelope0015ThreeFibreTopThreeThree
      (lower := 5388405) (upper := 5415346) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0015ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0015ThreeFibreTopOneThree,
        tailEnvelope0015ThreeFibreTopTwoThree, tailEnvelope0015ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
