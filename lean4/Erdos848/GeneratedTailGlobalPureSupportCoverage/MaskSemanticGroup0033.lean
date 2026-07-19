import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2473 :
    supportQrMaskWords 2473 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2473).take 11 := by
  rfl

theorem baseSupportPrimeMem2473 :
    2473 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2473 :
    supportExtensionPrime 2473 = 2477 := by
  rfl

theorem extensionSemanticPrime2473 :
    Nat.Prime (supportExtensionPrime 2473) ∧
      2473 < supportExtensionPrime 2473 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2473 < q → supportExtensionPrime 2473 ≤ q := by
  rw [extensionPrimeEq2473]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2477 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2477 :
    supportQrMaskWords 2477 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2477).take 11 := by
  rfl

theorem baseSupportPrimeMem2477 :
    2477 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2477 :
    supportExtensionPrime 2477 = 2503 := by
  rfl

theorem extensionSemanticPrime2477 :
    Nat.Prime (supportExtensionPrime 2477) ∧
      2477 < supportExtensionPrime 2477 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2477 < q → supportExtensionPrime 2477 ≤ q := by
  rw [extensionPrimeEq2477]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2503 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2503 :
    supportQrMaskWords 2503 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2503).take 11 := by
  rfl

theorem baseSupportPrimeMem2503 :
    2503 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2503 :
    supportExtensionPrime 2503 = 2521 := by
  rfl

theorem extensionSemanticPrime2503 :
    Nat.Prime (supportExtensionPrime 2503) ∧
      2503 < supportExtensionPrime 2503 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2503 < q → supportExtensionPrime 2503 ≤ q := by
  rw [extensionPrimeEq2503]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2521 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2521 :
    supportQrMaskWords 2521 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2521).take 11 := by
  rfl

theorem baseSupportPrimeMem2521 :
    2521 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2521 :
    supportExtensionPrime 2521 = 2531 := by
  rfl

theorem extensionSemanticPrime2521 :
    Nat.Prime (supportExtensionPrime 2521) ∧
      2521 < supportExtensionPrime 2521 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2521 < q → supportExtensionPrime 2521 ≤ q := by
  rw [extensionPrimeEq2521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2531 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2531 :
    supportQrMaskWords 2531 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2531).take 11 := by
  rfl

theorem baseSupportPrimeMem2531 :
    2531 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2531 :
    supportExtensionPrime 2531 = 2539 := by
  rfl

theorem extensionSemanticPrime2531 :
    Nat.Prime (supportExtensionPrime 2531) ∧
      2531 < supportExtensionPrime 2531 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2531 < q → supportExtensionPrime 2531 ≤ q := by
  rw [extensionPrimeEq2531]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2539 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2539 :
    supportQrMaskWords 2539 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2539).take 11 := by
  rfl

theorem baseSupportPrimeMem2539 :
    2539 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2539 :
    supportExtensionPrime 2539 = 2543 := by
  rfl

theorem extensionSemanticPrime2539 :
    Nat.Prime (supportExtensionPrime 2539) ∧
      2539 < supportExtensionPrime 2539 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2539 < q → supportExtensionPrime 2539 ≤ q := by
  rw [extensionPrimeEq2539]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2543 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2543 :
    supportQrMaskWords 2543 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2543).take 11 := by
  rfl

theorem baseSupportPrimeMem2543 :
    2543 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2543 :
    supportExtensionPrime 2543 = 2549 := by
  rfl

theorem extensionSemanticPrime2543 :
    Nat.Prime (supportExtensionPrime 2543) ∧
      2543 < supportExtensionPrime 2543 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2543 < q → supportExtensionPrime 2543 ≤ q := by
  rw [extensionPrimeEq2543]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2549 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2549 :
    supportQrMaskWords 2549 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2549).take 11 := by
  rfl

theorem baseSupportPrimeMem2549 :
    2549 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2549 :
    supportExtensionPrime 2549 = 2551 := by
  rfl

theorem extensionSemanticPrime2549 :
    Nat.Prime (supportExtensionPrime 2549) ∧
      2549 < supportExtensionPrime 2549 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2549 < q → supportExtensionPrime 2549 ≤ q := by
  rw [extensionPrimeEq2549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2551 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2551 :
    supportQrMaskWords 2551 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2551).take 11 := by
  rfl

theorem baseSupportPrimeMem2551 :
    2551 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2551 :
    supportExtensionPrime 2551 = 2557 := by
  rfl

theorem extensionSemanticPrime2551 :
    Nat.Prime (supportExtensionPrime 2551) ∧
      2551 < supportExtensionPrime 2551 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2551 < q → supportExtensionPrime 2551 ≤ q := by
  rw [extensionPrimeEq2551]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2557 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2557 :
    supportQrMaskWords 2557 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2557).take 11 := by
  rfl

theorem baseSupportPrimeMem2557 :
    2557 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2557 :
    supportExtensionPrime 2557 = 2579 := by
  rfl

theorem extensionSemanticPrime2557 :
    Nat.Prime (supportExtensionPrime 2557) ∧
      2557 < supportExtensionPrime 2557 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2557 < q → supportExtensionPrime 2557 ≤ q := by
  rw [extensionPrimeEq2557]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2579 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2579 :
    supportQrMaskWords 2579 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2579).take 11 := by
  rfl

theorem baseSupportPrimeMem2579 :
    2579 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2579 :
    supportExtensionPrime 2579 = 2591 := by
  rfl

theorem extensionSemanticPrime2579 :
    Nat.Prime (supportExtensionPrime 2579) ∧
      2579 < supportExtensionPrime 2579 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2579 < q → supportExtensionPrime 2579 ≤ q := by
  rw [extensionPrimeEq2579]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2591 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0033
    {p : ℕ}
    (hLower : 2468 ≤ p) (hUpper : p ≤ 2579)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2473
  · exact maskSemanticPrime2477
  · exact maskSemanticPrime2503
  · exact maskSemanticPrime2521
  · exact maskSemanticPrime2531
  · exact maskSemanticPrime2539
  · exact maskSemanticPrime2543
  · exact maskSemanticPrime2549
  · exact maskSemanticPrime2551
  · exact maskSemanticPrime2557
  · exact maskSemanticPrime2579

theorem baseSupportPrimeMemGroup0033
    {p : ℕ}
    (hLower : 2468 ≤ p) (hUpper : p ≤ 2579)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2473
  · exact baseSupportPrimeMem2477
  · exact baseSupportPrimeMem2503
  · exact baseSupportPrimeMem2521
  · exact baseSupportPrimeMem2531
  · exact baseSupportPrimeMem2539
  · exact baseSupportPrimeMem2543
  · exact baseSupportPrimeMem2549
  · exact baseSupportPrimeMem2551
  · exact baseSupportPrimeMem2557
  · exact baseSupportPrimeMem2579

theorem extensionSemanticGroup0033
    {p : ℕ}
    (hLower : 2468 ≤ p) (hUpper : p ≤ 2579)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2473
  · exact extensionSemanticPrime2477
  · exact extensionSemanticPrime2503
  · exact extensionSemanticPrime2521
  · exact extensionSemanticPrime2531
  · exact extensionSemanticPrime2539
  · exact extensionSemanticPrime2543
  · exact extensionSemanticPrime2549
  · exact extensionSemanticPrime2551
  · exact extensionSemanticPrime2557
  · exact extensionSemanticPrime2579

end Erdos848.GeneratedTailGlobalPureSupportCoverage
