import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0015 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .fiveHundredToOneBillion
          lower := 747747000
          upper := 750749999
          primeUpper := 519767 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 750749999 / 100)
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
          lower := 750750000
          upper := 753752999
          primeUpper := 521787 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 753752999 / 100)
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
          lower := 753753000
          upper := 756755999
          primeUpper := 523807 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 756755999 / 100)
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
          lower := 756756000
          upper := 759758999
          primeUpper := 525827 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 759758999 / 100)
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
          lower := 759759000
          upper := 762761999
          primeUpper := 527847 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 762761999 / 100)
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
          lower := 762762000
          upper := 765764999
          primeUpper := 529867 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 765764999 / 100)
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
          lower := 765765000
          upper := 768767999
          primeUpper := 531887 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 768767999 / 100)
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
          lower := 768768000
          upper := 771770999
          primeUpper := 533907 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 771770999 / 100)
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
          lower := 771771000
          upper := 774773999
          primeUpper := 535927 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 774773999 / 100)
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
          lower := 774774000
          upper := 777776999
          primeUpper := 537947 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 777776999 / 100)
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
          lower := 777777000
          upper := 780779999
          primeUpper := 539967 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 780779999 / 100)
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
          lower := 780780000
          upper := 783782999
          primeUpper := 541987 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 783782999 / 100)
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
          lower := 783783000
          upper := 786785999
          primeUpper := 544007 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 786785999 / 100)
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
          lower := 786786000
          upper := 789788999
          primeUpper := 546027 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 789788999 / 100)
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
          lower := 789789000
          upper := 792791999
          primeUpper := 548047 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 792791999 / 100)
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
          lower := 792792000
          upper := 795794999
          primeUpper := 550067 }
      primeBound := by
        convert Erdos848.hybridPaperPrimeCounting_slope_le
          (y := 795794999 / 100)
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
