import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeBlock0002
import Erdos848.TailDiagonalThreeFibreChecker

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0032ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![92, 93, 92, 90, 93, 92, 91, 91, 92]

def tailEnvelope0032ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![90, 92, 89, 90, 89, 91, 91, 89, 90]

def tailEnvelope0032ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![90, 91, 89, 90, 88, 91, 90, 89, 90]

theorem tailEnvelope0032ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0032FailureFibreExactOne
      tailEnvelope0032ThreeFibreTopOneOne
      tailEnvelope0032ThreeFibreTopTwoOne
      tailEnvelope0032ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0032ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 91, 94, 89, 93, 88]

def tailEnvelope0032ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 89, 90, 89, 91, 88]

def tailEnvelope0032ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![90, 89, 91, 91, 88, 89, 89, 91, 88]

theorem tailEnvelope0032ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0032FailureFibreExactThree
      tailEnvelope0032ThreeFibreTopOneThree
      tailEnvelope0032ThreeFibreTopTwoThree
      tailEnvelope0032ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0032ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5865197 5894522
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5894521 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0032FailureFibreExactOne
      tailEnvelope0032ThreeFibreTopOneOne tailEnvelope0032ThreeFibreTopTwoOne
      tailEnvelope0032ThreeFibreTopThreeOne
      (lower := 5865197) (upper := 5894521) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0032FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0032ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0032ThreeFibreTopOneOne,
        tailEnvelope0032ThreeFibreTopTwoOne, tailEnvelope0032ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0032FailureFibreExactThree
      tailEnvelope0032ThreeFibreTopOneThree tailEnvelope0032ThreeFibreTopTwoThree
      tailEnvelope0032ThreeFibreTopThreeThree
      (lower := 5865197) (upper := 5894521) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0032FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0032ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0032ThreeFibreTopOneThree,
        tailEnvelope0032ThreeFibreTopTwoThree, tailEnvelope0032ThreeFibreTopThreeThree])

def tailEnvelope0033ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![94, 95, 92, 90, 93, 92, 91, 91, 92]

def tailEnvelope0033ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![90, 92, 90, 90, 90, 91, 91, 90, 91]

def tailEnvelope0033ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![90, 91, 89, 90, 89, 91, 90, 89, 91]

theorem tailEnvelope0033ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0033FailureFibreExactOne
      tailEnvelope0033ThreeFibreTopOneOne
      tailEnvelope0033ThreeFibreTopTwoOne
      tailEnvelope0033ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0033ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![91, 91, 92, 92, 91, 94, 90, 95, 88]

def tailEnvelope0033ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![91, 91, 91, 92, 90, 91, 89, 91, 88]

def tailEnvelope0033ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![90, 89, 91, 91, 89, 90, 89, 91, 88]

theorem tailEnvelope0033ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0033FailureFibreExactThree
      tailEnvelope0033ThreeFibreTopOneThree
      tailEnvelope0033ThreeFibreTopTwoThree
      tailEnvelope0033ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0033ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5894522 5923994
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5923993 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0033FailureFibreExactOne
      tailEnvelope0033ThreeFibreTopOneOne tailEnvelope0033ThreeFibreTopTwoOne
      tailEnvelope0033ThreeFibreTopThreeOne
      (lower := 5894522) (upper := 5923993) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0033FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0033ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0033ThreeFibreTopOneOne,
        tailEnvelope0033ThreeFibreTopTwoOne, tailEnvelope0033ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0033FailureFibreExactThree
      tailEnvelope0033ThreeFibreTopOneThree tailEnvelope0033ThreeFibreTopTwoThree
      tailEnvelope0033ThreeFibreTopThreeThree
      (lower := 5894522) (upper := 5923993) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0033FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0033ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0033ThreeFibreTopOneThree,
        tailEnvelope0033ThreeFibreTopTwoThree, tailEnvelope0033ThreeFibreTopThreeThree])

def tailEnvelope0034ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![94, 95, 92, 92, 93, 92, 91, 91, 92]

def tailEnvelope0034ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![91, 93, 90, 90, 90, 92, 91, 90, 91]

