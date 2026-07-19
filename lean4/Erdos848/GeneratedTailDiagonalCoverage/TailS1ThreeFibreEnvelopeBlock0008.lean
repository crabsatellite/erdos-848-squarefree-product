import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0008
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0128ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![144, 147, 144, 146, 143, 148, 143, 145, 145]

def tailEnvelope0128ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![144, 143, 142, 145, 141, 146, 142, 144, 144]

def tailEnvelope0128ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![142, 142, 141, 142, 140, 145, 141, 143, 143]

theorem tailEnvelope0128ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0128FailureFibreExactOne
      tailEnvelope0128ThreeFibreTopOneOne
      tailEnvelope0128ThreeFibreTopTwoOne
      tailEnvelope0128ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0128ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![145, 144, 145, 143, 142, 144, 146, 142, 142]

def tailEnvelope0128ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![143, 141, 144, 142, 141, 142, 143, 142, 142]

def tailEnvelope0128ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![143, 141, 144, 142, 141, 142, 142, 142, 142]

theorem tailEnvelope0128ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0128FailureFibreExactThree
      tailEnvelope0128ThreeFibreTopOneThree
      tailEnvelope0128ThreeFibreTopTwoThree
      tailEnvelope0128ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0128ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9467195 9514530
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9514529 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0128FailureFibreExactOne
      tailEnvelope0128ThreeFibreTopOneOne tailEnvelope0128ThreeFibreTopTwoOne
      tailEnvelope0128ThreeFibreTopThreeOne
      (lower := 9467195) (upper := 9514529) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0128ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0128ThreeFibreTopOneOne,
        tailEnvelope0128ThreeFibreTopTwoOne, tailEnvelope0128ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0128FailureFibreExactThree
      tailEnvelope0128ThreeFibreTopOneThree tailEnvelope0128ThreeFibreTopTwoThree
      tailEnvelope0128ThreeFibreTopThreeThree
      (lower := 9467195) (upper := 9514529) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0128ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0128ThreeFibreTopOneThree,
        tailEnvelope0128ThreeFibreTopTwoThree, tailEnvelope0128ThreeFibreTopThreeThree])

def tailEnvelope0129ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![144, 148, 145, 146, 145, 148, 145, 145, 145]

def tailEnvelope0129ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![144, 143, 142, 146, 142, 147, 144, 144, 144]

def tailEnvelope0129ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![142, 143, 141, 144, 140, 145, 144, 144, 143]

theorem tailEnvelope0129ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0129FailureFibreExactOne
      tailEnvelope0129ThreeFibreTopOneOne
      tailEnvelope0129ThreeFibreTopTwoOne
      tailEnvelope0129ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0129ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![146, 146, 145, 144, 143, 144, 146, 144, 143]

def tailEnvelope0129ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![144, 141, 145, 143, 143, 143, 144, 142, 143]

def tailEnvelope0129ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![144, 141, 144, 142, 142, 142, 142, 142, 143]

theorem tailEnvelope0129ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0129FailureFibreExactThree
      tailEnvelope0129ThreeFibreTopOneThree
      tailEnvelope0129ThreeFibreTopTwoThree
      tailEnvelope0129ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0129ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9514530 9562102
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9562101 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0129FailureFibreExactOne
      tailEnvelope0129ThreeFibreTopOneOne tailEnvelope0129ThreeFibreTopTwoOne
      tailEnvelope0129ThreeFibreTopThreeOne
      (lower := 9514530) (upper := 9562101) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0129ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0129ThreeFibreTopOneOne,
        tailEnvelope0129ThreeFibreTopTwoOne, tailEnvelope0129ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0129FailureFibreExactThree
      tailEnvelope0129ThreeFibreTopOneThree tailEnvelope0129ThreeFibreTopTwoThree
      tailEnvelope0129ThreeFibreTopThreeThree
      (lower := 9514530) (upper := 9562101) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0129ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0129ThreeFibreTopOneThree,
        tailEnvelope0129ThreeFibreTopTwoThree, tailEnvelope0129ThreeFibreTopThreeThree])

def tailEnvelope0130ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![145, 148, 146, 146, 145, 149, 145, 146, 146]

def tailEnvelope0130ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![144, 145, 143, 146, 145, 148, 145, 144, 144]

