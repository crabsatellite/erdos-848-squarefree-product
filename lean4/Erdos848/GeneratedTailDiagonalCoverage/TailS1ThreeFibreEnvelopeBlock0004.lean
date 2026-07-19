import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0004
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0064ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![107, 106, 105, 109, 106, 108, 105, 111, 107]

def tailEnvelope0064ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![105, 106, 105, 106, 105, 106, 104, 108, 106]

def tailEnvelope0064ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![104, 105, 105, 105, 104, 105, 104, 104, 104]

theorem tailEnvelope0064ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0064FailureFibreExactOne
      tailEnvelope0064ThreeFibreTopOneOne
      tailEnvelope0064ThreeFibreTopTwoOne
      tailEnvelope0064ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0064ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![109, 107, 106, 108, 105, 106, 108, 108, 104]

def tailEnvelope0064ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![104, 106, 105, 106, 105, 105, 106, 106, 103]

def tailEnvelope0064ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![104, 104, 105, 106, 104, 105, 105, 105, 103]

theorem tailEnvelope0064ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0064FailureFibreExactThree
      tailEnvelope0064ThreeFibreTopOneThree
      tailEnvelope0064ThreeFibreTopTwoThree
      tailEnvelope0064ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0064ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6880110 6914510
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6914509 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0064FailureFibreExactOne
      tailEnvelope0064ThreeFibreTopOneOne tailEnvelope0064ThreeFibreTopTwoOne
      tailEnvelope0064ThreeFibreTopThreeOne
      (lower := 6880110) (upper := 6914509) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0064FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0064ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0064ThreeFibreTopOneOne,
        tailEnvelope0064ThreeFibreTopTwoOne, tailEnvelope0064ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0064FailureFibreExactThree
      tailEnvelope0064ThreeFibreTopOneThree tailEnvelope0064ThreeFibreTopTwoThree
      tailEnvelope0064ThreeFibreTopThreeThree
      (lower := 6880110) (upper := 6914509) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0064FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0064ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0064ThreeFibreTopOneThree,
        tailEnvelope0064ThreeFibreTopTwoThree, tailEnvelope0064ThreeFibreTopThreeThree])

def tailEnvelope0065ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![109, 106, 106, 109, 106, 108, 106, 111, 107]

def tailEnvelope0065ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![106, 106, 105, 107, 105, 106, 105, 108, 107]

def tailEnvelope0065ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![104, 106, 105, 106, 104, 105, 104, 105, 106]

theorem tailEnvelope0065ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0065FailureFibreExactOne
      tailEnvelope0065ThreeFibreTopOneOne
      tailEnvelope0065ThreeFibreTopTwoOne
      tailEnvelope0065ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0065ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![109, 108, 106, 109, 106, 107, 108, 111, 104]

def tailEnvelope0065ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![105, 106, 105, 108, 105, 106, 106, 106, 104]

def tailEnvelope0065ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![104, 104, 105, 106, 104, 106, 105, 106, 103]

theorem tailEnvelope0065ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0065FailureFibreExactThree
      tailEnvelope0065ThreeFibreTopOneThree
      tailEnvelope0065ThreeFibreTopTwoThree
      tailEnvelope0065ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0065ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6914510 6949082
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6949081 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0065FailureFibreExactOne
      tailEnvelope0065ThreeFibreTopOneOne tailEnvelope0065ThreeFibreTopTwoOne
      tailEnvelope0065ThreeFibreTopThreeOne
      (lower := 6914510) (upper := 6949081) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0065FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0065ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0065ThreeFibreTopOneOne,
        tailEnvelope0065ThreeFibreTopTwoOne, tailEnvelope0065ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0065FailureFibreExactThree
      tailEnvelope0065ThreeFibreTopOneThree tailEnvelope0065ThreeFibreTopTwoThree
      tailEnvelope0065ThreeFibreTopThreeThree
      (lower := 6914510) (upper := 6949081) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0065FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0065ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0065ThreeFibreTopOneThree,
        tailEnvelope0065ThreeFibreTopTwoThree, tailEnvelope0065ThreeFibreTopThreeThree])

