import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0005
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0080ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![116, 117, 113, 116, 113, 114, 115, 117, 114]

def tailEnvelope0080ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![114, 116, 113, 113, 112, 113, 112, 114, 114]

def tailEnvelope0080ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![112, 114, 112, 113, 111, 113, 111, 114, 114]

theorem tailEnvelope0080ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0080FailureFibreExactOne
      tailEnvelope0080ThreeFibreTopOneOne
      tailEnvelope0080ThreeFibreTopTwoOne
      tailEnvelope0080ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0080ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![116, 113, 113, 116, 113, 114, 113, 116, 115]

def tailEnvelope0080ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![114, 112, 112, 114, 112, 114, 113, 114, 112]

def tailEnvelope0080ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![111, 112, 112, 113, 112, 112, 113, 113, 112]

theorem tailEnvelope0080ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0080FailureFibreExactThree
      tailEnvelope0080ThreeFibreTopOneThree
      tailEnvelope0080ThreeFibreTopTwoThree
      tailEnvelope0080ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0080ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7451639 7488897
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7488896 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0080FailureFibreExactOne
      tailEnvelope0080ThreeFibreTopOneOne tailEnvelope0080ThreeFibreTopTwoOne
      tailEnvelope0080ThreeFibreTopThreeOne
      (lower := 7451639) (upper := 7488896) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0080FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0080ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0080ThreeFibreTopOneOne,
        tailEnvelope0080ThreeFibreTopTwoOne, tailEnvelope0080ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0080FailureFibreExactThree
      tailEnvelope0080ThreeFibreTopOneThree tailEnvelope0080ThreeFibreTopTwoThree
      tailEnvelope0080ThreeFibreTopThreeThree
      (lower := 7451639) (upper := 7488896) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0080FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0080ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0080ThreeFibreTopOneThree,
        tailEnvelope0080ThreeFibreTopTwoThree, tailEnvelope0080ThreeFibreTopThreeThree])

def tailEnvelope0081ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![118, 117, 115, 116, 113, 115, 115, 118, 115]

def tailEnvelope0081ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![114, 116, 115, 115, 113, 114, 113, 115, 115]

def tailEnvelope0081ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![113, 115, 113, 113, 113, 114, 112, 114, 114]

theorem tailEnvelope0081ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0081FailureFibreExactOne
      tailEnvelope0081ThreeFibreTopOneOne
      tailEnvelope0081ThreeFibreTopTwoOne
      tailEnvelope0081ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0081ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![117, 114, 115, 117, 114, 116, 114, 118, 115]

def tailEnvelope0081ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![115, 113, 114, 114, 112, 114, 113, 115, 113]

def tailEnvelope0081ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![112, 113, 112, 114, 112, 114, 113, 113, 112]

theorem tailEnvelope0081ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0081FailureFibreExactThree
      tailEnvelope0081ThreeFibreTopOneThree
      tailEnvelope0081ThreeFibreTopTwoThree
      tailEnvelope0081ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0081ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7488897 7526341
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7526340 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0081FailureFibreExactOne
      tailEnvelope0081ThreeFibreTopOneOne tailEnvelope0081ThreeFibreTopTwoOne
      tailEnvelope0081ThreeFibreTopThreeOne
      (lower := 7488897) (upper := 7526340) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0081FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0081ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0081ThreeFibreTopOneOne,
        tailEnvelope0081ThreeFibreTopTwoOne, tailEnvelope0081ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0081FailureFibreExactThree
      tailEnvelope0081ThreeFibreTopOneThree tailEnvelope0081ThreeFibreTopTwoThree
      tailEnvelope0081ThreeFibreTopThreeThree
      (lower := 7488897) (upper := 7526340) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0081FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0081ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0081ThreeFibreTopOneThree,
        tailEnvelope0081ThreeFibreTopTwoThree, tailEnvelope0081ThreeFibreTopThreeThree])