def tailEnvelope0034ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![90, 91, 90, 90, 90, 91, 90, 90, 91]

theorem tailEnvelope0034ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0034FailureFibreExactOne
      tailEnvelope0034ThreeFibreTopOneOne
      tailEnvelope0034ThreeFibreTopTwoOne
      tailEnvelope0034ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0034ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![92, 91, 92, 92, 91, 94, 90, 95, 89]

def tailEnvelope0034ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![91, 91, 91, 92, 90, 91, 90, 91, 89]

def tailEnvelope0034ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![91, 90, 91, 92, 89, 90, 90, 91, 89]

theorem tailEnvelope0034ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0034FailureFibreExactThree
      tailEnvelope0034ThreeFibreTopOneThree
      tailEnvelope0034ThreeFibreTopTwoThree
      tailEnvelope0034ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0034ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5923994 5953613
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5953612 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0034FailureFibreExactOne
      tailEnvelope0034ThreeFibreTopOneOne tailEnvelope0034ThreeFibreTopTwoOne
      tailEnvelope0034ThreeFibreTopThreeOne
      (lower := 5923994) (upper := 5953612) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0034FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0034ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0034ThreeFibreTopOneOne,
        tailEnvelope0034ThreeFibreTopTwoOne, tailEnvelope0034ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0034FailureFibreExactThree
      tailEnvelope0034ThreeFibreTopOneThree tailEnvelope0034ThreeFibreTopTwoThree
      tailEnvelope0034ThreeFibreTopThreeThree
      (lower := 5923994) (upper := 5953612) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0034FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0034ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0034ThreeFibreTopOneThree,
        tailEnvelope0034ThreeFibreTopTwoThree, tailEnvelope0034ThreeFibreTopThreeThree])

def tailEnvelope0035ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![94, 96, 92, 93, 93, 93, 92, 93, 92]

def tailEnvelope0035ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![91, 94, 92, 91, 91, 92, 91, 91, 91]

def tailEnvelope0035ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![91, 92, 90, 91, 90, 92, 91, 91, 91]

theorem tailEnvelope0035ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0035FailureFibreExactOne
      tailEnvelope0035ThreeFibreTopOneOne
      tailEnvelope0035ThreeFibreTopTwoOne
      tailEnvelope0035ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0035ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![92, 92, 93, 93, 92, 94, 91, 96, 90]

def tailEnvelope0035ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![91, 92, 92, 92, 90, 91, 91, 92, 89]

def tailEnvelope0035ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![91, 90, 91, 92, 89, 91, 90, 92, 89]

theorem tailEnvelope0035ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0035FailureFibreExactThree
      tailEnvelope0035ThreeFibreTopOneThree
      tailEnvelope0035ThreeFibreTopTwoThree
      tailEnvelope0035ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0035ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5953613 5983381
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 5983380 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0035FailureFibreExactOne
      tailEnvelope0035ThreeFibreTopOneOne tailEnvelope0035ThreeFibreTopTwoOne
      tailEnvelope0035ThreeFibreTopThreeOne
      (lower := 5953613) (upper := 5983380) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0035FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0035ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0035ThreeFibreTopOneOne,
        tailEnvelope0035ThreeFibreTopTwoOne, tailEnvelope0035ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0035FailureFibreExactThree
      tailEnvelope0035ThreeFibreTopOneThree tailEnvelope0035ThreeFibreTopTwoThree
      tailEnvelope0035ThreeFibreTopThreeThree
      (lower := 5953613) (upper := 5983380) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0035FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0035ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0035ThreeFibreTopOneThree,
        tailEnvelope0035ThreeFibreTopTwoThree, tailEnvelope0035ThreeFibreTopThreeThree])

def tailEnvelope0036ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![94, 97, 93, 95, 94, 94, 93, 93, 93]

def tailEnvelope0036ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![91, 94, 92, 92, 91, 93, 92, 92, 91]

def tailEnvelope0036ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![91, 93, 92, 91, 90, 92, 92, 91, 91]

