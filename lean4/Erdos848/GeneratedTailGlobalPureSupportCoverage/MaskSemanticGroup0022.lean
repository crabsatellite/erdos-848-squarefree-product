import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1553 :
    supportQrMaskWords 1553 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1553).take 11 := by
  rfl

theorem baseSupportPrimeMem1553 :
    1553 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1553 :
    supportExtensionPrime 1553 = 1559 := by
  rfl

theorem extensionSemanticPrime1553 :
    Nat.Prime (supportExtensionPrime 1553) ∧
      1553 < supportExtensionPrime 1553 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1553 < q → supportExtensionPrime 1553 ≤ q := by
  rw [extensionPrimeEq1553]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1559 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1559 :
    supportQrMaskWords 1559 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1559).take 11 := by
  rfl

theorem baseSupportPrimeMem1559 :
    1559 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1559 :
    supportExtensionPrime 1559 = 1567 := by
  rfl

theorem extensionSemanticPrime1559 :
    Nat.Prime (supportExtensionPrime 1559) ∧
      1559 < supportExtensionPrime 1559 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1559 < q → supportExtensionPrime 1559 ≤ q := by
  rw [extensionPrimeEq1559]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1567 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1567 :
    supportQrMaskWords 1567 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1567).take 11 := by
  rfl

theorem baseSupportPrimeMem1567 :
    1567 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1567 :
    supportExtensionPrime 1567 = 1571 := by
  rfl

theorem extensionSemanticPrime1567 :
    Nat.Prime (supportExtensionPrime 1567) ∧
      1567 < supportExtensionPrime 1567 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1567 < q → supportExtensionPrime 1567 ≤ q := by
  rw [extensionPrimeEq1567]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1571 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1571 :
    supportQrMaskWords 1571 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1571).take 11 := by
  rfl

theorem baseSupportPrimeMem1571 :
    1571 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1571 :
    supportExtensionPrime 1571 = 1579 := by
  rfl

theorem extensionSemanticPrime1571 :
    Nat.Prime (supportExtensionPrime 1571) ∧
      1571 < supportExtensionPrime 1571 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1571 < q → supportExtensionPrime 1571 ≤ q := by
  rw [extensionPrimeEq1571]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1579 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1579 :
    supportQrMaskWords 1579 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1579).take 11 := by
  rfl

theorem baseSupportPrimeMem1579 :
    1579 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1579 :
    supportExtensionPrime 1579 = 1583 := by
  rfl

theorem extensionSemanticPrime1579 :
    Nat.Prime (supportExtensionPrime 1579) ∧
      1579 < supportExtensionPrime 1579 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1579 < q → supportExtensionPrime 1579 ≤ q := by
  rw [extensionPrimeEq1579]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1583 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1583 :
    supportQrMaskWords 1583 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1583).take 11 := by
  rfl

theorem baseSupportPrimeMem1583 :
    1583 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1583 :
    supportExtensionPrime 1583 = 1597 := by
  rfl

theorem extensionSemanticPrime1583 :
    Nat.Prime (supportExtensionPrime 1583) ∧
      1583 < supportExtensionPrime 1583 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1583 < q → supportExtensionPrime 1583 ≤ q := by
  rw [extensionPrimeEq1583]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1597 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1597 :
    supportQrMaskWords 1597 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1597).take 11 := by
  rfl

theorem baseSupportPrimeMem1597 :
    1597 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1597 :
    supportExtensionPrime 1597 = 1601 := by
  rfl

theorem extensionSemanticPrime1597 :
    Nat.Prime (supportExtensionPrime 1597) ∧
      1597 < supportExtensionPrime 1597 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1597 < q → supportExtensionPrime 1597 ≤ q := by
  rw [extensionPrimeEq1597]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1601 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1601 :
    supportQrMaskWords 1601 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1601).take 11 := by
  rfl

theorem baseSupportPrimeMem1601 :
    1601 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1601 :
    supportExtensionPrime 1601 = 1607 := by
  rfl

theorem extensionSemanticPrime1601 :
    Nat.Prime (supportExtensionPrime 1601) ∧
      1601 < supportExtensionPrime 1601 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1601 < q → supportExtensionPrime 1601 ≤ q := by
  rw [extensionPrimeEq1601]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1607 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1607 :
    supportQrMaskWords 1607 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1607).take 11 := by
  rfl

theorem baseSupportPrimeMem1607 :
    1607 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1607 :
    supportExtensionPrime 1607 = 1609 := by
  rfl

theorem extensionSemanticPrime1607 :
    Nat.Prime (supportExtensionPrime 1607) ∧
      1607 < supportExtensionPrime 1607 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1607 < q → supportExtensionPrime 1607 ≤ q := by
  rw [extensionPrimeEq1607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1609 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1609 :
    supportQrMaskWords 1609 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1609).take 11 := by
  rfl

theorem baseSupportPrimeMem1609 :
    1609 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1609 :
    supportExtensionPrime 1609 = 1613 := by
  rfl

theorem extensionSemanticPrime1609 :
    Nat.Prime (supportExtensionPrime 1609) ∧
      1609 < supportExtensionPrime 1609 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1609 < q → supportExtensionPrime 1609 ≤ q := by
  rw [extensionPrimeEq1609]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1613 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1613 :
    supportQrMaskWords 1613 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1613).take 11 := by
  rfl

theorem baseSupportPrimeMem1613 :
    1613 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1613 :
    supportExtensionPrime 1613 = 1619 := by
  rfl

theorem extensionSemanticPrime1613 :
    Nat.Prime (supportExtensionPrime 1613) ∧
      1613 < supportExtensionPrime 1613 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1613 < q → supportExtensionPrime 1613 ≤ q := by
  rw [extensionPrimeEq1613]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1619 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0022
    {p : ℕ}
    (hLower : 1550 ≤ p) (hUpper : p ≤ 1613)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1553
  · exact maskSemanticPrime1559
  · exact maskSemanticPrime1567
  · exact maskSemanticPrime1571
  · exact maskSemanticPrime1579
  · exact maskSemanticPrime1583
  · exact maskSemanticPrime1597
  · exact maskSemanticPrime1601
  · exact maskSemanticPrime1607
  · exact maskSemanticPrime1609
  · exact maskSemanticPrime1613

theorem baseSupportPrimeMemGroup0022
    {p : ℕ}
    (hLower : 1550 ≤ p) (hUpper : p ≤ 1613)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1553
  · exact baseSupportPrimeMem1559
  · exact baseSupportPrimeMem1567
  · exact baseSupportPrimeMem1571
  · exact baseSupportPrimeMem1579
  · exact baseSupportPrimeMem1583
  · exact baseSupportPrimeMem1597
  · exact baseSupportPrimeMem1601
  · exact baseSupportPrimeMem1607
  · exact baseSupportPrimeMem1609
  · exact baseSupportPrimeMem1613

theorem extensionSemanticGroup0022
    {p : ℕ}
    (hLower : 1550 ≤ p) (hUpper : p ≤ 1613)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1553
  · exact extensionSemanticPrime1559
  · exact extensionSemanticPrime1567
  · exact extensionSemanticPrime1571
  · exact extensionSemanticPrime1579
  · exact extensionSemanticPrime1583
  · exact extensionSemanticPrime1597
  · exact extensionSemanticPrime1601
  · exact extensionSemanticPrime1607
  · exact extensionSemanticPrime1609
  · exact extensionSemanticPrime1613

end Erdos848.GeneratedTailGlobalPureSupportCoverage
