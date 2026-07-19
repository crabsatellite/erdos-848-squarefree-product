import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2389 :
    supportQrMaskWords 2389 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2389).take 11 := by
  rfl

theorem baseSupportPrimeMem2389 :
    2389 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2389 :
    supportExtensionPrime 2389 = 2393 := by
  rfl

theorem extensionSemanticPrime2389 :
    Nat.Prime (supportExtensionPrime 2389) ∧
      2389 < supportExtensionPrime 2389 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2389 < q → supportExtensionPrime 2389 ≤ q := by
  rw [extensionPrimeEq2389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2393 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2393 :
    supportQrMaskWords 2393 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2393).take 11 := by
  rfl

theorem baseSupportPrimeMem2393 :
    2393 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2393 :
    supportExtensionPrime 2393 = 2399 := by
  rfl

theorem extensionSemanticPrime2393 :
    Nat.Prime (supportExtensionPrime 2393) ∧
      2393 < supportExtensionPrime 2393 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2393 < q → supportExtensionPrime 2393 ≤ q := by
  rw [extensionPrimeEq2393]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2399 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2399 :
    supportQrMaskWords 2399 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2399).take 11 := by
  rfl

theorem baseSupportPrimeMem2399 :
    2399 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2399 :
    supportExtensionPrime 2399 = 2411 := by
  rfl

theorem extensionSemanticPrime2399 :
    Nat.Prime (supportExtensionPrime 2399) ∧
      2399 < supportExtensionPrime 2399 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2399 < q → supportExtensionPrime 2399 ≤ q := by
  rw [extensionPrimeEq2399]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2411 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2411 :
    supportQrMaskWords 2411 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2411).take 11 := by
  rfl

theorem baseSupportPrimeMem2411 :
    2411 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2411 :
    supportExtensionPrime 2411 = 2417 := by
  rfl

theorem extensionSemanticPrime2411 :
    Nat.Prime (supportExtensionPrime 2411) ∧
      2411 < supportExtensionPrime 2411 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2411 < q → supportExtensionPrime 2411 ≤ q := by
  rw [extensionPrimeEq2411]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2417 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2417 :
    supportQrMaskWords 2417 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2417).take 11 := by
  rfl

theorem baseSupportPrimeMem2417 :
    2417 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2417 :
    supportExtensionPrime 2417 = 2423 := by
  rfl

theorem extensionSemanticPrime2417 :
    Nat.Prime (supportExtensionPrime 2417) ∧
      2417 < supportExtensionPrime 2417 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2417 < q → supportExtensionPrime 2417 ≤ q := by
  rw [extensionPrimeEq2417]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2423 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2423 :
    supportQrMaskWords 2423 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2423).take 11 := by
  rfl

theorem baseSupportPrimeMem2423 :
    2423 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2423 :
    supportExtensionPrime 2423 = 2437 := by
  rfl

theorem extensionSemanticPrime2423 :
    Nat.Prime (supportExtensionPrime 2423) ∧
      2423 < supportExtensionPrime 2423 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2423 < q → supportExtensionPrime 2423 ≤ q := by
  rw [extensionPrimeEq2423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2437 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2437 :
    supportQrMaskWords 2437 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2437).take 11 := by
  rfl

theorem baseSupportPrimeMem2437 :
    2437 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2437 :
    supportExtensionPrime 2437 = 2441 := by
  rfl

theorem extensionSemanticPrime2437 :
    Nat.Prime (supportExtensionPrime 2437) ∧
      2437 < supportExtensionPrime 2437 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2437 < q → supportExtensionPrime 2437 ≤ q := by
  rw [extensionPrimeEq2437]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2441 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2441 :
    supportQrMaskWords 2441 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2441).take 11 := by
  rfl

theorem baseSupportPrimeMem2441 :
    2441 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2441 :
    supportExtensionPrime 2441 = 2447 := by
  rfl

theorem extensionSemanticPrime2441 :
    Nat.Prime (supportExtensionPrime 2441) ∧
      2441 < supportExtensionPrime 2441 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2441 < q → supportExtensionPrime 2441 ≤ q := by
  rw [extensionPrimeEq2441]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2447 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2447 :
    supportQrMaskWords 2447 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2447).take 11 := by
  rfl

theorem baseSupportPrimeMem2447 :
    2447 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2447 :
    supportExtensionPrime 2447 = 2459 := by
  rfl

theorem extensionSemanticPrime2447 :
    Nat.Prime (supportExtensionPrime 2447) ∧
      2447 < supportExtensionPrime 2447 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2447 < q → supportExtensionPrime 2447 ≤ q := by
  rw [extensionPrimeEq2447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2459 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2459 :
    supportQrMaskWords 2459 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2459).take 11 := by
  rfl

theorem baseSupportPrimeMem2459 :
    2459 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2459 :
    supportExtensionPrime 2459 = 2467 := by
  rfl

theorem extensionSemanticPrime2459 :
    Nat.Prime (supportExtensionPrime 2459) ∧
      2459 < supportExtensionPrime 2459 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2459 < q → supportExtensionPrime 2459 ≤ q := by
  rw [extensionPrimeEq2459]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2467 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2467 :
    supportQrMaskWords 2467 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2467).take 11 := by
  rfl

theorem baseSupportPrimeMem2467 :
    2467 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2467 :
    supportExtensionPrime 2467 = 2473 := by
  rfl

theorem extensionSemanticPrime2467 :
    Nat.Prime (supportExtensionPrime 2467) ∧
      2467 < supportExtensionPrime 2467 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2467 < q → supportExtensionPrime 2467 ≤ q := by
  rw [extensionPrimeEq2467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2473 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0032
    {p : ℕ}
    (hLower : 2384 ≤ p) (hUpper : p ≤ 2467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2389
  · exact maskSemanticPrime2393
  · exact maskSemanticPrime2399
  · exact maskSemanticPrime2411
  · exact maskSemanticPrime2417
  · exact maskSemanticPrime2423
  · exact maskSemanticPrime2437
  · exact maskSemanticPrime2441
  · exact maskSemanticPrime2447
  · exact maskSemanticPrime2459
  · exact maskSemanticPrime2467

theorem baseSupportPrimeMemGroup0032
    {p : ℕ}
    (hLower : 2384 ≤ p) (hUpper : p ≤ 2467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2389
  · exact baseSupportPrimeMem2393
  · exact baseSupportPrimeMem2399
  · exact baseSupportPrimeMem2411
  · exact baseSupportPrimeMem2417
  · exact baseSupportPrimeMem2423
  · exact baseSupportPrimeMem2437
  · exact baseSupportPrimeMem2441
  · exact baseSupportPrimeMem2447
  · exact baseSupportPrimeMem2459
  · exact baseSupportPrimeMem2467

theorem extensionSemanticGroup0032
    {p : ℕ}
    (hLower : 2384 ≤ p) (hUpper : p ≤ 2467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2389
  · exact extensionSemanticPrime2393
  · exact extensionSemanticPrime2399
  · exact extensionSemanticPrime2411
  · exact extensionSemanticPrime2417
  · exact extensionSemanticPrime2423
  · exact extensionSemanticPrime2437
  · exact extensionSemanticPrime2441
  · exact extensionSemanticPrime2447
  · exact extensionSemanticPrime2459
  · exact extensionSemanticPrime2467

end Erdos848.GeneratedTailGlobalPureSupportCoverage
