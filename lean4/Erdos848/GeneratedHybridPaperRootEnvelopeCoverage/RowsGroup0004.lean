import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0004 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 279279000
          upper := 281531249
          primeUpper := 267267 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 281531249 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 281531250
          upper := 283783499
          primeUpper := 269287 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 283783499 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 283783500
          upper := 286035749
          primeUpper := 271307 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 286035749 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 286035750
          upper := 288287999
          primeUpper := 273327 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 288287999 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 288288000
          upper := 290540249
          primeUpper := 275347 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 290540249 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 290540250
          upper := 292792499
          primeUpper := 277367 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 292792499 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 292792500
          upper := 295044749
          primeUpper := 279387 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 295044749 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 295044750
          upper := 297296999
          primeUpper := 281407 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 297296999 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 297297000
          upper := 299549249
          primeUpper := 283427 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 299549249 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 299549250
          upper := 299999999
          primeUpper := 285447 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 299999999 / 75)
          (by norm_num) (by norm_num) using 1 <;> norm_num
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 300000000
          upper := 300639304
          primeUpper := 252566 }
      primeBound := by
        have hmono :
            Nat.primeCounting (300639304 / 85) <=
              Nat.primeCounting 3536932 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3536932_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 300639305
          upper := 302031944
          primeUpper := 253629 }
      primeBound := by
        have hmono :
            Nat.primeCounting (302031944 / 85) <=
              Nat.primeCounting 3553316 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3553316_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 302031945
          upper := 303424584
          primeUpper := 254726 }
      primeBound := by
        have hmono :
            Nat.primeCounting (303424584 / 85) <=
              Nat.primeCounting 3569700 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3569700_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 303424585
          upper := 304817224
          primeUpper := 255794 }
      primeBound := by
        have hmono :
            Nat.primeCounting (304817224 / 85) <=
              Nat.primeCounting 3586084 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3586084_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 304817225
          upper := 306209864
          primeUpper := 256894 }
      primeBound := by
        have hmono :
            Nat.primeCounting (306209864 / 85) <=
              Nat.primeCounting 3602468 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3602468_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) },
    { row :=
        { regime := .threeHundredToFiveHundred
          lower := 306209865
          upper := 307602504
          primeUpper := 258020 }
      primeBound := by
        have hmono :
            Nat.primeCounting (307602504 / 85) <=
              Nat.primeCounting 3618852 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3618852_le
      checked :=
        Erdos848.HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
          (by
            norm_num
              [Erdos848.HybridPaperRootEnvelopeRowData.rangeValid,
                Erdos848.HybridPaperDiagonalRegime.lower,
                Erdos848.HybridPaperDiagonalRegime.stop])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootSplit,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator])
          (by
            norm_num
              [Erdos848.HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling,
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) }
  ]

end Erdos848.GeneratedHybridPaperRootEnvelopeCoverage
