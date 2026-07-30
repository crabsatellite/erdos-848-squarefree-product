import Erdos848.TailHighQrFiniteClose
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalScreens

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def highQrFinalRoot0EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p16
  lower := 2_000_000_000
  upper := 2_299_999_999
  targets := highQrFinalTargets
  rootEnvelope := 4_354_261 / 1_000_000_000

def highQrFinalRoot0EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot0EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot0EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot0EvenOneData],
        by norm_num [highQrFinalRoot0EvenOneData],
        by norm_num [highQrFinalRoot0EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot0EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot0EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile16_termCount]
        norm_num [Erdos848.anchoredPrimeProfile16,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot0EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p16
  lower := 2_000_000_000
  upper := 2_299_999_999
  targets := highQrFinalTargets
  rootEnvelope := 4_969_143 / 1_000_000_000

def highQrFinalRoot0EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot0EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot0EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot0EvenTwoData],
        by norm_num [highQrFinalRoot0EvenTwoData],
        by norm_num [highQrFinalRoot0EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot0EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot0EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile16_termCount]
        norm_num [Erdos848.anchoredPrimeProfile16,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot0EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p16
  lower := 2_000_000_000
  upper := 2_299_999_999
  targets := highQrFinalTargets
  rootEnvelope := 6_198_908 / 1_000_000_000

def highQrFinalRoot0EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot0EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot0EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot0EvenThreeData],
        by norm_num [highQrFinalRoot0EvenThreeData],
        by norm_num [highQrFinalRoot0EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot0EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot0EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile16_termCount]
        norm_num [Erdos848.anchoredPrimeProfile16,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot0OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p16
  lower := 2_000_000_000
  upper := 2_299_999_999
  targets := highQrFinalTargets
  rootEnvelope := 4_354_261 / 1_000_000_000

def highQrFinalRoot0Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot0OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot0OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot0OddData],
        by norm_num [highQrFinalRoot0OddData],
        by norm_num [highQrFinalRoot0OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot0OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot0OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile16_termCount]
        norm_num [Erdos848.anchoredPrimeProfile16,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots0 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot0EvenOne
  evenTwo := highQrFinalRoot0EvenTwo
  evenThree := highQrFinalRoot0EvenThree
  odd := highQrFinalRoot0Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget0 : Erdos848.HighTenBranchBudget where
  lower := 2_000_000_000
  evenOneRootEnvelope := 4_354_261 / 1_000_000_000
  evenTwoRootEnvelope := 4_969_143 / 1_000_000_000
  rootEnvelope := 6_198_908 / 1_000_000_000
  oddRootEnvelope := 4_354_261 / 1_000_000_000
  unrestrictedDiagonal := 26_884_751 / 1_000_000_000
  concentratedDiagonal := 23_947_557 / 1_000_000_000
  evenTwoCellDiagonal := 19_475_963 / 1_000_000_000
  lowTwoAdicDiagonal := 18_203_668 / 1_000_000_000
  oddUnionDiagonal := 13_760_714 / 1_000_000_000
  oddPlusCellDiagonal := 8_989_887 / 1_000_000_000
  oneOddDiagonal := 7_362_114 / 1_000_000_000
  oneOddCellDiagonal := 1_674_470 / 1_000_000_000

def highQrFinalDiagonal0Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .rootTree
  upper := 2_299_999_999
  unrestrictedDivisor := 230
  concentratedDivisor := 230
  evenTwoCellDivisor := 230
  lowTwoAdicDivisor := 230
  oddUnionDivisor := 230
  oddPlusCellDivisor := 230
  oneOddDivisor := 230
  oneOddCellDivisor := 230
  budget := highQrFinalBudget0

def highQrFinalDiagonal0 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal0Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal0Data,
          highQrFinalBudget0],
        by norm_num [highQrFinalDiagonal0Data,
          highQrFinalBudget0], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal0Data,
          highQrFinalBudget0,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow0 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal0
  roots := highQrFinalRoots0
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal0,
        highQrFinalDiagonal0Data,
        highQrFinalBudget0])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal0,
            highQrFinalDiagonal0Data,
            highQrFinalBudget0,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalRoot1EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p18
  lower := 2_300_000_000
  upper := 2_799_999_999
  targets := highQrFinalTargets
  rootEnvelope := 4_748_865 / 1_000_000_000