def tailEnvelope0066ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![109, 107, 107, 110, 107, 109, 107, 111, 107]

def tailEnvelope0066ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![106, 107, 107, 108, 105, 106, 106, 108, 107]

def tailEnvelope0066ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![105, 107, 106, 107, 105, 106, 105, 106, 107]

theorem tailEnvelope0066ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0066FailureFibreExactOne
      tailEnvelope0066ThreeFibreTopOneOne
      tailEnvelope0066ThreeFibreTopTwoOne
      tailEnvelope0066ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0066ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![110, 108, 106, 109, 108, 108, 109, 111, 105]

def tailEnvelope0066ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![105, 107, 106, 108, 105, 106, 108, 106, 104]

def tailEnvelope0066ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![105, 105, 105, 108, 104, 106, 107, 106, 104]

theorem tailEnvelope0066ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0066FailureFibreExactThree
      tailEnvelope0066ThreeFibreTopOneThree
      tailEnvelope0066ThreeFibreTopTwoThree
      tailEnvelope0066ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0066ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6949082 6983827
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6983826 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0066FailureFibreExactOne
      tailEnvelope0066ThreeFibreTopOneOne tailEnvelope0066ThreeFibreTopTwoOne
      tailEnvelope0066ThreeFibreTopThreeOne
      (lower := 6949082) (upper := 6983826) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0066FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0066ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0066ThreeFibreTopOneOne,
        tailEnvelope0066ThreeFibreTopTwoOne, tailEnvelope0066ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0066FailureFibreExactThree
      tailEnvelope0066ThreeFibreTopOneThree tailEnvelope0066ThreeFibreTopTwoThree
      tailEnvelope0066ThreeFibreTopThreeThree
      (lower := 6949082) (upper := 6983826) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0066FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0066ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0066ThreeFibreTopOneThree,
        tailEnvelope0066ThreeFibreTopTwoThree, tailEnvelope0066ThreeFibreTopThreeThree])

def tailEnvelope0067ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![110, 107, 108, 110, 107, 109, 108, 112, 108]

def tailEnvelope0067ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![106, 107, 107, 109, 105, 107, 106, 108, 107]

def tailEnvelope0067ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![106, 107, 107, 107, 105, 106, 105, 106, 107]

theorem tailEnvelope0067ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0067FailureFibreExactOne
      tailEnvelope0067ThreeFibreTopOneOne
      tailEnvelope0067ThreeFibreTopTwoOne
      tailEnvelope0067ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0067ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![110, 108, 107, 109, 109, 108, 109, 112, 106]

def tailEnvelope0067ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![106, 108, 106, 109, 105, 107, 108, 107, 106]

def tailEnvelope0067ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![105, 106, 106, 108, 105, 106, 107, 106, 105]

theorem tailEnvelope0067ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0067FailureFibreExactThree
      tailEnvelope0067ThreeFibreTopOneThree
      tailEnvelope0067ThreeFibreTopTwoThree
      tailEnvelope0067ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0067ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6983827 7018746
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7018745 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0067FailureFibreExactOne
      tailEnvelope0067ThreeFibreTopOneOne tailEnvelope0067ThreeFibreTopTwoOne
      tailEnvelope0067ThreeFibreTopThreeOne
      (lower := 6983827) (upper := 7018745) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0067FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0067ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0067ThreeFibreTopOneOne,
        tailEnvelope0067ThreeFibreTopTwoOne, tailEnvelope0067ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0067FailureFibreExactThree
      tailEnvelope0067ThreeFibreTopOneThree tailEnvelope0067ThreeFibreTopTwoThree
      tailEnvelope0067ThreeFibreTopThreeThree
      (lower := 6983827) (upper := 7018745) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0067FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0067ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0067ThreeFibreTopOneThree,
        tailEnvelope0067ThreeFibreTopTwoThree, tailEnvelope0067ThreeFibreTopThreeThree])

