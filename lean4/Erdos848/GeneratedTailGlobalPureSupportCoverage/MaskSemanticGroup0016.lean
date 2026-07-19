import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1063 :
    supportQrMaskWords 1063 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1063).take 11 := by
  rfl

theorem baseSupportPrimeMem1063 :
    1063 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1063 :
    supportExtensionPrime 1063 = 1069 := by
  rfl

theorem extensionSemanticPrime1063 :
    Nat.Prime (supportExtensionPrime 1063) ∧
      1063 < supportExtensionPrime 1063 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1063 < q → supportExtensionPrime 1063 ≤ q := by
  rw [extensionPrimeEq1063]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1069 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1069 :
    supportQrMaskWords 1069 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1069).take 11 := by
  rfl

theorem baseSupportPrimeMem1069 :
    1069 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1069 :
    supportExtensionPrime 1069 = 1087 := by
  rfl

theorem extensionSemanticPrime1069 :
    Nat.Prime (supportExtensionPrime 1069) ∧
      1069 < supportExtensionPrime 1069 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1069 < q → supportExtensionPrime 1069 ≤ q := by
  rw [extensionPrimeEq1069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1087 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1087 :
    supportQrMaskWords 1087 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1087).take 11 := by
  rfl

theorem baseSupportPrimeMem1087 :
    1087 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1087 :
    supportExtensionPrime 1087 = 1091 := by
  rfl

theorem extensionSemanticPrime1087 :
    Nat.Prime (supportExtensionPrime 1087) ∧
      1087 < supportExtensionPrime 1087 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1087 < q → supportExtensionPrime 1087 ≤ q := by
  rw [extensionPrimeEq1087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1091 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1091 :
    supportQrMaskWords 1091 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1091).take 11 := by
  rfl

theorem baseSupportPrimeMem1091 :
    1091 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1091 :
    supportExtensionPrime 1091 = 1093 := by
  rfl

theorem extensionSemanticPrime1091 :
    Nat.Prime (supportExtensionPrime 1091) ∧
      1091 < supportExtensionPrime 1091 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1091 < q → supportExtensionPrime 1091 ≤ q := by
  rw [extensionPrimeEq1091]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1093 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1093 :
    supportQrMaskWords 1093 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1093).take 11 := by
  rfl

theorem baseSupportPrimeMem1093 :
    1093 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1093 :
    supportExtensionPrime 1093 = 1097 := by
  rfl

theorem extensionSemanticPrime1093 :
    Nat.Prime (supportExtensionPrime 1093) ∧
      1093 < supportExtensionPrime 1093 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1093 < q → supportExtensionPrime 1093 ≤ q := by
  rw [extensionPrimeEq1093]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1097 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1097 :
    supportQrMaskWords 1097 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1097).take 11 := by
  rfl

theorem baseSupportPrimeMem1097 :
    1097 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1097 :
    supportExtensionPrime 1097 = 1103 := by
  rfl

theorem extensionSemanticPrime1097 :
    Nat.Prime (supportExtensionPrime 1097) ∧
      1097 < supportExtensionPrime 1097 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1097 < q → supportExtensionPrime 1097 ≤ q := by
  rw [extensionPrimeEq1097]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1103 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1103 :
    supportQrMaskWords 1103 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1103).take 11 := by
  rfl

theorem baseSupportPrimeMem1103 :
    1103 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1103 :
    supportExtensionPrime 1103 = 1109 := by
  rfl

theorem extensionSemanticPrime1103 :
    Nat.Prime (supportExtensionPrime 1103) ∧
      1103 < supportExtensionPrime 1103 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1103 < q → supportExtensionPrime 1103 ≤ q := by
  rw [extensionPrimeEq1103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1109 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1109 :
    supportQrMaskWords 1109 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1109).take 11 := by
  rfl

theorem baseSupportPrimeMem1109 :
    1109 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1109 :
    supportExtensionPrime 1109 = 1117 := by
  rfl

theorem extensionSemanticPrime1109 :
    Nat.Prime (supportExtensionPrime 1109) ∧
      1109 < supportExtensionPrime 1109 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1109 < q → supportExtensionPrime 1109 ≤ q := by
  rw [extensionPrimeEq1109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1117 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1117 :
    supportQrMaskWords 1117 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1117).take 11 := by
  rfl

theorem baseSupportPrimeMem1117 :
    1117 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1117 :
    supportExtensionPrime 1117 = 1123 := by
  rfl

theorem extensionSemanticPrime1117 :
    Nat.Prime (supportExtensionPrime 1117) ∧
      1117 < supportExtensionPrime 1117 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1117 < q → supportExtensionPrime 1117 ≤ q := by
  rw [extensionPrimeEq1117]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1123 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1123 :
    supportQrMaskWords 1123 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1123).take 11 := by
  rfl

theorem baseSupportPrimeMem1123 :
    1123 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1123 :
    supportExtensionPrime 1123 = 1129 := by
  rfl

theorem extensionSemanticPrime1123 :
    Nat.Prime (supportExtensionPrime 1123) ∧
      1123 < supportExtensionPrime 1123 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1123 < q → supportExtensionPrime 1123 ≤ q := by
  rw [extensionPrimeEq1123]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1129 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1129 :
    supportQrMaskWords 1129 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1129).take 11 := by
  rfl

theorem baseSupportPrimeMem1129 :
    1129 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1129 :
    supportExtensionPrime 1129 = 1151 := by
  rfl

theorem extensionSemanticPrime1129 :
    Nat.Prime (supportExtensionPrime 1129) ∧
      1129 < supportExtensionPrime 1129 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1129 < q → supportExtensionPrime 1129 ≤ q := by
  rw [extensionPrimeEq1129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1151 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0016
    {p : ℕ}
    (hLower : 1062 ≤ p) (hUpper : p ≤ 1129)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1063
  · exact maskSemanticPrime1069
  · exact maskSemanticPrime1087
  · exact maskSemanticPrime1091
  · exact maskSemanticPrime1093
  · exact maskSemanticPrime1097
  · exact maskSemanticPrime1103
  · exact maskSemanticPrime1109
  · exact maskSemanticPrime1117
  · exact maskSemanticPrime1123
  · exact maskSemanticPrime1129

theorem baseSupportPrimeMemGroup0016
    {p : ℕ}
    (hLower : 1062 ≤ p) (hUpper : p ≤ 1129)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1063
  · exact baseSupportPrimeMem1069
  · exact baseSupportPrimeMem1087
  · exact baseSupportPrimeMem1091
  · exact baseSupportPrimeMem1093
  · exact baseSupportPrimeMem1097
  · exact baseSupportPrimeMem1103
  · exact baseSupportPrimeMem1109
  · exact baseSupportPrimeMem1117
  · exact baseSupportPrimeMem1123
  · exact baseSupportPrimeMem1129

theorem extensionSemanticGroup0016
    {p : ℕ}
    (hLower : 1062 ≤ p) (hUpper : p ≤ 1129)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1063
  · exact extensionSemanticPrime1069
  · exact extensionSemanticPrime1087
  · exact extensionSemanticPrime1091
  · exact extensionSemanticPrime1093
  · exact extensionSemanticPrime1097
  · exact extensionSemanticPrime1103
  · exact extensionSemanticPrime1109
  · exact extensionSemanticPrime1117
  · exact extensionSemanticPrime1123
  · exact extensionSemanticPrime1129

end Erdos848.GeneratedTailGlobalPureSupportCoverage