def highQrFinalRoot1EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot1EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot1EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot1EvenOneData],
        by norm_num [highQrFinalRoot1EvenOneData],
        by norm_num [highQrFinalRoot1EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot1EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot1EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot1EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p18
  lower := 2_300_000_000
  upper := 2_799_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_283_545 / 1_000_000_000

def highQrFinalRoot1EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot1EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot1EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot1EvenTwoData],
        by norm_num [highQrFinalRoot1EvenTwoData],
        by norm_num [highQrFinalRoot1EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot1EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot1EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot1EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p18
  lower := 2_300_000_000
  upper := 2_799_999_999
  targets := highQrFinalTargets
  rootEnvelope := 6_352_906 / 1_000_000_000

def highQrFinalRoot1EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot1EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot1EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot1EvenThreeData],
        by norm_num [highQrFinalRoot1EvenThreeData],
        by norm_num [highQrFinalRoot1EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot1EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot1EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot1OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p18
  lower := 2_300_000_000
  upper := 2_799_999_999
  targets := highQrFinalTargets
  rootEnvelope := 4_748_865 / 1_000_000_000

def highQrFinalRoot1Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot1OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot1OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot1OddData],
        by norm_num [highQrFinalRoot1OddData],
        by norm_num [highQrFinalRoot1OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot1OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot1OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots1 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot1EvenOne
  evenTwo := highQrFinalRoot1EvenTwo
  evenThree := highQrFinalRoot1EvenThree
  odd := highQrFinalRoot1Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget1 : Erdos848.HighTenBranchBudget where
  lower := 2_300_000_000
  evenOneRootEnvelope := 4_748_865 / 1_000_000_000
  evenTwoRootEnvelope := 5_283_545 / 1_000_000_000
  rootEnvelope := 6_352_906 / 1_000_000_000
  oddRootEnvelope := 4_748_865 / 1_000_000_000
  unrestrictedDiagonal := 26_872_271 / 1_000_000_000
  concentratedDiagonal := 23_576_322 / 1_000_000_000
  evenTwoCellDiagonal := 19_224_313 / 1_000_000_000
  lowTwoAdicDiagonal := 18_071_603 / 1_000_000_000
  oddUnionDiagonal := 13_654_517 / 1_000_000_000
  oddPlusCellDiagonal := 8_764_104 / 1_000_000_000
  oneOddDiagonal := 7_255_917 / 1_000_000_000
  oneOddCellDiagonal := 1_568_272 / 1_000_000_000

def highQrFinalDiagonal1Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .rootTree
  upper := 2_799_999_999
  unrestrictedDivisor := 280
  concentratedDivisor := 280
  evenTwoCellDivisor := 280
  lowTwoAdicDivisor := 280
  oddUnionDivisor := 280
  oddPlusCellDivisor := 280
  oneOddDivisor := 280
  oneOddCellDivisor := 280
  budget := highQrFinalBudget1

def highQrFinalDiagonal1 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal1Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal1Data,
          highQrFinalBudget1],
        by norm_num [highQrFinalDiagonal1Data,
          highQrFinalBudget1], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal1Data,
          highQrFinalBudget1,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow1 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal1
  roots := highQrFinalRoots1
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal1,
        highQrFinalDiagonal1Data,
        highQrFinalBudget1])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal1,
            highQrFinalDiagonal1Data,
            highQrFinalBudget1,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalRoot2EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p18
  lower := 2_800_000_000
  upper := 4_199_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_358_689 / 1_000_000_000

