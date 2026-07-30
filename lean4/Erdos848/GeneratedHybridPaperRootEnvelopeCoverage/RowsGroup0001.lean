import Erdos848.TailHybridPaperRootEnvelopeCertificate
import Erdos848.TailHybridPaperPrimeSlope

namespace Erdos848.GeneratedHybridPaperRootEnvelopeCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def rootEnvelopeRowsGroup0001 :
    List Erdos848.CertifiedHybridPaperRootEnvelopeRow :=
  [
    { row :=
        { regime := .twoHundredToThreeHundred
          lower := 218575575
          upper := 219804374
          primeUpper := 212174 }
      primeBound := by
        have hmono :
            Nat.primeCounting (219804374 / 75) <=
              Nat.primeCounting 2930724 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2930724_le
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
          lower := 219804375
          upper := 221033174
          primeUpper := 213256 }
      primeBound := by
        have hmono :
            Nat.primeCounting (221033174 / 75) <=
              Nat.primeCounting 2947108 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2947108_le
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
          lower := 221033175
          upper := 222261974
          primeUpper := 214354 }
      primeBound := by
        have hmono :
            Nat.primeCounting (222261974 / 75) <=
              Nat.primeCounting 2963492 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2963492_le
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
          lower := 222261975
          upper := 223490774
          primeUpper := 215449 }
      primeBound := by
        have hmono :
            Nat.primeCounting (223490774 / 75) <=
              Nat.primeCounting 2979876 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2979876_le
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
          lower := 223490775
          upper := 224719574
          primeUpper := 216555 }
      primeBound := by
        have hmono :
            Nat.primeCounting (224719574 / 75) <=
              Nat.primeCounting 2996260 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_2996260_le
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
          lower := 224719575
          upper := 225948374
          primeUpper := 217679 }
      primeBound := by
        have hmono :
            Nat.primeCounting (225948374 / 75) <=
              Nat.primeCounting 3012644 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3012644_le
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
          lower := 225948375
          upper := 227177174
          primeUpper := 218756 }
      primeBound := by
        have hmono :
            Nat.primeCounting (227177174 / 75) <=
              Nat.primeCounting 3029028 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3029028_le
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
          lower := 227177175
          upper := 228405974
          primeUpper := 219836 }
      primeBound := by
        have hmono :
            Nat.primeCounting (228405974 / 75) <=
              Nat.primeCounting 3045412 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3045412_le
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
          lower := 228405975
          upper := 229634774
          primeUpper := 220919 }
      primeBound := by
        have hmono :
            Nat.primeCounting (229634774 / 75) <=
              Nat.primeCounting 3061796 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3061796_le
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
          lower := 229634775
          upper := 230863574
          primeUpper := 222030 }
      primeBound := by
        have hmono :
            Nat.primeCounting (230863574 / 75) <=
              Nat.primeCounting 3078180 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3078180_le
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
          lower := 230863575
          upper := 232092374
          primeUpper := 223145 }
      primeBound := by
        have hmono :
            Nat.primeCounting (232092374 / 75) <=
              Nat.primeCounting 3094564 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3094564_le
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
          lower := 232092375
          upper := 233321174
          primeUpper := 224231 }
      primeBound := by
        have hmono :
            Nat.primeCounting (233321174 / 75) <=
              Nat.primeCounting 3110948 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3110948_le
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
          lower := 233321175
          upper := 234549974
          primeUpper := 225325 }
      primeBound := by
        have hmono :
            Nat.primeCounting (234549974 / 75) <=
              Nat.primeCounting 3127332 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3127332_le
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
          lower := 234549975
          upper := 235778774
          primeUpper := 226414 }
      primeBound := by
        have hmono :
            Nat.primeCounting (235778774 / 75) <=
              Nat.primeCounting 3143716 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3143716_le
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
          lower := 235778775
          upper := 237007574
          primeUpper := 227519 }
      primeBound := by
        have hmono :
            Nat.primeCounting (237007574 / 75) <=
              Nat.primeCounting 3160100 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3160100_le
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
          lower := 237007575
          upper := 238236374
          primeUpper := 228620 }
      primeBound := by
        have hmono :
            Nat.primeCounting (238236374 / 75) <=
              Nat.primeCounting 3176484 :=
          Nat.monotone_primeCounting (by norm_num)
        exact hmono.trans Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3176484_le
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