def tailEnvelope0130ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![142, 144, 142, 144, 142, 146, 144, 144, 144]

theorem tailEnvelope0130ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0130FailureFibreExactOne
      tailEnvelope0130ThreeFibreTopOneOne
      tailEnvelope0130ThreeFibreTopTwoOne
      tailEnvelope0130ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0130ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![147, 146, 145, 145, 143, 144, 146, 144, 145]

def tailEnvelope0130ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![145, 142, 145, 144, 143, 143, 144, 144, 144]

def tailEnvelope0130ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![145, 142, 144, 143, 142, 143, 143, 144, 143]

theorem tailEnvelope0130ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0130FailureFibreExactThree
      tailEnvelope0130ThreeFibreTopOneThree
      tailEnvelope0130ThreeFibreTopTwoThree
      tailEnvelope0130ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0130ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9562102 9609912
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9609911 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0130FailureFibreExactOne
      tailEnvelope0130ThreeFibreTopOneOne tailEnvelope0130ThreeFibreTopTwoOne
      tailEnvelope0130ThreeFibreTopThreeOne
      (lower := 9562102) (upper := 9609911) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0130ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0130ThreeFibreTopOneOne,
        tailEnvelope0130ThreeFibreTopTwoOne, tailEnvelope0130ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0130FailureFibreExactThree
      tailEnvelope0130ThreeFibreTopOneThree tailEnvelope0130ThreeFibreTopTwoThree
      tailEnvelope0130ThreeFibreTopThreeThree
      (lower := 9562102) (upper := 9609911) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0130ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0130ThreeFibreTopOneThree,
        tailEnvelope0130ThreeFibreTopTwoThree, tailEnvelope0130ThreeFibreTopThreeThree])

def tailEnvelope0131ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![145, 150, 147, 148, 146, 150, 146, 146, 148]

def tailEnvelope0131ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![145, 145, 143, 146, 146, 148, 145, 145, 145]

def tailEnvelope0131ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![143, 144, 143, 145, 142, 147, 145, 144, 144]

theorem tailEnvelope0131ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0131FailureFibreExactOne
      tailEnvelope0131ThreeFibreTopOneOne
      tailEnvelope0131ThreeFibreTopTwoOne
      tailEnvelope0131ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0131ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![149, 146, 146, 146, 144, 145, 147, 145, 146]

def tailEnvelope0131ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![146, 143, 145, 145, 144, 144, 145, 145, 145]

def tailEnvelope0131ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![145, 143, 145, 144, 143, 144, 143, 144, 143]

theorem tailEnvelope0131ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0131FailureFibreExactThree
      tailEnvelope0131ThreeFibreTopOneThree
      tailEnvelope0131ThreeFibreTopTwoThree
      tailEnvelope0131ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0131ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9609912 9657961
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9657960 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0131FailureFibreExactOne
      tailEnvelope0131ThreeFibreTopOneOne tailEnvelope0131ThreeFibreTopTwoOne
      tailEnvelope0131ThreeFibreTopThreeOne
      (lower := 9609912) (upper := 9657960) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0131ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0131ThreeFibreTopOneOne,
        tailEnvelope0131ThreeFibreTopTwoOne, tailEnvelope0131ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0131FailureFibreExactThree
      tailEnvelope0131ThreeFibreTopOneThree tailEnvelope0131ThreeFibreTopTwoThree
      tailEnvelope0131ThreeFibreTopThreeThree
      (lower := 9609912) (upper := 9657960) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0131ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0131ThreeFibreTopOneThree,
        tailEnvelope0131ThreeFibreTopTwoThree, tailEnvelope0131ThreeFibreTopThreeThree])

def tailEnvelope0132ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![146, 150, 147, 148, 147, 151, 147, 146, 150]

def tailEnvelope0132ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![145, 146, 144, 148, 146, 149, 145, 145, 146]

def tailEnvelope0132ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![144, 146, 144, 146, 143, 147, 145, 144, 144]

theorem tailEnvelope0132ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0132FailureFibreExactOne
      tailEnvelope0132ThreeFibreTopOneOne
      tailEnvelope0132ThreeFibreTopTwoOne
      tailEnvelope0132ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0132ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![149, 146, 147, 147, 146, 146, 147, 146, 146]

def tailEnvelope0132ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![147, 144, 146, 146, 146, 146, 146, 145, 146]