def tailEnvelope0082ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![118, 117, 116, 117, 116, 115, 115, 118, 116]

def tailEnvelope0082ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![115, 117, 115, 115, 113, 115, 114, 115, 115]

def tailEnvelope0082ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![113, 116, 114, 114, 113, 115, 112, 114, 115]

theorem tailEnvelope0082ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0082FailureFibreExactOne
      tailEnvelope0082ThreeFibreTopOneOne
      tailEnvelope0082ThreeFibreTopTwoOne
      tailEnvelope0082ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0082ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![117, 114, 116, 118, 114, 116, 114, 118, 115]

def tailEnvelope0082ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![115, 114, 114, 115, 114, 115, 114, 115, 113]

def tailEnvelope0082ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![113, 113, 113, 114, 114, 114, 114, 114, 112]

theorem tailEnvelope0082ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0082FailureFibreExactThree
      tailEnvelope0082ThreeFibreTopOneThree
      tailEnvelope0082ThreeFibreTopTwoThree
      tailEnvelope0082ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0082ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7526341 7563972
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7563971 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0082FailureFibreExactOne
      tailEnvelope0082ThreeFibreTopOneOne tailEnvelope0082ThreeFibreTopTwoOne
      tailEnvelope0082ThreeFibreTopThreeOne
      (lower := 7526341) (upper := 7563971) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0082FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0082ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0082ThreeFibreTopOneOne,
        tailEnvelope0082ThreeFibreTopTwoOne, tailEnvelope0082ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0082FailureFibreExactThree
      tailEnvelope0082ThreeFibreTopOneThree tailEnvelope0082ThreeFibreTopTwoThree
      tailEnvelope0082ThreeFibreTopThreeThree
      (lower := 7526341) (upper := 7563971) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0082FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0082ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0082ThreeFibreTopOneThree,
        tailEnvelope0082ThreeFibreTopTwoThree, tailEnvelope0082ThreeFibreTopThreeThree])

def tailEnvelope0083ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![119, 117, 116, 118, 116, 115, 117, 119, 119]

def tailEnvelope0083ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![115, 117, 116, 116, 115, 115, 114, 116, 115]

def tailEnvelope0083ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![114, 116, 114, 114, 114, 115, 113, 115, 115]

theorem tailEnvelope0083ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0083FailureFibreExactOne
      tailEnvelope0083ThreeFibreTopOneOne
      tailEnvelope0083ThreeFibreTopTwoOne
      tailEnvelope0083ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0083ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![117, 115, 116, 120, 115, 117, 114, 119, 116]

def tailEnvelope0083ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![116, 114, 116, 116, 114, 115, 114, 115, 115]

def tailEnvelope0083ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![115, 114, 115, 115, 114, 114, 114, 114, 114]

theorem tailEnvelope0083ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0083FailureFibreExactThree
      tailEnvelope0083ThreeFibreTopOneThree
      tailEnvelope0083ThreeFibreTopTwoThree
      tailEnvelope0083ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0083ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7563972 7601791
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7601790 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0083FailureFibreExactOne
      tailEnvelope0083ThreeFibreTopOneOne tailEnvelope0083ThreeFibreTopTwoOne
      tailEnvelope0083ThreeFibreTopThreeOne
      (lower := 7563972) (upper := 7601790) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0083FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0083ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0083ThreeFibreTopOneOne,
        tailEnvelope0083ThreeFibreTopTwoOne, tailEnvelope0083ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0083FailureFibreExactThree
      tailEnvelope0083ThreeFibreTopOneThree tailEnvelope0083ThreeFibreTopTwoThree
      tailEnvelope0083ThreeFibreTopThreeThree
      (lower := 7563972) (upper := 7601790) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0083FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0083ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0083ThreeFibreTopOneThree,
        tailEnvelope0083ThreeFibreTopTwoThree, tailEnvelope0083ThreeFibreTopThreeThree])

