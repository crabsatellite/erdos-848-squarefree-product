import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0000 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 200000000
          upper := 200143574
          primeUpper := 194524 }
      primeBound := by
        have hmono :
            Nat.primeCounting (200143574 / 75) <=
              Nat.primeCounting 2668580 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2668580_le
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
          lower := 200143575
          upper := 201372374
          primeUpper := 195611 }
      primeBound := by
        have hmono :
            Nat.primeCounting (201372374 / 75) <=
              Nat.primeCounting 2684964 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2684964_le
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
          lower := 201372375
          upper := 202601174
          primeUpper := 196738 }
      primeBound := by
        have hmono :
            Nat.primeCounting (202601174 / 75) <=
              Nat.primeCounting 2701348 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2701348_le
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
          lower := 202601175
          upper := 203829974
          primeUpper := 197855 }
      primeBound := by
        have hmono :
            Nat.primeCounting (203829974 / 75) <=
              Nat.primeCounting 2717732 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2717732_le
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
          lower := 203829975
          upper := 205058774
          primeUpper := 198937 }
      primeBound := by
        have hmono :
            Nat.primeCounting (205058774 / 75) <=
              Nat.primeCounting 2734116 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2734116_le
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
          lower := 205058775
          upper := 206287574
          primeUpper := 200027 }
      primeBound := by
        have hmono :
            Nat.primeCounting (206287574 / 75) <=
              Nat.primeCounting 2750500 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2750500_le
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
          lower := 206287575
          upper := 207516374
          primeUpper := 201136 }
      primeBound := by
        have hmono :
            Nat.primeCounting (207516374 / 75) <=
              Nat.primeCounting 2766884 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2766884_le
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
          lower := 207516375
          upper := 208745174
          primeUpper := 202231 }
      primeBound := by
        have hmono :
            Nat.primeCounting (208745174 / 75) <=
              Nat.primeCounting 2783268 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2783268_le
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
          lower := 208745175
          upper := 209973974
          primeUpper := 203332 }
      primeBound := by
        have hmono :
            Nat.primeCounting (209973974 / 75) <=
              Nat.primeCounting 2799652 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2799652_le
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
          lower := 209973975
          upper := 211202774
          primeUpper := 204473 }
      primeBound := by
        have hmono :
            Nat.primeCounting (211202774 / 75) <=
              Nat.primeCounting 2816036 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2816036_le
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
          lower := 211202775
          upper := 212431574
          primeUpper := 205579 }
      primeBound := by
        have hmono :
            Nat.primeCounting (212431574 / 75) <=
              Nat.primeCounting 2832420 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2832420_le
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
          lower := 212431575
          upper := 213660374
          primeUpper := 206709 }
      primeBound := by
        have hmono :
            Nat.primeCounting (213660374 / 75) <=
              Nat.primeCounting 2848804 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2848804_le
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
          lower := 213660375
          upper := 214889174
          primeUpper := 207789 }
      primeBound := by
        have hmono :
            Nat.primeCounting (214889174 / 75) <=
              Nat.primeCounting 2865188 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2865188_le
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
          lower := 214889175
          upper := 216117974
          primeUpper := 208880 }
      primeBound := by
        have hmono :
            Nat.primeCounting (216117974 / 75) <=
              Nat.primeCounting 2881572 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2881572_le
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
          lower := 216117975
          upper := 217346774
          primeUpper := 209965 }
      primeBound := by
        have hmono :
            Nat.primeCounting (217346774 / 75) <=
              Nat.primeCounting 2897956 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2897956_le
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
          lower := 217346775
          upper := 218575574
          primeUpper := 211074 }
      primeBound := by
        have hmono :
            Nat.primeCounting (218575574 / 75) <=
              Nat.primeCounting 2914340 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2914340_le
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
