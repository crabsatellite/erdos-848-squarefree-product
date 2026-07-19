import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3011 :
    supportQrMaskWords 3011 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3011).take 11 := by
  rfl

theorem baseSupportPrimeMem3011 :
    3011 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3011 :
    supportExtensionPrime 3011 = 3019 := by
  rfl

theorem extensionSemanticPrime3011 :
    Nat.Prime (supportExtensionPrime 3011) ∧
      3011 < supportExtensionPrime 3011 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3011 < q → supportExtensionPrime 3011 ≤ q := by
  rw [extensionPrimeEq3011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3019 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3019 :
    supportQrMaskWords 3019 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3019).take 11 := by
  rfl

theorem baseSupportPrimeMem3019 :
    3019 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3019 :
    supportExtensionPrime 3019 = 3023 := by
  rfl

theorem extensionSemanticPrime3019 :
    Nat.Prime (supportExtensionPrime 3019) ∧
      3019 < supportExtensionPrime 3019 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3019 < q → supportExtensionPrime 3019 ≤ q := by
  rw [extensionPrimeEq3019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3023 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3023 :
    supportQrMaskWords 3023 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3023).take 11 := by
  rfl

theorem baseSupportPrimeMem3023 :
    3023 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3023 :
    supportExtensionPrime 3023 = 3037 := by
  rfl

theorem extensionSemanticPrime3023 :
    Nat.Prime (supportExtensionPrime 3023) ∧
      3023 < supportExtensionPrime 3023 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3023 < q → supportExtensionPrime 3023 ≤ q := by
  rw [extensionPrimeEq3023]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3037 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3037 :
    supportQrMaskWords 3037 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3037).take 11 := by
  rfl

theorem baseSupportPrimeMem3037 :
    3037 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3037 :
    supportExtensionPrime 3037 = 3041 := by
  rfl

theorem extensionSemanticPrime3037 :
    Nat.Prime (supportExtensionPrime 3037) ∧
      3037 < supportExtensionPrime 3037 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3037 < q → supportExtensionPrime 3037 ≤ q := by
  rw [extensionPrimeEq3037]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3041 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3041 :
    supportQrMaskWords 3041 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3041).take 11 := by
  rfl

theorem baseSupportPrimeMem3041 :
    3041 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3041 :
    supportExtensionPrime 3041 = 3049 := by
  rfl

theorem extensionSemanticPrime3041 :
    Nat.Prime (supportExtensionPrime 3041) ∧
      3041 < supportExtensionPrime 3041 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3041 < q → supportExtensionPrime 3041 ≤ q := by
  rw [extensionPrimeEq3041]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3049 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3049 :
    supportQrMaskWords 3049 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3049).take 11 := by
  rfl

theorem baseSupportPrimeMem3049 :
    3049 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3049 :
    supportExtensionPrime 3049 = 3061 := by
  rfl

theorem extensionSemanticPrime3049 :
    Nat.Prime (supportExtensionPrime 3049) ∧
      3049 < supportExtensionPrime 3049 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3049 < q → supportExtensionPrime 3049 ≤ q := by
  rw [extensionPrimeEq3049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3061 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3061 :
    supportQrMaskWords 3061 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3061).take 11 := by
  rfl

theorem baseSupportPrimeMem3061 :
    3061 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3061 :
    supportExtensionPrime 3061 = 3067 := by
  rfl

theorem extensionSemanticPrime3061 :
    Nat.Prime (supportExtensionPrime 3061) ∧
      3061 < supportExtensionPrime 3061 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3061 < q → supportExtensionPrime 3061 ≤ q := by
  rw [extensionPrimeEq3061]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3067 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3067 :
    supportQrMaskWords 3067 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3067).take 11 := by
  rfl

theorem baseSupportPrimeMem3067 :
    3067 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3067 :
    supportExtensionPrime 3067 = 3079 := by
  rfl

theorem extensionSemanticPrime3067 :
    Nat.Prime (supportExtensionPrime 3067) ∧
      3067 < supportExtensionPrime 3067 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3067 < q → supportExtensionPrime 3067 ≤ q := by
  rw [extensionPrimeEq3067]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3079 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3079 :
    supportQrMaskWords 3079 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3079).take 11 := by
  rfl

theorem baseSupportPrimeMem3079 :
    3079 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3079 :
    supportExtensionPrime 3079 = 3083 := by
  rfl

theorem extensionSemanticPrime3079 :
    Nat.Prime (supportExtensionPrime 3079) ∧
      3079 < supportExtensionPrime 3079 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3079 < q → supportExtensionPrime 3079 ≤ q := by
  rw [extensionPrimeEq3079]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3083 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3083 :
    supportQrMaskWords 3083 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3083).take 11 := by
  rfl

theorem baseSupportPrimeMem3083 :
    3083 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3083 :
    supportExtensionPrime 3083 = 3089 := by
  rfl

theorem extensionSemanticPrime3083 :
    Nat.Prime (supportExtensionPrime 3083) ∧
      3083 < supportExtensionPrime 3083 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3083 < q → supportExtensionPrime 3083 ≤ q := by
  rw [extensionPrimeEq3083]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3089 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3089 :
    supportQrMaskWords 3089 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3089).take 11 := by
  rfl

theorem baseSupportPrimeMem3089 :
    3089 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3089 :
    supportExtensionPrime 3089 = 3109 := by
  rfl

theorem extensionSemanticPrime3089 :
    Nat.Prime (supportExtensionPrime 3089) ∧
      3089 < supportExtensionPrime 3089 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3089 < q → supportExtensionPrime 3089 ≤ q := by
  rw [extensionPrimeEq3089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3109 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0039
    {p : ℕ}
    (hLower : 3002 ≤ p) (hUpper : p ≤ 3089)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3011
  · exact maskSemanticPrime3019
  · exact maskSemanticPrime3023
  · exact maskSemanticPrime3037
  · exact maskSemanticPrime3041
  · exact maskSemanticPrime3049
  · exact maskSemanticPrime3061
  · exact maskSemanticPrime3067
  · exact maskSemanticPrime3079
  · exact maskSemanticPrime3083
  · exact maskSemanticPrime3089

theorem baseSupportPrimeMemGroup0039
    {p : ℕ}
    (hLower : 3002 ≤ p) (hUpper : p ≤ 3089)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3011
  · exact baseSupportPrimeMem3019
  · exact baseSupportPrimeMem3023
  · exact baseSupportPrimeMem3037
  · exact baseSupportPrimeMem3041
  · exact baseSupportPrimeMem3049
  · exact baseSupportPrimeMem3061
  · exact baseSupportPrimeMem3067
  · exact baseSupportPrimeMem3079
  · exact baseSupportPrimeMem3083
  · exact baseSupportPrimeMem3089

theorem extensionSemanticGroup0039
    {p : ℕ}
    (hLower : 3002 ≤ p) (hUpper : p ≤ 3089)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3011
  · exact extensionSemanticPrime3019
  · exact extensionSemanticPrime3023
  · exact extensionSemanticPrime3037
  · exact extensionSemanticPrime3041
  · exact extensionSemanticPrime3049
  · exact extensionSemanticPrime3061
  · exact extensionSemanticPrime3067
  · exact extensionSemanticPrime3079
  · exact extensionSemanticPrime3083
  · exact extensionSemanticPrime3089

end Erdos848.GeneratedTailGlobalPureSupportCoverage