def tailEnvelope0132ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![145, 143, 146, 145, 144, 146, 145, 145, 144]

theorem tailEnvelope0132ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0132FailureFibreExactThree
      tailEnvelope0132ThreeFibreTopOneThree
      tailEnvelope0132ThreeFibreTopTwoThree
      tailEnvelope0132ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0132ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9657961 9706250
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9706249 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0132FailureFibreExactOne
      tailEnvelope0132ThreeFibreTopOneOne tailEnvelope0132ThreeFibreTopTwoOne
      tailEnvelope0132ThreeFibreTopThreeOne
      (lower := 9657961) (upper := 9706249) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0132ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0132ThreeFibreTopOneOne,
        tailEnvelope0132ThreeFibreTopTwoOne, tailEnvelope0132ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0132FailureFibreExactThree
      tailEnvelope0132ThreeFibreTopOneThree tailEnvelope0132ThreeFibreTopTwoThree
      tailEnvelope0132ThreeFibreTopThreeThree
      (lower := 9657961) (upper := 9706249) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0132ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0132ThreeFibreTopOneThree,
        tailEnvelope0132ThreeFibreTopTwoThree, tailEnvelope0132ThreeFibreTopThreeThree])

def tailEnvelope0133ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![146, 150, 147, 149, 147, 152, 147, 147, 150]

def tailEnvelope0133ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![146, 146, 145, 149, 147, 149, 146, 147, 147]

def tailEnvelope0133ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![145, 146, 144, 147, 144, 147, 145, 146, 146]

theorem tailEnvelope0133ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0133FailureFibreExactOne
      tailEnvelope0133ThreeFibreTopOneOne
      tailEnvelope0133ThreeFibreTopTwoOne
      tailEnvelope0133ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0133ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![150, 146, 148, 147, 146, 148, 148, 146, 147]

def tailEnvelope0133ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![147, 145, 148, 146, 146, 147, 146, 146, 146]

def tailEnvelope0133ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![145, 144, 146, 146, 145, 146, 146, 146, 145]

theorem tailEnvelope0133ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0133FailureFibreExactThree
      tailEnvelope0133ThreeFibreTopOneThree
      tailEnvelope0133ThreeFibreTopTwoThree
      tailEnvelope0133ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0133ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9706250 9754781
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9754780 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0133FailureFibreExactOne
      tailEnvelope0133ThreeFibreTopOneOne tailEnvelope0133ThreeFibreTopTwoOne
      tailEnvelope0133ThreeFibreTopThreeOne
      (lower := 9706250) (upper := 9754780) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0133ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0133ThreeFibreTopOneOne,
        tailEnvelope0133ThreeFibreTopTwoOne, tailEnvelope0133ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0133FailureFibreExactThree
      tailEnvelope0133ThreeFibreTopOneThree tailEnvelope0133ThreeFibreTopTwoThree
      tailEnvelope0133ThreeFibreTopThreeThree
      (lower := 9706250) (upper := 9754780) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0133ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0133ThreeFibreTopOneThree,
        tailEnvelope0133ThreeFibreTopTwoThree, tailEnvelope0133ThreeFibreTopThreeThree])

def tailEnvelope0134ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![146, 150, 147, 150, 147, 152, 148, 147, 151]

def tailEnvelope0134ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![146, 147, 146, 149, 147, 150, 147, 147, 149]

def tailEnvelope0134ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![146, 147, 145, 148, 145, 148, 147, 146, 147]

theorem tailEnvelope0134ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0134FailureFibreExactOne
      tailEnvelope0134ThreeFibreTopOneOne
      tailEnvelope0134ThreeFibreTopTwoOne
      tailEnvelope0134ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0134ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![150, 147, 150, 148, 146, 148, 148, 147, 147]

def tailEnvelope0134ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![147, 145, 148, 146, 146, 147, 147, 147, 147]

def tailEnvelope0134ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![146, 144, 146, 146, 146, 147, 146, 146, 146]

