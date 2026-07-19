import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1301 :
    supportQrMaskWords 1301 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1301).take 11 := by
  rfl

theorem baseSupportPrimeMem1301 :
    1301 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1301 :
    supportExtensionPrime 1301 = 1303 := by
  rfl

theorem extensionSemanticPrime1301 :
    Nat.Prime (supportExtensionPrime 1301) ∧
      1301 < supportExtensionPrime 1301 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1301 < q → supportExtensionPrime 1301 ≤ q := by
  rw [extensionPrimeEq1301]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1303 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1303 :
    supportQrMaskWords 1303 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1303).take 11 := by
  rfl

theorem baseSupportPrimeMem1303 :
    1303 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1303 :
    supportExtensionPrime 1303 = 1307 := by
  rfl

theorem extensionSemanticPrime1303 :
    Nat.Prime (supportExtensionPrime 1303) ∧
      1303 < supportExtensionPrime 1303 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1303 < q → supportExtensionPrime 1303 ≤ q := by
  rw [extensionPrimeEq1303]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1307 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1307 :
    supportQrMaskWords 1307 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1307).take 11 := by
  rfl

theorem baseSupportPrimeMem1307 :
    1307 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1307 :
    supportExtensionPrime 1307 = 1319 := by
  rfl

theorem extensionSemanticPrime1307 :
    Nat.Prime (supportExtensionPrime 1307) ∧
      1307 < supportExtensionPrime 1307 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1307 < q → supportExtensionPrime 1307 ≤ q := by
  rw [extensionPrimeEq1307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1319 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1319 :
    supportQrMaskWords 1319 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1319).take 11 := by
  rfl

theorem baseSupportPrimeMem1319 :
    1319 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1319 :
    supportExtensionPrime 1319 = 1321 := by
  rfl

theorem extensionSemanticPrime1319 :
    Nat.Prime (supportExtensionPrime 1319) ∧
      1319 < supportExtensionPrime 1319 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1319 < q → supportExtensionPrime 1319 ≤ q := by
  rw [extensionPrimeEq1319]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1321 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1321 :
    supportQrMaskWords 1321 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1321).take 11 := by
  rfl

theorem baseSupportPrimeMem1321 :
    1321 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1321 :
    supportExtensionPrime 1321 = 1327 := by
  rfl

theorem extensionSemanticPrime1321 :
    Nat.Prime (supportExtensionPrime 1321) ∧
      1321 < supportExtensionPrime 1321 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1321 < q → supportExtensionPrime 1321 ≤ q := by
  rw [extensionPrimeEq1321]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1327 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1327 :
    supportQrMaskWords 1327 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1327).take 11 := by
  rfl

theorem baseSupportPrimeMem1327 :
    1327 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1327 :
    supportExtensionPrime 1327 = 1361 := by
  rfl

theorem extensionSemanticPrime1327 :
    Nat.Prime (supportExtensionPrime 1327) ∧
      1327 < supportExtensionPrime 1327 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1327 < q → supportExtensionPrime 1327 ≤ q := by
  rw [extensionPrimeEq1327]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1361 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1361 :
    supportQrMaskWords 1361 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1361).take 11 := by
  rfl

theorem baseSupportPrimeMem1361 :
    1361 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1361 :
    supportExtensionPrime 1361 = 1367 := by
  rfl

theorem extensionSemanticPrime1361 :
    Nat.Prime (supportExtensionPrime 1361) ∧
      1361 < supportExtensionPrime 1361 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1361 < q → supportExtensionPrime 1361 ≤ q := by
  rw [extensionPrimeEq1361]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1367 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1367 :
    supportQrMaskWords 1367 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1367).take 11 := by
  rfl

theorem baseSupportPrimeMem1367 :
    1367 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1367 :
    supportExtensionPrime 1367 = 1373 := by
  rfl

theorem extensionSemanticPrime1367 :
    Nat.Prime (supportExtensionPrime 1367) ∧
      1367 < supportExtensionPrime 1367 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1367 < q → supportExtensionPrime 1367 ≤ q := by
  rw [extensionPrimeEq1367]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1373 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1373 :
    supportQrMaskWords 1373 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1373).take 11 := by
  rfl

theorem baseSupportPrimeMem1373 :
    1373 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1373 :
    supportExtensionPrime 1373 = 1381 := by
  rfl

theorem extensionSemanticPrime1373 :
    Nat.Prime (supportExtensionPrime 1373) ∧
      1373 < supportExtensionPrime 1373 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1373 < q → supportExtensionPrime 1373 ≤ q := by
  rw [extensionPrimeEq1373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1381 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1381 :
    supportQrMaskWords 1381 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1381).take 11 := by
  rfl

theorem baseSupportPrimeMem1381 :
    1381 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1381 :
    supportExtensionPrime 1381 = 1399 := by
  rfl

theorem extensionSemanticPrime1381 :
    Nat.Prime (supportExtensionPrime 1381) ∧
      1381 < supportExtensionPrime 1381 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1381 < q → supportExtensionPrime 1381 ≤ q := by
  rw [extensionPrimeEq1381]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1399 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1399 :
    supportQrMaskWords 1399 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1399).take 11 := by
  rfl

theorem baseSupportPrimeMem1399 :
    1399 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1399 :
    supportExtensionPrime 1399 = 1409 := by
  rfl

theorem extensionSemanticPrime1399 :
    Nat.Prime (supportExtensionPrime 1399) ∧
      1399 < supportExtensionPrime 1399 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1399 < q → supportExtensionPrime 1399 ≤ q := by
  rw [extensionPrimeEq1399]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1409 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0019
    {p : ℕ}
    (hLower : 1298 ≤ p) (hUpper : p ≤ 1399)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1301
  · exact maskSemanticPrime1303
  · exact maskSemanticPrime1307
  · exact maskSemanticPrime1319
  · exact maskSemanticPrime1321
  · exact maskSemanticPrime1327
  · exact maskSemanticPrime1361
  · exact maskSemanticPrime1367
  · exact maskSemanticPrime1373
  · exact maskSemanticPrime1381
  · exact maskSemanticPrime1399

theorem baseSupportPrimeMemGroup0019
    {p : ℕ}
    (hLower : 1298 ≤ p) (hUpper : p ≤ 1399)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1301
  · exact baseSupportPrimeMem1303
  · exact baseSupportPrimeMem1307
  · exact baseSupportPrimeMem1319
  · exact baseSupportPrimeMem1321
  · exact baseSupportPrimeMem1327
  · exact baseSupportPrimeMem1361
  · exact baseSupportPrimeMem1367
  · exact baseSupportPrimeMem1373
  · exact baseSupportPrimeMem1381
  · exact baseSupportPrimeMem1399

theorem extensionSemanticGroup0019
    {p : ℕ}
    (hLower : 1298 ≤ p) (hUpper : p ≤ 1399)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1301
  · exact extensionSemanticPrime1303
  · exact extensionSemanticPrime1307
  · exact extensionSemanticPrime1319
  · exact extensionSemanticPrime1321
  · exact extensionSemanticPrime1327
  · exact extensionSemanticPrime1361
  · exact extensionSemanticPrime1367
  · exact extensionSemanticPrime1373
  · exact extensionSemanticPrime1381
  · exact extensionSemanticPrime1399

end Erdos848.GeneratedTailGlobalPureSupportCoverage