def highQrFinalRoot2EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot2EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot2EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot2EvenOneData],
        by norm_num [highQrFinalRoot2EvenOneData],
        by norm_num [highQrFinalRoot2EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot2EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot2EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot2EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p18
  lower := 2_800_000_000
  upper := 4_199_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_797_891 / 1_000_000_000

def highQrFinalRoot2EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot2EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot2EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot2EvenTwoData],
        by norm_num [highQrFinalRoot2EvenTwoData],
        by norm_num [highQrFinalRoot2EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot2EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot2EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot2EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p18
  lower := 2_800_000_000
  upper := 4_199_999_999
  targets := highQrFinalTargets
  rootEnvelope := 6_676_294 / 1_000_000_000

def highQrFinalRoot2EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot2EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot2EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot2EvenThreeData],
        by norm_num [highQrFinalRoot2EvenThreeData],
        by norm_num [highQrFinalRoot2EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot2EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot2EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot2OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p18
  lower := 2_800_000_000
  upper := 4_199_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_358_689 / 1_000_000_000

def highQrFinalRoot2Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot2OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot2OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot2OddData],
        by norm_num [highQrFinalRoot2OddData],
        by norm_num [highQrFinalRoot2OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot2OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot2OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots2 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot2EvenOne
  evenTwo := highQrFinalRoot2EvenTwo
  evenThree := highQrFinalRoot2EvenThree
  odd := highQrFinalRoot2Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget2 : Erdos848.HighTenBranchBudget where
  lower := 2_800_000_000
  evenOneRootEnvelope := 5_358_689 / 1_000_000_000
  evenTwoRootEnvelope := 5_797_891 / 1_000_000_000
  rootEnvelope := 6_676_294 / 1_000_000_000
  oddRootEnvelope := 5_358_689 / 1_000_000_000
  unrestrictedDiagonal := 27_135_480 / 1_000_000_000
  concentratedDiagonal := 23_412_443 / 1_000_000_000
  evenTwoCellDiagonal := 19_202_796 / 1_000_000_000
  lowTwoAdicDiagonal := 18_192_449 / 1_000_000_000
  oddUnionDiagonal := 13_562_850 / 1_000_000_000
  oddPlusCellDiagonal := 8_530_074 / 1_000_000_000
  oneOddDiagonal := 7_164_250 / 1_000_000_000
  oneOddCellDiagonal := 1_476_605 / 1_000_000_000

def highQrFinalDiagonal2Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .rootTree
  upper := 4_199_999_999
  unrestrictedDivisor := 420
  concentratedDivisor := 420
  evenTwoCellDivisor := 420
  lowTwoAdicDivisor := 420
  oddUnionDivisor := 420
  oddPlusCellDivisor := 420
  oneOddDivisor := 420
  oneOddCellDivisor := 420
  budget := highQrFinalBudget2

def highQrFinalDiagonal2 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal2Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal2Data,
          highQrFinalBudget2],
        by norm_num [highQrFinalDiagonal2Data,
          highQrFinalBudget2], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal2Data,
          highQrFinalBudget2,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow2 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal2
  roots := highQrFinalRoots2
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal2,
        highQrFinalDiagonal2Data,
        highQrFinalBudget2])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal2,
            highQrFinalDiagonal2Data,
            highQrFinalBudget2,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalRoot3EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p18
  lower := 4_200_000_000
  upper := 5_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_635_470 / 1_000_000_000

def highQrFinalRoot3EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot3EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot3EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot3EvenOneData],
        by norm_num [highQrFinalRoot3EvenOneData],
        by norm_num [highQrFinalRoot3EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot3EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot3EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot3EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p18
  lower := 4_200_000_000
  upper := 5_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_928_271 / 1_000_000_000

def highQrFinalRoot3EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot3EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot3EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot3EvenTwoData],
        by norm_num [highQrFinalRoot3EvenTwoData],
        by norm_num [highQrFinalRoot3EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot3EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot3EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot3EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p18
  lower := 4_200_000_000
  upper := 5_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 6_513_873 / 1_000_000_000

def highQrFinalRoot3EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot3EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot3EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot3EvenThreeData],
        by norm_num [highQrFinalRoot3EvenThreeData],
        by norm_num [highQrFinalRoot3EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot3EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot3EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot3OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p18
  lower := 4_200_000_000
  upper := 5_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_635_470 / 1_000_000_000

def highQrFinalRoot3Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot3OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot3OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot3OddData],
        by norm_num [highQrFinalRoot3OddData],
        by norm_num [highQrFinalRoot3OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot3OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot3OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile18_termCount]
        norm_num [Erdos848.anchoredPrimeProfile18,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots3 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot3EvenOne
  evenTwo := highQrFinalRoot3EvenTwo
  evenThree := highQrFinalRoot3EvenThree
  odd := highQrFinalRoot3Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget3 : Erdos848.HighTenBranchBudget where
  lower := 4_200_000_000
  evenOneRootEnvelope := 5_635_470 / 1_000_000_000
  evenTwoRootEnvelope := 5_928_271 / 1_000_000_000
  rootEnvelope := 6_513_873 / 1_000_000_000
  oddRootEnvelope := 5_635_470 / 1_000_000_000
  unrestrictedDiagonal := 27_234_987 / 1_000_000_000
  concentratedDiagonal := 22_857_080 / 1_000_000_000
  evenTwoCellDiagonal := 18_865_723 / 1_000_000_000
  lowTwoAdicDiagonal := 18_073_666 / 1_000_000_000
  oddUnionDiagonal := 13_384_283 / 1_000_000_000
  oddPlusCellDiagonal := 8_133_218 / 1_000_000_000
  oneOddDiagonal := 6_985_683 / 1_000_000_000
  oneOddCellDiagonal := 1_298_039 / 1_000_000_000

def highQrFinalDiagonal3Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .rootTree
  upper := 5_999_999_999
  unrestrictedDivisor := 600
  concentratedDivisor := 600
  evenTwoCellDivisor := 600
  lowTwoAdicDivisor := 600
  oddUnionDivisor := 600
  oddPlusCellDivisor := 600
  oneOddDivisor := 600
  oneOddCellDivisor := 600
  budget := highQrFinalBudget3

def highQrFinalDiagonal3 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal3Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal3Data,
          highQrFinalBudget3],
        by norm_num [highQrFinalDiagonal3Data,
          highQrFinalBudget3], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal3Data,
          highQrFinalBudget3,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow3 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal3
  roots := highQrFinalRoots3
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal3,
        highQrFinalDiagonal3Data,
        highQrFinalBudget3])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal3,
            highQrFinalDiagonal3Data,
            highQrFinalBudget3,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalRoot4EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p30
  lower := 6_000_000_000
  upper := 11_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_766_356 / 1_000_000_000