def tailEnvelope0084ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![119, 118, 116, 118, 116, 117, 117, 119, 119]

def tailEnvelope0084ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![116, 117, 116, 116, 115, 116, 114, 116, 117]

def tailEnvelope0084ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![114, 117, 115, 115, 114, 115, 114, 115, 116]

theorem tailEnvelope0084ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0084FailureFibreExactOne
      tailEnvelope0084ThreeFibreTopOneOne
      tailEnvelope0084ThreeFibreTopTwoOne
      tailEnvelope0084ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0084ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![117, 116, 117, 120, 115, 118, 115, 119, 116]

def tailEnvelope0084ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![116, 115, 116, 117, 114, 115, 115, 115, 116]

def tailEnvelope0084ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![116, 114, 116, 116, 114, 115, 114, 115, 114]

theorem tailEnvelope0084ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0084FailureFibreExactThree
      tailEnvelope0084ThreeFibreTopOneThree
      tailEnvelope0084ThreeFibreTopTwoThree
      tailEnvelope0084ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0084ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7601791 7639799
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7639798 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0084FailureFibreExactOne
      tailEnvelope0084ThreeFibreTopOneOne tailEnvelope0084ThreeFibreTopTwoOne
      tailEnvelope0084ThreeFibreTopThreeOne
      (lower := 7601791) (upper := 7639798) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0084FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0084ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0084ThreeFibreTopOneOne,
        tailEnvelope0084ThreeFibreTopTwoOne, tailEnvelope0084ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0084FailureFibreExactThree
      tailEnvelope0084ThreeFibreTopOneThree tailEnvelope0084ThreeFibreTopTwoThree
      tailEnvelope0084ThreeFibreTopThreeThree
      (lower := 7601791) (upper := 7639798) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0084FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0084ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0084ThreeFibreTopOneThree,
        tailEnvelope0084ThreeFibreTopTwoThree, tailEnvelope0084ThreeFibreTopThreeThree])

def tailEnvelope0085ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![119, 118, 116, 119, 116, 119, 118, 119, 119]

def tailEnvelope0085ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![119, 117, 116, 116, 115, 116, 115, 116, 117]

def tailEnvelope0085ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![115, 117, 116, 115, 114, 116, 114, 116, 117]

theorem tailEnvelope0085ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0085FailureFibreExactOne
      tailEnvelope0085ThreeFibreTopOneOne
      tailEnvelope0085ThreeFibreTopTwoOne
      tailEnvelope0085ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0085ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![117, 116, 117, 121, 116, 119, 116, 119, 117]

def tailEnvelope0085ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![116, 115, 117, 117, 115, 116, 115, 116, 116]

def tailEnvelope0085ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![116, 115, 116, 116, 115, 115, 114, 115, 114]

theorem tailEnvelope0085ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0085FailureFibreExactThree
      tailEnvelope0085ThreeFibreTopOneThree
      tailEnvelope0085ThreeFibreTopTwoThree
      tailEnvelope0085ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0085ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7639799 7677997
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7677996 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0085FailureFibreExactOne
      tailEnvelope0085ThreeFibreTopOneOne tailEnvelope0085ThreeFibreTopTwoOne
      tailEnvelope0085ThreeFibreTopThreeOne
      (lower := 7639799) (upper := 7677996) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0085FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0085ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0085ThreeFibreTopOneOne,
        tailEnvelope0085ThreeFibreTopTwoOne, tailEnvelope0085ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0085FailureFibreExactThree
      tailEnvelope0085ThreeFibreTopOneThree tailEnvelope0085ThreeFibreTopTwoThree
      tailEnvelope0085ThreeFibreTopThreeThree
      (lower := 7639799) (upper := 7677996) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0085FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0085ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0085ThreeFibreTopOneThree,
        tailEnvelope0085ThreeFibreTopTwoThree, tailEnvelope0085ThreeFibreTopThreeThree])

