import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1409 :
    supportQrMaskWords 1409 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1409).take 11 := by
  rfl

theorem baseSupportPrimeMem1409 :
    1409 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1409 :
    supportExtensionPrime 1409 = 1423 := by
  rfl

theorem extensionSemanticPrime1409 :
    Nat.Prime (supportExtensionPrime 1409) ∧
      1409 < supportExtensionPrime 1409 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1409 < q → supportExtensionPrime 1409 ≤ q := by
  rw [extensionPrimeEq1409]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1423 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1423 :
    supportQrMaskWords 1423 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1423).take 11 := by
  rfl

theorem baseSupportPrimeMem1423 :
    1423 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1423 :
    supportExtensionPrime 1423 = 1427 := by
  rfl

theorem extensionSemanticPrime1423 :
    Nat.Prime (supportExtensionPrime 1423) ∧
      1423 < supportExtensionPrime 1423 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1423 < q → supportExtensionPrime 1423 ≤ q := by
  rw [extensionPrimeEq1423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1427 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1427 :
    supportQrMaskWords 1427 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1427).take 11 := by
  rfl

theorem baseSupportPrimeMem1427 :
    1427 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1427 :
    supportExtensionPrime 1427 = 1429 := by
  rfl

theorem extensionSemanticPrime1427 :
    Nat.Prime (supportExtensionPrime 1427) ∧
      1427 < supportExtensionPrime 1427 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1427 < q → supportExtensionPrime 1427 ≤ q := by
  rw [extensionPrimeEq1427]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1429 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1429 :
    supportQrMaskWords 1429 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1429).take 11 := by
  rfl

theorem baseSupportPrimeMem1429 :
    1429 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1429 :
    supportExtensionPrime 1429 = 1433 := by
  rfl

theorem extensionSemanticPrime1429 :
    Nat.Prime (supportExtensionPrime 1429) ∧
      1429 < supportExtensionPrime 1429 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1429 < q → supportExtensionPrime 1429 ≤ q := by
  rw [extensionPrimeEq1429]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1433 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1433 :
    supportQrMaskWords 1433 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1433).take 11 := by
  rfl

theorem baseSupportPrimeMem1433 :
    1433 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1433 :
    supportExtensionPrime 1433 = 1439 := by
  rfl

theorem extensionSemanticPrime1433 :
    Nat.Prime (supportExtensionPrime 1433) ∧
      1433 < supportExtensionPrime 1433 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1433 < q → supportExtensionPrime 1433 ≤ q := by
  rw [extensionPrimeEq1433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1439 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1439 :
    supportQrMaskWords 1439 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1439).take 11 := by
  rfl

theorem baseSupportPrimeMem1439 :
    1439 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1439 :
    supportExtensionPrime 1439 = 1447 := by
  rfl

theorem extensionSemanticPrime1439 :
    Nat.Prime (supportExtensionPrime 1439) ∧
      1439 < supportExtensionPrime 1439 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1439 < q → supportExtensionPrime 1439 ≤ q := by
  rw [extensionPrimeEq1439]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1447 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1447 :
    supportQrMaskWords 1447 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1447).take 11 := by
  rfl

theorem baseSupportPrimeMem1447 :
    1447 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1447 :
    supportExtensionPrime 1447 = 1451 := by
  rfl

theorem extensionSemanticPrime1447 :
    Nat.Prime (supportExtensionPrime 1447) ∧
      1447 < supportExtensionPrime 1447 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1447 < q → supportExtensionPrime 1447 ≤ q := by
  rw [extensionPrimeEq1447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1451 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1451 :
    supportQrMaskWords 1451 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1451).take 11 := by
  rfl

theorem baseSupportPrimeMem1451 :
    1451 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1451 :
    supportExtensionPrime 1451 = 1453 := by
  rfl

theorem extensionSemanticPrime1451 :
    Nat.Prime (supportExtensionPrime 1451) ∧
      1451 < supportExtensionPrime 1451 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1451 < q → supportExtensionPrime 1451 ≤ q := by
  rw [extensionPrimeEq1451]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1453 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1453 :
    supportQrMaskWords 1453 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1453).take 11 := by
  rfl

theorem baseSupportPrimeMem1453 :
    1453 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1453 :
    supportExtensionPrime 1453 = 1459 := by
  rfl

theorem extensionSemanticPrime1453 :
    Nat.Prime (supportExtensionPrime 1453) ∧
      1453 < supportExtensionPrime 1453 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1453 < q → supportExtensionPrime 1453 ≤ q := by
  rw [extensionPrimeEq1453]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1459 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1459 :
    supportQrMaskWords 1459 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1459).take 11 := by
  rfl

theorem baseSupportPrimeMem1459 :
    1459 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1459 :
    supportExtensionPrime 1459 = 1471 := by
  rfl

theorem extensionSemanticPrime1459 :
    Nat.Prime (supportExtensionPrime 1459) ∧
      1459 < supportExtensionPrime 1459 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1459 < q → supportExtensionPrime 1459 ≤ q := by
  rw [extensionPrimeEq1459]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1471 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1471 :
    supportQrMaskWords 1471 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1471).take 11 := by
  rfl

theorem baseSupportPrimeMem1471 :
    1471 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1471 :
    supportExtensionPrime 1471 = 1481 := by
  rfl

theorem extensionSemanticPrime1471 :
    Nat.Prime (supportExtensionPrime 1471) ∧
      1471 < supportExtensionPrime 1471 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1471 < q → supportExtensionPrime 1471 ≤ q := by
  rw [extensionPrimeEq1471]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1481 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0020
    {p : ℕ}
    (hLower : 1400 ≤ p) (hUpper : p ≤ 1471)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1409
  · exact maskSemanticPrime1423
  · exact maskSemanticPrime1427
  · exact maskSemanticPrime1429
  · exact maskSemanticPrime1433
  · exact maskSemanticPrime1439
  · exact maskSemanticPrime1447
  · exact maskSemanticPrime1451
  · exact maskSemanticPrime1453
  · exact maskSemanticPrime1459
  · exact maskSemanticPrime1471

theorem baseSupportPrimeMemGroup0020
    {p : ℕ}
    (hLower : 1400 ≤ p) (hUpper : p ≤ 1471)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1409
  · exact baseSupportPrimeMem1423
  · exact baseSupportPrimeMem1427
  · exact baseSupportPrimeMem1429
  · exact baseSupportPrimeMem1433
  · exact baseSupportPrimeMem1439
  · exact baseSupportPrimeMem1447
  · exact baseSupportPrimeMem1451
  · exact baseSupportPrimeMem1453
  · exact baseSupportPrimeMem1459
  · exact baseSupportPrimeMem1471

theorem extensionSemanticGroup0020
    {p : ℕ}
    (hLower : 1400 ≤ p) (hUpper : p ≤ 1471)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1409
  · exact extensionSemanticPrime1423
  · exact extensionSemanticPrime1427
  · exact extensionSemanticPrime1429
  · exact extensionSemanticPrime1433
  · exact extensionSemanticPrime1439
  · exact extensionSemanticPrime1447
  · exact extensionSemanticPrime1451
  · exact extensionSemanticPrime1453
  · exact extensionSemanticPrime1459
  · exact extensionSemanticPrime1471

end Erdos848.GeneratedTailGlobalPureSupportCoverage
