import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1709 :
    supportQrMaskWords 1709 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1709).take 11 := by
  rfl

theorem baseSupportPrimeMem1709 :
    1709 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1709 :
    supportExtensionPrime 1709 = 1721 := by
  rfl

theorem extensionSemanticPrime1709 :
    Nat.Prime (supportExtensionPrime 1709) ∧
      1709 < supportExtensionPrime 1709 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1709 < q → supportExtensionPrime 1709 ≤ q := by
  rw [extensionPrimeEq1709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1721 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1721 :
    supportQrMaskWords 1721 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1721).take 11 := by
  rfl

theorem baseSupportPrimeMem1721 :
    1721 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1721 :
    supportExtensionPrime 1721 = 1723 := by
  rfl

theorem extensionSemanticPrime1721 :
    Nat.Prime (supportExtensionPrime 1721) ∧
      1721 < supportExtensionPrime 1721 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1721 < q → supportExtensionPrime 1721 ≤ q := by
  rw [extensionPrimeEq1721]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1723 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1723 :
    supportQrMaskWords 1723 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1723).take 11 := by
  rfl

theorem baseSupportPrimeMem1723 :
    1723 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1723 :
    supportExtensionPrime 1723 = 1733 := by
  rfl

theorem extensionSemanticPrime1723 :
    Nat.Prime (supportExtensionPrime 1723) ∧
      1723 < supportExtensionPrime 1723 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1723 < q → supportExtensionPrime 1723 ≤ q := by
  rw [extensionPrimeEq1723]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1733 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1733 :
    supportQrMaskWords 1733 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1733).take 11 := by
  rfl

theorem baseSupportPrimeMem1733 :
    1733 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1733 :
    supportExtensionPrime 1733 = 1741 := by
  rfl

theorem extensionSemanticPrime1733 :
    Nat.Prime (supportExtensionPrime 1733) ∧
      1733 < supportExtensionPrime 1733 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1733 < q → supportExtensionPrime 1733 ≤ q := by
  rw [extensionPrimeEq1733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1741 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1741 :
    supportQrMaskWords 1741 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1741).take 11 := by
  rfl

theorem baseSupportPrimeMem1741 :
    1741 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1741 :
    supportExtensionPrime 1741 = 1747 := by
  rfl

theorem extensionSemanticPrime1741 :
    Nat.Prime (supportExtensionPrime 1741) ∧
      1741 < supportExtensionPrime 1741 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1741 < q → supportExtensionPrime 1741 ≤ q := by
  rw [extensionPrimeEq1741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1747 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1747 :
    supportQrMaskWords 1747 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1747).take 11 := by
  rfl

theorem baseSupportPrimeMem1747 :
    1747 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1747 :
    supportExtensionPrime 1747 = 1753 := by
  rfl

theorem extensionSemanticPrime1747 :
    Nat.Prime (supportExtensionPrime 1747) ∧
      1747 < supportExtensionPrime 1747 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1747 < q → supportExtensionPrime 1747 ≤ q := by
  rw [extensionPrimeEq1747]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1753 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1753 :
    supportQrMaskWords 1753 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1753).take 11 := by
  rfl

theorem baseSupportPrimeMem1753 :
    1753 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1753 :
    supportExtensionPrime 1753 = 1759 := by
  rfl

theorem extensionSemanticPrime1753 :
    Nat.Prime (supportExtensionPrime 1753) ∧
      1753 < supportExtensionPrime 1753 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1753 < q → supportExtensionPrime 1753 ≤ q := by
  rw [extensionPrimeEq1753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1759 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1759 :
    supportQrMaskWords 1759 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1759).take 11 := by
  rfl

theorem baseSupportPrimeMem1759 :
    1759 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1759 :
    supportExtensionPrime 1759 = 1777 := by
  rfl

theorem extensionSemanticPrime1759 :
    Nat.Prime (supportExtensionPrime 1759) ∧
      1759 < supportExtensionPrime 1759 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1759 < q → supportExtensionPrime 1759 ≤ q := by
  rw [extensionPrimeEq1759]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1777 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1777 :
    supportQrMaskWords 1777 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1777).take 11 := by
  rfl

theorem baseSupportPrimeMem1777 :
    1777 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1777 :
    supportExtensionPrime 1777 = 1783 := by
  rfl

theorem extensionSemanticPrime1777 :
    Nat.Prime (supportExtensionPrime 1777) ∧
      1777 < supportExtensionPrime 1777 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1777 < q → supportExtensionPrime 1777 ≤ q := by
  rw [extensionPrimeEq1777]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1783 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1783 :
    supportQrMaskWords 1783 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1783).take 11 := by
  rfl

theorem baseSupportPrimeMem1783 :
    1783 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1783 :
    supportExtensionPrime 1783 = 1787 := by
  rfl

theorem extensionSemanticPrime1783 :
    Nat.Prime (supportExtensionPrime 1783) ∧
      1783 < supportExtensionPrime 1783 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1783 < q → supportExtensionPrime 1783 ≤ q := by
  rw [extensionPrimeEq1783]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1787 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1787 :
    supportQrMaskWords 1787 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1787).take 11 := by
  rfl

theorem baseSupportPrimeMem1787 :
    1787 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1787 :
    supportExtensionPrime 1787 = 1789 := by
  rfl

theorem extensionSemanticPrime1787 :
    Nat.Prime (supportExtensionPrime 1787) ∧
      1787 < supportExtensionPrime 1787 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1787 < q → supportExtensionPrime 1787 ≤ q := by
  rw [extensionPrimeEq1787]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1789 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0024
    {p : ℕ}
    (hLower : 1700 ≤ p) (hUpper : p ≤ 1787)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1709
  · exact maskSemanticPrime1721
  · exact maskSemanticPrime1723
  · exact maskSemanticPrime1733
  · exact maskSemanticPrime1741
  · exact maskSemanticPrime1747
  · exact maskSemanticPrime1753
  · exact maskSemanticPrime1759
  · exact maskSemanticPrime1777
  · exact maskSemanticPrime1783
  · exact maskSemanticPrime1787

theorem baseSupportPrimeMemGroup0024
    {p : ℕ}
    (hLower : 1700 ≤ p) (hUpper : p ≤ 1787)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1709
  · exact baseSupportPrimeMem1721
  · exact baseSupportPrimeMem1723
  · exact baseSupportPrimeMem1733
  · exact baseSupportPrimeMem1741
  · exact baseSupportPrimeMem1747
  · exact baseSupportPrimeMem1753
  · exact baseSupportPrimeMem1759
  · exact baseSupportPrimeMem1777
  · exact baseSupportPrimeMem1783
  · exact baseSupportPrimeMem1787

theorem extensionSemanticGroup0024
    {p : ℕ}
    (hLower : 1700 ≤ p) (hUpper : p ≤ 1787)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1709
  · exact extensionSemanticPrime1721
  · exact extensionSemanticPrime1723
  · exact extensionSemanticPrime1733
  · exact extensionSemanticPrime1741
  · exact extensionSemanticPrime1747
  · exact extensionSemanticPrime1753
  · exact extensionSemanticPrime1759
  · exact extensionSemanticPrime1777
  · exact extensionSemanticPrime1783
  · exact extensionSemanticPrime1787

end Erdos848.GeneratedTailGlobalPureSupportCoverage