def tailEnvelope0068ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![110, 108, 108, 111, 107, 109, 108, 112, 109]

def tailEnvelope0068ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![107, 107, 107, 109, 106, 108, 106, 108, 108]

def tailEnvelope0068ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![107, 107, 107, 107, 105, 107, 106, 107, 107]

theorem tailEnvelope0068ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0068FailureFibreExactOne
      tailEnvelope0068ThreeFibreTopOneOne
      tailEnvelope0068ThreeFibreTopTwoOne
      tailEnvelope0068ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0068ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![110, 108, 108, 109, 110, 109, 109, 112, 107]

def tailEnvelope0068ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![106, 108, 107, 109, 105, 108, 108, 108, 106]

def tailEnvelope0068ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![106, 106, 106, 109, 105, 106, 108, 106, 106]

theorem tailEnvelope0068ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0068FailureFibreExactThree
      tailEnvelope0068ThreeFibreTopOneThree
      tailEnvelope0068ThreeFibreTopTwoThree
      tailEnvelope0068ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0068ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7018746 7053839
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7053838 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0068FailureFibreExactOne
      tailEnvelope0068ThreeFibreTopOneOne tailEnvelope0068ThreeFibreTopTwoOne
      tailEnvelope0068ThreeFibreTopThreeOne
      (lower := 7018746) (upper := 7053838) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0068FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0068ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0068ThreeFibreTopOneOne,
        tailEnvelope0068ThreeFibreTopTwoOne, tailEnvelope0068ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0068FailureFibreExactThree
      tailEnvelope0068ThreeFibreTopOneThree tailEnvelope0068ThreeFibreTopTwoThree
      tailEnvelope0068ThreeFibreTopThreeThree
      (lower := 7018746) (upper := 7053838) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0068FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0068ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0068ThreeFibreTopOneThree,
        tailEnvelope0068ThreeFibreTopTwoThree, tailEnvelope0068ThreeFibreTopThreeThree])

def tailEnvelope0069ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![111, 109, 108, 111, 107, 109, 109, 112, 109]

def tailEnvelope0069ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![107, 107, 107, 109, 107, 108, 107, 108, 108]

def tailEnvelope0069ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![107, 107, 107, 107, 106, 108, 106, 108, 107]

theorem tailEnvelope0069ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0069FailureFibreExactOne
      tailEnvelope0069ThreeFibreTopOneOne
      tailEnvelope0069ThreeFibreTopTwoOne
      tailEnvelope0069ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0069ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![110, 108, 108, 110, 110, 109, 109, 112, 109]

def tailEnvelope0069ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![107, 108, 107, 109, 106, 108, 108, 108, 108]

def tailEnvelope0069ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![106, 107, 106, 109, 105, 107, 108, 107, 107]

theorem tailEnvelope0069ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0069FailureFibreExactThree
      tailEnvelope0069ThreeFibreTopOneThree
      tailEnvelope0069ThreeFibreTopTwoThree
      tailEnvelope0069ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0069ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7053839 7089108
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7089107 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0069FailureFibreExactOne
      tailEnvelope0069ThreeFibreTopOneOne tailEnvelope0069ThreeFibreTopTwoOne
      tailEnvelope0069ThreeFibreTopThreeOne
      (lower := 7053839) (upper := 7089107) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0069FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0069ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0069ThreeFibreTopOneOne,
        tailEnvelope0069ThreeFibreTopTwoOne, tailEnvelope0069ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0069FailureFibreExactThree
      tailEnvelope0069ThreeFibreTopOneThree tailEnvelope0069ThreeFibreTopTwoThree
      tailEnvelope0069ThreeFibreTopThreeThree
      (lower := 7053839) (upper := 7089107) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0069FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0069ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0069ThreeFibreTopOneThree,
        tailEnvelope0069ThreeFibreTopTwoThree, tailEnvelope0069ThreeFibreTopThreeThree])

