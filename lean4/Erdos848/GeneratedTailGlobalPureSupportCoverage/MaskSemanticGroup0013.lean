import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime839 :
    supportQrMaskWords 839 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        839).take 11 := by
  rfl

theorem baseSupportPrimeMem839 :
    839 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq839 :
    supportExtensionPrime 839 = 853 := by
  rfl

theorem extensionSemanticPrime839 :
    Nat.Prime (supportExtensionPrime 839) ∧
      839 < supportExtensionPrime 839 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        839 < q → supportExtensionPrime 839 ≤ q := by
  rw [extensionPrimeEq839]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 853 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime853 :
    supportQrMaskWords 853 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        853).take 11 := by
  rfl

theorem baseSupportPrimeMem853 :
    853 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq853 :
    supportExtensionPrime 853 = 857 := by
  rfl

theorem extensionSemanticPrime853 :
    Nat.Prime (supportExtensionPrime 853) ∧
      853 < supportExtensionPrime 853 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        853 < q → supportExtensionPrime 853 ≤ q := by
  rw [extensionPrimeEq853]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 857 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime857 :
    supportQrMaskWords 857 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        857).take 11 := by
  rfl

theorem baseSupportPrimeMem857 :
    857 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq857 :
    supportExtensionPrime 857 = 859 := by
  rfl

theorem extensionSemanticPrime857 :
    Nat.Prime (supportExtensionPrime 857) ∧
      857 < supportExtensionPrime 857 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        857 < q → supportExtensionPrime 857 ≤ q := by
  rw [extensionPrimeEq857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 859 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime859 :
    supportQrMaskWords 859 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        859).take 11 := by
  rfl

theorem baseSupportPrimeMem859 :
    859 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq859 :
    supportExtensionPrime 859 = 863 := by
  rfl

theorem extensionSemanticPrime859 :
    Nat.Prime (supportExtensionPrime 859) ∧
      859 < supportExtensionPrime 859 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        859 < q → supportExtensionPrime 859 ≤ q := by
  rw [extensionPrimeEq859]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 863 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime863 :
    supportQrMaskWords 863 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        863).take 11 := by
  rfl

theorem baseSupportPrimeMem863 :
    863 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq863 :
    supportExtensionPrime 863 = 877 := by
  rfl

theorem extensionSemanticPrime863 :
    Nat.Prime (supportExtensionPrime 863) ∧
      863 < supportExtensionPrime 863 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        863 < q → supportExtensionPrime 863 ≤ q := by
  rw [extensionPrimeEq863]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 877 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime877 :
    supportQrMaskWords 877 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        877).take 11 := by
  rfl

theorem baseSupportPrimeMem877 :
    877 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq877 :
    supportExtensionPrime 877 = 881 := by
  rfl

theorem extensionSemanticPrime877 :
    Nat.Prime (supportExtensionPrime 877) ∧
      877 < supportExtensionPrime 877 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        877 < q → supportExtensionPrime 877 ≤ q := by
  rw [extensionPrimeEq877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 881 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime881 :
    supportQrMaskWords 881 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        881).take 11 := by
  rfl

theorem baseSupportPrimeMem881 :
    881 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq881 :
    supportExtensionPrime 881 = 883 := by
  rfl

theorem extensionSemanticPrime881 :
    Nat.Prime (supportExtensionPrime 881) ∧
      881 < supportExtensionPrime 881 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        881 < q → supportExtensionPrime 881 ≤ q := by
  rw [extensionPrimeEq881]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 883 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime883 :
    supportQrMaskWords 883 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        883).take 11 := by
  rfl

theorem baseSupportPrimeMem883 :
    883 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq883 :
    supportExtensionPrime 883 = 887 := by
  rfl

theorem extensionSemanticPrime883 :
    Nat.Prime (supportExtensionPrime 883) ∧
      883 < supportExtensionPrime 883 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        883 < q → supportExtensionPrime 883 ≤ q := by
  rw [extensionPrimeEq883]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 887 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime887 :
    supportQrMaskWords 887 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        887).take 11 := by
  rfl

theorem baseSupportPrimeMem887 :
    887 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq887 :
    supportExtensionPrime 887 = 907 := by
  rfl

theorem extensionSemanticPrime887 :
    Nat.Prime (supportExtensionPrime 887) ∧
      887 < supportExtensionPrime 887 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        887 < q → supportExtensionPrime 887 ≤ q := by
  rw [extensionPrimeEq887]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 907 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime907 :
    supportQrMaskWords 907 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        907).take 11 := by
  rfl

theorem baseSupportPrimeMem907 :
    907 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq907 :
    supportExtensionPrime 907 = 911 := by
  rfl

theorem extensionSemanticPrime907 :
    Nat.Prime (supportExtensionPrime 907) ∧
      907 < supportExtensionPrime 907 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        907 < q → supportExtensionPrime 907 ≤ q := by
  rw [extensionPrimeEq907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 911 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime911 :
    supportQrMaskWords 911 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        911).take 11 := by
  rfl

theorem baseSupportPrimeMem911 :
    911 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq911 :
    supportExtensionPrime 911 = 919 := by
  rfl

theorem extensionSemanticPrime911 :
    Nat.Prime (supportExtensionPrime 911) ∧
      911 < supportExtensionPrime 911 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        911 < q → supportExtensionPrime 911 ≤ q := by
  rw [extensionPrimeEq911]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 919 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0013
    {p : ℕ}
    (hLower : 830 ≤ p) (hUpper : p ≤ 911)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime839
  · exact maskSemanticPrime853
  · exact maskSemanticPrime857
  · exact maskSemanticPrime859
  · exact maskSemanticPrime863
  · exact maskSemanticPrime877
  · exact maskSemanticPrime881
  · exact maskSemanticPrime883
  · exact maskSemanticPrime887
  · exact maskSemanticPrime907
  · exact maskSemanticPrime911

theorem baseSupportPrimeMemGroup0013
    {p : ℕ}
    (hLower : 830 ≤ p) (hUpper : p ≤ 911)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem839
  · exact baseSupportPrimeMem853
  · exact baseSupportPrimeMem857
  · exact baseSupportPrimeMem859
  · exact baseSupportPrimeMem863
  · exact baseSupportPrimeMem877
  · exact baseSupportPrimeMem881
  · exact baseSupportPrimeMem883
  · exact baseSupportPrimeMem887
  · exact baseSupportPrimeMem907
  · exact baseSupportPrimeMem911

theorem extensionSemanticGroup0013
    {p : ℕ}
    (hLower : 830 ≤ p) (hUpper : p ≤ 911)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime839
  · exact extensionSemanticPrime853
  · exact extensionSemanticPrime857
  · exact extensionSemanticPrime859
  · exact extensionSemanticPrime863
  · exact extensionSemanticPrime877
  · exact extensionSemanticPrime881
  · exact extensionSemanticPrime883
  · exact extensionSemanticPrime887
  · exact extensionSemanticPrime907
  · exact extensionSemanticPrime911

end Erdos848.GeneratedTailGlobalPureSupportCoverage