theorem tailEnvelope0134ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0134FailureFibreExactThree
      tailEnvelope0134ThreeFibreTopOneThree
      tailEnvelope0134ThreeFibreTopTwoThree
      tailEnvelope0134ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0134ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9754781 9803554
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9803553 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0134FailureFibreExactOne
      tailEnvelope0134ThreeFibreTopOneOne tailEnvelope0134ThreeFibreTopTwoOne
      tailEnvelope0134ThreeFibreTopThreeOne
      (lower := 9754781) (upper := 9803553) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0134ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0134ThreeFibreTopOneOne,
        tailEnvelope0134ThreeFibreTopTwoOne, tailEnvelope0134ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0134FailureFibreExactThree
      tailEnvelope0134ThreeFibreTopOneThree tailEnvelope0134ThreeFibreTopTwoThree
      tailEnvelope0134ThreeFibreTopThreeThree
      (lower := 9754781) (upper := 9803553) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0134ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0134ThreeFibreTopOneThree,
        tailEnvelope0134ThreeFibreTopTwoThree, tailEnvelope0134ThreeFibreTopThreeThree])

def tailEnvelope0135ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![148, 151, 147, 152, 148, 152, 149, 149, 153]

def tailEnvelope0135ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![147, 147, 147, 150, 147, 150, 148, 147, 149]

def tailEnvelope0135ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![146, 147, 145, 149, 146, 148, 147, 147, 148]

theorem tailEnvelope0135ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0135FailureFibreExactOne
      tailEnvelope0135ThreeFibreTopOneOne
      tailEnvelope0135ThreeFibreTopTwoOne
      tailEnvelope0135ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0135ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![151, 148, 150, 148, 149, 150, 149, 147, 148]

def tailEnvelope0135ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![148, 147, 148, 148, 146, 148, 147, 147, 147]

def tailEnvelope0135ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![147, 145, 148, 147, 146, 147, 146, 147, 146]

theorem tailEnvelope0135ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0135FailureFibreExactThree
      tailEnvelope0135ThreeFibreTopOneThree
      tailEnvelope0135ThreeFibreTopTwoThree
      tailEnvelope0135ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0135ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9803554 9852571
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9852570 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0135FailureFibreExactOne
      tailEnvelope0135ThreeFibreTopOneOne tailEnvelope0135ThreeFibreTopTwoOne
      tailEnvelope0135ThreeFibreTopThreeOne
      (lower := 9803554) (upper := 9852570) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0135ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0135ThreeFibreTopOneOne,
        tailEnvelope0135ThreeFibreTopTwoOne, tailEnvelope0135ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0135FailureFibreExactThree
      tailEnvelope0135ThreeFibreTopOneThree tailEnvelope0135ThreeFibreTopTwoThree
      tailEnvelope0135ThreeFibreTopThreeThree
      (lower := 9803554) (upper := 9852570) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0135ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0135ThreeFibreTopOneThree,
        tailEnvelope0135ThreeFibreTopTwoThree, tailEnvelope0135ThreeFibreTopThreeThree])

def tailEnvelope0136ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![149, 153, 148, 153, 149, 152, 150, 149, 154]

def tailEnvelope0136ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![148, 148, 148, 151, 147, 151, 150, 147, 150]

def tailEnvelope0136ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![148, 147, 146, 149, 147, 150, 149, 147, 150]

theorem tailEnvelope0136ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0136FailureFibreExactOne
      tailEnvelope0136ThreeFibreTopOneOne
      tailEnvelope0136ThreeFibreTopTwoOne
      tailEnvelope0136ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0136ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![152, 148, 150, 149, 150, 150, 149, 149, 148]

def tailEnvelope0136ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![148, 148, 149, 149, 147, 148, 148, 148, 148]

def tailEnvelope0136ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![147, 146, 149, 149, 147, 147, 147, 148, 147]

theorem tailEnvelope0136ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0136FailureFibreExactThree
      tailEnvelope0136ThreeFibreTopOneThree
      tailEnvelope0136ThreeFibreTopTwoThree
      tailEnvelope0136ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0136ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9852571 9901833
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9901832 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0136FailureFibreExactOne
      tailEnvelope0136ThreeFibreTopOneOne tailEnvelope0136ThreeFibreTopTwoOne
      tailEnvelope0136ThreeFibreTopThreeOne
      (lower := 9852571) (upper := 9901832) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0136ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0136ThreeFibreTopOneOne,
        tailEnvelope0136ThreeFibreTopTwoOne, tailEnvelope0136ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0136FailureFibreExactThree
      tailEnvelope0136ThreeFibreTopOneThree tailEnvelope0136ThreeFibreTopTwoThree
      tailEnvelope0136ThreeFibreTopThreeThree
      (lower := 9852571) (upper := 9901832) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0136ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0136ThreeFibreTopOneThree,
        tailEnvelope0136ThreeFibreTopTwoThree, tailEnvelope0136ThreeFibreTopThreeThree])

