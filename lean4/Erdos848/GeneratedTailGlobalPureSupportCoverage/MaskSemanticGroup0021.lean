import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1481 :
    supportQrMaskWords 1481 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1481).take 11 := by
  rfl

theorem baseSupportPrimeMem1481 :
    1481 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1481 :
    supportExtensionPrime 1481 = 1483 := by
  rfl

theorem extensionSemanticPrime1481 :
    Nat.Prime (supportExtensionPrime 1481) ∧
      1481 < supportExtensionPrime 1481 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1481 < q → supportExtensionPrime 1481 ≤ q := by
  rw [extensionPrimeEq1481]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1483 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1483 :
    supportQrMaskWords 1483 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1483).take 11 := by
  rfl

theorem baseSupportPrimeMem1483 :
    1483 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1483 :
    supportExtensionPrime 1483 = 1487 := by
  rfl

theorem extensionSemanticPrime1483 :
    Nat.Prime (supportExtensionPrime 1483) ∧
      1483 < supportExtensionPrime 1483 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1483 < q → supportExtensionPrime 1483 ≤ q := by
  rw [extensionPrimeEq1483]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1487 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1487 :
    supportQrMaskWords 1487 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1487).take 11 := by
  rfl

theorem baseSupportPrimeMem1487 :
    1487 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1487 :
    supportExtensionPrime 1487 = 1489 := by
  rfl

theorem extensionSemanticPrime1487 :
    Nat.Prime (supportExtensionPrime 1487) ∧
      1487 < supportExtensionPrime 1487 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1487 < q → supportExtensionPrime 1487 ≤ q := by
  rw [extensionPrimeEq1487]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1489 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1489 :
    supportQrMaskWords 1489 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1489).take 11 := by
  rfl

theorem baseSupportPrimeMem1489 :
    1489 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1489 :
    supportExtensionPrime 1489 = 1493 := by
  rfl

theorem extensionSemanticPrime1489 :
    Nat.Prime (supportExtensionPrime 1489) ∧
      1489 < supportExtensionPrime 1489 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1489 < q → supportExtensionPrime 1489 ≤ q := by
  rw [extensionPrimeEq1489]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1493 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1493 :
    supportQrMaskWords 1493 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1493).take 11 := by
  rfl

theorem baseSupportPrimeMem1493 :
    1493 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1493 :
    supportExtensionPrime 1493 = 1499 := by
  rfl

theorem extensionSemanticPrime1493 :
    Nat.Prime (supportExtensionPrime 1493) ∧
      1493 < supportExtensionPrime 1493 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1493 < q → supportExtensionPrime 1493 ≤ q := by
  rw [extensionPrimeEq1493]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1499 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1499 :
    supportQrMaskWords 1499 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1499).take 11 := by
  rfl

theorem baseSupportPrimeMem1499 :
    1499 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1499 :
    supportExtensionPrime 1499 = 1511 := by
  rfl

theorem extensionSemanticPrime1499 :
    Nat.Prime (supportExtensionPrime 1499) ∧
      1499 < supportExtensionPrime 1499 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1499 < q → supportExtensionPrime 1499 ≤ q := by
  rw [extensionPrimeEq1499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1511 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1511 :
    supportQrMaskWords 1511 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1511).take 11 := by
  rfl

theorem baseSupportPrimeMem1511 :
    1511 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1511 :
    supportExtensionPrime 1511 = 1523 := by
  rfl

theorem extensionSemanticPrime1511 :
    Nat.Prime (supportExtensionPrime 1511) ∧
      1511 < supportExtensionPrime 1511 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1511 < q → supportExtensionPrime 1511 ≤ q := by
  rw [extensionPrimeEq1511]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1523 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1523 :
    supportQrMaskWords 1523 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1523).take 11 := by
  rfl

theorem baseSupportPrimeMem1523 :
    1523 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1523 :
    supportExtensionPrime 1523 = 1531 := by
  rfl

theorem extensionSemanticPrime1523 :
    Nat.Prime (supportExtensionPrime 1523) ∧
      1523 < supportExtensionPrime 1523 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1523 < q → supportExtensionPrime 1523 ≤ q := by
  rw [extensionPrimeEq1523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1531 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1531 :
    supportQrMaskWords 1531 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1531).take 11 := by
  rfl

theorem baseSupportPrimeMem1531 :
    1531 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1531 :
    supportExtensionPrime 1531 = 1543 := by
  rfl

theorem extensionSemanticPrime1531 :
    Nat.Prime (supportExtensionPrime 1531) ∧
      1531 < supportExtensionPrime 1531 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1531 < q → supportExtensionPrime 1531 ≤ q := by
  rw [extensionPrimeEq1531]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1543 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1543 :
    supportQrMaskWords 1543 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1543).take 11 := by
  rfl

theorem baseSupportPrimeMem1543 :
    1543 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1543 :
    supportExtensionPrime 1543 = 1549 := by
  rfl

theorem extensionSemanticPrime1543 :
    Nat.Prime (supportExtensionPrime 1543) ∧
      1543 < supportExtensionPrime 1543 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1543 < q → supportExtensionPrime 1543 ≤ q := by
  rw [extensionPrimeEq1543]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1549 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1549 :
    supportQrMaskWords 1549 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1549).take 11 := by
  rfl

theorem baseSupportPrimeMem1549 :
    1549 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1549 :
    supportExtensionPrime 1549 = 1553 := by
  rfl

theorem extensionSemanticPrime1549 :
    Nat.Prime (supportExtensionPrime 1549) ∧
      1549 < supportExtensionPrime 1549 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1549 < q → supportExtensionPrime 1549 ≤ q := by
  rw [extensionPrimeEq1549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1553 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0021
    {p : ℕ}
    (hLower : 1472 ≤ p) (hUpper : p ≤ 1549)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1481
  · exact maskSemanticPrime1483
  · exact maskSemanticPrime1487
  · exact maskSemanticPrime1489
  · exact maskSemanticPrime1493
  · exact maskSemanticPrime1499
  · exact maskSemanticPrime1511
  · exact maskSemanticPrime1523
  · exact maskSemanticPrime1531
  · exact maskSemanticPrime1543
  · exact maskSemanticPrime1549

theorem baseSupportPrimeMemGroup0021
    {p : ℕ}
    (hLower : 1472 ≤ p) (hUpper : p ≤ 1549)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1481
  · exact baseSupportPrimeMem1483
  · exact baseSupportPrimeMem1487
  · exact baseSupportPrimeMem1489
  · exact baseSupportPrimeMem1493
  · exact baseSupportPrimeMem1499
  · exact baseSupportPrimeMem1511
  · exact baseSupportPrimeMem1523
  · exact baseSupportPrimeMem1531
  · exact baseSupportPrimeMem1543
  · exact baseSupportPrimeMem1549

theorem extensionSemanticGroup0021
    {p : ℕ}
    (hLower : 1472 ≤ p) (hUpper : p ≤ 1549)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1481
  · exact extensionSemanticPrime1483
  · exact extensionSemanticPrime1487
  · exact extensionSemanticPrime1489
  · exact extensionSemanticPrime1493
  · exact extensionSemanticPrime1499
  · exact extensionSemanticPrime1511
  · exact extensionSemanticPrime1523
  · exact extensionSemanticPrime1531
  · exact extensionSemanticPrime1543
  · exact extensionSemanticPrime1549

end Erdos848.GeneratedTailGlobalPureSupportCoverage
