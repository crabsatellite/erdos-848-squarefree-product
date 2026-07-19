import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime617 :
    supportQrMaskWords 617 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        617).take 11 := by
  rfl

theorem baseSupportPrimeMem617 :
    617 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq617 :
    supportExtensionPrime 617 = 619 := by
  rfl

theorem extensionSemanticPrime617 :
    Nat.Prime (supportExtensionPrime 617) ∧
      617 < supportExtensionPrime 617 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        617 < q → supportExtensionPrime 617 ≤ q := by
  rw [extensionPrimeEq617]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 619 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime619 :
    supportQrMaskWords 619 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        619).take 11 := by
  rfl

theorem baseSupportPrimeMem619 :
    619 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq619 :
    supportExtensionPrime 619 = 631 := by
  rfl

theorem extensionSemanticPrime619 :
    Nat.Prime (supportExtensionPrime 619) ∧
      619 < supportExtensionPrime 619 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        619 < q → supportExtensionPrime 619 ≤ q := by
  rw [extensionPrimeEq619]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 631 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime631 :
    supportQrMaskWords 631 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        631).take 11 := by
  rfl

theorem baseSupportPrimeMem631 :
    631 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq631 :
    supportExtensionPrime 631 = 641 := by
  rfl

theorem extensionSemanticPrime631 :
    Nat.Prime (supportExtensionPrime 631) ∧
      631 < supportExtensionPrime 631 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        631 < q → supportExtensionPrime 631 ≤ q := by
  rw [extensionPrimeEq631]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 641 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime641 :
    supportQrMaskWords 641 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        641).take 11 := by
  rfl

theorem baseSupportPrimeMem641 :
    641 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq641 :
    supportExtensionPrime 641 = 643 := by
  rfl

theorem extensionSemanticPrime641 :
    Nat.Prime (supportExtensionPrime 641) ∧
      641 < supportExtensionPrime 641 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        641 < q → supportExtensionPrime 641 ≤ q := by
  rw [extensionPrimeEq641]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 643 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime643 :
    supportQrMaskWords 643 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        643).take 11 := by
  rfl

theorem baseSupportPrimeMem643 :
    643 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq643 :
    supportExtensionPrime 643 = 647 := by
  rfl

theorem extensionSemanticPrime643 :
    Nat.Prime (supportExtensionPrime 643) ∧
      643 < supportExtensionPrime 643 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        643 < q → supportExtensionPrime 643 ≤ q := by
  rw [extensionPrimeEq643]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 647 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime647 :
    supportQrMaskWords 647 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        647).take 11 := by
  rfl

theorem baseSupportPrimeMem647 :
    647 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq647 :
    supportExtensionPrime 647 = 653 := by
  rfl

theorem extensionSemanticPrime647 :
    Nat.Prime (supportExtensionPrime 647) ∧
      647 < supportExtensionPrime 647 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        647 < q → supportExtensionPrime 647 ≤ q := by
  rw [extensionPrimeEq647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 653 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime653 :
    supportQrMaskWords 653 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        653).take 11 := by
  rfl

theorem baseSupportPrimeMem653 :
    653 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq653 :
    supportExtensionPrime 653 = 659 := by
  rfl

theorem extensionSemanticPrime653 :
    Nat.Prime (supportExtensionPrime 653) ∧
      653 < supportExtensionPrime 653 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        653 < q → supportExtensionPrime 653 ≤ q := by
  rw [extensionPrimeEq653]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 659 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime659 :
    supportQrMaskWords 659 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        659).take 11 := by
  rfl

theorem baseSupportPrimeMem659 :
    659 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq659 :
    supportExtensionPrime 659 = 661 := by
  rfl

theorem extensionSemanticPrime659 :
    Nat.Prime (supportExtensionPrime 659) ∧
      659 < supportExtensionPrime 659 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        659 < q → supportExtensionPrime 659 ≤ q := by
  rw [extensionPrimeEq659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 661 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime661 :
    supportQrMaskWords 661 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        661).take 11 := by
  rfl

theorem baseSupportPrimeMem661 :
    661 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq661 :
    supportExtensionPrime 661 = 673 := by
  rfl

theorem extensionSemanticPrime661 :
    Nat.Prime (supportExtensionPrime 661) ∧
      661 < supportExtensionPrime 661 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        661 < q → supportExtensionPrime 661 ≤ q := by
  rw [extensionPrimeEq661]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 673 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime673 :
    supportQrMaskWords 673 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        673).take 11 := by
  rfl

theorem baseSupportPrimeMem673 :
    673 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq673 :
    supportExtensionPrime 673 = 677 := by
  rfl

theorem extensionSemanticPrime673 :
    Nat.Prime (supportExtensionPrime 673) ∧
      673 < supportExtensionPrime 673 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        673 < q → supportExtensionPrime 673 ≤ q := by
  rw [extensionPrimeEq673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 677 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime677 :
    supportQrMaskWords 677 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        677).take 11 := by
  rfl

theorem baseSupportPrimeMem677 :
    677 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq677 :
    supportExtensionPrime 677 = 683 := by
  rfl

theorem extensionSemanticPrime677 :
    Nat.Prime (supportExtensionPrime 677) ∧
      677 < supportExtensionPrime 677 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        677 < q → supportExtensionPrime 677 ≤ q := by
  rw [extensionPrimeEq677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 683 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0010
    {p : ℕ}
    (hLower : 614 ≤ p) (hUpper : p ≤ 677)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime617
  · exact maskSemanticPrime619
  · exact maskSemanticPrime631
  · exact maskSemanticPrime641
  · exact maskSemanticPrime643
  · exact maskSemanticPrime647
  · exact maskSemanticPrime653
  · exact maskSemanticPrime659
  · exact maskSemanticPrime661
  · exact maskSemanticPrime673
  · exact maskSemanticPrime677

theorem baseSupportPrimeMemGroup0010
    {p : ℕ}
    (hLower : 614 ≤ p) (hUpper : p ≤ 677)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem617
  · exact baseSupportPrimeMem619
  · exact baseSupportPrimeMem631
  · exact baseSupportPrimeMem641
  · exact baseSupportPrimeMem643
  · exact baseSupportPrimeMem647
  · exact baseSupportPrimeMem653
  · exact baseSupportPrimeMem659
  · exact baseSupportPrimeMem661
  · exact baseSupportPrimeMem673
  · exact baseSupportPrimeMem677

theorem extensionSemanticGroup0010
    {p : ℕ}
    (hLower : 614 ≤ p) (hUpper : p ≤ 677)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime617
  · exact extensionSemanticPrime619
  · exact extensionSemanticPrime631
  · exact extensionSemanticPrime641
  · exact extensionSemanticPrime643
  · exact extensionSemanticPrime647
  · exact extensionSemanticPrime653
  · exact extensionSemanticPrime659
  · exact extensionSemanticPrime661
  · exact extensionSemanticPrime673
  · exact extensionSemanticPrime677

end Erdos848.GeneratedTailGlobalPureSupportCoverage