def tailEnvelope0086ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![120, 118, 116, 119, 117, 119, 118, 119, 119]

def tailEnvelope0086ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![120, 117, 116, 116, 115, 118, 116, 116, 119]

def tailEnvelope0086ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![115, 117, 116, 116, 114, 116, 115, 116, 118]

theorem tailEnvelope0086ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0086FailureFibreExactOne
      tailEnvelope0086ThreeFibreTopOneOne
      tailEnvelope0086ThreeFibreTopTwoOne
      tailEnvelope0086ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0086ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![118, 116, 118, 122, 116, 119, 119, 119, 117]

def tailEnvelope0086ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![117, 116, 118, 118, 116, 117, 115, 116, 116]

def tailEnvelope0086ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![117, 115, 117, 117, 116, 116, 115, 116, 116]

theorem tailEnvelope0086ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0086FailureFibreExactThree
      tailEnvelope0086ThreeFibreTopOneThree
      tailEnvelope0086ThreeFibreTopTwoThree
      tailEnvelope0086ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0086ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7677997 7716386
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7716385 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0086FailureFibreExactOne
      tailEnvelope0086ThreeFibreTopOneOne tailEnvelope0086ThreeFibreTopTwoOne
      tailEnvelope0086ThreeFibreTopThreeOne
      (lower := 7677997) (upper := 7716385) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0086FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0086ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0086ThreeFibreTopOneOne,
        tailEnvelope0086ThreeFibreTopTwoOne, tailEnvelope0086ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0086FailureFibreExactThree
      tailEnvelope0086ThreeFibreTopOneThree tailEnvelope0086ThreeFibreTopTwoThree
      tailEnvelope0086ThreeFibreTopThreeThree
      (lower := 7677997) (upper := 7716385) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0086FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0086ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0086ThreeFibreTopOneThree,
        tailEnvelope0086ThreeFibreTopTwoThree, tailEnvelope0086ThreeFibreTopThreeThree])

def tailEnvelope0087ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![121, 118, 118, 119, 117, 119, 118, 119, 119]

def tailEnvelope0087ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![121, 117, 116, 116, 116, 119, 116, 117, 119]

def tailEnvelope0087ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![116, 117, 116, 116, 115, 118, 115, 116, 118]

theorem tailEnvelope0087ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0087FailureFibreExactOne
      tailEnvelope0087ThreeFibreTopOneOne
      tailEnvelope0087ThreeFibreTopTwoOne
      tailEnvelope0087ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0087ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![119, 117, 118, 122, 117, 120, 120, 119, 117]

def tailEnvelope0087ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![119, 117, 118, 118, 116, 117, 116, 117, 117]

def tailEnvelope0087ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![118, 116, 117, 117, 116, 117, 116, 116, 116]

theorem tailEnvelope0087ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0087FailureFibreExactThree
      tailEnvelope0087ThreeFibreTopOneThree
      tailEnvelope0087ThreeFibreTopTwoThree
      tailEnvelope0087ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0087ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7716386 7754967
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7754966 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0087FailureFibreExactOne
      tailEnvelope0087ThreeFibreTopOneOne tailEnvelope0087ThreeFibreTopTwoOne
      tailEnvelope0087ThreeFibreTopThreeOne
      (lower := 7716386) (upper := 7754966) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0087FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0087ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0087ThreeFibreTopOneOne,
        tailEnvelope0087ThreeFibreTopTwoOne, tailEnvelope0087ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0087FailureFibreExactThree
      tailEnvelope0087ThreeFibreTopOneThree tailEnvelope0087ThreeFibreTopTwoThree
      tailEnvelope0087ThreeFibreTopThreeThree
      (lower := 7716386) (upper := 7754966) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0087FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0087ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0087ThreeFibreTopOneThree,
        tailEnvelope0087ThreeFibreTopTwoThree, tailEnvelope0087ThreeFibreTopThreeThree])

def tailEnvelope0088ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![121, 119, 119, 120, 119, 120, 118, 120, 120]