theorem tailEnvelope0036ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0036FailureFibreExactOne
      tailEnvelope0036ThreeFibreTopOneOne
      tailEnvelope0036ThreeFibreTopTwoOne
      tailEnvelope0036ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0036ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![92, 93, 93, 93, 92, 95, 92, 97, 92]

def tailEnvelope0036ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![92, 92, 92, 93, 92, 92, 91, 94, 89]

def tailEnvelope0036ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![92, 91, 91, 92, 91, 92, 91, 92, 89]

theorem tailEnvelope0036ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0036FailureFibreExactThree
      tailEnvelope0036ThreeFibreTopOneThree
      tailEnvelope0036ThreeFibreTopTwoThree
      tailEnvelope0036ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0036ThreeFibre :
    TailDiagonalThreeFibreRatioRange 5983381 6013297
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6013296 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0036FailureFibreExactOne
      tailEnvelope0036ThreeFibreTopOneOne tailEnvelope0036ThreeFibreTopTwoOne
      tailEnvelope0036ThreeFibreTopThreeOne
      (lower := 5983381) (upper := 6013296) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0036FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0036ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0036ThreeFibreTopOneOne,
        tailEnvelope0036ThreeFibreTopTwoOne, tailEnvelope0036ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0036FailureFibreExactThree
      tailEnvelope0036ThreeFibreTopOneThree tailEnvelope0036ThreeFibreTopTwoThree
      tailEnvelope0036ThreeFibreTopThreeThree
      (lower := 5983381) (upper := 6013296) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0036FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0036ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0036ThreeFibreTopOneThree,
        tailEnvelope0036ThreeFibreTopTwoThree, tailEnvelope0036ThreeFibreTopThreeThree])

def tailEnvelope0037ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![95, 97, 94, 95, 94, 94, 93, 93, 93]

def tailEnvelope0037ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![93, 95, 93, 93, 91, 93, 92, 92, 91]

def tailEnvelope0037ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![91, 93, 93, 91, 91, 93, 92, 92, 91]

theorem tailEnvelope0037ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0037FailureFibreExactOne
      tailEnvelope0037ThreeFibreTopOneOne
      tailEnvelope0037ThreeFibreTopTwoOne
      tailEnvelope0037ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0037ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![94, 94, 93, 94, 92, 95, 92, 97, 92]

def tailEnvelope0037ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![93, 92, 92, 93, 92, 92, 92, 94, 90]

def tailEnvelope0037ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![93, 92, 92, 93, 91, 92, 91, 92, 89]

theorem tailEnvelope0037ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0037FailureFibreExactThree
      tailEnvelope0037ThreeFibreTopOneThree
      tailEnvelope0037ThreeFibreTopTwoThree
      tailEnvelope0037ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0037ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6013297 6043363
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6043362 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0037FailureFibreExactOne
      tailEnvelope0037ThreeFibreTopOneOne tailEnvelope0037ThreeFibreTopTwoOne
      tailEnvelope0037ThreeFibreTopThreeOne
      (lower := 6013297) (upper := 6043362) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0037FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0037ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0037ThreeFibreTopOneOne,
        tailEnvelope0037ThreeFibreTopTwoOne, tailEnvelope0037ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0037FailureFibreExactThree
      tailEnvelope0037ThreeFibreTopOneThree tailEnvelope0037ThreeFibreTopTwoThree
      tailEnvelope0037ThreeFibreTopThreeThree
      (lower := 6013297) (upper := 6043362) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0037FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0037ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0037ThreeFibreTopOneThree,
        tailEnvelope0037ThreeFibreTopTwoThree, tailEnvelope0037ThreeFibreTopThreeThree])

def tailEnvelope0038ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![95, 98, 95, 95, 94, 95, 94, 93, 94]

def tailEnvelope0038ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![93, 95, 94, 94, 92, 93, 94, 92, 93]

def tailEnvelope0038ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![92, 94, 93, 91, 92, 93, 93, 92, 92]

theorem tailEnvelope0038ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0038FailureFibreExactOne
      tailEnvelope0038ThreeFibreTopOneOne
      tailEnvelope0038ThreeFibreTopTwoOne
      tailEnvelope0038ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0038ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![94, 95, 93, 94, 93, 95, 93, 98, 93]