def tailEnvelope0137ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![150, 155, 149, 154, 149, 154, 151, 149, 154]

def tailEnvelope0137ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![149, 149, 148, 151, 148, 153, 150, 148, 151]

def tailEnvelope0137ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![148, 148, 147, 150, 147, 153, 150, 148, 151]

theorem tailEnvelope0137ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0137FailureFibreExactOne
      tailEnvelope0137ThreeFibreTopOneOne
      tailEnvelope0137ThreeFibreTopTwoOne
      tailEnvelope0137ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0137ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![152, 148, 152, 151, 152, 150, 150, 151, 150]

def tailEnvelope0137ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![149, 148, 150, 150, 147, 150, 148, 150, 149]

def tailEnvelope0137ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![148, 148, 150, 149, 147, 149, 148, 149, 147]

theorem tailEnvelope0137ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0137FailureFibreExactThree
      tailEnvelope0137ThreeFibreTopOneThree
      tailEnvelope0137ThreeFibreTopTwoThree
      tailEnvelope0137ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0137ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9901833 9951342
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9951341 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0137FailureFibreExactOne
      tailEnvelope0137ThreeFibreTopOneOne tailEnvelope0137ThreeFibreTopTwoOne
      tailEnvelope0137ThreeFibreTopThreeOne
      (lower := 9901833) (upper := 9951341) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0137ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0137ThreeFibreTopOneOne,
        tailEnvelope0137ThreeFibreTopTwoOne, tailEnvelope0137ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0137FailureFibreExactThree
      tailEnvelope0137ThreeFibreTopOneThree tailEnvelope0137ThreeFibreTopTwoThree
      tailEnvelope0137ThreeFibreTopThreeThree
      (lower := 9901833) (upper := 9951341) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0137ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0137ThreeFibreTopOneThree,
        tailEnvelope0137ThreeFibreTopTwoThree, tailEnvelope0137ThreeFibreTopThreeThree])

def tailEnvelope0138ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![151, 156, 150, 154, 149, 155, 151, 149, 155]

def tailEnvelope0138ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![151, 150, 149, 153, 149, 153, 151, 149, 152]

def tailEnvelope0138ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![148, 149, 148, 151, 149, 153, 150, 149, 151]

theorem tailEnvelope0138ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0138FailureFibreExactOne
      tailEnvelope0138ThreeFibreTopOneOne
      tailEnvelope0138ThreeFibreTopTwoOne
      tailEnvelope0138ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0138ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![152, 149, 152, 152, 152, 152, 151, 151, 150]

def tailEnvelope0138ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![149, 149, 151, 150, 149, 152, 149, 150, 150]

def tailEnvelope0138ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![149, 149, 151, 149, 148, 150, 149, 149, 147]

theorem tailEnvelope0138ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0138FailureFibreExactThree
      tailEnvelope0138ThreeFibreTopOneThree
      tailEnvelope0138ThreeFibreTopTwoThree
      tailEnvelope0138ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0138ThreeFibre :
    TailDiagonalThreeFibreRatioRange 9951342 10000000
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 9999999 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0138FailureFibreExactOne
      tailEnvelope0138ThreeFibreTopOneOne tailEnvelope0138ThreeFibreTopTwoOne
      tailEnvelope0138ThreeFibreTopThreeOne
      (lower := 9951342) (upper := 9999999) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0138ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0138ThreeFibreTopOneOne,
        tailEnvelope0138ThreeFibreTopTwoOne, tailEnvelope0138ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0138FailureFibreExactThree
      tailEnvelope0138ThreeFibreTopOneThree tailEnvelope0138ThreeFibreTopTwoThree
      tailEnvelope0138ThreeFibreTopThreeThree
      (lower := 9951342) (upper := 9999999) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0138ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0138ThreeFibreTopOneThree,
        tailEnvelope0138ThreeFibreTopTwoThree, tailEnvelope0138ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
