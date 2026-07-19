import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1789 :
    supportQrMaskWords 1789 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1789).take 11 := by
  rfl

theorem baseSupportPrimeMem1789 :
    1789 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1789 :
    supportExtensionPrime 1789 = 1801 := by
  rfl

theorem extensionSemanticPrime1789 :
    Nat.Prime (supportExtensionPrime 1789) ∧
      1789 < supportExtensionPrime 1789 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1789 < q → supportExtensionPrime 1789 ≤ q := by
  rw [extensionPrimeEq1789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1801 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1801 :
    supportQrMaskWords 1801 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1801).take 11 := by
  rfl

theorem baseSupportPrimeMem1801 :
    1801 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1801 :
    supportExtensionPrime 1801 = 1811 := by
  rfl

theorem extensionSemanticPrime1801 :
    Nat.Prime (supportExtensionPrime 1801) ∧
      1801 < supportExtensionPrime 1801 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1801 < q → supportExtensionPrime 1801 ≤ q := by
  rw [extensionPrimeEq1801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1811 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1811 :
    supportQrMaskWords 1811 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1811).take 11 := by
  rfl

theorem baseSupportPrimeMem1811 :
    1811 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1811 :
    supportExtensionPrime 1811 = 1823 := by
  rfl

theorem extensionSemanticPrime1811 :
    Nat.Prime (supportExtensionPrime 1811) ∧
      1811 < supportExtensionPrime 1811 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1811 < q → supportExtensionPrime 1811 ≤ q := by
  rw [extensionPrimeEq1811]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1823 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1823 :
    supportQrMaskWords 1823 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1823).take 11 := by
  rfl

theorem baseSupportPrimeMem1823 :
    1823 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1823 :
    supportExtensionPrime 1823 = 1831 := by
  rfl

theorem extensionSemanticPrime1823 :
    Nat.Prime (supportExtensionPrime 1823) ∧
      1823 < supportExtensionPrime 1823 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1823 < q → supportExtensionPrime 1823 ≤ q := by
  rw [extensionPrimeEq1823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1831 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1831 :
    supportQrMaskWords 1831 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1831).take 11 := by
  rfl

theorem baseSupportPrimeMem1831 :
    1831 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1831 :
    supportExtensionPrime 1831 = 1847 := by
  rfl

theorem extensionSemanticPrime1831 :
    Nat.Prime (supportExtensionPrime 1831) ∧
      1831 < supportExtensionPrime 1831 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1831 < q → supportExtensionPrime 1831 ≤ q := by
  rw [extensionPrimeEq1831]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1847 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1847 :
    supportQrMaskWords 1847 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1847).take 11 := by
  rfl

theorem baseSupportPrimeMem1847 :
    1847 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1847 :
    supportExtensionPrime 1847 = 1861 := by
  rfl

theorem extensionSemanticPrime1847 :
    Nat.Prime (supportExtensionPrime 1847) ∧
      1847 < supportExtensionPrime 1847 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1847 < q → supportExtensionPrime 1847 ≤ q := by
  rw [extensionPrimeEq1847]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1861 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1861 :
    supportQrMaskWords 1861 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1861).take 11 := by
  rfl

theorem baseSupportPrimeMem1861 :
    1861 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1861 :
    supportExtensionPrime 1861 = 1867 := by
  rfl

theorem extensionSemanticPrime1861 :
    Nat.Prime (supportExtensionPrime 1861) ∧
      1861 < supportExtensionPrime 1861 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1861 < q → supportExtensionPrime 1861 ≤ q := by
  rw [extensionPrimeEq1861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1867 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1867 :
    supportQrMaskWords 1867 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1867).take 11 := by
  rfl

theorem baseSupportPrimeMem1867 :
    1867 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1867 :
    supportExtensionPrime 1867 = 1871 := by
  rfl

theorem extensionSemanticPrime1867 :
    Nat.Prime (supportExtensionPrime 1867) ∧
      1867 < supportExtensionPrime 1867 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1867 < q → supportExtensionPrime 1867 ≤ q := by
  rw [extensionPrimeEq1867]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1871 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1871 :
    supportQrMaskWords 1871 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1871).take 11 := by
  rfl

theorem baseSupportPrimeMem1871 :
    1871 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1871 :
    supportExtensionPrime 1871 = 1873 := by
  rfl

theorem extensionSemanticPrime1871 :
    Nat.Prime (supportExtensionPrime 1871) ∧
      1871 < supportExtensionPrime 1871 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1871 < q → supportExtensionPrime 1871 ≤ q := by
  rw [extensionPrimeEq1871]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1873 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1873 :
    supportQrMaskWords 1873 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1873).take 11 := by
  rfl

theorem baseSupportPrimeMem1873 :
    1873 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1873 :
    supportExtensionPrime 1873 = 1877 := by
  rfl

theorem extensionSemanticPrime1873 :
    Nat.Prime (supportExtensionPrime 1873) ∧
      1873 < supportExtensionPrime 1873 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1873 < q → supportExtensionPrime 1873 ≤ q := by
  rw [extensionPrimeEq1873]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1877 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1877 :
    supportQrMaskWords 1877 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1877).take 11 := by
  rfl

theorem baseSupportPrimeMem1877 :
    1877 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1877 :
    supportExtensionPrime 1877 = 1879 := by
  rfl

theorem extensionSemanticPrime1877 :
    Nat.Prime (supportExtensionPrime 1877) ∧
      1877 < supportExtensionPrime 1877 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1877 < q → supportExtensionPrime 1877 ≤ q := by
  rw [extensionPrimeEq1877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1879 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0025
    {p : ℕ}
    (hLower : 1788 ≤ p) (hUpper : p ≤ 1877)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1789
  · exact maskSemanticPrime1801
  · exact maskSemanticPrime1811
  · exact maskSemanticPrime1823
  · exact maskSemanticPrime1831
  · exact maskSemanticPrime1847
  · exact maskSemanticPrime1861
  · exact maskSemanticPrime1867
  · exact maskSemanticPrime1871
  · exact maskSemanticPrime1873
  · exact maskSemanticPrime1877

theorem baseSupportPrimeMemGroup0025
    {p : ℕ}
    (hLower : 1788 ≤ p) (hUpper : p ≤ 1877)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1789
  · exact baseSupportPrimeMem1801
  · exact baseSupportPrimeMem1811
  · exact baseSupportPrimeMem1823
  · exact baseSupportPrimeMem1831
  · exact baseSupportPrimeMem1847
  · exact baseSupportPrimeMem1861
  · exact baseSupportPrimeMem1867
  · exact baseSupportPrimeMem1871
  · exact baseSupportPrimeMem1873
  · exact baseSupportPrimeMem1877

theorem extensionSemanticGroup0025
    {p : ℕ}
    (hLower : 1788 ≤ p) (hUpper : p ≤ 1877)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1789
  · exact extensionSemanticPrime1801
  · exact extensionSemanticPrime1811
  · exact extensionSemanticPrime1823
  · exact extensionSemanticPrime1831
  · exact extensionSemanticPrime1847
  · exact extensionSemanticPrime1861
  · exact extensionSemanticPrime1867
  · exact extensionSemanticPrime1871
  · exact extensionSemanticPrime1873
  · exact extensionSemanticPrime1877

end Erdos848.GeneratedTailGlobalPureSupportCoverage