def tailEnvelope0038ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![94, 93, 93, 94, 93, 93, 92, 95, 91]

def tailEnvelope0038ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![93, 92, 93, 93, 91, 92, 91, 93, 91]

theorem tailEnvelope0038ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0038FailureFibreExactThree
      tailEnvelope0038ThreeFibreTopOneThree
      tailEnvelope0038ThreeFibreTopTwoThree
      tailEnvelope0038ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0038ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6043363 6073579
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6073578 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0038FailureFibreExactOne
      tailEnvelope0038ThreeFibreTopOneOne tailEnvelope0038ThreeFibreTopTwoOne
      tailEnvelope0038ThreeFibreTopThreeOne
      (lower := 6043363) (upper := 6073578) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0038FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0038ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0038ThreeFibreTopOneOne,
        tailEnvelope0038ThreeFibreTopTwoOne, tailEnvelope0038ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0038FailureFibreExactThree
      tailEnvelope0038ThreeFibreTopOneThree tailEnvelope0038ThreeFibreTopTwoThree
      tailEnvelope0038ThreeFibreTopThreeThree
      (lower := 6043363) (upper := 6073578) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0038FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0038ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0038ThreeFibreTopOneThree,
        tailEnvelope0038ThreeFibreTopTwoThree, tailEnvelope0038ThreeFibreTopThreeThree])

def tailEnvelope0039ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 95, 96, 95, 97, 94, 93, 95]

def tailEnvelope0039ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![94, 96, 94, 94, 94, 93, 94, 93, 94]

def tailEnvelope0039ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![92, 94, 93, 92, 92, 93, 94, 93, 92]

theorem tailEnvelope0039ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0039FailureFibreExactOne
      tailEnvelope0039ThreeFibreTopOneOne
      tailEnvelope0039ThreeFibreTopTwoOne
      tailEnvelope0039ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0039ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![95, 95, 93, 96, 93, 95, 93, 99, 94]

def tailEnvelope0039ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![94, 94, 93, 95, 93, 94, 93, 95, 91]

def tailEnvelope0039ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![94, 92, 93, 94, 92, 93, 92, 93, 91]

theorem tailEnvelope0039ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0039FailureFibreExactThree
      tailEnvelope0039ThreeFibreTopOneThree
      tailEnvelope0039ThreeFibreTopTwoThree
      tailEnvelope0039ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0039ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6073579 6103946
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6103945 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0039FailureFibreExactOne
      tailEnvelope0039ThreeFibreTopOneOne tailEnvelope0039ThreeFibreTopTwoOne
      tailEnvelope0039ThreeFibreTopThreeOne
      (lower := 6073579) (upper := 6103945) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0039FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0039ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0039ThreeFibreTopOneOne,
        tailEnvelope0039ThreeFibreTopTwoOne, tailEnvelope0039ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0039FailureFibreExactThree
      tailEnvelope0039ThreeFibreTopOneThree tailEnvelope0039ThreeFibreTopTwoThree
      tailEnvelope0039ThreeFibreTopThreeThree
      (lower := 6073579) (upper := 6103945) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0039FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0039ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0039ThreeFibreTopOneThree,
        tailEnvelope0039ThreeFibreTopTwoThree, tailEnvelope0039ThreeFibreTopThreeThree])

def tailEnvelope0040ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 95, 96, 95, 97, 95, 93, 96]

def tailEnvelope0040ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![94, 96, 94, 94, 95, 94, 94, 93, 94]

def tailEnvelope0040ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![93, 95, 94, 92, 92, 93, 94, 93, 93]

theorem tailEnvelope0040ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0040FailureFibreExactOne
      tailEnvelope0040ThreeFibreTopOneOne
      tailEnvelope0040ThreeFibreTopTwoOne
      tailEnvelope0040ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0040ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![96, 98, 95, 97, 93, 97, 94, 99, 95]

def tailEnvelope0040ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![95, 94, 95, 95, 93, 94, 93, 96, 92]

def tailEnvelope0040ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![95, 92, 93, 95, 92, 94, 93, 94, 91]