def tailEnvelope0070ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![111, 109, 108, 111, 107, 109, 109, 112, 110]

def tailEnvelope0070ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![108, 109, 107, 109, 107, 109, 107, 109, 108]

def tailEnvelope0070ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![107, 108, 107, 107, 107, 109, 107, 109, 107]

theorem tailEnvelope0070ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0070FailureFibreExactOne
      tailEnvelope0070ThreeFibreTopOneOne
      tailEnvelope0070ThreeFibreTopTwoOne
      tailEnvelope0070ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0070ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![110, 108, 109, 110, 110, 109, 109, 112, 109]

def tailEnvelope0070ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![107, 108, 107, 109, 107, 108, 108, 108, 108]

def tailEnvelope0070ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![106, 107, 106, 109, 107, 107, 108, 107, 108]

theorem tailEnvelope0070ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0070FailureFibreExactThree
      tailEnvelope0070ThreeFibreTopOneThree
      tailEnvelope0070ThreeFibreTopTwoThree
      tailEnvelope0070ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0070ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7089108 7124553
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7124552 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0070FailureFibreExactOne
      tailEnvelope0070ThreeFibreTopOneOne tailEnvelope0070ThreeFibreTopTwoOne
      tailEnvelope0070ThreeFibreTopThreeOne
      (lower := 7089108) (upper := 7124552) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0070FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0070ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0070ThreeFibreTopOneOne,
        tailEnvelope0070ThreeFibreTopTwoOne, tailEnvelope0070ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0070FailureFibreExactThree
      tailEnvelope0070ThreeFibreTopOneThree tailEnvelope0070ThreeFibreTopTwoThree
      tailEnvelope0070ThreeFibreTopThreeThree
      (lower := 7089108) (upper := 7124552) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0070FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0070ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0070ThreeFibreTopOneThree,
        tailEnvelope0070ThreeFibreTopTwoThree, tailEnvelope0070ThreeFibreTopThreeThree])

def tailEnvelope0071ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![111, 109, 109, 111, 108, 109, 110, 112, 110]

def tailEnvelope0071ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![108, 109, 108, 109, 107, 109, 108, 109, 108]

def tailEnvelope0071ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![108, 108, 108, 107, 107, 109, 107, 109, 108]

theorem tailEnvelope0071ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0071FailureFibreExactOne
      tailEnvelope0071ThreeFibreTopOneOne
      tailEnvelope0071ThreeFibreTopTwoOne
      tailEnvelope0071ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0071ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![111, 108, 111, 111, 111, 109, 110, 112, 109]

def tailEnvelope0071ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![108, 108, 108, 110, 108, 108, 108, 108, 108]

def tailEnvelope0071ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![107, 108, 107, 110, 107, 108, 108, 108, 108]

theorem tailEnvelope0071ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0071FailureFibreExactThree
      tailEnvelope0071ThreeFibreTopOneThree
      tailEnvelope0071ThreeFibreTopTwoThree
      tailEnvelope0071ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0071ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7124553 7160175
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7160174 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0071FailureFibreExactOne
      tailEnvelope0071ThreeFibreTopOneOne tailEnvelope0071ThreeFibreTopTwoOne
      tailEnvelope0071ThreeFibreTopThreeOne
      (lower := 7124553) (upper := 7160174) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0071FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0071ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0071ThreeFibreTopOneOne,
        tailEnvelope0071ThreeFibreTopTwoOne, tailEnvelope0071ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0071FailureFibreExactThree
      tailEnvelope0071ThreeFibreTopOneThree tailEnvelope0071ThreeFibreTopTwoThree
      tailEnvelope0071ThreeFibreTopThreeThree
      (lower := 7124553) (upper := 7160174) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0071FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0071ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0071ThreeFibreTopOneThree,
        tailEnvelope0071ThreeFibreTopTwoThree, tailEnvelope0071ThreeFibreTopThreeThree])