def highQrFinalRoot4EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot4EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot4EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot4EvenOneData],
        by norm_num [highQrFinalRoot4EvenOneData],
        by norm_num [highQrFinalRoot4EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot4EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot4EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot4EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p30
  lower := 6_000_000_000
  upper := 11_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_971_317 / 1_000_000_000

def highQrFinalRoot4EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot4EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot4EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot4EvenTwoData],
        by norm_num [highQrFinalRoot4EvenTwoData],
        by norm_num [highQrFinalRoot4EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot4EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot4EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot4EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p30
  lower := 6_000_000_000
  upper := 11_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 6_381_238 / 1_000_000_000

def highQrFinalRoot4EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot4EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot4EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot4EvenThreeData],
        by norm_num [highQrFinalRoot4EvenThreeData],
        by norm_num [highQrFinalRoot4EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot4EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot4EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot4OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p30
  lower := 6_000_000_000
  upper := 11_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_766_356 / 1_000_000_000

def highQrFinalRoot4Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot4OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot4OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot4OddData],
        by norm_num [highQrFinalRoot4OddData],
        by norm_num [highQrFinalRoot4OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot4OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot4OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots4 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot4EvenOne
  evenTwo := highQrFinalRoot4EvenTwo
  evenThree := highQrFinalRoot4EvenThree
  odd := highQrFinalRoot4Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget4 : Erdos848.HighTenBranchBudget where
  lower := 6_000_000_000
  evenOneRootEnvelope := 5_766_356 / 1_000_000_000
  evenTwoRootEnvelope := 5_971_317 / 1_000_000_000
  rootEnvelope := 6_381_238 / 1_000_000_000
  oddRootEnvelope := 5_766_356 / 1_000_000_000
  unrestrictedDiagonal := 27_018_604 / 1_000_000_000
  concentratedDiagonal := 23_268_839 / 1_000_000_000
  evenTwoCellDiagonal := 19_140_047 / 1_000_000_000
  lowTwoAdicDiagonal := 18_178_056 / 1_000_000_000
  oddUnionDiagonal := 13_504_470 / 1_000_000_000
  oddPlusCellDiagonal := 8_390_840 / 1_000_000_000
  oneOddDiagonal := 7_105_870 / 1_000_000_000
  oneOddCellDiagonal := 1_418_226 / 1_000_000_000

def highQrFinalDiagonal4Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .anchoredWheel
  upper := 11_999_999_999
  unrestrictedDivisor := 463
  concentratedDivisor := 652
  evenTwoCellDivisor := 652
  lowTwoAdicDivisor := 584
  oddUnionDivisor := 652
  oddPlusCellDivisor := 652
  oneOddDivisor := 652
  oneOddCellDivisor := 652
  budget := highQrFinalBudget4

def highQrFinalDiagonal4 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal4Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal4Data,
          highQrFinalBudget4],
        by norm_num [highQrFinalDiagonal4Data,
          highQrFinalBudget4], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal4Data,
          highQrFinalBudget4,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow4 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal4
  roots := highQrFinalRoots4
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal4,
        highQrFinalDiagonal4Data,
        highQrFinalBudget4])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal4,
            highQrFinalDiagonal4Data,
            highQrFinalBudget4,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalRoot5EvenOneData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenOne
  primeProfile := .p30
  lower := 12_000_000_000
  upper := 499_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_659_495 / 1_000_000_000

