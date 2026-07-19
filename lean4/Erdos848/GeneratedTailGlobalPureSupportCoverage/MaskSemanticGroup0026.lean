import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1879 :
    supportQrMaskWords 1879 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1879).take 11 := by
  rfl

theorem baseSupportPrimeMem1879 :
    1879 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1879 :
    supportExtensionPrime 1879 = 1889 := by
  rfl

theorem extensionSemanticPrime1879 :
    Nat.Prime (supportExtensionPrime 1879) ∧
      1879 < supportExtensionPrime 1879 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1879 < q → supportExtensionPrime 1879 ≤ q := by
  rw [extensionPrimeEq1879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1889 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1889 :
    supportQrMaskWords 1889 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1889).take 11 := by
  rfl

theorem baseSupportPrimeMem1889 :
    1889 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1889 :
    supportExtensionPrime 1889 = 1901 := by
  rfl

theorem extensionSemanticPrime1889 :
    Nat.Prime (supportExtensionPrime 1889) ∧
      1889 < supportExtensionPrime 1889 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1889 < q → supportExtensionPrime 1889 ≤ q := by
  rw [extensionPrimeEq1889]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1901 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1901 :
    supportQrMaskWords 1901 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1901).take 11 := by
  rfl

theorem baseSupportPrimeMem1901 :
    1901 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1901 :
    supportExtensionPrime 1901 = 1907 := by
  rfl

theorem extensionSemanticPrime1901 :
    Nat.Prime (supportExtensionPrime 1901) ∧
      1901 < supportExtensionPrime 1901 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1901 < q → supportExtensionPrime 1901 ≤ q := by
  rw [extensionPrimeEq1901]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1907 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1907 :
    supportQrMaskWords 1907 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1907).take 11 := by
  rfl

theorem baseSupportPrimeMem1907 :
    1907 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1907 :
    supportExtensionPrime 1907 = 1913 := by
  rfl

theorem extensionSemanticPrime1907 :
    Nat.Prime (supportExtensionPrime 1907) ∧
      1907 < supportExtensionPrime 1907 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1907 < q → supportExtensionPrime 1907 ≤ q := by
  rw [extensionPrimeEq1907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1913 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1913 :
    supportQrMaskWords 1913 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1913).take 11 := by
  rfl

theorem baseSupportPrimeMem1913 :
    1913 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1913 :
    supportExtensionPrime 1913 = 1931 := by
  rfl

theorem extensionSemanticPrime1913 :
    Nat.Prime (supportExtensionPrime 1913) ∧
      1913 < supportExtensionPrime 1913 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1913 < q → supportExtensionPrime 1913 ≤ q := by
  rw [extensionPrimeEq1913]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1931 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1931 :
    supportQrMaskWords 1931 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1931).take 11 := by
  rfl

theorem baseSupportPrimeMem1931 :
    1931 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1931 :
    supportExtensionPrime 1931 = 1933 := by
  rfl

theorem extensionSemanticPrime1931 :
    Nat.Prime (supportExtensionPrime 1931) ∧
      1931 < supportExtensionPrime 1931 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1931 < q → supportExtensionPrime 1931 ≤ q := by
  rw [extensionPrimeEq1931]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1933 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1933 :
    supportQrMaskWords 1933 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1933).take 11 := by
  rfl

theorem baseSupportPrimeMem1933 :
    1933 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1933 :
    supportExtensionPrime 1933 = 1949 := by
  rfl

theorem extensionSemanticPrime1933 :
    Nat.Prime (supportExtensionPrime 1933) ∧
      1933 < supportExtensionPrime 1933 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1933 < q → supportExtensionPrime 1933 ≤ q := by
  rw [extensionPrimeEq1933]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1949 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1949 :
    supportQrMaskWords 1949 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1949).take 11 := by
  rfl

theorem baseSupportPrimeMem1949 :
    1949 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1949 :
    supportExtensionPrime 1949 = 1951 := by
  rfl

theorem extensionSemanticPrime1949 :
    Nat.Prime (supportExtensionPrime 1949) ∧
      1949 < supportExtensionPrime 1949 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1949 < q → supportExtensionPrime 1949 ≤ q := by
  rw [extensionPrimeEq1949]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1951 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1951 :
    supportQrMaskWords 1951 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1951).take 11 := by
  rfl

theorem baseSupportPrimeMem1951 :
    1951 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1951 :
    supportExtensionPrime 1951 = 1973 := by
  rfl

theorem extensionSemanticPrime1951 :
    Nat.Prime (supportExtensionPrime 1951) ∧
      1951 < supportExtensionPrime 1951 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1951 < q → supportExtensionPrime 1951 ≤ q := by
  rw [extensionPrimeEq1951]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1973 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1973 :
    supportQrMaskWords 1973 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1973).take 11 := by
  rfl

theorem baseSupportPrimeMem1973 :
    1973 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1973 :
    supportExtensionPrime 1973 = 1979 := by
  rfl

theorem extensionSemanticPrime1973 :
    Nat.Prime (supportExtensionPrime 1973) ∧
      1973 < supportExtensionPrime 1973 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1973 < q → supportExtensionPrime 1973 ≤ q := by
  rw [extensionPrimeEq1973]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1979 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1979 :
    supportQrMaskWords 1979 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1979).take 11 := by
  rfl

theorem baseSupportPrimeMem1979 :
    1979 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1979 :
    supportExtensionPrime 1979 = 1987 := by
  rfl

theorem extensionSemanticPrime1979 :
    Nat.Prime (supportExtensionPrime 1979) ∧
      1979 < supportExtensionPrime 1979 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1979 < q → supportExtensionPrime 1979 ≤ q := by
  rw [extensionPrimeEq1979]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1987 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0026
    {p : ℕ}
    (hLower : 1878 ≤ p) (hUpper : p ≤ 1979)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1879
  · exact maskSemanticPrime1889
  · exact maskSemanticPrime1901
  · exact maskSemanticPrime1907
  · exact maskSemanticPrime1913
  · exact maskSemanticPrime1931
  · exact maskSemanticPrime1933
  · exact maskSemanticPrime1949
  · exact maskSemanticPrime1951
  · exact maskSemanticPrime1973
  · exact maskSemanticPrime1979

theorem baseSupportPrimeMemGroup0026
    {p : ℕ}
    (hLower : 1878 ≤ p) (hUpper : p ≤ 1979)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1879
  · exact baseSupportPrimeMem1889
  · exact baseSupportPrimeMem1901
  · exact baseSupportPrimeMem1907
  · exact baseSupportPrimeMem1913
  · exact baseSupportPrimeMem1931
  · exact baseSupportPrimeMem1933
  · exact baseSupportPrimeMem1949
  · exact baseSupportPrimeMem1951
  · exact baseSupportPrimeMem1973
  · exact baseSupportPrimeMem1979

theorem extensionSemanticGroup0026
    {p : ℕ}
    (hLower : 1878 ≤ p) (hUpper : p ≤ 1979)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1879
  · exact extensionSemanticPrime1889
  · exact extensionSemanticPrime1901
  · exact extensionSemanticPrime1907
  · exact extensionSemanticPrime1913
  · exact extensionSemanticPrime1931
  · exact extensionSemanticPrime1933
  · exact extensionSemanticPrime1949
  · exact extensionSemanticPrime1951
  · exact extensionSemanticPrime1973
  · exact extensionSemanticPrime1979

end Erdos848.GeneratedTailGlobalPureSupportCoverage
