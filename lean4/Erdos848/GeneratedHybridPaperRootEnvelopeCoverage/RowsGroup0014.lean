import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0014 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .fiveHundredToOneBillion
          lower := 699699000
          upper := 702701999
          primeUpper := 487447 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 702701999 / 100)
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
          lower := 702702000
          upper := 705704999
          primeUpper := 489467 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 705704999 / 100)
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
          lower := 705705000
          upper := 708707999
          primeUpper := 491487 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 708707999 / 100)
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
          lower := 708708000
          upper := 711710999
          primeUpper := 493507 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 711710999 / 100)
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
          lower := 711711000
          upper := 714713999
          primeUpper := 495527 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 714713999 / 100)
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
          lower := 714714000
          upper := 717716999
          primeUpper := 497547 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 717716999 / 100)
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
          lower := 717717000
          upper := 720719999
          primeUpper := 499567 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 720719999 / 100)
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
          lower := 720720000
          upper := 723722999
          primeUpper := 501587 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 723722999 / 100)
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
          lower := 723723000
          upper := 726725999
          primeUpper := 503607 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 726725999 / 100)
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
          lower := 726726000
          upper := 729728999
          primeUpper := 505627 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 729728999 / 100)
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
          lower := 729729000
          upper := 732731999
          primeUpper := 507647 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 732731999 / 100)
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
          lower := 732732000
          upper := 735734999
          primeUpper := 509667 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 735734999 / 100)
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
          lower := 735735000
          upper := 738737999
          primeUpper := 511687 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 738737999 / 100)
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
          lower := 738738000
          upper := 741740999
          primeUpper := 513707 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 741740999 / 100)
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
          lower := 741741000
          upper := 744743999
          primeUpper := 515727 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 744743999 / 100)
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
          lower := 744744000
          upper := 747746999
          primeUpper := 517747 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 747746999 / 100)
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
