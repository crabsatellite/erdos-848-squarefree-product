import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2731 :
    supportQrMaskWords 2731 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2731).take 11 := by
  rfl

theorem baseSupportPrimeMem2731 :
    2731 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2731 :
    supportExtensionPrime 2731 = 2741 := by
  rfl

theorem extensionSemanticPrime2731 :
    Nat.Prime (supportExtensionPrime 2731) ∧
      2731 < supportExtensionPrime 2731 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2731 < q → supportExtensionPrime 2731 ≤ q := by
  rw [extensionPrimeEq2731]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2741 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2741 :
    supportQrMaskWords 2741 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2741).take 11 := by
  rfl

theorem baseSupportPrimeMem2741 :
    2741 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2741 :
    supportExtensionPrime 2741 = 2749 := by
  rfl

theorem extensionSemanticPrime2741 :
    Nat.Prime (supportExtensionPrime 2741) ∧
      2741 < supportExtensionPrime 2741 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2741 < q → supportExtensionPrime 2741 ≤ q := by
  rw [extensionPrimeEq2741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2749 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2749 :
    supportQrMaskWords 2749 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2749).take 11 := by
  rfl

theorem baseSupportPrimeMem2749 :
    2749 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2749 :
    supportExtensionPrime 2749 = 2753 := by
  rfl

theorem extensionSemanticPrime2749 :
    Nat.Prime (supportExtensionPrime 2749) ∧
      2749 < supportExtensionPrime 2749 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2749 < q → supportExtensionPrime 2749 ≤ q := by
  rw [extensionPrimeEq2749]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2753 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2753 :
    supportQrMaskWords 2753 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2753).take 11 := by
  rfl

theorem baseSupportPrimeMem2753 :
    2753 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2753 :
    supportExtensionPrime 2753 = 2767 := by
  rfl

theorem extensionSemanticPrime2753 :
    Nat.Prime (supportExtensionPrime 2753) ∧
      2753 < supportExtensionPrime 2753 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2753 < q → supportExtensionPrime 2753 ≤ q := by
  rw [extensionPrimeEq2753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2767 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2767 :
    supportQrMaskWords 2767 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2767).take 11 := by
  rfl

theorem baseSupportPrimeMem2767 :
    2767 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2767 :
    supportExtensionPrime 2767 = 2777 := by
  rfl

theorem extensionSemanticPrime2767 :
    Nat.Prime (supportExtensionPrime 2767) ∧
      2767 < supportExtensionPrime 2767 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2767 < q → supportExtensionPrime 2767 ≤ q := by
  rw [extensionPrimeEq2767]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2777 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2777 :
    supportQrMaskWords 2777 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2777).take 11 := by
  rfl

theorem baseSupportPrimeMem2777 :
    2777 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2777 :
    supportExtensionPrime 2777 = 2789 := by
  rfl

theorem extensionSemanticPrime2777 :
    Nat.Prime (supportExtensionPrime 2777) ∧
      2777 < supportExtensionPrime 2777 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2777 < q → supportExtensionPrime 2777 ≤ q := by
  rw [extensionPrimeEq2777]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2789 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2789 :
    supportQrMaskWords 2789 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2789).take 11 := by
  rfl

theorem baseSupportPrimeMem2789 :
    2789 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2789 :
    supportExtensionPrime 2789 = 2791 := by
  rfl

theorem extensionSemanticPrime2789 :
    Nat.Prime (supportExtensionPrime 2789) ∧
      2789 < supportExtensionPrime 2789 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2789 < q → supportExtensionPrime 2789 ≤ q := by
  rw [extensionPrimeEq2789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2791 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2791 :
    supportQrMaskWords 2791 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2791).take 11 := by
  rfl

theorem baseSupportPrimeMem2791 :
    2791 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2791 :
    supportExtensionPrime 2791 = 2797 := by
  rfl

theorem extensionSemanticPrime2791 :
    Nat.Prime (supportExtensionPrime 2791) ∧
      2791 < supportExtensionPrime 2791 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2791 < q → supportExtensionPrime 2791 ≤ q := by
  rw [extensionPrimeEq2791]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2797 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2797 :
    supportQrMaskWords 2797 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2797).take 11 := by
  rfl

theorem baseSupportPrimeMem2797 :
    2797 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2797 :
    supportExtensionPrime 2797 = 2801 := by
  rfl

theorem extensionSemanticPrime2797 :
    Nat.Prime (supportExtensionPrime 2797) ∧
      2797 < supportExtensionPrime 2797 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2797 < q → supportExtensionPrime 2797 ≤ q := by
  rw [extensionPrimeEq2797]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2801 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2801 :
    supportQrMaskWords 2801 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2801).take 11 := by
  rfl

theorem baseSupportPrimeMem2801 :
    2801 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2801 :
    supportExtensionPrime 2801 = 2803 := by
  rfl

theorem extensionSemanticPrime2801 :
    Nat.Prime (supportExtensionPrime 2801) ∧
      2801 < supportExtensionPrime 2801 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2801 < q → supportExtensionPrime 2801 ≤ q := by
  rw [extensionPrimeEq2801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2803 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2803 :
    supportQrMaskWords 2803 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2803).take 11 := by
  rfl

theorem baseSupportPrimeMem2803 :
    2803 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2803 :
    supportExtensionPrime 2803 = 2819 := by
  rfl

theorem extensionSemanticPrime2803 :
    Nat.Prime (supportExtensionPrime 2803) ∧
      2803 < supportExtensionPrime 2803 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2803 < q → supportExtensionPrime 2803 ≤ q := by
  rw [extensionPrimeEq2803]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2819 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0036
    {p : ℕ}
    (hLower : 2730 ≤ p) (hUpper : p ≤ 2803)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2731
  · exact maskSemanticPrime2741
  · exact maskSemanticPrime2749
  · exact maskSemanticPrime2753
  · exact maskSemanticPrime2767
  · exact maskSemanticPrime2777
  · exact maskSemanticPrime2789
  · exact maskSemanticPrime2791
  · exact maskSemanticPrime2797
  · exact maskSemanticPrime2801
  · exact maskSemanticPrime2803

theorem baseSupportPrimeMemGroup0036
    {p : ℕ}
    (hLower : 2730 ≤ p) (hUpper : p ≤ 2803)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2731
  · exact baseSupportPrimeMem2741
  · exact baseSupportPrimeMem2749
  · exact baseSupportPrimeMem2753
  · exact baseSupportPrimeMem2767
  · exact baseSupportPrimeMem2777
  · exact baseSupportPrimeMem2789
  · exact baseSupportPrimeMem2791
  · exact baseSupportPrimeMem2797
  · exact baseSupportPrimeMem2801
  · exact baseSupportPrimeMem2803

theorem extensionSemanticGroup0036
    {p : ℕ}
    (hLower : 2730 ≤ p) (hUpper : p ≤ 2803)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2731
  · exact extensionSemanticPrime2741
  · exact extensionSemanticPrime2749
  · exact extensionSemanticPrime2753
  · exact extensionSemanticPrime2767
  · exact extensionSemanticPrime2777
  · exact extensionSemanticPrime2789
  · exact extensionSemanticPrime2791
  · exact extensionSemanticPrime2797
  · exact extensionSemanticPrime2801
  · exact extensionSemanticPrime2803

end Erdos848.GeneratedTailGlobalPureSupportCoverage
