import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2677 :
    supportQrMaskWords 2677 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2677).take 11 := by
  rfl

theorem baseSupportPrimeMem2677 :
    2677 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2677 :
    supportExtensionPrime 2677 = 2683 := by
  rfl

theorem extensionSemanticPrime2677 :
    Nat.Prime (supportExtensionPrime 2677) ∧
      2677 < supportExtensionPrime 2677 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2677 < q → supportExtensionPrime 2677 ≤ q := by
  rw [extensionPrimeEq2677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2683 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2683 :
    supportQrMaskWords 2683 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2683).take 11 := by
  rfl

theorem baseSupportPrimeMem2683 :
    2683 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2683 :
    supportExtensionPrime 2683 = 2687 := by
  rfl

theorem extensionSemanticPrime2683 :
    Nat.Prime (supportExtensionPrime 2683) ∧
      2683 < supportExtensionPrime 2683 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2683 < q → supportExtensionPrime 2683 ≤ q := by
  rw [extensionPrimeEq2683]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2687 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2687 :
    supportQrMaskWords 2687 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2687).take 11 := by
  rfl

theorem baseSupportPrimeMem2687 :
    2687 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2687 :
    supportExtensionPrime 2687 = 2689 := by
  rfl

theorem extensionSemanticPrime2687 :
    Nat.Prime (supportExtensionPrime 2687) ∧
      2687 < supportExtensionPrime 2687 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2687 < q → supportExtensionPrime 2687 ≤ q := by
  rw [extensionPrimeEq2687]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2689 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2689 :
    supportQrMaskWords 2689 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2689).take 11 := by
  rfl

theorem baseSupportPrimeMem2689 :
    2689 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2689 :
    supportExtensionPrime 2689 = 2693 := by
  rfl

theorem extensionSemanticPrime2689 :
    Nat.Prime (supportExtensionPrime 2689) ∧
      2689 < supportExtensionPrime 2689 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2689 < q → supportExtensionPrime 2689 ≤ q := by
  rw [extensionPrimeEq2689]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2693 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2693 :
    supportQrMaskWords 2693 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2693).take 11 := by
  rfl

theorem baseSupportPrimeMem2693 :
    2693 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2693 :
    supportExtensionPrime 2693 = 2699 := by
  rfl

theorem extensionSemanticPrime2693 :
    Nat.Prime (supportExtensionPrime 2693) ∧
      2693 < supportExtensionPrime 2693 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2693 < q → supportExtensionPrime 2693 ≤ q := by
  rw [extensionPrimeEq2693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2699 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2699 :
    supportQrMaskWords 2699 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2699).take 11 := by
  rfl

theorem baseSupportPrimeMem2699 :
    2699 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2699 :
    supportExtensionPrime 2699 = 2707 := by
  rfl

theorem extensionSemanticPrime2699 :
    Nat.Prime (supportExtensionPrime 2699) ∧
      2699 < supportExtensionPrime 2699 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2699 < q → supportExtensionPrime 2699 ≤ q := by
  rw [extensionPrimeEq2699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2707 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2707 :
    supportQrMaskWords 2707 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2707).take 11 := by
  rfl

theorem baseSupportPrimeMem2707 :
    2707 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2707 :
    supportExtensionPrime 2707 = 2711 := by
  rfl

theorem extensionSemanticPrime2707 :
    Nat.Prime (supportExtensionPrime 2707) ∧
      2707 < supportExtensionPrime 2707 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2707 < q → supportExtensionPrime 2707 ≤ q := by
  rw [extensionPrimeEq2707]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2711 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2711 :
    supportQrMaskWords 2711 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2711).take 11 := by
  rfl

theorem baseSupportPrimeMem2711 :
    2711 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2711 :
    supportExtensionPrime 2711 = 2713 := by
  rfl

theorem extensionSemanticPrime2711 :
    Nat.Prime (supportExtensionPrime 2711) ∧
      2711 < supportExtensionPrime 2711 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2711 < q → supportExtensionPrime 2711 ≤ q := by
  rw [extensionPrimeEq2711]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2713 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2713 :
    supportQrMaskWords 2713 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2713).take 11 := by
  rfl

theorem baseSupportPrimeMem2713 :
    2713 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2713 :
    supportExtensionPrime 2713 = 2719 := by
  rfl

theorem extensionSemanticPrime2713 :
    Nat.Prime (supportExtensionPrime 2713) ∧
      2713 < supportExtensionPrime 2713 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2713 < q → supportExtensionPrime 2713 ≤ q := by
  rw [extensionPrimeEq2713]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2719 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2719 :
    supportQrMaskWords 2719 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2719).take 11 := by
  rfl

theorem baseSupportPrimeMem2719 :
    2719 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2719 :
    supportExtensionPrime 2719 = 2729 := by
  rfl

theorem extensionSemanticPrime2719 :
    Nat.Prime (supportExtensionPrime 2719) ∧
      2719 < supportExtensionPrime 2719 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2719 < q → supportExtensionPrime 2719 ≤ q := by
  rw [extensionPrimeEq2719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2729 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2729 :
    supportQrMaskWords 2729 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2729).take 11 := by
  rfl

theorem baseSupportPrimeMem2729 :
    2729 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2729 :
    supportExtensionPrime 2729 = 2731 := by
  rfl

theorem extensionSemanticPrime2729 :
    Nat.Prime (supportExtensionPrime 2729) ∧
      2729 < supportExtensionPrime 2729 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2729 < q → supportExtensionPrime 2729 ≤ q := by
  rw [extensionPrimeEq2729]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2731 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0035
    {p : ℕ}
    (hLower : 2672 ≤ p) (hUpper : p ≤ 2729)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2677
  · exact maskSemanticPrime2683
  · exact maskSemanticPrime2687
  · exact maskSemanticPrime2689
  · exact maskSemanticPrime2693
  · exact maskSemanticPrime2699
  · exact maskSemanticPrime2707
  · exact maskSemanticPrime2711
  · exact maskSemanticPrime2713
  · exact maskSemanticPrime2719
  · exact maskSemanticPrime2729

theorem baseSupportPrimeMemGroup0035
    {p : ℕ}
    (hLower : 2672 ≤ p) (hUpper : p ≤ 2729)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2677
  · exact baseSupportPrimeMem2683
  · exact baseSupportPrimeMem2687
  · exact baseSupportPrimeMem2689
  · exact baseSupportPrimeMem2693
  · exact baseSupportPrimeMem2699
  · exact baseSupportPrimeMem2707
  · exact baseSupportPrimeMem2711
  · exact baseSupportPrimeMem2713
  · exact baseSupportPrimeMem2719
  · exact baseSupportPrimeMem2729

theorem extensionSemanticGroup0035
    {p : ℕ}
    (hLower : 2672 ≤ p) (hUpper : p ≤ 2729)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2677
  · exact extensionSemanticPrime2683
  · exact extensionSemanticPrime2687
  · exact extensionSemanticPrime2689
  · exact extensionSemanticPrime2693
  · exact extensionSemanticPrime2699
  · exact extensionSemanticPrime2707
  · exact extensionSemanticPrime2711
  · exact extensionSemanticPrime2713
  · exact extensionSemanticPrime2719
  · exact extensionSemanticPrime2729

end Erdos848.GeneratedTailGlobalPureSupportCoverage
