import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1619 :
    supportQrMaskWords 1619 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1619).take 11 := by
  rfl

theorem baseSupportPrimeMem1619 :
    1619 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1619 :
    supportExtensionPrime 1619 = 1621 := by
  rfl

theorem extensionSemanticPrime1619 :
    Nat.Prime (supportExtensionPrime 1619) ∧
      1619 < supportExtensionPrime 1619 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1619 < q → supportExtensionPrime 1619 ≤ q := by
  rw [extensionPrimeEq1619]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1621 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1621 :
    supportQrMaskWords 1621 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1621).take 11 := by
  rfl

theorem baseSupportPrimeMem1621 :
    1621 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1621 :
    supportExtensionPrime 1621 = 1627 := by
  rfl

theorem extensionSemanticPrime1621 :
    Nat.Prime (supportExtensionPrime 1621) ∧
      1621 < supportExtensionPrime 1621 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1621 < q → supportExtensionPrime 1621 ≤ q := by
  rw [extensionPrimeEq1621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1627 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1627 :
    supportQrMaskWords 1627 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1627).take 11 := by
  rfl

theorem baseSupportPrimeMem1627 :
    1627 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1627 :
    supportExtensionPrime 1627 = 1637 := by
  rfl

theorem extensionSemanticPrime1627 :
    Nat.Prime (supportExtensionPrime 1627) ∧
      1627 < supportExtensionPrime 1627 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1627 < q → supportExtensionPrime 1627 ≤ q := by
  rw [extensionPrimeEq1627]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1637 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1637 :
    supportQrMaskWords 1637 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1637).take 11 := by
  rfl

theorem baseSupportPrimeMem1637 :
    1637 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1637 :
    supportExtensionPrime 1637 = 1657 := by
  rfl

theorem extensionSemanticPrime1637 :
    Nat.Prime (supportExtensionPrime 1637) ∧
      1637 < supportExtensionPrime 1637 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1637 < q → supportExtensionPrime 1637 ≤ q := by
  rw [extensionPrimeEq1637]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1657 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1657 :
    supportQrMaskWords 1657 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1657).take 11 := by
  rfl

theorem baseSupportPrimeMem1657 :
    1657 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1657 :
    supportExtensionPrime 1657 = 1663 := by
  rfl

theorem extensionSemanticPrime1657 :
    Nat.Prime (supportExtensionPrime 1657) ∧
      1657 < supportExtensionPrime 1657 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1657 < q → supportExtensionPrime 1657 ≤ q := by
  rw [extensionPrimeEq1657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1663 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1663 :
    supportQrMaskWords 1663 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1663).take 11 := by
  rfl

theorem baseSupportPrimeMem1663 :
    1663 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1663 :
    supportExtensionPrime 1663 = 1667 := by
  rfl

theorem extensionSemanticPrime1663 :
    Nat.Prime (supportExtensionPrime 1663) ∧
      1663 < supportExtensionPrime 1663 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1663 < q → supportExtensionPrime 1663 ≤ q := by
  rw [extensionPrimeEq1663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1667 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1667 :
    supportQrMaskWords 1667 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1667).take 11 := by
  rfl

theorem baseSupportPrimeMem1667 :
    1667 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1667 :
    supportExtensionPrime 1667 = 1669 := by
  rfl

theorem extensionSemanticPrime1667 :
    Nat.Prime (supportExtensionPrime 1667) ∧
      1667 < supportExtensionPrime 1667 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1667 < q → supportExtensionPrime 1667 ≤ q := by
  rw [extensionPrimeEq1667]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1669 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1669 :
    supportQrMaskWords 1669 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1669).take 11 := by
  rfl

theorem baseSupportPrimeMem1669 :
    1669 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1669 :
    supportExtensionPrime 1669 = 1693 := by
  rfl

theorem extensionSemanticPrime1669 :
    Nat.Prime (supportExtensionPrime 1669) ∧
      1669 < supportExtensionPrime 1669 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1669 < q → supportExtensionPrime 1669 ≤ q := by
  rw [extensionPrimeEq1669]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1693 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1693 :
    supportQrMaskWords 1693 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1693).take 11 := by
  rfl

theorem baseSupportPrimeMem1693 :
    1693 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1693 :
    supportExtensionPrime 1693 = 1697 := by
  rfl

theorem extensionSemanticPrime1693 :
    Nat.Prime (supportExtensionPrime 1693) ∧
      1693 < supportExtensionPrime 1693 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1693 < q → supportExtensionPrime 1693 ≤ q := by
  rw [extensionPrimeEq1693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1697 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1697 :
    supportQrMaskWords 1697 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1697).take 11 := by
  rfl

theorem baseSupportPrimeMem1697 :
    1697 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1697 :
    supportExtensionPrime 1697 = 1699 := by
  rfl

theorem extensionSemanticPrime1697 :
    Nat.Prime (supportExtensionPrime 1697) ∧
      1697 < supportExtensionPrime 1697 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1697 < q → supportExtensionPrime 1697 ≤ q := by
  rw [extensionPrimeEq1697]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1699 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1699 :
    supportQrMaskWords 1699 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1699).take 11 := by
  rfl

theorem baseSupportPrimeMem1699 :
    1699 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1699 :
    supportExtensionPrime 1699 = 1709 := by
  rfl

theorem extensionSemanticPrime1699 :
    Nat.Prime (supportExtensionPrime 1699) ∧
      1699 < supportExtensionPrime 1699 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1699 < q → supportExtensionPrime 1699 ≤ q := by
  rw [extensionPrimeEq1699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1709 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0023
    {p : ℕ}
    (hLower : 1614 ≤ p) (hUpper : p ≤ 1699)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1619
  · exact maskSemanticPrime1621
  · exact maskSemanticPrime1627
  · exact maskSemanticPrime1637
  · exact maskSemanticPrime1657
  · exact maskSemanticPrime1663
  · exact maskSemanticPrime1667
  · exact maskSemanticPrime1669
  · exact maskSemanticPrime1693
  · exact maskSemanticPrime1697
  · exact maskSemanticPrime1699

theorem baseSupportPrimeMemGroup0023
    {p : ℕ}
    (hLower : 1614 ≤ p) (hUpper : p ≤ 1699)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1619
  · exact baseSupportPrimeMem1621
  · exact baseSupportPrimeMem1627
  · exact baseSupportPrimeMem1637
  · exact baseSupportPrimeMem1657
  · exact baseSupportPrimeMem1663
  · exact baseSupportPrimeMem1667
  · exact baseSupportPrimeMem1669
  · exact baseSupportPrimeMem1693
  · exact baseSupportPrimeMem1697
  · exact baseSupportPrimeMem1699

theorem extensionSemanticGroup0023
    {p : ℕ}
    (hLower : 1614 ≤ p) (hUpper : p ≤ 1699)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1619
  · exact extensionSemanticPrime1621
  · exact extensionSemanticPrime1627
  · exact extensionSemanticPrime1637
  · exact extensionSemanticPrime1657
  · exact extensionSemanticPrime1663
  · exact extensionSemanticPrime1667
  · exact extensionSemanticPrime1669
  · exact extensionSemanticPrime1693
  · exact extensionSemanticPrime1697
  · exact extensionSemanticPrime1699

end Erdos848.GeneratedTailGlobalPureSupportCoverage