theorem tailEnvelope0040ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0040FailureFibreExactThree
      tailEnvelope0040ThreeFibreTopOneThree
      tailEnvelope0040ThreeFibreTopTwoThree
      tailEnvelope0040ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0040ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6103946 6134465
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6134464 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0040FailureFibreExactOne
      tailEnvelope0040ThreeFibreTopOneOne tailEnvelope0040ThreeFibreTopTwoOne
      tailEnvelope0040ThreeFibreTopThreeOne
      (lower := 6103946) (upper := 6134464) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0040FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0040ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0040ThreeFibreTopOneOne,
        tailEnvelope0040ThreeFibreTopTwoOne, tailEnvelope0040ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0040FailureFibreExactThree
      tailEnvelope0040ThreeFibreTopOneThree tailEnvelope0040ThreeFibreTopTwoThree
      tailEnvelope0040ThreeFibreTopThreeThree
      (lower := 6103946) (upper := 6134464) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0040FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0040ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0040ThreeFibreTopOneThree,
        tailEnvelope0040ThreeFibreTopTwoThree, tailEnvelope0040ThreeFibreTopThreeThree])

def tailEnvelope0041ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 95, 98, 95, 97, 96, 95, 96]

def tailEnvelope0041ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![94, 97, 95, 94, 95, 95, 95, 93, 95]

def tailEnvelope0041ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![93, 96, 95, 94, 92, 94, 94, 93, 95]

theorem tailEnvelope0041ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0041FailureFibreExactOne
      tailEnvelope0041ThreeFibreTopOneOne
      tailEnvelope0041ThreeFibreTopTwoOne
      tailEnvelope0041ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0041ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![96, 98, 96, 97, 93, 97, 95, 99, 95]

def tailEnvelope0041ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![96, 94, 95, 95, 93, 95, 93, 96, 92]

def tailEnvelope0041ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![95, 92, 93, 95, 93, 94, 93, 94, 92]

theorem tailEnvelope0041ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0041FailureFibreExactThree
      tailEnvelope0041ThreeFibreTopOneThree
      tailEnvelope0041ThreeFibreTopTwoThree
      tailEnvelope0041ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0041ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6134465 6165137
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6165136 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0041FailureFibreExactOne
      tailEnvelope0041ThreeFibreTopOneOne tailEnvelope0041ThreeFibreTopTwoOne
      tailEnvelope0041ThreeFibreTopThreeOne
      (lower := 6134465) (upper := 6165136) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0041FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0041ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0041ThreeFibreTopOneOne,
        tailEnvelope0041ThreeFibreTopTwoOne, tailEnvelope0041ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0041FailureFibreExactThree
      tailEnvelope0041ThreeFibreTopOneThree tailEnvelope0041ThreeFibreTopTwoThree
      tailEnvelope0041ThreeFibreTopThreeThree
      (lower := 6134465) (upper := 6165136) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0041FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0041ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0041ThreeFibreTopOneThree,
        tailEnvelope0041ThreeFibreTopTwoThree, tailEnvelope0041ThreeFibreTopThreeThree])

def tailEnvelope0042ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 96, 98, 96, 98, 96, 95, 96]

def tailEnvelope0042ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![95, 97, 96, 95, 95, 96, 95, 94, 95]

def tailEnvelope0042ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![94, 97, 96, 94, 93, 95, 95, 94, 95]

theorem tailEnvelope0042ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0042FailureFibreExactOne
      tailEnvelope0042ThreeFibreTopOneOne
      tailEnvelope0042ThreeFibreTopTwoOne
      tailEnvelope0042ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0042ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![97, 98, 96, 98, 95, 97, 97, 99, 95]

def tailEnvelope0042ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![96, 94, 95, 97, 93, 95, 93, 96, 93]

def tailEnvelope0042ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![96, 93, 94, 96, 93, 95, 93, 95, 93]

