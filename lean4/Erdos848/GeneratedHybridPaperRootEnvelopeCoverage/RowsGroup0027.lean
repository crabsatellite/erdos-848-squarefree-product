import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0027 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .oneToTwoBillion
          lower := 1400148750
          upper := 1403902499
          primeUpper := 770247 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1403902499 / 125)
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
          lower := 1403902500
          upper := 1407656249
          primeUpper := 772267 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1407656249 / 125)
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
          lower := 1407656250
          upper := 1411409999
          primeUpper := 774287 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1411409999 / 125)
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
          lower := 1411410000
          upper := 1415163749
          primeUpper := 776307 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1415163749 / 125)
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
          lower := 1415163750
          upper := 1418917499
          primeUpper := 778327 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1418917499 / 125)
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
          lower := 1418917500
          upper := 1422671249
          primeUpper := 780347 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1422671249 / 125)
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
          lower := 1422671250
          upper := 1426424999
          primeUpper := 782367 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1426424999 / 125)
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
          lower := 1426425000
          upper := 1430178749
          primeUpper := 784387 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1430178749 / 125)
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
          lower := 1430178750
          upper := 1433932499
          primeUpper := 786407 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1433932499 / 125)
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
          lower := 1433932500
          upper := 1437686249
          primeUpper := 788427 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1437686249 / 125)
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
          lower := 1437686250
          upper := 1441439999
          primeUpper := 790447 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1441439999 / 125)
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
          lower := 1441440000
          upper := 1445193749
          primeUpper := 792467 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1445193749 / 125)
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
          lower := 1445193750
          upper := 1448947499
          primeUpper := 794487 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1448947499 / 125)
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
          lower := 1448947500
          upper := 1452701249
          primeUpper := 796507 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1452701249 / 125)
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
          lower := 1452701250
          upper := 1456454999
          primeUpper := 798527 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1456454999 / 125)
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
          lower := 1456455000
          upper := 1460208749
          primeUpper := 800547 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 1460208749 / 125)
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