def tailEnvelope0088ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![121, 119, 118, 118, 116, 119, 117, 119, 120]

def tailEnvelope0088ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![117, 118, 117, 117, 116, 118, 116, 118, 118]

theorem tailEnvelope0088ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0088FailureFibreExactOne
      tailEnvelope0088ThreeFibreTopOneOne
      tailEnvelope0088ThreeFibreTopTwoOne
      tailEnvelope0088ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0088ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![120, 118, 118, 122, 118, 120, 121, 119, 119]

def tailEnvelope0088ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![119, 118, 118, 119, 117, 118, 117, 119, 117]

def tailEnvelope0088ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![119, 118, 118, 118, 117, 118, 116, 116, 117]

theorem tailEnvelope0088ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0088FailureFibreExactThree
      tailEnvelope0088ThreeFibreTopOneThree
      tailEnvelope0088ThreeFibreTopTwoThree
      tailEnvelope0088ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0088ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7754967 7793741
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7793740 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0088FailureFibreExactOne
      tailEnvelope0088ThreeFibreTopOneOne tailEnvelope0088ThreeFibreTopTwoOne
      tailEnvelope0088ThreeFibreTopThreeOne
      (lower := 7754967) (upper := 7793740) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0088FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0088ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0088ThreeFibreTopOneOne,
        tailEnvelope0088ThreeFibreTopTwoOne, tailEnvelope0088ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0088FailureFibreExactThree
      tailEnvelope0088ThreeFibreTopOneThree tailEnvelope0088ThreeFibreTopTwoThree
      tailEnvelope0088ThreeFibreTopThreeThree
      (lower := 7754967) (upper := 7793740) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0088FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0088ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0088ThreeFibreTopOneThree,
        tailEnvelope0088ThreeFibreTopTwoThree, tailEnvelope0088ThreeFibreTopThreeThree])

def tailEnvelope0089ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![122, 119, 119, 121, 119, 121, 118, 120, 120]

def tailEnvelope0089ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![121, 119, 118, 119, 118, 119, 118, 120, 120]

def tailEnvelope0089ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![117, 119, 118, 117, 118, 119, 117, 118, 119]

theorem tailEnvelope0089ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0089FailureFibreExactOne
      tailEnvelope0089ThreeFibreTopOneOne
      tailEnvelope0089ThreeFibreTopTwoOne
      tailEnvelope0089ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0089ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![121, 119, 120, 123, 118, 121, 121, 120, 119]

def tailEnvelope0089ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![120, 118, 119, 119, 117, 118, 118, 120, 117]

def tailEnvelope0089ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![120, 118, 119, 119, 117, 118, 117, 117, 117]

theorem tailEnvelope0089ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0089FailureFibreExactThree
      tailEnvelope0089ThreeFibreTopOneThree
      tailEnvelope0089ThreeFibreTopTwoThree
      tailEnvelope0089ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0089ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7793741 7832709
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7832708 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0089FailureFibreExactOne
      tailEnvelope0089ThreeFibreTopOneOne tailEnvelope0089ThreeFibreTopTwoOne
      tailEnvelope0089ThreeFibreTopThreeOne
      (lower := 7793741) (upper := 7832708) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0089FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0089ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0089ThreeFibreTopOneOne,
        tailEnvelope0089ThreeFibreTopTwoOne, tailEnvelope0089ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0089FailureFibreExactThree
      tailEnvelope0089ThreeFibreTopOneThree tailEnvelope0089ThreeFibreTopTwoThree
      tailEnvelope0089ThreeFibreTopThreeThree
      (lower := 7793741) (upper := 7832708) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0089FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0089ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0089ThreeFibreTopOneThree,
        tailEnvelope0089ThreeFibreTopTwoThree, tailEnvelope0089ThreeFibreTopThreeThree])

def tailEnvelope0090ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![122, 120, 120, 122, 120, 122, 119, 120, 121]

