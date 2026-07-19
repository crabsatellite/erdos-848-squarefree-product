import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2591 :
    supportQrMaskWords 2591 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2591).take 11 := by
  rfl

theorem baseSupportPrimeMem2591 :
    2591 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2591 :
    supportExtensionPrime 2591 = 2593 := by
  rfl

theorem extensionSemanticPrime2591 :
    Nat.Prime (supportExtensionPrime 2591) ∧
      2591 < supportExtensionPrime 2591 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2591 < q → supportExtensionPrime 2591 ≤ q := by
  rw [extensionPrimeEq2591]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2593 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2593 :
    supportQrMaskWords 2593 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2593).take 11 := by
  rfl

theorem baseSupportPrimeMem2593 :
    2593 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2593 :
    supportExtensionPrime 2593 = 2609 := by
  rfl

theorem extensionSemanticPrime2593 :
    Nat.Prime (supportExtensionPrime 2593) ∧
      2593 < supportExtensionPrime 2593 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2593 < q → supportExtensionPrime 2593 ≤ q := by
  rw [extensionPrimeEq2593]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2609 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2609 :
    supportQrMaskWords 2609 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2609).take 11 := by
  rfl

theorem baseSupportPrimeMem2609 :
    2609 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2609 :
    supportExtensionPrime 2609 = 2617 := by
  rfl

theorem extensionSemanticPrime2609 :
    Nat.Prime (supportExtensionPrime 2609) ∧
      2609 < supportExtensionPrime 2609 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2609 < q → supportExtensionPrime 2609 ≤ q := by
  rw [extensionPrimeEq2609]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2617 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2617 :
    supportQrMaskWords 2617 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2617).take 11 := by
  rfl

theorem baseSupportPrimeMem2617 :
    2617 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2617 :
    supportExtensionPrime 2617 = 2621 := by
  rfl

theorem extensionSemanticPrime2617 :
    Nat.Prime (supportExtensionPrime 2617) ∧
      2617 < supportExtensionPrime 2617 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2617 < q → supportExtensionPrime 2617 ≤ q := by
  rw [extensionPrimeEq2617]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2621 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2621 :
    supportQrMaskWords 2621 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2621).take 11 := by
  rfl

theorem baseSupportPrimeMem2621 :
    2621 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2621 :
    supportExtensionPrime 2621 = 2633 := by
  rfl

theorem extensionSemanticPrime2621 :
    Nat.Prime (supportExtensionPrime 2621) ∧
      2621 < supportExtensionPrime 2621 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2621 < q → supportExtensionPrime 2621 ≤ q := by
  rw [extensionPrimeEq2621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2633 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2633 :
    supportQrMaskWords 2633 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2633).take 11 := by
  rfl

theorem baseSupportPrimeMem2633 :
    2633 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2633 :
    supportExtensionPrime 2633 = 2647 := by
  rfl

theorem extensionSemanticPrime2633 :
    Nat.Prime (supportExtensionPrime 2633) ∧
      2633 < supportExtensionPrime 2633 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2633 < q → supportExtensionPrime 2633 ≤ q := by
  rw [extensionPrimeEq2633]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2647 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2647 :
    supportQrMaskWords 2647 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2647).take 11 := by
  rfl

theorem baseSupportPrimeMem2647 :
    2647 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2647 :
    supportExtensionPrime 2647 = 2657 := by
  rfl

theorem extensionSemanticPrime2647 :
    Nat.Prime (supportExtensionPrime 2647) ∧
      2647 < supportExtensionPrime 2647 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2647 < q → supportExtensionPrime 2647 ≤ q := by
  rw [extensionPrimeEq2647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2657 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2657 :
    supportQrMaskWords 2657 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2657).take 11 := by
  rfl

theorem baseSupportPrimeMem2657 :
    2657 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2657 :
    supportExtensionPrime 2657 = 2659 := by
  rfl

theorem extensionSemanticPrime2657 :
    Nat.Prime (supportExtensionPrime 2657) ∧
      2657 < supportExtensionPrime 2657 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2657 < q → supportExtensionPrime 2657 ≤ q := by
  rw [extensionPrimeEq2657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2659 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2659 :
    supportQrMaskWords 2659 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2659).take 11 := by
  rfl

theorem baseSupportPrimeMem2659 :
    2659 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2659 :
    supportExtensionPrime 2659 = 2663 := by
  rfl

theorem extensionSemanticPrime2659 :
    Nat.Prime (supportExtensionPrime 2659) ∧
      2659 < supportExtensionPrime 2659 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2659 < q → supportExtensionPrime 2659 ≤ q := by
  rw [extensionPrimeEq2659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2663 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2663 :
    supportQrMaskWords 2663 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2663).take 11 := by
  rfl

theorem baseSupportPrimeMem2663 :
    2663 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2663 :
    supportExtensionPrime 2663 = 2671 := by
  rfl

theorem extensionSemanticPrime2663 :
    Nat.Prime (supportExtensionPrime 2663) ∧
      2663 < supportExtensionPrime 2663 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2663 < q → supportExtensionPrime 2663 ≤ q := by
  rw [extensionPrimeEq2663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2671 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2671 :
    supportQrMaskWords 2671 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2671).take 11 := by
  rfl

theorem baseSupportPrimeMem2671 :
    2671 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2671 :
    supportExtensionPrime 2671 = 2677 := by
  rfl

theorem extensionSemanticPrime2671 :
    Nat.Prime (supportExtensionPrime 2671) ∧
      2671 < supportExtensionPrime 2671 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2671 < q → supportExtensionPrime 2671 ≤ q := by
  rw [extensionPrimeEq2671]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2677 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0034
    {p : ℕ}
    (hLower : 2580 ≤ p) (hUpper : p ≤ 2671)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2591
  · exact maskSemanticPrime2593
  · exact maskSemanticPrime2609
  · exact maskSemanticPrime2617
  · exact maskSemanticPrime2621
  · exact maskSemanticPrime2633
  · exact maskSemanticPrime2647
  · exact maskSemanticPrime2657
  · exact maskSemanticPrime2659
  · exact maskSemanticPrime2663
  · exact maskSemanticPrime2671

theorem baseSupportPrimeMemGroup0034
    {p : ℕ}
    (hLower : 2580 ≤ p) (hUpper : p ≤ 2671)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2591
  · exact baseSupportPrimeMem2593
  · exact baseSupportPrimeMem2609
  · exact baseSupportPrimeMem2617
  · exact baseSupportPrimeMem2621
  · exact baseSupportPrimeMem2633
  · exact baseSupportPrimeMem2647
  · exact baseSupportPrimeMem2657
  · exact baseSupportPrimeMem2659
  · exact baseSupportPrimeMem2663
  · exact baseSupportPrimeMem2671

theorem extensionSemanticGroup0034
    {p : ℕ}
    (hLower : 2580 ≤ p) (hUpper : p ≤ 2671)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2591
  · exact extensionSemanticPrime2593
  · exact extensionSemanticPrime2609
  · exact extensionSemanticPrime2617
  · exact extensionSemanticPrime2621
  · exact extensionSemanticPrime2633
  · exact extensionSemanticPrime2647
  · exact extensionSemanticPrime2657
  · exact extensionSemanticPrime2659
  · exact extensionSemanticPrime2663
  · exact extensionSemanticPrime2671

end Erdos848.GeneratedTailGlobalPureSupportCoverage