theorem tailEnvelope0042ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0042FailureFibreExactThree
      tailEnvelope0042ThreeFibreTopOneThree
      tailEnvelope0042ThreeFibreTopTwoThree
      tailEnvelope0042ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0042ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6165137 6195962
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6195961 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0042FailureFibreExactOne
      tailEnvelope0042ThreeFibreTopOneOne tailEnvelope0042ThreeFibreTopTwoOne
      tailEnvelope0042ThreeFibreTopThreeOne
      (lower := 6165137) (upper := 6195961) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0042FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0042ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0042ThreeFibreTopOneOne,
        tailEnvelope0042ThreeFibreTopTwoOne, tailEnvelope0042ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0042FailureFibreExactThree
      tailEnvelope0042ThreeFibreTopOneThree tailEnvelope0042ThreeFibreTopTwoThree
      tailEnvelope0042ThreeFibreTopThreeThree
      (lower := 6165137) (upper := 6195961) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0042FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0042ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0042ThreeFibreTopOneThree,
        tailEnvelope0042ThreeFibreTopTwoThree, tailEnvelope0042ThreeFibreTopThreeThree])

def tailEnvelope0043ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 97, 99, 96, 100, 96, 95, 96]

def tailEnvelope0043ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![95, 98, 96, 96, 96, 96, 95, 95, 95]

def tailEnvelope0043ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![94, 97, 96, 94, 94, 95, 95, 94, 95]

theorem tailEnvelope0043ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0043FailureFibreExactOne
      tailEnvelope0043ThreeFibreTopOneOne
      tailEnvelope0043ThreeFibreTopTwoOne
      tailEnvelope0043ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0043ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![97, 98, 96, 98, 96, 98, 98, 99, 95]

def tailEnvelope0043ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![96, 96, 96, 98, 94, 95, 95, 97, 93]

def tailEnvelope0043ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![96, 93, 95, 96, 94, 95, 93, 95, 93]

theorem tailEnvelope0043ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0043FailureFibreExactThree
      tailEnvelope0043ThreeFibreTopOneThree
      tailEnvelope0043ThreeFibreTopTwoThree
      tailEnvelope0043ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0043ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6195962 6226941
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6226940 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0043FailureFibreExactOne
      tailEnvelope0043ThreeFibreTopOneOne tailEnvelope0043ThreeFibreTopTwoOne
      tailEnvelope0043ThreeFibreTopThreeOne
      (lower := 6195962) (upper := 6226940) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0043FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0043ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0043ThreeFibreTopOneOne,
        tailEnvelope0043ThreeFibreTopTwoOne, tailEnvelope0043ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0043FailureFibreExactThree
      tailEnvelope0043ThreeFibreTopOneThree tailEnvelope0043ThreeFibreTopTwoThree
      tailEnvelope0043ThreeFibreTopThreeThree
      (lower := 6195962) (upper := 6226940) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0043FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0043ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0043ThreeFibreTopOneThree,
        tailEnvelope0043ThreeFibreTopTwoThree, tailEnvelope0043ThreeFibreTopThreeThree])

def tailEnvelope0044ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 98, 97, 99, 96, 100, 97, 96, 96]

def tailEnvelope0044ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![95, 98, 97, 97, 96, 96, 95, 96, 95]

def tailEnvelope0044ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![95, 97, 97, 94, 94, 96, 95, 96, 95]

theorem tailEnvelope0044ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0044FailureFibreExactOne
      tailEnvelope0044ThreeFibreTopOneOne
      tailEnvelope0044ThreeFibreTopTwoOne
      tailEnvelope0044ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0044ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![99, 98, 96, 98, 96, 98, 98, 99, 95]

def tailEnvelope0044ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![98, 97, 96, 98, 94, 95, 96, 97, 93]

def tailEnvelope0044ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![96, 94, 96, 96, 94, 95, 93, 95, 93]