def tailEnvelope0072ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![111, 109, 109, 111, 109, 112, 111, 112, 111]

def tailEnvelope0072ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![109, 109, 109, 109, 108, 110, 109, 110, 109]

def tailEnvelope0072ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![108, 109, 109, 109, 108, 109, 108, 109, 108]

theorem tailEnvelope0072ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0072FailureFibreExactOne
      tailEnvelope0072ThreeFibreTopOneOne
      tailEnvelope0072ThreeFibreTopTwoOne
      tailEnvelope0072ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0072ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![112, 109, 111, 112, 112, 109, 111, 112, 111]

def tailEnvelope0072ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![108, 109, 108, 111, 108, 109, 108, 108, 108]

def tailEnvelope0072ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![107, 108, 107, 110, 108, 108, 108, 108, 108]

theorem tailEnvelope0072ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0072FailureFibreExactThree
      tailEnvelope0072ThreeFibreTopOneThree
      tailEnvelope0072ThreeFibreTopTwoThree
      tailEnvelope0072ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0072ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7160175 7195975
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7195974 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0072FailureFibreExactOne
      tailEnvelope0072ThreeFibreTopOneOne tailEnvelope0072ThreeFibreTopTwoOne
      tailEnvelope0072ThreeFibreTopThreeOne
      (lower := 7160175) (upper := 7195974) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0072FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0072ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0072ThreeFibreTopOneOne,
        tailEnvelope0072ThreeFibreTopTwoOne, tailEnvelope0072ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0072FailureFibreExactThree
      tailEnvelope0072ThreeFibreTopOneThree tailEnvelope0072ThreeFibreTopTwoThree
      tailEnvelope0072ThreeFibreTopThreeThree
      (lower := 7160175) (upper := 7195974) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0072FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0072ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0072ThreeFibreTopOneThree,
        tailEnvelope0072ThreeFibreTopTwoThree, tailEnvelope0072ThreeFibreTopThreeThree])

def tailEnvelope0073ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![112, 109, 110, 111, 110, 112, 111, 113, 111]

def tailEnvelope0073ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![109, 109, 109, 111, 109, 110, 109, 110, 109]

def tailEnvelope0073ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![108, 109, 109, 109, 109, 110, 108, 110, 109]

theorem tailEnvelope0073ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0073FailureFibreExactOne
      tailEnvelope0073ThreeFibreTopOneOne
      tailEnvelope0073ThreeFibreTopTwoOne
      tailEnvelope0073ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0073ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![113, 109, 112, 113, 112, 110, 111, 113, 112]

def tailEnvelope0073ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![109, 109, 109, 111, 109, 109, 109, 109, 110]

def tailEnvelope0073ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![109, 109, 108, 111, 108, 109, 109, 109, 108]

theorem tailEnvelope0073ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0073FailureFibreExactThree
      tailEnvelope0073ThreeFibreTopOneThree
      tailEnvelope0073ThreeFibreTopTwoThree
      tailEnvelope0073ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0073ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7195975 7231954
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7231953 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0073FailureFibreExactOne
      tailEnvelope0073ThreeFibreTopOneOne tailEnvelope0073ThreeFibreTopTwoOne
      tailEnvelope0073ThreeFibreTopThreeOne
      (lower := 7195975) (upper := 7231953) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0073FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0073ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0073ThreeFibreTopOneOne,
        tailEnvelope0073ThreeFibreTopTwoOne, tailEnvelope0073ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0073FailureFibreExactThree
      tailEnvelope0073ThreeFibreTopOneThree tailEnvelope0073ThreeFibreTopTwoThree
      tailEnvelope0073ThreeFibreTopThreeThree
      (lower := 7195975) (upper := 7231953) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0073FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0073ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0073ThreeFibreTopOneThree,
        tailEnvelope0073ThreeFibreTopTwoThree, tailEnvelope0073ThreeFibreTopThreeThree])

