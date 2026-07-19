import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1151 :
    supportQrMaskWords 1151 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1151).take 11 := by
  rfl

theorem baseSupportPrimeMem1151 :
    1151 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1151 :
    supportExtensionPrime 1151 = 1153 := by
  rfl

theorem extensionSemanticPrime1151 :
    Nat.Prime (supportExtensionPrime 1151) ∧
      1151 < supportExtensionPrime 1151 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1151 < q → supportExtensionPrime 1151 ≤ q := by
  rw [extensionPrimeEq1151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1153 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1153 :
    supportQrMaskWords 1153 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1153).take 11 := by
  rfl

theorem baseSupportPrimeMem1153 :
    1153 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1153 :
    supportExtensionPrime 1153 = 1163 := by
  rfl

theorem extensionSemanticPrime1153 :
    Nat.Prime (supportExtensionPrime 1153) ∧
      1153 < supportExtensionPrime 1153 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1153 < q → supportExtensionPrime 1153 ≤ q := by
  rw [extensionPrimeEq1153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1163 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1163 :
    supportQrMaskWords 1163 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1163).take 11 := by
  rfl

theorem baseSupportPrimeMem1163 :
    1163 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1163 :
    supportExtensionPrime 1163 = 1171 := by
  rfl

theorem extensionSemanticPrime1163 :
    Nat.Prime (supportExtensionPrime 1163) ∧
      1163 < supportExtensionPrime 1163 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1163 < q → supportExtensionPrime 1163 ≤ q := by
  rw [extensionPrimeEq1163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1171 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1171 :
    supportQrMaskWords 1171 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1171).take 11 := by
  rfl

theorem baseSupportPrimeMem1171 :
    1171 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1171 :
    supportExtensionPrime 1171 = 1181 := by
  rfl

theorem extensionSemanticPrime1171 :
    Nat.Prime (supportExtensionPrime 1171) ∧
      1171 < supportExtensionPrime 1171 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1171 < q → supportExtensionPrime 1171 ≤ q := by
  rw [extensionPrimeEq1171]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1181 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1181 :
    supportQrMaskWords 1181 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1181).take 11 := by
  rfl

theorem baseSupportPrimeMem1181 :
    1181 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1181 :
    supportExtensionPrime 1181 = 1187 := by
  rfl

theorem extensionSemanticPrime1181 :
    Nat.Prime (supportExtensionPrime 1181) ∧
      1181 < supportExtensionPrime 1181 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1181 < q → supportExtensionPrime 1181 ≤ q := by
  rw [extensionPrimeEq1181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1187 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1187 :
    supportQrMaskWords 1187 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1187).take 11 := by
  rfl

theorem baseSupportPrimeMem1187 :
    1187 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1187 :
    supportExtensionPrime 1187 = 1193 := by
  rfl

theorem extensionSemanticPrime1187 :
    Nat.Prime (supportExtensionPrime 1187) ∧
      1187 < supportExtensionPrime 1187 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1187 < q → supportExtensionPrime 1187 ≤ q := by
  rw [extensionPrimeEq1187]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1193 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1193 :
    supportQrMaskWords 1193 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1193).take 11 := by
  rfl

theorem baseSupportPrimeMem1193 :
    1193 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1193 :
    supportExtensionPrime 1193 = 1201 := by
  rfl

theorem extensionSemanticPrime1193 :
    Nat.Prime (supportExtensionPrime 1193) ∧
      1193 < supportExtensionPrime 1193 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1193 < q → supportExtensionPrime 1193 ≤ q := by
  rw [extensionPrimeEq1193]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1201 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1201 :
    supportQrMaskWords 1201 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1201).take 11 := by
  rfl

theorem baseSupportPrimeMem1201 :
    1201 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1201 :
    supportExtensionPrime 1201 = 1213 := by
  rfl

theorem extensionSemanticPrime1201 :
    Nat.Prime (supportExtensionPrime 1201) ∧
      1201 < supportExtensionPrime 1201 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1201 < q → supportExtensionPrime 1201 ≤ q := by
  rw [extensionPrimeEq1201]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1213 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1213 :
    supportQrMaskWords 1213 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1213).take 11 := by
  rfl

theorem baseSupportPrimeMem1213 :
    1213 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1213 :
    supportExtensionPrime 1213 = 1217 := by
  rfl

theorem extensionSemanticPrime1213 :
    Nat.Prime (supportExtensionPrime 1213) ∧
      1213 < supportExtensionPrime 1213 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1213 < q → supportExtensionPrime 1213 ≤ q := by
  rw [extensionPrimeEq1213]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1217 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1217 :
    supportQrMaskWords 1217 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1217).take 11 := by
  rfl

theorem baseSupportPrimeMem1217 :
    1217 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1217 :
    supportExtensionPrime 1217 = 1223 := by
  rfl

theorem extensionSemanticPrime1217 :
    Nat.Prime (supportExtensionPrime 1217) ∧
      1217 < supportExtensionPrime 1217 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1217 < q → supportExtensionPrime 1217 ≤ q := by
  rw [extensionPrimeEq1217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1223 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1223 :
    supportQrMaskWords 1223 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1223).take 11 := by
  rfl

theorem baseSupportPrimeMem1223 :
    1223 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1223 :
    supportExtensionPrime 1223 = 1229 := by
  rfl

theorem extensionSemanticPrime1223 :
    Nat.Prime (supportExtensionPrime 1223) ∧
      1223 < supportExtensionPrime 1223 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1223 < q → supportExtensionPrime 1223 ≤ q := by
  rw [extensionPrimeEq1223]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1229 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0017
    {p : ℕ}
    (hLower : 1130 ≤ p) (hUpper : p ≤ 1223)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1151
  · exact maskSemanticPrime1153
  · exact maskSemanticPrime1163
  · exact maskSemanticPrime1171
  · exact maskSemanticPrime1181
  · exact maskSemanticPrime1187
  · exact maskSemanticPrime1193
  · exact maskSemanticPrime1201
  · exact maskSemanticPrime1213
  · exact maskSemanticPrime1217
  · exact maskSemanticPrime1223

theorem baseSupportPrimeMemGroup0017
    {p : ℕ}
    (hLower : 1130 ≤ p) (hUpper : p ≤ 1223)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1151
  · exact baseSupportPrimeMem1153
  · exact baseSupportPrimeMem1163
  · exact baseSupportPrimeMem1171
  · exact baseSupportPrimeMem1181
  · exact baseSupportPrimeMem1187
  · exact baseSupportPrimeMem1193
  · exact baseSupportPrimeMem1201
  · exact baseSupportPrimeMem1213
  · exact baseSupportPrimeMem1217
  · exact baseSupportPrimeMem1223

theorem extensionSemanticGroup0017
    {p : ℕ}
    (hLower : 1130 ≤ p) (hUpper : p ≤ 1223)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1151
  · exact extensionSemanticPrime1153
  · exact extensionSemanticPrime1163
  · exact extensionSemanticPrime1171
  · exact extensionSemanticPrime1181
  · exact extensionSemanticPrime1187
  · exact extensionSemanticPrime1193
  · exact extensionSemanticPrime1201
  · exact extensionSemanticPrime1213
  · exact extensionSemanticPrime1217
  · exact extensionSemanticPrime1223

end Erdos848.GeneratedTailGlobalPureSupportCoverage
