import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0020 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .fiveHundredToOneBillion
          lower := 987987000
          upper := 990989999
          primeUpper := 681367 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 990989999 / 100)
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
        { regime := .fiveHundredToOneBillion
          lower := 990990000
          upper := 993992999
          primeUpper := 683387 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 993992999 / 100)
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
        { regime := .fiveHundredToOneBillion
          lower := 993993000
          upper := 996995999
          primeUpper := 685407 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 996995999 / 100)
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
        { regime := .fiveHundredToOneBillion
          lower := 996996000
          upper := 999998999
          primeUpper := 687427 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 999998999 / 100)
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
        { regime := .fiveHundredToOneBillion
          lower := 999999000
          upper := 999999999
          primeUpper := 689447 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 999999999 / 100)
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
        { regime := .oneToTwoBillion
          lower := 1000000000
          upper := 1002251249
          primeUpper := 554107 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1002251249 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1002251250
          upper := 1006004999
          primeUpper := 556127 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1006004999 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1006005000
          upper := 1009758749
          primeUpper := 558147 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1009758749 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1009758750
          upper := 1013512499
          primeUpper := 560167 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1013512499 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1013512500
          upper := 1017266249
          primeUpper := 562187 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1017266249 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1017266250
          upper := 1021019999
          primeUpper := 564207 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1021019999 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1021020000
          upper := 1024773749
          primeUpper := 566227 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1024773749 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1024773750
          upper := 1028527499
          primeUpper := 568247 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1028527499 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1028527500
          upper := 1032281249
          primeUpper := 570267 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1032281249 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1032281250
          upper := 1036034999
          primeUpper := 572287 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1036034999 / 125)
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
        { regime := .oneToTwoBillion
          lower := 1036035000
          upper := 1039788749
          primeUpper := 574307 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1039788749 / 125)
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
                Erdos848.HybridPaperDiagonalRegime.rootEnvelopeNumerator]) }
  ]

end Erdos848.GeneratedHybridPaperRootEnvelopeCoverage