def tailEnvelope0074ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![112, 112, 111, 112, 111, 113, 111, 113, 112]

def tailEnvelope0074ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![110, 110, 110, 112, 110, 111, 110, 111, 110]

def tailEnvelope0074ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![109, 110, 110, 110, 110, 110, 109, 110, 110]

theorem tailEnvelope0074ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0074FailureFibreExactOne
      tailEnvelope0074ThreeFibreTopOneOne
      tailEnvelope0074ThreeFibreTopTwoOne
      tailEnvelope0074ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0074ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![114, 111, 112, 113, 112, 110, 112, 113, 113]

def tailEnvelope0074ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![110, 110, 109, 111, 110, 110, 111, 110, 110]

def tailEnvelope0074ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![110, 110, 109, 111, 109, 110, 110, 110, 108]

theorem tailEnvelope0074ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0074FailureFibreExactThree
      tailEnvelope0074ThreeFibreTopOneThree
      tailEnvelope0074ThreeFibreTopTwoThree
      tailEnvelope0074ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0074ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7231954 7268113
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7268112 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0074FailureFibreExactOne
      tailEnvelope0074ThreeFibreTopOneOne tailEnvelope0074ThreeFibreTopTwoOne
      tailEnvelope0074ThreeFibreTopThreeOne
      (lower := 7231954) (upper := 7268112) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0074FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0074ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0074ThreeFibreTopOneOne,
        tailEnvelope0074ThreeFibreTopTwoOne, tailEnvelope0074ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0074FailureFibreExactThree
      tailEnvelope0074ThreeFibreTopOneThree tailEnvelope0074ThreeFibreTopTwoThree
      tailEnvelope0074ThreeFibreTopThreeThree
      (lower := 7231954) (upper := 7268112) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0074FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0074ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0074ThreeFibreTopOneThree,
        tailEnvelope0074ThreeFibreTopTwoThree, tailEnvelope0074ThreeFibreTopThreeThree])

def tailEnvelope0075ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![113, 112, 111, 113, 112, 113, 112, 115, 112]

def tailEnvelope0075ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![110, 112, 110, 112, 111, 111, 110, 112, 112]

def tailEnvelope0075ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![109, 111, 110, 111, 111, 110, 110, 111, 110]

theorem tailEnvelope0075ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0075FailureFibreExactOne
      tailEnvelope0075ThreeFibreTopOneOne
      tailEnvelope0075ThreeFibreTopTwoOne
      tailEnvelope0075ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0075ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![114, 112, 113, 116, 112, 112, 112, 114, 113]

def tailEnvelope0075ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![110, 110, 109, 112, 111, 110, 111, 111, 112]

def tailEnvelope0075ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![110, 110, 109, 112, 110, 110, 110, 110, 109]

theorem tailEnvelope0075ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0075FailureFibreExactThree
      tailEnvelope0075ThreeFibreTopOneThree
      tailEnvelope0075ThreeFibreTopTwoThree
      tailEnvelope0075ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0075ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7268113 7304453
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7304452 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0075FailureFibreExactOne
      tailEnvelope0075ThreeFibreTopOneOne tailEnvelope0075ThreeFibreTopTwoOne
      tailEnvelope0075ThreeFibreTopThreeOne
      (lower := 7268113) (upper := 7304452) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0075FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0075ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0075ThreeFibreTopOneOne,
        tailEnvelope0075ThreeFibreTopTwoOne, tailEnvelope0075ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0075FailureFibreExactThree
      tailEnvelope0075ThreeFibreTopOneThree tailEnvelope0075ThreeFibreTopTwoThree
      tailEnvelope0075ThreeFibreTopThreeThree
      (lower := 7268113) (upper := 7304452) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0075FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0075ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0075ThreeFibreTopOneThree,
        tailEnvelope0075ThreeFibreTopTwoThree, tailEnvelope0075ThreeFibreTopThreeThree])