theorem tailEnvelope0044ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0044FailureFibreExactThree
      tailEnvelope0044ThreeFibreTopOneThree
      tailEnvelope0044ThreeFibreTopTwoThree
      tailEnvelope0044ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0044ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6226941 6258075
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6258074 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0044FailureFibreExactOne
      tailEnvelope0044ThreeFibreTopOneOne tailEnvelope0044ThreeFibreTopTwoOne
      tailEnvelope0044ThreeFibreTopThreeOne
      (lower := 6226941) (upper := 6258074) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0044FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0044ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0044ThreeFibreTopOneOne,
        tailEnvelope0044ThreeFibreTopTwoOne, tailEnvelope0044ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0044FailureFibreExactThree
      tailEnvelope0044ThreeFibreTopOneThree tailEnvelope0044ThreeFibreTopTwoThree
      tailEnvelope0044ThreeFibreTopThreeThree
      (lower := 6226941) (upper := 6258074) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0044FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0044ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0044ThreeFibreTopOneThree,
        tailEnvelope0044ThreeFibreTopTwoThree, tailEnvelope0044ThreeFibreTopThreeThree])

def tailEnvelope0045ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![96, 99, 98, 99, 97, 101, 98, 98, 96]

def tailEnvelope0045ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![96, 99, 98, 97, 96, 96, 95, 96, 96]

def tailEnvelope0045ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![95, 97, 97, 96, 96, 96, 95, 96, 96]

theorem tailEnvelope0045ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0045FailureFibreExactOne
      tailEnvelope0045ThreeFibreTopOneOne
      tailEnvelope0045ThreeFibreTopTwoOne
      tailEnvelope0045ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0045ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![99, 100, 97, 98, 96, 98, 99, 99, 96]

def tailEnvelope0045ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![98, 98, 96, 98, 95, 96, 96, 98, 93]

def tailEnvelope0045ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![96, 96, 96, 96, 94, 95, 94, 96, 93]

theorem tailEnvelope0045ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0045FailureFibreExactThree
      tailEnvelope0045ThreeFibreTopOneThree
      tailEnvelope0045ThreeFibreTopTwoThree
      tailEnvelope0045ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0045ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6258075 6289365
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6289364 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0045FailureFibreExactOne
      tailEnvelope0045ThreeFibreTopOneOne tailEnvelope0045ThreeFibreTopTwoOne
      tailEnvelope0045ThreeFibreTopThreeOne
      (lower := 6258075) (upper := 6289364) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0045FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0045ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0045ThreeFibreTopOneOne,
        tailEnvelope0045ThreeFibreTopTwoOne, tailEnvelope0045ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0045FailureFibreExactThree
      tailEnvelope0045ThreeFibreTopOneThree tailEnvelope0045ThreeFibreTopTwoThree
      tailEnvelope0045ThreeFibreTopThreeThree
      (lower := 6258075) (upper := 6289364) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0045FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0045ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0045ThreeFibreTopOneThree,
        tailEnvelope0045ThreeFibreTopTwoThree, tailEnvelope0045ThreeFibreTopThreeThree])

def tailEnvelope0046ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![97, 99, 98, 99, 98, 101, 98, 100, 97]

def tailEnvelope0046ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![97, 99, 98, 98, 97, 96, 97, 97, 96]

def tailEnvelope0046ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![95, 98, 98, 97, 96, 96, 96, 96, 96]

theorem tailEnvelope0046ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0046FailureFibreExactOne
      tailEnvelope0046ThreeFibreTopOneOne
      tailEnvelope0046ThreeFibreTopTwoOne
      tailEnvelope0046ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0046ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![100, 100, 98, 98, 97, 98, 99, 100, 97]

def tailEnvelope0046ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![98, 99, 97, 98, 96, 97, 96, 98, 94]

def tailEnvelope0046ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![98, 96, 97, 97, 95, 96, 94, 96, 94]

theorem tailEnvelope0046ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0046FailureFibreExactThree
      tailEnvelope0046ThreeFibreTopOneThree
      tailEnvelope0046ThreeFibreTopTwoThree
      tailEnvelope0046ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0046ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6289365 6320811
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6320810 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0046FailureFibreExactOne
      tailEnvelope0046ThreeFibreTopOneOne tailEnvelope0046ThreeFibreTopTwoOne
      tailEnvelope0046ThreeFibreTopThreeOne
      (lower := 6289365) (upper := 6320810) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0046FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0046ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0046ThreeFibreTopOneOne,
        tailEnvelope0046ThreeFibreTopTwoOne, tailEnvelope0046ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0046FailureFibreExactThree
      tailEnvelope0046ThreeFibreTopOneThree tailEnvelope0046ThreeFibreTopTwoThree
      tailEnvelope0046ThreeFibreTopThreeThree
      (lower := 6289365) (upper := 6320810) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0046FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0046ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0046ThreeFibreTopOneThree,
        tailEnvelope0046ThreeFibreTopTwoThree, tailEnvelope0046ThreeFibreTopThreeThree])