def highQrFinalRoot5EvenOne : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot5EvenOneData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot5EvenOneData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot5EvenOneData],
        by norm_num [highQrFinalRoot5EvenOneData],
        by norm_num [highQrFinalRoot5EvenOneData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot5EvenOneData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot5EvenOneData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot5EvenTwoData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenTwo
  primeProfile := .p30
  lower := 12_000_000_000
  upper := 499_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_761_975 / 1_000_000_000

def highQrFinalRoot5EvenTwo : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot5EvenTwoData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot5EvenTwoData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot5EvenTwoData],
        by norm_num [highQrFinalRoot5EvenTwoData],
        by norm_num [highQrFinalRoot5EvenTwoData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot5EvenTwoData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot5EvenTwoData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot5EvenThreeData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .evenThree
  primeProfile := .p30
  lower := 12_000_000_000
  upper := 499_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_966_936 / 1_000_000_000

def highQrFinalRoot5EvenThree : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot5EvenThreeData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot5EvenThreeData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot5EvenThreeData],
        by norm_num [highQrFinalRoot5EvenThreeData],
        by norm_num [highQrFinalRoot5EvenThreeData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot5EvenThreeData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot5EvenThreeData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoot5OddData : Erdos848.HighQrRootEnvelopeRowData where
  rootClass := .odd
  primeProfile := .p30
  lower := 12_000_000_000
  upper := 499_999_999_999
  targets := highQrFinalTargets
  rootEnvelope := 5_659_495 / 1_000_000_000

def highQrFinalRoot5Odd : Erdos848.CertifiedHighQrRootEnvelopeRow where
  row := highQrFinalRoot5OddData
  screens := highQrFinalScreenPairs
  screenSupportLength := highQrFinalScreenSupportLength
  screenTarget := highQrFinalScreenTarget
  screenSplit := highQrFinalScreenSplit
  screenStop := highQrFinalScreenStop (by
    norm_num [highQrFinalRoot5OddData, Erdos848.highQrFiniteStop])
  checked :=
    Erdos848.HighQrRootEnvelopeRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalRoot5OddData],
        by norm_num [highQrFinalRoot5OddData],
        by norm_num [highQrFinalRoot5OddData, Erdos848.highQrFiniteStop],
        by norm_num [highQrFinalRoot5OddData, Erdos848.anchoredPrimePoint,
          Erdos848.highQrSplit], ?_⟩
      intro k
      fin_cases k <;>
        simp only [highQrFinalRoot5OddData, highQrFinalTargets]
      all_goals
        unfold Erdos848.highQrCertifiedRootCombinedBound
        unfold Erdos848.highQrRootLowerCoefficient
          Erdos848.highQrRootFloorRatioBound
        unfold Erdos848.anchoredFinitePrimeDoubleRatioBound
        simp only [Erdos848.AnchoredPrimeProfileId.profile]
        unfold Erdos848.anchoredPrimeAffineIntercept
        rw [Erdos848.anchoredPrimeProfile30_termCount]
        norm_num [Erdos848.anchoredPrimeProfile30,
          Erdos848.anchoredPrimePoint,
          Erdos848.anchoredPrimeUpper, Erdos848.highQrSplit,
          Erdos848.HighVariableRootClass.factor])

def highQrFinalRoots5 : Erdos848.CertifiedHighQrClassRoots where
  evenOne := highQrFinalRoot5EvenOne
  evenTwo := highQrFinalRoot5EvenTwo
  evenThree := highQrFinalRoot5EvenThree
  odd := highQrFinalRoot5Odd
  evenOneClass := rfl
  evenTwoClass := rfl
  evenThreeClass := rfl
  oddClass := rfl

def highQrFinalBudget5 : Erdos848.HighTenBranchBudget where
  lower := 12_000_000_000
  evenOneRootEnvelope := 5_659_495 / 1_000_000_000
  evenTwoRootEnvelope := 5_761_975 / 1_000_000_000
  rootEnvelope := 5_966_936 / 1_000_000_000
  oddRootEnvelope := 5_659_495 / 1_000_000_000
  unrestrictedDiagonal := 26_925_425 / 1_000_000_000
  concentratedDiagonal := 23_252_487 / 1_000_000_000
  evenTwoCellDiagonal := 19_115_407 / 1_000_000_000
  lowTwoAdicDiagonal := 18_106_966 / 1_000_000_000
  oddUnionDiagonal := 13_460_034 / 1_000_000_000
  oddPlusCellDiagonal := 8_166_070 / 1_000_000_000
  oneOddDiagonal := 7_061_434 / 1_000_000_000
  oneOddCellDiagonal := 1_373_789 / 1_000_000_000

