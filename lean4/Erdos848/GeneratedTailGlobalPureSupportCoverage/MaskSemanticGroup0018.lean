import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1229 :
    supportQrMaskWords 1229 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1229).take 11 := by
  rfl

theorem baseSupportPrimeMem1229 :
    1229 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1229 :
    supportExtensionPrime 1229 = 1231 := by
  rfl

theorem extensionSemanticPrime1229 :
    Nat.Prime (supportExtensionPrime 1229) ∧
      1229 < supportExtensionPrime 1229 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1229 < q → supportExtensionPrime 1229 ≤ q := by
  rw [extensionPrimeEq1229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1231 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1231 :
    supportQrMaskWords 1231 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1231).take 11 := by
  rfl

theorem baseSupportPrimeMem1231 :
    1231 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1231 :
    supportExtensionPrime 1231 = 1237 := by
  rfl

theorem extensionSemanticPrime1231 :
    Nat.Prime (supportExtensionPrime 1231) ∧
      1231 < supportExtensionPrime 1231 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1231 < q → supportExtensionPrime 1231 ≤ q := by
  rw [extensionPrimeEq1231]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1237 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1237 :
    supportQrMaskWords 1237 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1237).take 11 := by
  rfl

theorem baseSupportPrimeMem1237 :
    1237 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1237 :
    supportExtensionPrime 1237 = 1249 := by
  rfl

theorem extensionSemanticPrime1237 :
    Nat.Prime (supportExtensionPrime 1237) ∧
      1237 < supportExtensionPrime 1237 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1237 < q → supportExtensionPrime 1237 ≤ q := by
  rw [extensionPrimeEq1237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1249 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1249 :
    supportQrMaskWords 1249 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1249).take 11 := by
  rfl

theorem baseSupportPrimeMem1249 :
    1249 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1249 :
    supportExtensionPrime 1249 = 1259 := by
  rfl

theorem extensionSemanticPrime1249 :
    Nat.Prime (supportExtensionPrime 1249) ∧
      1249 < supportExtensionPrime 1249 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1249 < q → supportExtensionPrime 1249 ≤ q := by
  rw [extensionPrimeEq1249]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1259 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1259 :
    supportQrMaskWords 1259 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1259).take 11 := by
  rfl

theorem baseSupportPrimeMem1259 :
    1259 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1259 :
    supportExtensionPrime 1259 = 1277 := by
  rfl

theorem extensionSemanticPrime1259 :
    Nat.Prime (supportExtensionPrime 1259) ∧
      1259 < supportExtensionPrime 1259 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1259 < q → supportExtensionPrime 1259 ≤ q := by
  rw [extensionPrimeEq1259]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1277 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1277 :
    supportQrMaskWords 1277 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1277).take 11 := by
  rfl

theorem baseSupportPrimeMem1277 :
    1277 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1277 :
    supportExtensionPrime 1277 = 1279 := by
  rfl

theorem extensionSemanticPrime1277 :
    Nat.Prime (supportExtensionPrime 1277) ∧
      1277 < supportExtensionPrime 1277 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1277 < q → supportExtensionPrime 1277 ≤ q := by
  rw [extensionPrimeEq1277]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1279 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1279 :
    supportQrMaskWords 1279 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1279).take 11 := by
  rfl

theorem baseSupportPrimeMem1279 :
    1279 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1279 :
    supportExtensionPrime 1279 = 1283 := by
  rfl

theorem extensionSemanticPrime1279 :
    Nat.Prime (supportExtensionPrime 1279) ∧
      1279 < supportExtensionPrime 1279 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1279 < q → supportExtensionPrime 1279 ≤ q := by
  rw [extensionPrimeEq1279]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1283 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1283 :
    supportQrMaskWords 1283 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1283).take 11 := by
  rfl

theorem baseSupportPrimeMem1283 :
    1283 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1283 :
    supportExtensionPrime 1283 = 1289 := by
  rfl

theorem extensionSemanticPrime1283 :
    Nat.Prime (supportExtensionPrime 1283) ∧
      1283 < supportExtensionPrime 1283 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1283 < q → supportExtensionPrime 1283 ≤ q := by
  rw [extensionPrimeEq1283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1289 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1289 :
    supportQrMaskWords 1289 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1289).take 11 := by
  rfl

theorem baseSupportPrimeMem1289 :
    1289 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1289 :
    supportExtensionPrime 1289 = 1291 := by
  rfl

theorem extensionSemanticPrime1289 :
    Nat.Prime (supportExtensionPrime 1289) ∧
      1289 < supportExtensionPrime 1289 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1289 < q → supportExtensionPrime 1289 ≤ q := by
  rw [extensionPrimeEq1289]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1291 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1291 :
    supportQrMaskWords 1291 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1291).take 11 := by
  rfl

theorem baseSupportPrimeMem1291 :
    1291 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1291 :
    supportExtensionPrime 1291 = 1297 := by
  rfl

theorem extensionSemanticPrime1291 :
    Nat.Prime (supportExtensionPrime 1291) ∧
      1291 < supportExtensionPrime 1291 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1291 < q → supportExtensionPrime 1291 ≤ q := by
  rw [extensionPrimeEq1291]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1297 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1297 :
    supportQrMaskWords 1297 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1297).take 11 := by
  rfl

theorem baseSupportPrimeMem1297 :
    1297 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1297 :
    supportExtensionPrime 1297 = 1301 := by
  rfl

theorem extensionSemanticPrime1297 :
    Nat.Prime (supportExtensionPrime 1297) ∧
      1297 < supportExtensionPrime 1297 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1297 < q → supportExtensionPrime 1297 ≤ q := by
  rw [extensionPrimeEq1297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1301 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0018
    {p : ℕ}
    (hLower : 1224 ≤ p) (hUpper : p ≤ 1297)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1229
  · exact maskSemanticPrime1231
  · exact maskSemanticPrime1237
  · exact maskSemanticPrime1249
  · exact maskSemanticPrime1259
  · exact maskSemanticPrime1277
  · exact maskSemanticPrime1279
  · exact maskSemanticPrime1283
  · exact maskSemanticPrime1289
  · exact maskSemanticPrime1291
  · exact maskSemanticPrime1297

theorem baseSupportPrimeMemGroup0018
    {p : ℕ}
    (hLower : 1224 ≤ p) (hUpper : p ≤ 1297)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1229
  · exact baseSupportPrimeMem1231
  · exact baseSupportPrimeMem1237
  · exact baseSupportPrimeMem1249
  · exact baseSupportPrimeMem1259
  · exact baseSupportPrimeMem1277
  · exact baseSupportPrimeMem1279
  · exact baseSupportPrimeMem1283
  · exact baseSupportPrimeMem1289
  · exact baseSupportPrimeMem1291
  · exact baseSupportPrimeMem1297

theorem extensionSemanticGroup0018
    {p : ℕ}
    (hLower : 1224 ≤ p) (hUpper : p ≤ 1297)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1229
  · exact extensionSemanticPrime1231
  · exact extensionSemanticPrime1237
  · exact extensionSemanticPrime1249
  · exact extensionSemanticPrime1259
  · exact extensionSemanticPrime1277
  · exact extensionSemanticPrime1279
  · exact extensionSemanticPrime1283
  · exact extensionSemanticPrime1289
  · exact extensionSemanticPrime1291
  · exact extensionSemanticPrime1297

end Erdos848.GeneratedTailGlobalPureSupportCoverage