def tailEnvelope0090ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![122, 120, 119, 120, 118, 120, 119, 120, 120]

def tailEnvelope0090ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![118, 119, 119, 120, 118, 120, 118, 118, 119]

theorem tailEnvelope0090ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0090FailureFibreExactOne
      tailEnvelope0090ThreeFibreTopOneOne
      tailEnvelope0090ThreeFibreTopTwoOne
      tailEnvelope0090ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0090ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![121, 120, 120, 124, 119, 122, 122, 121, 119]

def tailEnvelope0090ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![120, 119, 120, 120, 118, 120, 119, 120, 119]

def tailEnvelope0090ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![120, 118, 119, 119, 118, 118, 119, 119, 118]

theorem tailEnvelope0090ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0090FailureFibreExactThree
      tailEnvelope0090ThreeFibreTopOneThree
      tailEnvelope0090ThreeFibreTopTwoThree
      tailEnvelope0090ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0090ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7832709 7871872
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7871871 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0090FailureFibreExactOne
      tailEnvelope0090ThreeFibreTopOneOne tailEnvelope0090ThreeFibreTopTwoOne
      tailEnvelope0090ThreeFibreTopThreeOne
      (lower := 7832709) (upper := 7871871) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0090FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0090ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0090ThreeFibreTopOneOne,
        tailEnvelope0090ThreeFibreTopTwoOne, tailEnvelope0090ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0090FailureFibreExactThree
      tailEnvelope0090ThreeFibreTopOneThree tailEnvelope0090ThreeFibreTopTwoThree
      tailEnvelope0090ThreeFibreTopThreeThree
      (lower := 7832709) (upper := 7871871) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0090FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0090ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0090ThreeFibreTopOneThree,
        tailEnvelope0090ThreeFibreTopTwoThree, tailEnvelope0090ThreeFibreTopThreeThree])

def tailEnvelope0091ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![125, 121, 120, 122, 120, 123, 119, 122, 121]

def tailEnvelope0091ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![122, 120, 119, 120, 120, 120, 119, 120, 120]

def tailEnvelope0091ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![119, 119, 119, 120, 118, 120, 119, 119, 120]

theorem tailEnvelope0091ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0091FailureFibreExactOne
      tailEnvelope0091ThreeFibreTopOneOne
      tailEnvelope0091ThreeFibreTopTwoOne
      tailEnvelope0091ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0091ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![121, 120, 121, 125, 119, 122, 122, 122, 120]

def tailEnvelope0091ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![121, 119, 121, 121, 118, 120, 119, 120, 119]

def tailEnvelope0091ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![120, 119, 121, 120, 118, 119, 119, 119, 118]

theorem tailEnvelope0091ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0091FailureFibreExactThree
      tailEnvelope0091ThreeFibreTopOneThree
      tailEnvelope0091ThreeFibreTopTwoThree
      tailEnvelope0091ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0091ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7871872 7911231
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7911230 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0091FailureFibreExactOne
      tailEnvelope0091ThreeFibreTopOneOne tailEnvelope0091ThreeFibreTopTwoOne
      tailEnvelope0091ThreeFibreTopThreeOne
      (lower := 7871872) (upper := 7911230) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0091FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0091ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0091ThreeFibreTopOneOne,
        tailEnvelope0091ThreeFibreTopTwoOne, tailEnvelope0091ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0091FailureFibreExactThree
      tailEnvelope0091ThreeFibreTopOneThree tailEnvelope0091ThreeFibreTopTwoThree
      tailEnvelope0091ThreeFibreTopThreeThree
      (lower := 7871872) (upper := 7911230) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0091FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0091ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0091ThreeFibreTopOneThree,
        tailEnvelope0091ThreeFibreTopTwoThree, tailEnvelope0091ThreeFibreTopThreeThree])

def tailEnvelope0092ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![125, 122, 122, 123, 121, 123, 120, 122, 122]