def highQrFinalDiagonal5Data :
    Erdos848.HighGroupedCertifiedDiagonalRowData where
  mode := .anchoredWheel
  upper := 499_999_999_999
  unrestrictedDivisor := 560
  concentratedDivisor := 889
  evenTwoCellDivisor := 808
  lowTwoAdicDivisor := 706
  oddUnionDivisor := 1_121
  oddPlusCellDivisor := 1_305
  oneOddDivisor := 1_121
  oneOddCellDivisor := 1_121
  budget := highQrFinalBudget5

def highQrFinalDiagonal5 :
    Erdos848.CertifiedHighGroupedDiagonalRow where
  row := highQrFinalDiagonal5Data
  checked :=
    Erdos848.HighGroupedCertifiedDiagonalRowData.check_complete (by
      refine ⟨
        by norm_num [highQrFinalDiagonal5Data,
          highQrFinalBudget5],
        by norm_num [highQrFinalDiagonal5Data,
          highQrFinalBudget5], ?_⟩
      intro selection
      cases selection <;>
        norm_num [highQrFinalDiagonal5Data,
          highQrFinalBudget5,
          Erdos848.HighGroupedCertifiedDiagonalRowData.divisor,
          Erdos848.HighGroupedCertifiedDiagonalRowData.modeValid,
          Erdos848.highGroupedDiagonalCertifiedRatioBound,
          Erdos848.HighFiniteDiagonalCountMode.primeRatioBound,
          Erdos848.PaperDiagonalSelection.selectionResidueCount,
          Erdos848.PaperDiagonalSelection.selectionPeriod,
          Erdos848.PaperDiagonalSelection.highPieceCount,
          Erdos848.PaperDiagonalSelection.isOdd,
          Erdos848.HighTenBranchBudget.diagonal,
          Erdos848.highDynamicLargeSquareMultiplier,
          Erdos848.highDiagonalAnchoredWheelRatioBound,
          Erdos848.highDiagonalAnchoredWheelIntercept,
          Erdos848.highDiagonalAnchoredWheelCutoff,
          Erdos848.highDiagonalWheelSixPeriod,
          Erdos848.highDiagonalReciprocalBound])

def highQrFinalCompleteRow5 : Erdos848.CertifiedHighQrCompleteRow where
  diagonal := highQrFinalDiagonal5
  roots := highQrFinalRoots5
  rootsLowerAligned := by
    intro rootClass
    cases rootClass <;> rfl
  rootsUpperAligned := by
    intro rootClass
    cases rootClass <;> rfl
  evenOneRootEnvelopeAligned := rfl
  evenTwoRootEnvelopeAligned := rfl
  evenThreeRootEnvelopeAligned := rfl
  oddRootEnvelopeAligned := rfl
  budgetChecked :=
    Erdos848.highTenBranchBudgetPasses_complete
      (by norm_num [highQrFinalDiagonal5,
        highQrFinalDiagonal5Data,
        highQrFinalBudget5])
      (by
        intro branch
        cases branch <;>
          norm_num [highQrFinalDiagonal5,
            highQrFinalDiagonal5Data,
            highQrFinalBudget5,
            Erdos848.HighTenBranchBudget.total,
            Erdos848.HighTenBranchBudget.target,
            Erdos848.HighTenBranchBudget.residualPayment,
            Erdos848.HighTenBranchBudget.tailPayment,
            Erdos848.HighTenBranchBudget.delta,
            Erdos848.HighTenBranchBudget.diagonal,
            Erdos848.HighTenBranchBudget.branchRootEnvelope,
            Erdos848.hybridTenBranchFinitePayment,
            Erdos848.fiveMillionSquareTail23Envelope,
            Erdos848.twentyMillionSquareOdd])

def highQrFinalFiniteCertificate : Erdos848.HighQrFiniteCloseCertificate where
  stop := 500_000_000_000
  rows := [highQrFinalCompleteRow0, highQrFinalCompleteRow1, highQrFinalCompleteRow2, highQrFinalCompleteRow3, highQrFinalCompleteRow4, highQrFinalCompleteRow5]
  stopValid := by norm_num [Erdos848.highQrFiniteStart,
    Erdos848.highQrFiniteStop]
  covers := by decide

#print axioms highQrFinalFiniteCertificate

end Erdos848.GeneratedHybridPaperRootCoverage
