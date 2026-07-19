import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2819 :
    supportQrMaskWords 2819 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2819).take 11 := by
  rfl

theorem baseSupportPrimeMem2819 :
    2819 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2819 :
    supportExtensionPrime 2819 = 2833 := by
  rfl

theorem extensionSemanticPrime2819 :
    Nat.Prime (supportExtensionPrime 2819) ∧
      2819 < supportExtensionPrime 2819 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2819 < q → supportExtensionPrime 2819 ≤ q := by
  rw [extensionPrimeEq2819]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2833 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2833 :
    supportQrMaskWords 2833 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2833).take 11 := by
  rfl

theorem baseSupportPrimeMem2833 :
    2833 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2833 :
    supportExtensionPrime 2833 = 2837 := by
  rfl

theorem extensionSemanticPrime2833 :
    Nat.Prime (supportExtensionPrime 2833) ∧
      2833 < supportExtensionPrime 2833 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2833 < q → supportExtensionPrime 2833 ≤ q := by
  rw [extensionPrimeEq2833]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2837 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2837 :
    supportQrMaskWords 2837 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2837).take 11 := by
  rfl

theorem baseSupportPrimeMem2837 :
    2837 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2837 :
    supportExtensionPrime 2837 = 2843 := by
  rfl

theorem extensionSemanticPrime2837 :
    Nat.Prime (supportExtensionPrime 2837) ∧
      2837 < supportExtensionPrime 2837 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2837 < q → supportExtensionPrime 2837 ≤ q := by
  rw [extensionPrimeEq2837]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2843 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2843 :
    supportQrMaskWords 2843 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2843).take 11 := by
  rfl

theorem baseSupportPrimeMem2843 :
    2843 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2843 :
    supportExtensionPrime 2843 = 2851 := by
  rfl

theorem extensionSemanticPrime2843 :
    Nat.Prime (supportExtensionPrime 2843) ∧
      2843 < supportExtensionPrime 2843 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2843 < q → supportExtensionPrime 2843 ≤ q := by
  rw [extensionPrimeEq2843]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2851 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2851 :
    supportQrMaskWords 2851 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2851).take 11 := by
  rfl

theorem baseSupportPrimeMem2851 :
    2851 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2851 :
    supportExtensionPrime 2851 = 2857 := by
  rfl

theorem extensionSemanticPrime2851 :
    Nat.Prime (supportExtensionPrime 2851) ∧
      2851 < supportExtensionPrime 2851 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2851 < q → supportExtensionPrime 2851 ≤ q := by
  rw [extensionPrimeEq2851]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2857 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2857 :
    supportQrMaskWords 2857 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2857).take 11 := by
  rfl

theorem baseSupportPrimeMem2857 :
    2857 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2857 :
    supportExtensionPrime 2857 = 2861 := by
  rfl

theorem extensionSemanticPrime2857 :
    Nat.Prime (supportExtensionPrime 2857) ∧
      2857 < supportExtensionPrime 2857 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2857 < q → supportExtensionPrime 2857 ≤ q := by
  rw [extensionPrimeEq2857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2861 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2861 :
    supportQrMaskWords 2861 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2861).take 11 := by
  rfl

theorem baseSupportPrimeMem2861 :
    2861 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2861 :
    supportExtensionPrime 2861 = 2879 := by
  rfl

theorem extensionSemanticPrime2861 :
    Nat.Prime (supportExtensionPrime 2861) ∧
      2861 < supportExtensionPrime 2861 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2861 < q → supportExtensionPrime 2861 ≤ q := by
  rw [extensionPrimeEq2861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2879 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2879 :
    supportQrMaskWords 2879 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2879).take 11 := by
  rfl

theorem baseSupportPrimeMem2879 :
    2879 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2879 :
    supportExtensionPrime 2879 = 2887 := by
  rfl

theorem extensionSemanticPrime2879 :
    Nat.Prime (supportExtensionPrime 2879) ∧
      2879 < supportExtensionPrime 2879 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2879 < q → supportExtensionPrime 2879 ≤ q := by
  rw [extensionPrimeEq2879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2887 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2887 :
    supportQrMaskWords 2887 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2887).take 11 := by
  rfl

theorem baseSupportPrimeMem2887 :
    2887 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2887 :
    supportExtensionPrime 2887 = 2897 := by
  rfl

theorem extensionSemanticPrime2887 :
    Nat.Prime (supportExtensionPrime 2887) ∧
      2887 < supportExtensionPrime 2887 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2887 < q → supportExtensionPrime 2887 ≤ q := by
  rw [extensionPrimeEq2887]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2897 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2897 :
    supportQrMaskWords 2897 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2897).take 11 := by
  rfl

theorem baseSupportPrimeMem2897 :
    2897 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2897 :
    supportExtensionPrime 2897 = 2903 := by
  rfl

theorem extensionSemanticPrime2897 :
    Nat.Prime (supportExtensionPrime 2897) ∧
      2897 < supportExtensionPrime 2897 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2897 < q → supportExtensionPrime 2897 ≤ q := by
  rw [extensionPrimeEq2897]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2903 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2903 :
    supportQrMaskWords 2903 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2903).take 11 := by
  rfl

theorem baseSupportPrimeMem2903 :
    2903 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2903 :
    supportExtensionPrime 2903 = 2909 := by
  rfl

theorem extensionSemanticPrime2903 :
    Nat.Prime (supportExtensionPrime 2903) ∧
      2903 < supportExtensionPrime 2903 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2903 < q → supportExtensionPrime 2903 ≤ q := by
  rw [extensionPrimeEq2903]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2909 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0037
    {p : ℕ}
    (hLower : 2804 ≤ p) (hUpper : p ≤ 2903)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2819
  · exact maskSemanticPrime2833
  · exact maskSemanticPrime2837
  · exact maskSemanticPrime2843
  · exact maskSemanticPrime2851
  · exact maskSemanticPrime2857
  · exact maskSemanticPrime2861
  · exact maskSemanticPrime2879
  · exact maskSemanticPrime2887
  · exact maskSemanticPrime2897
  · exact maskSemanticPrime2903

theorem baseSupportPrimeMemGroup0037
    {p : ℕ}
    (hLower : 2804 ≤ p) (hUpper : p ≤ 2903)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2819
  · exact baseSupportPrimeMem2833
  · exact baseSupportPrimeMem2837
  · exact baseSupportPrimeMem2843
  · exact baseSupportPrimeMem2851
  · exact baseSupportPrimeMem2857
  · exact baseSupportPrimeMem2861
  · exact baseSupportPrimeMem2879
  · exact baseSupportPrimeMem2887
  · exact baseSupportPrimeMem2897
  · exact baseSupportPrimeMem2903

theorem extensionSemanticGroup0037
    {p : ℕ}
    (hLower : 2804 ≤ p) (hUpper : p ≤ 2903)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2819
  · exact extensionSemanticPrime2833
  · exact extensionSemanticPrime2837
  · exact extensionSemanticPrime2843
  · exact extensionSemanticPrime2851
  · exact extensionSemanticPrime2857
  · exact extensionSemanticPrime2861
  · exact extensionSemanticPrime2879
  · exact extensionSemanticPrime2887
  · exact extensionSemanticPrime2897
  · exact extensionSemanticPrime2903

end Erdos848.GeneratedTailGlobalPureSupportCoverage