def tailEnvelope0092ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![124, 121, 120, 121, 120, 122, 120, 120, 121]

def tailEnvelope0092ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![119, 120, 119, 120, 119, 120, 119, 120, 121]

theorem tailEnvelope0092ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0092FailureFibreExactOne
      tailEnvelope0092ThreeFibreTopOneOne
      tailEnvelope0092ThreeFibreTopTwoOne
      tailEnvelope0092ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0092ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![121, 120, 121, 125, 120, 122, 123, 122, 120]

def tailEnvelope0092ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![121, 120, 121, 121, 119, 122, 120, 120, 119]

def tailEnvelope0092ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![120, 119, 121, 120, 118, 120, 119, 119, 119]

theorem tailEnvelope0092ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0092FailureFibreExactThree
      tailEnvelope0092ThreeFibreTopOneThree
      tailEnvelope0092ThreeFibreTopTwoThree
      tailEnvelope0092ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0092ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7911231 7950787
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7950786 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0092FailureFibreExactOne
      tailEnvelope0092ThreeFibreTopOneOne tailEnvelope0092ThreeFibreTopTwoOne
      tailEnvelope0092ThreeFibreTopThreeOne
      (lower := 7911231) (upper := 7950786) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0092FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0092ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0092ThreeFibreTopOneOne,
        tailEnvelope0092ThreeFibreTopTwoOne, tailEnvelope0092ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0092FailureFibreExactThree
      tailEnvelope0092ThreeFibreTopOneThree tailEnvelope0092ThreeFibreTopTwoThree
      tailEnvelope0092ThreeFibreTopThreeThree
      (lower := 7911231) (upper := 7950786) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0092FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0092ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0092ThreeFibreTopOneThree,
        tailEnvelope0092ThreeFibreTopTwoThree, tailEnvelope0092ThreeFibreTopThreeThree])

def tailEnvelope0093ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![126, 122, 123, 123, 121, 123, 121, 124, 123]

def tailEnvelope0093ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![125, 122, 120, 121, 121, 122, 120, 121, 121]

def tailEnvelope0093ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![119, 121, 119, 120, 120, 121, 119, 120, 121]

theorem tailEnvelope0093ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0093FailureFibreExactOne
      tailEnvelope0093ThreeFibreTopOneOne
      tailEnvelope0093ThreeFibreTopTwoOne
      tailEnvelope0093ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0093ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![122, 121, 122, 125, 120, 123, 123, 122, 120]

def tailEnvelope0093ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![121, 120, 121, 122, 119, 122, 120, 120, 119]

def tailEnvelope0093ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![121, 119, 121, 120, 119, 120, 120, 119, 119]

theorem tailEnvelope0093ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0093FailureFibreExactThree
      tailEnvelope0093ThreeFibreTopOneThree
      tailEnvelope0093ThreeFibreTopTwoThree
      tailEnvelope0093ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0093ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7950787 7990540
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 7990539 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0093FailureFibreExactOne
      tailEnvelope0093ThreeFibreTopOneOne tailEnvelope0093ThreeFibreTopTwoOne
      tailEnvelope0093ThreeFibreTopThreeOne
      (lower := 7950787) (upper := 7990539) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0093FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0093ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0093ThreeFibreTopOneOne,
        tailEnvelope0093ThreeFibreTopTwoOne, tailEnvelope0093ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0093FailureFibreExactThree
      tailEnvelope0093ThreeFibreTopOneThree tailEnvelope0093ThreeFibreTopTwoThree
      tailEnvelope0093ThreeFibreTopThreeThree
      (lower := 7950787) (upper := 7990539) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0093FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0093ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0093ThreeFibreTopOneThree,
        tailEnvelope0093ThreeFibreTopTwoThree, tailEnvelope0093ThreeFibreTopThreeThree])

def tailEnvelope0094ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![126, 123, 123, 123, 122, 123, 121, 124, 123]

