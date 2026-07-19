import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime761 :
    supportQrMaskWords 761 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        761).take 11 := by
  rfl

theorem baseSupportPrimeMem761 :
    761 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq761 :
    supportExtensionPrime 761 = 769 := by
  rfl

theorem extensionSemanticPrime761 :
    Nat.Prime (supportExtensionPrime 761) ∧
      761 < supportExtensionPrime 761 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        761 < q → supportExtensionPrime 761 ≤ q := by
  rw [extensionPrimeEq761]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 769 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime769 :
    supportQrMaskWords 769 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        769).take 11 := by
  rfl

theorem baseSupportPrimeMem769 :
    769 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq769 :
    supportExtensionPrime 769 = 773 := by
  rfl

theorem extensionSemanticPrime769 :
    Nat.Prime (supportExtensionPrime 769) ∧
      769 < supportExtensionPrime 769 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        769 < q → supportExtensionPrime 769 ≤ q := by
  rw [extensionPrimeEq769]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 773 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime773 :
    supportQrMaskWords 773 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        773).take 11 := by
  rfl

theorem baseSupportPrimeMem773 :
    773 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq773 :
    supportExtensionPrime 773 = 787 := by
  rfl

theorem extensionSemanticPrime773 :
    Nat.Prime (supportExtensionPrime 773) ∧
      773 < supportExtensionPrime 773 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        773 < q → supportExtensionPrime 773 ≤ q := by
  rw [extensionPrimeEq773]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 787 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime787 :
    supportQrMaskWords 787 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        787).take 11 := by
  rfl

theorem baseSupportPrimeMem787 :
    787 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq787 :
    supportExtensionPrime 787 = 797 := by
  rfl

theorem extensionSemanticPrime787 :
    Nat.Prime (supportExtensionPrime 787) ∧
      787 < supportExtensionPrime 787 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        787 < q → supportExtensionPrime 787 ≤ q := by
  rw [extensionPrimeEq787]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 797 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime797 :
    supportQrMaskWords 797 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        797).take 11 := by
  rfl

theorem baseSupportPrimeMem797 :
    797 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq797 :
    supportExtensionPrime 797 = 809 := by
  rfl

theorem extensionSemanticPrime797 :
    Nat.Prime (supportExtensionPrime 797) ∧
      797 < supportExtensionPrime 797 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        797 < q → supportExtensionPrime 797 ≤ q := by
  rw [extensionPrimeEq797]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 809 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime809 :
    supportQrMaskWords 809 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        809).take 11 := by
  rfl

theorem baseSupportPrimeMem809 :
    809 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq809 :
    supportExtensionPrime 809 = 811 := by
  rfl

theorem extensionSemanticPrime809 :
    Nat.Prime (supportExtensionPrime 809) ∧
      809 < supportExtensionPrime 809 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        809 < q → supportExtensionPrime 809 ≤ q := by
  rw [extensionPrimeEq809]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 811 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime811 :
    supportQrMaskWords 811 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        811).take 11 := by
  rfl

theorem baseSupportPrimeMem811 :
    811 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq811 :
    supportExtensionPrime 811 = 821 := by
  rfl

theorem extensionSemanticPrime811 :
    Nat.Prime (supportExtensionPrime 811) ∧
      811 < supportExtensionPrime 811 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        811 < q → supportExtensionPrime 811 ≤ q := by
  rw [extensionPrimeEq811]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 821 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime821 :
    supportQrMaskWords 821 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        821).take 11 := by
  rfl

theorem baseSupportPrimeMem821 :
    821 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq821 :
    supportExtensionPrime 821 = 823 := by
  rfl

theorem extensionSemanticPrime821 :
    Nat.Prime (supportExtensionPrime 821) ∧
      821 < supportExtensionPrime 821 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        821 < q → supportExtensionPrime 821 ≤ q := by
  rw [extensionPrimeEq821]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 823 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime823 :
    supportQrMaskWords 823 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        823).take 11 := by
  rfl

theorem baseSupportPrimeMem823 :
    823 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq823 :
    supportExtensionPrime 823 = 827 := by
  rfl

theorem extensionSemanticPrime823 :
    Nat.Prime (supportExtensionPrime 823) ∧
      823 < supportExtensionPrime 823 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        823 < q → supportExtensionPrime 823 ≤ q := by
  rw [extensionPrimeEq823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 827 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime827 :
    supportQrMaskWords 827 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        827).take 11 := by
  rfl

theorem baseSupportPrimeMem827 :
    827 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq827 :
    supportExtensionPrime 827 = 829 := by
  rfl

theorem extensionSemanticPrime827 :
    Nat.Prime (supportExtensionPrime 827) ∧
      827 < supportExtensionPrime 827 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        827 < q → supportExtensionPrime 827 ≤ q := by
  rw [extensionPrimeEq827]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 829 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime829 :
    supportQrMaskWords 829 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        829).take 11 := by
  rfl

theorem baseSupportPrimeMem829 :
    829 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq829 :
    supportExtensionPrime 829 = 839 := by
  rfl

theorem extensionSemanticPrime829 :
    Nat.Prime (supportExtensionPrime 829) ∧
      829 < supportExtensionPrime 829 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        829 < q → supportExtensionPrime 829 ≤ q := by
  rw [extensionPrimeEq829]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 839 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0012
    {p : ℕ}
    (hLower : 758 ≤ p) (hUpper : p ≤ 829)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime761
  · exact maskSemanticPrime769
  · exact maskSemanticPrime773
  · exact maskSemanticPrime787
  · exact maskSemanticPrime797
  · exact maskSemanticPrime809
  · exact maskSemanticPrime811
  · exact maskSemanticPrime821
  · exact maskSemanticPrime823
  · exact maskSemanticPrime827
  · exact maskSemanticPrime829

theorem baseSupportPrimeMemGroup0012
    {p : ℕ}
    (hLower : 758 ≤ p) (hUpper : p ≤ 829)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem761
  · exact baseSupportPrimeMem769
  · exact baseSupportPrimeMem773
  · exact baseSupportPrimeMem787
  · exact baseSupportPrimeMem797
  · exact baseSupportPrimeMem809
  · exact baseSupportPrimeMem811
  · exact baseSupportPrimeMem821
  · exact baseSupportPrimeMem823
  · exact baseSupportPrimeMem827
  · exact baseSupportPrimeMem829

theorem extensionSemanticGroup0012
    {p : ℕ}
    (hLower : 758 ≤ p) (hUpper : p ≤ 829)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime761
  · exact extensionSemanticPrime769
  · exact extensionSemanticPrime773
  · exact extensionSemanticPrime787
  · exact extensionSemanticPrime797
  · exact extensionSemanticPrime809
  · exact extensionSemanticPrime811
  · exact extensionSemanticPrime821
  · exact extensionSemanticPrime823
  · exact extensionSemanticPrime827
  · exact extensionSemanticPrime829

end Erdos848.GeneratedTailGlobalPureSupportCoverage