def tailEnvelope0076ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![113, 112, 111, 114, 112, 113, 112, 116, 113]

def tailEnvelope0076ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![111, 112, 111, 112, 111, 112, 110, 112, 112]

def tailEnvelope0076ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![111, 112, 110, 111, 111, 112, 110, 111, 112]

theorem tailEnvelope0076ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0076FailureFibreExactOne
      tailEnvelope0076ThreeFibreTopOneOne
      tailEnvelope0076ThreeFibreTopTwoOne
      tailEnvelope0076ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0076ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![114, 112, 113, 116, 112, 112, 112, 115, 113]

def tailEnvelope0076ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![111, 110, 110, 112, 111, 111, 112, 111, 112]

def tailEnvelope0076ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![110, 110, 110, 112, 110, 110, 111, 110, 110]

theorem tailEnvelope0076ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0076FailureFibreExactThree
      tailEnvelope0076ThreeFibreTopOneThree
      tailEnvelope0076ThreeFibreTopTwoThree
      tailEnvelope0076ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0076ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7304453 7340975
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7340974 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0076FailureFibreExactOne
      tailEnvelope0076ThreeFibreTopOneOne tailEnvelope0076ThreeFibreTopTwoOne
      tailEnvelope0076ThreeFibreTopThreeOne
      (lower := 7304453) (upper := 7340974) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0076FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0076ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0076ThreeFibreTopOneOne,
        tailEnvelope0076ThreeFibreTopTwoOne, tailEnvelope0076ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0076FailureFibreExactThree
      tailEnvelope0076ThreeFibreTopOneThree tailEnvelope0076ThreeFibreTopTwoThree
      tailEnvelope0076ThreeFibreTopThreeThree
      (lower := 7304453) (upper := 7340974) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0076FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0076ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0076ThreeFibreTopOneThree,
        tailEnvelope0076ThreeFibreTopTwoThree, tailEnvelope0076ThreeFibreTopThreeThree])

def tailEnvelope0077ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![113, 113, 111, 115, 112, 113, 114, 116, 113]

def tailEnvelope0077ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![111, 113, 111, 113, 111, 113, 110, 113, 113]

def tailEnvelope0077ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![111, 112, 111, 111, 111, 112, 110, 111, 112]

theorem tailEnvelope0077ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0077FailureFibreExactOne
      tailEnvelope0077ThreeFibreTopOneOne
      tailEnvelope0077ThreeFibreTopTwoOne
      tailEnvelope0077ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0077ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![114, 112, 113, 116, 112, 113, 112, 115, 113]

def tailEnvelope0077ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![112, 111, 111, 113, 112, 111, 112, 112, 112]

def tailEnvelope0077ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![110, 111, 111, 112, 110, 111, 111, 111, 111]

theorem tailEnvelope0077ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0077FailureFibreExactThree
      tailEnvelope0077ThreeFibreTopOneThree
      tailEnvelope0077ThreeFibreTopTwoThree
      tailEnvelope0077ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0077ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7340975 7377679
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7377678 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0077FailureFibreExactOne
      tailEnvelope0077ThreeFibreTopOneOne tailEnvelope0077ThreeFibreTopTwoOne
      tailEnvelope0077ThreeFibreTopThreeOne
      (lower := 7340975) (upper := 7377678) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0077FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0077ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0077ThreeFibreTopOneOne,
        tailEnvelope0077ThreeFibreTopTwoOne, tailEnvelope0077ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0077FailureFibreExactThree
      tailEnvelope0077ThreeFibreTopOneThree tailEnvelope0077ThreeFibreTopTwoThree
      tailEnvelope0077ThreeFibreTopThreeThree
      (lower := 7340975) (upper := 7377678) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0077FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0077ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0077ThreeFibreTopOneThree,
        tailEnvelope0077ThreeFibreTopTwoThree, tailEnvelope0077ThreeFibreTopThreeThree])