def tailEnvelope0094ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![125, 122, 121, 121, 121, 122, 120, 121, 122]

def tailEnvelope0094ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![120, 122, 120, 121, 120, 122, 120, 120, 121]

theorem tailEnvelope0094ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0094FailureFibreExactOne
      tailEnvelope0094ThreeFibreTopOneOne
      tailEnvelope0094ThreeFibreTopTwoOne
      tailEnvelope0094ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0094ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![123, 123, 122, 125, 120, 124, 123, 123, 121]

def tailEnvelope0094ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![121, 120, 121, 122, 120, 122, 121, 120, 120]

def tailEnvelope0094ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![121, 120, 121, 121, 120, 120, 120, 119, 119]

theorem tailEnvelope0094ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0094FailureFibreExactThree
      tailEnvelope0094ThreeFibreTopOneThree
      tailEnvelope0094ThreeFibreTopTwoThree
      tailEnvelope0094ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0094ThreeFibre :
    TailDiagonalThreeFibreRatioRange 7990540 8030492
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8030491 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0094FailureFibreExactOne
      tailEnvelope0094ThreeFibreTopOneOne tailEnvelope0094ThreeFibreTopTwoOne
      tailEnvelope0094ThreeFibreTopThreeOne
      (lower := 7990540) (upper := 8030491) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0094FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0094ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0094ThreeFibreTopOneOne,
        tailEnvelope0094ThreeFibreTopTwoOne, tailEnvelope0094ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0094FailureFibreExactThree
      tailEnvelope0094ThreeFibreTopOneThree tailEnvelope0094ThreeFibreTopTwoThree
      tailEnvelope0094ThreeFibreTopThreeThree
      (lower := 7990540) (upper := 8030491) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0094FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0094ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0094ThreeFibreTopOneThree,
        tailEnvelope0094ThreeFibreTopTwoThree, tailEnvelope0094ThreeFibreTopThreeThree])

def tailEnvelope0095ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![126, 123, 123, 123, 123, 124, 123, 124, 123]

def tailEnvelope0095ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![125, 122, 121, 121, 122, 123, 121, 122, 122]

def tailEnvelope0095ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![121, 122, 120, 121, 122, 122, 121, 120, 122]

theorem tailEnvelope0095ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0095FailureFibreExactOne
      tailEnvelope0095ThreeFibreTopOneOne
      tailEnvelope0095ThreeFibreTopTwoOne
      tailEnvelope0095ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0095ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![123, 124, 122, 125, 121, 124, 123, 123, 121]

def tailEnvelope0095ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![122, 122, 122, 122, 120, 122, 121, 121, 121]

def tailEnvelope0095ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![121, 121, 121, 122, 120, 120, 121, 120, 120]

theorem tailEnvelope0095ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0095FailureFibreExactThree
      tailEnvelope0095ThreeFibreTopOneThree
      tailEnvelope0095ThreeFibreTopTwoThree
      tailEnvelope0095ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0095ThreeFibre :
    TailDiagonalThreeFibreRatioRange 8030492 8070644
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 8070643 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0095FailureFibreExactOne
      tailEnvelope0095ThreeFibreTopOneOne tailEnvelope0095ThreeFibreTopTwoOne
      tailEnvelope0095ThreeFibreTopThreeOne
      (lower := 8030492) (upper := 8070643) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0095FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0095ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0095ThreeFibreTopOneOne,
        tailEnvelope0095ThreeFibreTopTwoOne, tailEnvelope0095ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0095FailureFibreExactThree
      tailEnvelope0095ThreeFibreTopOneThree tailEnvelope0095ThreeFibreTopTwoThree
      tailEnvelope0095ThreeFibreTopThreeThree
      (lower := 8030492) (upper := 8070643) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0095FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0095ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0095ThreeFibreTopOneThree,
        tailEnvelope0095ThreeFibreTopTwoThree, tailEnvelope0095ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