def tailEnvelope0047ThreeFibreTopOneOne : Fin 9 → Nat :=
  ![97, 100, 98, 99, 98, 101, 98, 100, 97]

def tailEnvelope0047ThreeFibreTopTwoOne : Fin 9 → Nat :=
  ![97, 99, 98, 98, 97, 96, 97, 97, 97]

def tailEnvelope0047ThreeFibreTopThreeOne : Fin 9 → Nat :=
  ![96, 98, 98, 97, 96, 96, 96, 97, 97]

theorem tailEnvelope0047ThreeFibreThresholdOne :
    topThreeThresholdPasses
      tailEnvelope0047FailureFibreExactOne
      tailEnvelope0047ThreeFibreTopOneOne
      tailEnvelope0047ThreeFibreTopTwoOne
      tailEnvelope0047ThreeFibreTopThreeOne = true := by decide

def tailEnvelope0047ThreeFibreTopOneThree : Fin 9 → Nat :=
  ![100, 100, 98, 99, 97, 99, 99, 100, 97]

def tailEnvelope0047ThreeFibreTopTwoThree : Fin 9 → Nat :=
  ![99, 100, 98, 98, 97, 97, 96, 98, 94]

def tailEnvelope0047ThreeFibreTopThreeThree : Fin 9 → Nat :=
  ![98, 96, 97, 98, 95, 97, 96, 97, 94]

theorem tailEnvelope0047ThreeFibreThresholdThree :
    topThreeThresholdPasses
      tailEnvelope0047FailureFibreExactThree
      tailEnvelope0047ThreeFibreTopOneThree
      tailEnvelope0047ThreeFibreTopTwoThree
      tailEnvelope0047ThreeFibreTopThreeThree = true := by decide

theorem tailEnvelope0047ThreeFibre :
    TailDiagonalThreeFibreRatioRange 6320811 6352415
      (47878235598355 / 1000000000000000000) := by
  intro N hLower hStop parity cell residues hcard
  have hNUpper : N ≤ 6352414 := by omega
  cases parity
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      false tailEnvelope0047FailureFibreExactOne
      tailEnvelope0047ThreeFibreTopOneOne tailEnvelope0047ThreeFibreTopTwoOne
      tailEnvelope0047ThreeFibreTopThreeOne
      (lower := 6320811) (upper := 6352414) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0047FailureFibreCutoffOne
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0047ThreeFibreThresholdOne cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0047ThreeFibreTopOneOne,
        tailEnvelope0047ThreeFibreTopTwoOne, tailEnvelope0047ThreeFibreTopThreeOne])
  · have hratio := tailDiagonalThreeFibre_ratio_le
      certificate cellTargets projectsOddCells fibreTargets projectsModFortyNine
      true tailEnvelope0047FailureFibreExactThree
      tailEnvelope0047ThreeFibreTopOneThree tailEnvelope0047ThreeFibreTopTwoThree
      tailEnvelope0047ThreeFibreTopThreeThree
      (lower := 6320811) (upper := 6352414) (N := N)
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0047FailureFibreCutoffThree
      (by decide) (by decide) hLower hNUpper
      tailEnvelope0047ThreeFibreThresholdThree cell residues hcard
    exact hratio.trans (by
      fin_cases cell <;> norm_num [tailEnvelope0047ThreeFibreTopOneThree,
        tailEnvelope0047ThreeFibreTopTwoThree, tailEnvelope0047ThreeFibreTopThreeThree])

end Erdos848.GeneratedTailDiagonalCoverage