def tailEnvelope0078ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![114, 114, 111, 116, 112, 113, 114, 117, 114]

def tailEnvelope0078ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![113, 114, 111, 113, 111, 113, 111, 113, 113]

def tailEnvelope0078ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![111, 113, 111, 111, 111, 112, 110, 112, 113]

theorem tailEnvelope0078ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0078FailureFibreExactOne
      tailEnvelope0078ThreeFibreTopOneOne
      tailEnvelope0078ThreeFibreTopTwoOne
      tailEnvelope0078ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0078ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![115, 112, 113, 116, 112, 113, 113, 115, 113]

def tailEnvelope0078ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![113, 111, 112, 113, 112, 111, 112, 112, 112]

def tailEnvelope0078ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![110, 111, 112, 113, 111, 111, 112, 111, 112]

theorem tailEnvelope0078ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0078FailureFibreExactThree
      tailEnvelope0078ThreeFibreTopOneThree
      tailEnvelope0078ThreeFibreTopTwoThree
      tailEnvelope0078ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0078ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7377679 7414567
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7414566 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0078FailureFibreExactOne
      tailEnvelope0078ThreeFibreTopOneOne tailEnvelope0078ThreeFibreTopTwoOne
      tailEnvelope0078ThreeFibreTopThreeOne
      (lower := 7377679) (upper := 7414566) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0078FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0078ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0078ThreeFibreTopOneOne,
        tailEnvelope0078ThreeFibreTopTwoOne, tailEnvelope0078ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0078FailureFibreExactThree
      tailEnvelope0078ThreeFibreTopOneThree tailEnvelope0078ThreeFibreTopTwoThree
      tailEnvelope0078ThreeFibreTopThreeThree
      (lower := 7377679) (upper := 7414566) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0078FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0078ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0078ThreeFibreTopOneThree,
        tailEnvelope0078ThreeFibreTopTwoThree, tailEnvelope0078ThreeFibreTopThreeThree])

def tailEnvelope0079ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![116, 116, 112, 116, 112, 113, 115, 117, 114]

def tailEnvelope0079ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![113, 115, 111, 113, 112, 113, 111, 113, 113]

def tailEnvelope0079ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![111, 114, 111, 112, 111, 112, 111, 112, 113]

theorem tailEnvelope0079ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0079FailureFibreExactOne
      tailEnvelope0079ThreeFibreTopOneOne
      tailEnvelope0079ThreeFibreTopTwoOne
      tailEnvelope0079ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0079ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![116, 112, 113, 116, 113, 114, 113, 116, 113]

def tailEnvelope0079ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![114, 112, 112, 113, 112, 113, 112, 113, 112]

def tailEnvelope0079ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![111, 111, 112, 113, 111, 111, 112, 112, 112]

theorem tailEnvelope0079ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0079FailureFibreExactThree
      tailEnvelope0079ThreeFibreTopOneThree
      tailEnvelope0079ThreeFibreTopTwoThree
      tailEnvelope0079ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0079ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7414567 7451639
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7451638 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0079FailureFibreExactOne
      tailEnvelope0079ThreeFibreTopOneOne tailEnvelope0079ThreeFibreTopTwoOne
      tailEnvelope0079ThreeFibreTopThreeOne
      (lower := 7414567) (upper := 7451638) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0079FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0079ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0079ThreeFibreTopOneOne,
        tailEnvelope0079ThreeFibreTopTwoOne, tailEnvelope0079ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0079FailureFibreExactThree
      tailEnvelope0079ThreeFibreTopOneThree tailEnvelope0079ThreeFibreTopTwoThree
      tailEnvelope0079ThreeFibreTopThreeThree
      (lower := 7414567) (upper := 7451638) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0079FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0079ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0079ThreeFibreTopOneThree,
        tailEnvelope0079ThreeFibreTopTwoThree, tailEnvelope0079ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
